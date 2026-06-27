<div align="center">

<img src="assets/banner.svg" alt="Sectinel, das offene Sicherheits-Arsenal für KI-Agenten" width="100%">

<br/><br/>

[![License: Apache 2.0](https://img.shields.io/badge/License-Apache_2.0-blue.svg?style=flat-square)](LICENSE)
[![Standard: agentskills.io](https://img.shields.io/badge/standard-agentskills.io-ff6600?style=flat-square)](https://agentskills.io)
[![Skills: 784](https://img.shields.io/badge/skills-784-brightgreen?style=flat-square)](#was-enthalten-ist)
[![Frameworks: 5](https://img.shields.io/badge/frameworks-5-orange?style=flat-square)](#fünf-frameworks-ein-arsenal)
[![Mapped: ATT&CK · NIST · D3FEND · ATLAS](https://img.shields.io/badge/mapped-ATT%26CK·NIST·D3FEND·ATLAS-red?style=flat-square)](#fünf-frameworks-ein-arsenal)

### Das offene Sicherheits-Arsenal für KI-Agenten. 784 Skills, MCP-Anbindung und Scanner-Integrationen in einer installierbaren Suite.

**🌐 [English](README.md) · [Español](README.es.md) · [中文](README.zh.md) · [Français](README.fr.md) · Deutsch · [Português](README.pt.md) · [日本語](README.ja.md)**

</div>

---

## Warum es das gibt

KI-Agenten können Code schreiben und im Web suchen, aber sie bringen nicht die praktischen
Handbücher mit, auf die sich eine Sicherheitsanalystin tatsächlich stützt. Welches
Volatility3-Plugin man gegen einen Speicherauszug ausführt. Welche Sigma-Regel
Kerberoasting erkennt. Wie man eine Benutzereingabe bis zu einer gefährlichen Senke (sink)
verfolgt. Die wenigen guten Skill-Bibliotheken, die das abdecken, sind über verschiedene
Repositories, Formate und Frameworks verstreut.

Sectinel führt sie an einem Ort zusammen. Es bündelt die stärksten offenen
Sicherheits-Skill-Bibliotheken, bindet die führenden offenen Scanner und einen
Sicherheits-MCP ein, ordnet alles fünf Branchen-Frameworks zu und liefert das Ganze hinter
einem einzigen Installer. Jeder agentskills.io-kompatible Agent erhält alles, ohne dass
etwas zusammengebaut werden muss.

## Was enthalten ist

**784 Skills** aus drei Upstream-Bibliotheken (unter ihren Originallizenzen eingebunden
(vendored), mit vollständiger [Nennung](#danksagungen-und-nennungen)), plus die Scanner-
und MCP-Anbindung:

| Bibliothek | Skills | Abdeckung |
|---|---:|---|
| **Anthropic-Cybersecurity-Skills** (@mukul975) | 754 | 26 Domänen: Cloud, Threat Hunting, Threat Intel, Web/Apps, Netzwerk, Malware, DFIR, SecOps, IAM, SOC, Container, OT/ICS, API, Schwachstellenmanagement, Incident Response, Red Team, Pentest, Endpoint, DevSecOps, Phishing, Kryptografie, Zero-Trust, Mobile, Ransomware, Compliance, Täuschung |
| **cybersecurity-skills** (@briiirussell) | 29 | 7 Familien: AppSec und Lieferkette, offensiv/Aufklärung, Detektion und Reaktion, Cloud und Infrastruktur, KI-Sicherheit, Design und Governance, Compliance und Datenschutz |
| **claude-cybersecurity** (@AgriciDaniel) | 1 (8 Agenten) | Flaggschiff-Orchestrator, der sich auf 8 parallele Spezialisten verteilt: Schwachstellenerkennung, Autorisierung, Secrets, Lieferkette, IaC, Threat Intel, KI-Code-Muster, Geschäftslogik |

Durchstöbere den vollständigen Katalog in [`docs/arsenal.md`](docs/arsenal.md) oder unter
[`arsenal/`](arsenal/).

### Aufbau eines Skills (agentskills.io-Standard)

Jeder Skill ist ein Ordner mit einer `SKILL.md`: YAML-Front-Matter für schnelles Auffinden
plus ein strukturierter Markdown-Workflow, oft zusammen mit `references/`, `scripts/` und
`assets/`. Ein Agent liest das Front-Matter (je etwa 30 Tokens) und lädt nur das eine
Handbuch, das er braucht (500 bis 2.000 Tokens), sodass du vollständige Abdeckung erhältst,
ohne das Kontextfenster zu füllen.

## Fünf Frameworks, ein Arsenal

Die Skills tragen Zuordnungen zu den wichtigsten Branchen-Frameworks, sodass ein einziges
Handbuch mehrere Compliance-Blickwinkel zugleich bedienen kann:

| Framework | Umfang |
|---|---|
| [MITRE ATT&CK](https://attack.mitre.org) | Verhalten von Angreifern / TTPs (14 Taktiken) |
| [NIST CSF 2.0](https://www.nist.gov/cyberframework) | organisatorische Aufstellung (6 Funktionen) |
| [MITRE D3FEND](https://d3fend.mitre.org) | defensive Gegenmaßnahmen |
| [MITRE ATLAS](https://atlas.mitre.org) | gegnerische KI/ML-Bedrohungen |
| [NIST AI RMF](https://airc.nist.gov/AI_RMF) | KI-Risikomanagement |

## Kompatibilität

Sectinel basiert auf dem offenen Standard **[agentskills.io](https://agentskills.io)** und
fügt sich daher ohne Konvertierung in jede kompatible Agent-Runtime ein:

| Runtime | Status |
|---|---|
| **Hermes Agent** (NousResearch) | ✅ agentskills.io-Skills werden nativ geladen |
| **OpenClaw** | ✅ liest das agentskills.io-Arsenal direkt |
| **opencode** | ✅ erstklassig (der Installer richtet `~/.config/opencode` ein) |
| **Claude Code** | ✅ erstklassig (`~/.claude/skills`) |
| **Cursor · Cline · Windsurf · Roo Code · Continue · Aider** | ✅ über den Standard und [`adapters/`](adapters/) |
| **OpenAI Codex CLI · Gemini CLI** | ✅ über den Standard und [`adapters/`](adapters/) |

Plattformspezifische Installationsschritte siehe [`adapters/README.md`](adapters/README.md).

## Installation

```bash
# Klonen, dann das Arsenal installieren (Skills + Flaggschiff + Scanner/MCP-Anbindung)
git clone https://github.com/Mikaru0Mystic/sectinel.git
cd sectinel
bash scripts/install.sh        # macOS / Linux / WSL
#  oder unter Windows:  pwsh scripts/install.ps1
```

Dies installiert das 784-Skill-Arsenal nach `~/.config/opencode/cybersec-arsenal/`, den
Flaggschiff-Skill `cybersecurity` nach `~/.claude/skills/` und gibt das
Konfigurations-Snippet für den Sicherheits-MCP aus. Starte danach deine Agent-Runtime neu.

## Integrierte Scanner und Engines

Sectinels Skills wissen, wie man echte Werkzeuge steuert. Diese laufen zur Laufzeit, statt
mitgeliefert zu werden, und jedes behält seine eigene Lizenz (siehe
[Nennungen](#danksagungen-und-nennungen)):

| Werkzeug | Rolle | Mitgeliefert? |
|---|---|---|
| **[ship-safe](https://github.com/asamassekou10/ship-safe)** | defensiver 23-Agenten-Scanner (kein API-Schlüssel) | aufgerufen (`npx`) |
| **[Shannon](https://github.com/KeygraphHQ/shannon)** | autonomer White-Box-KI-Pentester | aufgerufen (AGPL, nicht mitgeliefert) |
| **[PentAGI](https://github.com/vxcontrol/pentagi)** | autonome Pentest-Plattform (nmap/metasploit/sqlmap) | aufgerufen (nicht mitgeliefert) |
| **Semgrep / OSV-Scanner / Trivy / Gitleaks / Checkov / hadolint** | SAST / SCA / IaC / Secrets | aufgerufen |
| **Semgrep MCP** | SAST über das Model Context Protocol | Konfiguration in [`mcp/`](mcp/) |

Siehe [`docs/integrations.md`](docs/integrations.md) und [`mcp/README.md`](mcp/README.md).

## Mit Breachproof kombinieren (optional)

Sectinel ist das Arsenal und steht für sich allein mit jedem agentskills.io-kompatiblen
Agenten. Wenn du einen freihändigen Operator möchtest, der es führt, ist
**[Breachproof](https://github.com/Mikaru0Mystic/breachproof)** ein autonomer Agent rund um
diese Bibliothek: Er greift die Skills auf, führt die Scanner aus und treibt eine Codebasis
auf null Funde. Völlig optional; Sectinel braucht nichts weiter, um nützlich zu sein.

## Das Arsenal aktualisieren

Die Bibliotheken sind eingebunden (vendored), damit die Installation eigenständig bleibt.
Du kannst sie jederzeit vom Upstream auffrischen:

```bash
bash scripts/sync-arsenal.sh
```

## Mitwirken

Die nützlichsten Beiträge sind Praxis-Feedback und neue Skills. Ein neuer Skill sollte dem
`SKILL.md`-Format von agentskills.io folgen und Framework-Zuordnungen enthalten (die CI
prüft `name` und `description`). Siehe [CONTRIBUTING.md](CONTRIBUTING.md) und den
[Verhaltenskodex](CODE_OF_CONDUCT.md).

> Wenn du einen eingebundenen Upstream-Skill korrigierst, sende die Korrektur bitte auch an
> das Originalprojekt (unten verlinkt), damit alle profitieren, nicht nur diese Kopie.

## Lizenz

Die [Apache-Lizenz 2.0](LICENSE) deckt Sectinels eigenen Code und die Paketierung ab. Die
eingebundenen Bibliotheken behalten ihre **Original**-Lizenzen (Apache-2.0 und MIT). Siehe
die `LICENSE`-Datei jeder Bibliothek unter [`arsenal/`](arsenal/) sowie [NOTICE](NOTICE) und
[ATTRIBUTIONS.md](ATTRIBUTIONS.md).

## Danksagungen und Nennungen

Sectinel ist im Kern ein Kuratierungs- und Integrationsprojekt. Es gäbe es nicht ohne die
Menschen, die die Bibliotheken und Werkzeuge geschrieben haben, die es zusammenführt. Jedes
ist ihre Arbeit, genutzt unter ihrer eigenen Lizenz:

### Eingebundene Skill-Bibliotheken (in `arsenal/`, mit ihren LICENSE-Dateien)
- **[Anthropic-Cybersecurity-Skills](https://github.com/mukul975/Anthropic-Cybersecurity-Skills)**, 754 Skills, von **Mahipal Jangra (@mukul975)**. Apache-2.0.
- **[cybersecurity-skills](https://github.com/briiirussell/cybersecurity-skills)**, 29 Skills, von **Bri Russell (@briiirussell)**. MIT.
- **[claude-cybersecurity](https://github.com/AgriciDaniel/claude-cybersecurity)**, Flaggschiff-Skill mit 8 Agenten, von **@AgriciDaniel**. MIT.

### Integrierte Werkzeuge (aufgerufen, nicht mitgeliefert)
- **[ship-safe](https://github.com/asamassekou10/ship-safe)** von @asamassekou10. MIT.
- **[Shannon](https://github.com/KeygraphHQ/shannon)** von Keygraph. AGPL-3.0.
- **[PentAGI](https://github.com/vxcontrol/pentagi)** von vxcontrol. Apache-2.0 / EULA.
- **[Semgrep](https://semgrep.dev)**, **[OSV-Scanner](https://github.com/google/osv-scanner)**, **[Trivy](https://github.com/aquasecurity/trivy)**, **[Gitleaks](https://github.com/gitleaks/gitleaks)**, **[Trufflehog](https://github.com/trufflesecurity/trufflehog)**, **[Checkov](https://github.com/bridgecrewio/checkov)**, **[hadolint](https://github.com/hadolint/hadolint)**.

### Standards und Frameworks
[agentskills.io](https://agentskills.io) · [MITRE ATT&CK](https://attack.mitre.org) · [MITRE D3FEND](https://d3fend.mitre.org) · [MITRE ATLAS](https://atlas.mitre.org) · [NIST CSF 2.0](https://www.nist.gov/cyberframework) · [NIST AI RMF](https://airc.nist.gov/AI_RMF).

„Anthropic" und „Claude" sind Marken von Anthropic PBC. Alle anderen Namen und Marken
gehören ihren jeweiligen Eigentümern. Sectinel ist ein unabhängiges Projekt, **nicht
verbunden mit, gesponsert von oder unterstützt durch** eine der oben genannten Parteien.
Bereitgestellt **nur für autorisierte, defensive Sicherheitszwecke**.
