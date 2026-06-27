<div align="center">

<img src="assets/banner.svg" alt="Sectinel, the open security arsenal for AI agents" width="100%">

<br/><br/>

[![License: Apache 2.0](https://img.shields.io/badge/License-Apache_2.0-blue.svg?style=flat-square)](LICENSE)
[![Standard: agentskills.io](https://img.shields.io/badge/standard-agentskills.io-ff6600?style=flat-square)](https://agentskills.io)
[![Skills: 784](https://img.shields.io/badge/skills-784-brightgreen?style=flat-square)](#whats-inside)
[![Frameworks: 5](https://img.shields.io/badge/frameworks-5-orange?style=flat-square)](#five-frameworks-one-arsenal)
[![Domains: 26+](https://img.shields.io/badge/domains-26%2B-9cf?style=flat-square)](#whats-inside)
[![Hermes Agent: compatible](https://img.shields.io/badge/Hermes_Agent-compatible-blueviolet?style=flat-square)](https://github.com/NousResearch/hermes-agent)
[![OpenClaw: compatible](https://img.shields.io/badge/OpenClaw-compatible-0ea5e9?style=flat-square)](#compatibility)
[![opencode](https://img.shields.io/badge/opencode-ready-7c3aed?style=flat-square)](https://opencode.ai)
[![Claude Code](https://img.shields.io/badge/Claude_Code-ready-d97757?style=flat-square)](https://claude.ai/code)
[![MITRE ATT&CK · NIST · D3FEND](https://img.shields.io/badge/mapped-ATT%26CK·NIST·D3FEND·ATLAS-red?style=flat-square)](#five-frameworks-one-arsenal)
[![PRs: welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](CONTRIBUTING.md)

### The open security arsenal for AI agents. 784 skills, MCP wiring, and scanner integrations in one installable suite.

[What's inside](#whats-inside) · [Frameworks](#five-frameworks-one-arsenal) · [Compatibility](#compatibility) · [Install](#install) · [Integrations](#integrated-scanners--engines) · [Attributions](#credits--attributions)

<br/>

**🌐 English · [Español](README.es.md) · [中文](README.zh.md) · [Français](README.fr.md) · [Deutsch](README.de.md) · [Português](README.pt.md) · [日本語](README.ja.md)**

</div>

---

## Why this exists

AI agents can write code and search the web, but they don't ship with the
hands-on playbooks a security analyst actually relies on. Which Volatility3
plugin to run against a memory dump. Which Sigma rule catches Kerberoasting. How
to trace a piece of user input all the way to a dangerous sink. The handful of
good skill libraries that do cover this are scattered across different repos,
formats, and frameworks.

Sectinel pulls them into one place. It bundles the strongest open
security-skill libraries, wires in the leading open scanners and a security MCP,
maps everything to five industry frameworks, and ships the whole thing behind one
installer. Any agentskills.io-compatible agent gets all of it with nothing to
assemble.

## What's inside

**784 skills** drawn from three upstream libraries (vendored under their original
licenses, with full [attribution](#credits--attributions)), plus the scanner and
MCP wiring:

| Library | Skills | Coverage |
|---|---:|---|
| **Anthropic-Cybersecurity-Skills** (@mukul975) | 754 | 26 domains: cloud, threat hunting, threat intel, web/app, network, malware, DFIR, SecOps, IAM, SOC, containers, OT/ICS, API, vuln mgmt, IR, red team, pentest, endpoint, DevSecOps, phishing, crypto, zero-trust, mobile, ransomware, compliance, deception |
| **cybersecurity-skills** (@briiirussell) | 29 | 7 families: AppSec & supply chain, offensive/recon, detect & respond, cloud & infra, AI security, design & governance, compliance & privacy |
| **claude-cybersecurity** (@AgriciDaniel) | 1 (8 agents) | flagship orchestrator that fans out to 8 parallel specialists: vuln detection, authz, secrets, supply chain, IaC, threat-intel, AI-code patterns, business logic |

Browse the full catalog in [`docs/arsenal.md`](docs/arsenal.md) or under
[`arsenal/`](arsenal/).

### Skill anatomy (agentskills.io standard)

Every skill is a folder with a `SKILL.md`: YAML frontmatter for fast discovery
plus a structured Markdown workflow, often alongside `references/`, `scripts/`,
and `assets/`. An agent reads the frontmatter (roughly 30 tokens each) and loads
only the one playbook it needs (500 to 2,000 tokens), so you get full coverage
without filling up the context window.

## Five frameworks, one arsenal

Skills carry mappings to the main industry frameworks, so a single playbook can
answer to several compliance lenses at once:

| Framework | Scope |
|---|---|
| [MITRE ATT&CK](https://attack.mitre.org) | adversary behaviors / TTPs (14 tactics) |
| [NIST CSF 2.0](https://www.nist.gov/cyberframework) | organizational posture (6 functions) |
| [MITRE D3FEND](https://d3fend.mitre.org) | defensive countermeasures |
| [MITRE ATLAS](https://atlas.mitre.org) | AI/ML adversarial threats |
| [NIST AI RMF](https://airc.nist.gov/AI_RMF) | AI risk management |

## Compatibility

Sectinel is built on the open **[agentskills.io](https://agentskills.io)**
standard, so it drops into any compatible agent runtime without conversion:

| Runtime | Status |
|---|---|
| **Hermes Agent** (NousResearch) | ✅ agentskills.io skills load natively |
| **OpenClaw** | ✅ reads the agentskills.io arsenal directly |
| **opencode** | ✅ first-class (installer wires `~/.config/opencode`) |
| **Claude Code** | ✅ first-class (`~/.claude/skills`) |
| **Cursor · Cline · Windsurf · Roo Code · Continue · Aider** | ✅ via the standard and [`adapters/`](adapters/) |
| **OpenAI Codex CLI · Gemini CLI** | ✅ via the standard and [`adapters/`](adapters/) |

See [`adapters/README.md`](adapters/README.md) for per-platform install steps.

## Install

```bash
# Clone, then install the arsenal (skills + flagship + scanner/MCP wiring)
git clone https://github.com/Mikaru0Mystic/sectinel.git
cd sectinel
bash scripts/install.sh        # macOS / Linux / WSL
#  or, on Windows:  pwsh scripts/install.ps1
```

This installs the 784-skill arsenal to `~/.config/opencode/cybersec-arsenal/`,
the flagship `cybersecurity` skill to `~/.claude/skills/`, and prints the
security-MCP wiring snippet. Restart your agent runtime afterward.

## Integrated scanners & engines

Sectinel's skills know how to drive real tools. These run at runtime rather than
being bundled, and each keeps its own license (see
[Attributions](#credits--attributions)):

| Tool | Role | Bundled? |
|---|---|---|
| **[ship-safe](https://github.com/asamassekou10/ship-safe)** | 23-agent defensive scanner (no API key) | invoked (`npx`) |
| **[Shannon](https://github.com/KeygraphHQ/shannon)** | autonomous white-box AI pentester | invoked (AGPL, not bundled) |
| **[PentAGI](https://github.com/vxcontrol/pentagi)** | autonomous pentest platform (nmap/metasploit/sqlmap) | invoked (not bundled) |
| **Semgrep / OSV-Scanner / Trivy / Gitleaks / Checkov / hadolint** | SAST / SCA / IaC / secrets | invoked |
| **Semgrep MCP** | SAST over the Model Context Protocol | [`mcp/`](mcp/) config |

See [`docs/integrations.md`](docs/integrations.md) and [`mcp/README.md`](mcp/README.md).

## Pair with Breachproof (optional)

Sectinel is the arsenal, and it stands on its own with any agentskills.io-compatible
agent. If you want a hands-off operator to wield it,
**[Breachproof](https://github.com/Mikaru0Mystic/breachproof)** is an autonomous agent
built around this library: it picks up the skills, runs the scanners, and drives a
codebase down to zero findings. Completely optional; Sectinel needs nothing else to be
useful.

## Updating the arsenal

The libraries are vendored so the install stays self-contained. You can refresh
them from upstream whenever you like:

```bash
bash scripts/sync-arsenal.sh
```

## Contributing

The most useful contributions are field feedback and new skills. A new skill
should follow the agentskills.io `SKILL.md` format and include framework mappings
(CI checks for `name` and `description`). See [CONTRIBUTING.md](CONTRIBUTING.md)
and the [Code of Conduct](CODE_OF_CONDUCT.md).

> If you're fixing a *vendored* upstream skill, please send the fix to the
> original project too (linked below) so everyone benefits, not just this copy.

## License

[Apache License 2.0](LICENSE) covers Sectinel's own code and packaging. The
vendored libraries keep their **original** licenses (Apache-2.0 and MIT). See
each library's `LICENSE` file under [`arsenal/`](arsenal/), along with
[NOTICE](NOTICE) and [ATTRIBUTIONS.md](ATTRIBUTIONS.md).

## Credits & attributions

Sectinel is really a curation and integration project. It wouldn't exist without
the people who wrote the libraries and tools it brings together. Each one is
their work, used under its own license:

### Vendored skill libraries (bundled in `arsenal/`, with their LICENSE files)
- **[Anthropic-Cybersecurity-Skills](https://github.com/mukul975/Anthropic-Cybersecurity-Skills)**, 754 skills, by **Mahipal Jangra (@mukul975)**. Apache-2.0.
- **[cybersecurity-skills](https://github.com/briiirussell/cybersecurity-skills)**, 29 skills, by **Bri Russell (@briiirussell)**. MIT.
- **[claude-cybersecurity](https://github.com/AgriciDaniel/claude-cybersecurity)**, flagship 8-agent skill, by **@AgriciDaniel**. MIT.

### Integrated tools (invoked, not bundled)
- **[ship-safe](https://github.com/asamassekou10/ship-safe)** by @asamassekou10. MIT.
- **[Shannon](https://github.com/KeygraphHQ/shannon)** by Keygraph. AGPL-3.0.
- **[PentAGI](https://github.com/vxcontrol/pentagi)** by vxcontrol. Apache-2.0 / EULA.
- **[Semgrep](https://semgrep.dev)**, **[OSV-Scanner](https://github.com/google/osv-scanner)**, **[Trivy](https://github.com/aquasecurity/trivy)**, **[Gitleaks](https://github.com/gitleaks/gitleaks)**, **[Trufflehog](https://github.com/trufflesecurity/trufflehog)**, **[Checkov](https://github.com/bridgecrewio/checkov)**, **[hadolint](https://github.com/hadolint/hadolint)**.

### Standards & frameworks
[agentskills.io](https://agentskills.io) · [MITRE ATT&CK](https://attack.mitre.org) · [MITRE D3FEND](https://d3fend.mitre.org) · [MITRE ATLAS](https://atlas.mitre.org) · [NIST CSF 2.0](https://www.nist.gov/cyberframework) · [NIST AI RMF](https://airc.nist.gov/AI_RMF).

"Anthropic" and "Claude" are trademarks of Anthropic PBC. All other names and
trademarks belong to their respective owners. Sectinel is an independent project,
**not affiliated with, sponsored by, or endorsed by** any of the above. Provided
for **authorized, defensive security use only**.
