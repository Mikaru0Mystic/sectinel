<div align="center">

<img src="assets/banner.svg" alt="Sectinel, l'arsenal de sécurité ouvert pour les agents IA" width="100%">

<br/><br/>

[![License: Apache 2.0](https://img.shields.io/badge/License-Apache_2.0-blue.svg?style=flat-square)](LICENSE)
[![Standard: agentskills.io](https://img.shields.io/badge/standard-agentskills.io-ff6600?style=flat-square)](https://agentskills.io)
[![Skills: 784](https://img.shields.io/badge/skills-784-brightgreen?style=flat-square)](#ce-quil-contient)
[![Frameworks: 5](https://img.shields.io/badge/frameworks-5-orange?style=flat-square)](#cinq-référentiels-un-arsenal)
[![Mapped: ATT&CK · NIST · D3FEND · ATLAS](https://img.shields.io/badge/mapped-ATT%26CK·NIST·D3FEND·ATLAS-red?style=flat-square)](#cinq-référentiels-un-arsenal)

### L'arsenal de sécurité ouvert pour les agents IA. 784 compétences, intégration MCP et intégrations de scanners dans une seule suite installable.

**🌐 [English](README.md) · [Español](README.es.md) · [中文](README.zh.md) · Français · [Deutsch](README.de.md) · [Português](README.pt.md) · [日本語](README.ja.md)**

</div>

---

## Pourquoi ce projet existe

Les agents IA savent écrire du code et chercher sur le web, mais ils n'arrivent pas avec
les guides pratiques sur lesquels un analyste sécurité s'appuie réellement. Quel plugin
Volatility3 lancer sur un *dump* mémoire. Quelle règle Sigma détecte le Kerberoasting.
Comment suivre une entrée utilisateur jusqu'à un *sink* dangereux. Les rares bonnes
bibliothèques de compétences qui couvrent cela sont dispersées entre différents dépôts,
formats et référentiels.

Sectinel les réunit en un seul endroit. Il regroupe les meilleures bibliothèques ouvertes
de compétences de sécurité, intègre les principaux scanners open source et un MCP de
sécurité, fait correspondre l'ensemble à cinq référentiels du secteur et livre le tout
derrière un unique installeur. Tout agent compatible agentskills.io obtient l'ensemble
sans rien avoir à assembler.

## Ce qu'il contient

**784 compétences** issues de trois bibliothèques *upstream* (intégrées sous leurs
licences d'origine, avec [attribution](#crédits-et-attributions) complète), plus le
câblage des scanners et du MCP :

| Bibliothèque | Compétences | Couverture |
|---|---:|---|
| **Anthropic-Cybersecurity-Skills** (@mukul975) | 754 | 26 domaines : cloud, *threat hunting*, *threat intel*, web/applications, réseau, malware, DFIR, SecOps, IAM, SOC, conteneurs, OT/ICS, API, gestion des vulnérabilités, réponse à incident, *red team*, pentest, *endpoint*, DevSecOps, phishing, cryptographie, zero-trust, mobile, ransomware, conformité, déception |
| **cybersecurity-skills** (@briiirussell) | 29 | 7 familles : AppSec et chaîne d'approvisionnement, offensif/reconnaissance, détection et réponse, cloud et infrastructure, sécurité de l'IA, conception et gouvernance, conformité et confidentialité |
| **claude-cybersecurity** (@AgriciDaniel) | 1 (8 agents) | orchestrateur phare qui se déploie en 8 spécialistes en parallèle : détection de vulnérabilités, autorisation, secrets, chaîne d'approvisionnement, IaC, *threat intel*, motifs de code IA, logique métier |

Parcourez le catalogue complet dans [`docs/arsenal.md`](docs/arsenal.md) ou sous
[`arsenal/`](arsenal/).

### Anatomie d'une compétence (standard agentskills.io)

Chaque compétence est un dossier contenant un `SKILL.md` : un *front-matter* YAML pour une
découverte rapide, plus un flux de travail Markdown structuré, souvent accompagné de
`references/`, `scripts/` et `assets/`. Un agent lit le *front-matter* (environ 30 tokens
chacun) et ne charge que le guide dont il a besoin (500 à 2 000 tokens) : vous obtenez une
couverture complète sans saturer la fenêtre de contexte.

## Cinq référentiels, un arsenal

Les compétences portent des correspondances vers les principaux référentiels du secteur,
si bien qu'un seul guide peut répondre à plusieurs prismes de conformité à la fois :

| Référentiel | Périmètre |
|---|---|
| [MITRE ATT&CK](https://attack.mitre.org) | comportements de l'adversaire / TTP (14 tactiques) |
| [NIST CSF 2.0](https://www.nist.gov/cyberframework) | posture organisationnelle (6 fonctions) |
| [MITRE D3FEND](https://d3fend.mitre.org) | contre-mesures défensives |
| [MITRE ATLAS](https://atlas.mitre.org) | menaces adverses IA/ML |
| [NIST AI RMF](https://airc.nist.gov/AI_RMF) | gestion des risques liés à l'IA |

## Compatibilité

Sectinel repose sur le standard ouvert **[agentskills.io](https://agentskills.io)**, il
s'intègre donc à tout *runtime* d'agent compatible sans conversion :

| Runtime | Statut |
|---|---|
| **Hermes Agent** (NousResearch) | ✅ les compétences agentskills.io se chargent nativement |
| **OpenClaw** | ✅ lit directement l'arsenal agentskills.io |
| **opencode** | ✅ de première classe (l'installeur configure `~/.config/opencode`) |
| **Claude Code** | ✅ de première classe (`~/.claude/skills`) |
| **Cursor · Cline · Windsurf · Roo Code · Continue · Aider** | ✅ via le standard et [`adapters/`](adapters/) |
| **OpenAI Codex CLI · Gemini CLI** | ✅ via le standard et [`adapters/`](adapters/) |

Voir [`adapters/README.md`](adapters/README.md) pour les étapes d'installation par
plateforme.

## Installation

```bash
# Clonez, puis installez l'arsenal (compétences + skill phare + câblage scanners/MCP)
git clone https://github.com/Mikaru0Mystic/sectinel.git
cd sectinel
bash scripts/install.sh        # macOS / Linux / WSL
#  ou, sous Windows :  pwsh scripts/install.ps1
```

Cela installe l'arsenal de 784 compétences dans `~/.config/opencode/cybersec-arsenal/`, la
compétence phare `cybersecurity` dans `~/.claude/skills/`, et affiche l'extrait de
configuration du MCP de sécurité. Redémarrez ensuite votre *runtime* d'agent.

## Scanners et moteurs intégrés

Les compétences de Sectinel savent piloter de vrais outils. Ceux-ci s'exécutent à
l'exécution plutôt que d'être empaquetés, et chacun conserve sa propre licence (voir
[Attributions](#crédits-et-attributions)) :

| Outil | Rôle | Empaqueté ? |
|---|---|---|
| **[ship-safe](https://github.com/asamassekou10/ship-safe)** | scanner défensif à 23 agents (sans clé API) | invoqué (`npx`) |
| **[Shannon](https://github.com/KeygraphHQ/shannon)** | pentester IA autonome en boîte blanche | invoqué (AGPL, non empaqueté) |
| **[PentAGI](https://github.com/vxcontrol/pentagi)** | plateforme de pentest autonome (nmap/metasploit/sqlmap) | invoqué (non empaqueté) |
| **Semgrep / OSV-Scanner / Trivy / Gitleaks / Checkov / hadolint** | SAST / SCA / IaC / secrets | invoqués |
| **Semgrep MCP** | SAST via le Model Context Protocol | configuration dans [`mcp/`](mcp/) |

Voir [`docs/integrations.md`](docs/integrations.md) et [`mcp/README.md`](mcp/README.md).

## Associer à Breachproof (optionnel)

Sectinel est l'arsenal, et il tient debout tout seul avec n'importe quel agent compatible
agentskills.io. Si vous voulez un opérateur autonome pour le manier,
**[Breachproof](https://github.com/Mikaru0Mystic/breachproof)** est un agent autonome bâti
autour de cette bibliothèque : il s'empare des compétences, lance les scanners et amène une
base de code à zéro constatation. Entièrement optionnel ; Sectinel n'a besoin de rien
d'autre pour être utile.

## Mettre à jour l'arsenal

Les bibliothèques sont intégrées (*vendored*) pour que l'installation reste autonome. Vous
pouvez les rafraîchir depuis l'*upstream* quand vous le souhaitez :

```bash
bash scripts/sync-arsenal.sh
```

## Contribuer

Les contributions les plus utiles sont les retours de terrain et de nouvelles compétences.
Une nouvelle compétence doit suivre le format `SKILL.md` d'agentskills.io et inclure les
correspondances de référentiels (la CI vérifie `name` et `description`). Voir
[CONTRIBUTING.md](CONTRIBUTING.md) et le [Code de conduite](CODE_OF_CONDUCT.md).

> Si vous corrigez une compétence *upstream* intégrée, envoyez aussi le correctif au projet
> d'origine (lien ci-dessous) pour que tout le monde en profite, pas seulement cette copie.

## Licence

La [Licence Apache 2.0](LICENSE) couvre le code et l'empaquetage propres à Sectinel. Les
bibliothèques intégrées conservent leurs licences **d'origine** (Apache-2.0 et MIT). Voir
le fichier `LICENSE` de chaque bibliothèque sous [`arsenal/`](arsenal/), ainsi que
[NOTICE](NOTICE) et [ATTRIBUTIONS.md](ATTRIBUTIONS.md).

## Crédits et attributions

Sectinel est avant tout un projet de curation et d'intégration. Il n'existerait pas sans
les personnes qui ont écrit les bibliothèques et les outils qu'il rassemble. Chacun est
leur travail, utilisé sous sa propre licence :

### Bibliothèques de compétences intégrées (dans `arsenal/`, avec leurs fichiers LICENSE)
- **[Anthropic-Cybersecurity-Skills](https://github.com/mukul975/Anthropic-Cybersecurity-Skills)**, 754 compétences, par **Mahipal Jangra (@mukul975)**. Apache-2.0.
- **[cybersecurity-skills](https://github.com/briiirussell/cybersecurity-skills)**, 29 compétences, par **Bri Russell (@briiirussell)**. MIT.
- **[claude-cybersecurity](https://github.com/AgriciDaniel/claude-cybersecurity)**, compétence phare à 8 agents, par **@AgriciDaniel**. MIT.

### Outils intégrés (invoqués, non empaquetés)
- **[ship-safe](https://github.com/asamassekou10/ship-safe)** par @asamassekou10. MIT.
- **[Shannon](https://github.com/KeygraphHQ/shannon)** par Keygraph. AGPL-3.0.
- **[PentAGI](https://github.com/vxcontrol/pentagi)** par vxcontrol. Apache-2.0 / EULA.
- **[Semgrep](https://semgrep.dev)**, **[OSV-Scanner](https://github.com/google/osv-scanner)**, **[Trivy](https://github.com/aquasecurity/trivy)**, **[Gitleaks](https://github.com/gitleaks/gitleaks)**, **[Trufflehog](https://github.com/trufflesecurity/trufflehog)**, **[Checkov](https://github.com/bridgecrewio/checkov)**, **[hadolint](https://github.com/hadolint/hadolint)**.

### Standards et référentiels
[agentskills.io](https://agentskills.io) · [MITRE ATT&CK](https://attack.mitre.org) · [MITRE D3FEND](https://d3fend.mitre.org) · [MITRE ATLAS](https://atlas.mitre.org) · [NIST CSF 2.0](https://www.nist.gov/cyberframework) · [NIST AI RMF](https://airc.nist.gov/AI_RMF).

« Anthropic » et « Claude » sont des marques d'Anthropic PBC. Tous les autres noms et
marques appartiennent à leurs propriétaires respectifs. Sectinel est un projet indépendant,
**non affilié, non sponsorisé et non approuvé** par aucune des entités ci-dessus. Fourni
**uniquement pour un usage de sécurité défensive autorisé**.
