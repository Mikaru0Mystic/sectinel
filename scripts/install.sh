#!/usr/bin/env bash
# Sectinel installer — installs the 784-skill arsenal + flagship skill into your
# agent runtime, and prints the security-MCP wiring snippet. Idempotent.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CFG="${OPENCODE_CONFIG_DIR:-$HOME/.config/opencode}"
ARSENAL="$CFG/cybersec-arsenal"

echo "🗡️  Installing Sectinel arsenal…"
mkdir -p "$ARSENAL"
cp -R "$ROOT/arsenal/." "$ARSENAL/"
echo "  ✓ arsenal  -> $ARSENAL  ($(find "$ARSENAL" -name SKILL.md | wc -l) skills)"

# Flagship 8-agent skill, installed where runtimes auto-load skills.
if [ -d "$HOME/.claude/skills" ] || [ ! -d "$CFG/skill" ]; then
  mkdir -p "$HOME/.claude/skills"
  cp -R "$ROOT/skills/cybersecurity" "$HOME/.claude/skills/cybersecurity"
  echo "  ✓ flagship -> ~/.claude/skills/cybersecurity  (/cybersecurity)"
fi

echo ""
echo "🔌 Optional — wire the Semgrep security MCP into ~/.config/opencode/opencode.json:"
echo '     "mcp": { "semgrep": { "type": "local", "command": ["uvx","semgrep-mcp"], "enabled": true } }'
echo "   (see mcp/README.md for more servers + Claude Code config)"
echo ""
echo "✅ Done. Restart your agent runtime (config loads at startup)."
echo "   Pair with Breachproof for the autonomous operator: https://github.com/PockySweet/breachproof"
