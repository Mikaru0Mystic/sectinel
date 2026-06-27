# Usage

## Install

```bash
git clone https://github.com/PockySweet/sectinel
cd sectinel
bash scripts/install.sh          # macOS/Linux
#   or
pwsh scripts/install.ps1         # Windows
```

This copies the 784-skill arsenal to `~/.config/opencode/cybersec-arsenal/` and
the flagship `/cybersecurity` skill to `~/.claude/skills/`. **Restart your agent
runtime** afterwards (config loads at startup).

Optionally wire a security MCP — see [`../mcp/`](../mcp/).

## Two ways to use it

### 1. Autonomous — with Breachproof (recommended)

Install [Breachproof](https://github.com/PockySweet/breachproof) and run one
command. It picks the right arsenal skills, runs the scanners in parallel, and
loops fix→re-scan to zero on its own:

```
/breachproof
```

### 2. Manual — ask your agent directly

The flagship sweep:
```
/cybersecurity                         # full 8-agent audit
/cybersecurity --scope diff            # only what changed
/cybersecurity --focus threat          # threat-intel lens
/cybersecurity --compliance pci        # PCI mapping
```

Or invoke a specific arsenal skill by name:
```
"Run the owasp-audit skill on src/app/api"
"Use the threat-modeling skill for this design"
"Apply the secrets-audit and dependency-audit skills, then triage findings"
```

Find the right skill:
```bash
grep -ril "ssrf" ~/.config/opencode/cybersec-arsenal/
```

## What you get

- **Findings with severity** (CVSS-style), file:line evidence, and exploitability.
- **Framework mappings** — OWASP, MITRE ATT&CK/D3FEND/ATLAS, NIST CSF/AI RMF.
- **Remediation** — concrete fixes, not just flags.
- **Low false positives** — framework-aware suppression.

## Keeping the arsenal fresh

```bash
bash scripts/sync-arsenal.sh     # re-pull upstreams, review git diff, commit
```

See also [arsenal.md](arsenal.md) (catalog) and
[integrations.md](integrations.md) (scanner/engine wiring).
