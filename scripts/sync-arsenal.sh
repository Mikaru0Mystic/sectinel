#!/usr/bin/env bash
# Refresh the vendored skill libraries from their upstreams (keeps Sectinel from
# drifting). Re-clones each upstream and replaces its arsenal/ copy, preserving
# the upstream LICENSE. Review the diff before committing.
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
declare -A REPOS=(
  [Anthropic-Cybersecurity-Skills]="https://github.com/mukul975/Anthropic-Cybersecurity-Skills.git"
  [cybersecurity-skills]="https://github.com/briiirussell/cybersecurity-skills.git"
  [claude-cybersecurity]="https://github.com/AgriciDaniel/claude-cybersecurity.git"
)
tmp="$(mktemp -d)"
for name in "${!REPOS[@]}"; do
  echo "→ syncing $name…"
  git clone --depth 1 "${REPOS[$name]}" "$tmp/$name" >/dev/null 2>&1
  rm -rf "$tmp/$name/.git"
  rm -rf "$ROOT/arsenal/$name"
  cp -R "$tmp/$name" "$ROOT/arsenal/$name"
done
# refresh the installed flagship copy
rm -rf "$ROOT/skills/cybersecurity"
cp -R "$ROOT/arsenal/claude-cybersecurity/skills/cybersecurity" "$ROOT/skills/cybersecurity"
echo "✓ arsenal synced ($(find "$ROOT/arsenal" -name SKILL.md | wc -l) skills). Review 'git diff' before committing."
