# Adapters — load the Sectinel arsenal on any agent runtime

Sectinel's skills are authored to the open
[agentskills.io](https://agentskills.io) standard, so they load wherever skills
load. `scripts/install.sh` targets opencode + Claude Code directly; everything
else is a copy into that runtime's skills/agents directory.

## opencode (first-class)
```bash
bash scripts/install.sh          # → ~/.config/opencode/cybersec-arsenal + ~/.claude/skills
```
Restart opencode. Skills are read on demand; `/cybersecurity` runs the flagship.

## Claude Code (first-class)
```bash
bash scripts/install.sh          # installs the flagship to ~/.claude/skills/
# or just the flagship:
cp -R skills/cybersecurity ~/.claude/skills/cybersecurity
```
Run `/cybersecurity`. Point Claude at the arsenal folder for the full 784.

## Hermes Agent (NousResearch)
Hermes loads agentskills.io skills natively. Install the arsenal, then reference
any `SKILL.md` — the frontmatter is Hermes-ready and its tool-calling executes
the Workflow steps.

## OpenClaw
OpenClaw consumes agentskills.io skills directly. Point it at
`~/.config/opencode/cybersec-arsenal/` (or this repo's `arsenal/` + `skills/`).

## Cursor
```bash
mkdir -p .cursor/rules
cp adapters/cursor/sectinel.mdc .cursor/rules/
```
The rule tells Cursor where the arsenal lives and how to select a skill.

## OpenAI Codex CLI
```bash
cp adapters/codex/sectinel.md <your-codex-config-dir>/
```

## Cline · Windsurf · Roo Code · Continue · Aider · Gemini CLI
Any runtime that reads the agentskills.io standard or a Markdown context file
works — install the arsenal and reference the relevant `SKILL.md`.

## The autonomous operator
To wield this arsenal hands-free, install
**[Breachproof](https://github.com/PockySweet/breachproof)** — it auto-selects
skills, runs the scanners, and loops to zero findings.
