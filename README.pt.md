<div align="center">

<img src="assets/banner.svg" alt="Sectinel, o arsenal de segurança aberto para agentes de IA" width="100%">

<br/><br/>

[![License: Apache 2.0](https://img.shields.io/badge/License-Apache_2.0-blue.svg?style=flat-square)](LICENSE)
[![Standard: agentskills.io](https://img.shields.io/badge/standard-agentskills.io-ff6600?style=flat-square)](https://agentskills.io)
[![Skills: 784](https://img.shields.io/badge/skills-784-brightgreen?style=flat-square)](#o-que-inclui)
[![Frameworks: 5](https://img.shields.io/badge/frameworks-5-orange?style=flat-square)](#cinco-frameworks-um-arsenal)
[![Mapped: ATT&CK · NIST · D3FEND · ATLAS](https://img.shields.io/badge/mapeado-ATT%26CK·NIST·D3FEND·ATLAS-red?style=flat-square)](#cinco-frameworks-um-arsenal)

### O arsenal de segurança aberto para agentes de IA. 784 habilidades, integração com MCP e integrações de scanners numa única suíte instalável.

**🌐 [English](README.md) · [Español](README.es.md) · [中文](README.zh.md) · [Français](README.fr.md) · [Deutsch](README.de.md) · Português · [日本語](README.ja.md)**

</div>

---

## Por que existe

Os agentes de IA sabem escrever código e pesquisar na web, mas não vêm com os guias
práticos nos quais um analista de segurança realmente se apoia. Qual plugin do Volatility3
executar contra um despejo de memória. Qual regra Sigma detecta o Kerberoasting. Como
rastrear uma entrada do usuário até um *sink* perigoso. As poucas boas bibliotecas de
habilidades que cobrem isso estão espalhadas por repositórios, formatos e frameworks
diferentes.

A Sectinel as reúne num só lugar. Empacota as bibliotecas abertas de habilidades de
segurança mais robustas, integra os principais scanners abertos e um MCP de segurança,
mapeia tudo para cinco frameworks do setor e entrega o conjunto completo atrás de um único
instalador. Qualquer agente compatível com agentskills.io recebe tudo isso sem nada para
montar.

## O que inclui

**784 habilidades** provenientes de três bibliotecas *upstream* (incorporadas sob suas
licenças originais, com [atribuição](#créditos-e-atribuições) completa), além da integração
de scanners e MCP:

| Biblioteca | Habilidades | Cobertura |
|---|---:|---|
| **Anthropic-Cybersecurity-Skills** (@mukul975) | 754 | 26 domínios: nuvem, *threat hunting*, *threat intel*, web/apps, rede, malware, DFIR, SecOps, IAM, SOC, contêineres, OT/ICS, API, gestão de vulnerabilidades, resposta a incidentes, red team, pentest, endpoint, DevSecOps, phishing, criptografia, zero-trust, mobile, ransomware, conformidade, dececção |
| **cybersecurity-skills** (@briiirussell) | 29 | 7 famílias: AppSec e cadeia de suprimentos, ofensiva/reconhecimento, detecção e resposta, nuvem e infraestrutura, segurança de IA, design e governança, conformidade e privacidade |
| **claude-cybersecurity** (@AgriciDaniel) | 1 (8 agentes) | orquestrador principal que se distribui em 8 especialistas em paralelo: detecção de vulnerabilidades, autorização, segredos, cadeia de suprimentos, IaC, *threat intel*, padrões de código de IA, lógica de negócio |

Navegue pelo catálogo completo em [`docs/arsenal.md`](docs/arsenal.md) ou em
[`arsenal/`](arsenal/).

### Anatomia de uma habilidade (padrão agentskills.io)

Cada habilidade é uma pasta com um `SKILL.md`: *front-matter* YAML para descoberta rápida
mais um fluxo de trabalho em Markdown estruturado, muitas vezes acompanhado de
`references/`, `scripts/` e `assets/`. Um agente lê o *front-matter* (cerca de 30 tokens
cada) e carrega apenas o guia de que precisa (500 a 2.000 tokens), então você obtém
cobertura completa sem encher a janela de contexto.

## Cinco frameworks, um arsenal

As habilidades trazem mapeamentos para os principais frameworks do setor, de modo que um
único guia pode responder a várias perspectivas de conformidade ao mesmo tempo:

| Framework | Escopo |
|---|---|
| [MITRE ATT&CK](https://attack.mitre.org) | comportamentos do adversário / TTPs (14 táticas) |
| [NIST CSF 2.0](https://www.nist.gov/cyberframework) | postura organizacional (6 funções) |
| [MITRE D3FEND](https://d3fend.mitre.org) | contramedidas defensivas |
| [MITRE ATLAS](https://atlas.mitre.org) | ameaças adversárias de IA/ML |
| [NIST AI RMF](https://airc.nist.gov/AI_RMF) | gestão de riscos de IA |

## Compatibilidade

A Sectinel é construída sobre o padrão aberto **[agentskills.io](https://agentskills.io)**,
então se encaixa em qualquer *runtime* de agente compatível sem conversão:

| Runtime | Status |
|---|---|
| **Hermes Agent** (NousResearch) | ✅ as habilidades agentskills.io carregam nativamente |
| **OpenClaw** | ✅ lê o arsenal agentskills.io diretamente |
| **opencode** | ✅ de primeira classe (o instalador configura `~/.config/opencode`) |
| **Claude Code** | ✅ de primeira classe (`~/.claude/skills`) |
| **Cursor · Cline · Windsurf · Roo Code · Continue · Aider** | ✅ via o padrão e [`adapters/`](adapters/) |
| **OpenAI Codex CLI · Gemini CLI** | ✅ via o padrão e [`adapters/`](adapters/) |

Consulte [`adapters/README.md`](adapters/README.md) para os passos de instalação por
plataforma.

## Instalação

```bash
# Clone e depois instale o arsenal (habilidades + skill principal + scanners/MCP)
git clone https://github.com/Mikaru0Mystic/sectinel.git
cd sectinel
bash scripts/install.sh        # macOS / Linux / WSL
#  ou, no Windows:  pwsh scripts/install.ps1
```

Isso instala o arsenal de 784 habilidades em `~/.config/opencode/cybersec-arsenal/`, a
habilidade principal `cybersecurity` em `~/.claude/skills/`, e imprime o trecho de
configuração do MCP de segurança. Reinicie o seu *runtime* de agente depois.

## Scanners e motores integrados

As habilidades da Sectinel sabem como conduzir ferramentas reais. Elas são executadas em
tempo de execução em vez de embutidas, e cada uma mantém a sua própria licença (veja
[Atribuições](#créditos-e-atribuições)):

| Ferramenta | Papel | Embutida? |
|---|---|---|
| **[ship-safe](https://github.com/asamassekou10/ship-safe)** | scanner defensivo de 23 agentes (sem chave de API) | invocada (`npx`) |
| **[Shannon](https://github.com/KeygraphHQ/shannon)** | pentester de IA autônomo de caixa-branca | invocada (AGPL, não embutida) |
| **[PentAGI](https://github.com/vxcontrol/pentagi)** | plataforma de pentest autônoma (nmap/metasploit/sqlmap) | invocada (não embutida) |
| **Semgrep / OSV-Scanner / Trivy / Gitleaks / Checkov / hadolint** | SAST / SCA / IaC / segredos | invocadas |
| **Semgrep MCP** | SAST sobre o Model Context Protocol | configuração em [`mcp/`](mcp/) |

Veja [`docs/integrations.md`](docs/integrations.md) e [`mcp/README.md`](mcp/README.md).

## Combinar com Breachproof (opcional)

A Sectinel é o arsenal e se sustenta sozinha com qualquer agente compatível com
agentskills.io. Se você quer um operador autônomo para manejá-la,
**[Breachproof](https://github.com/Mikaru0Mystic/breachproof)** é um agente autônomo
construído em torno desta biblioteca: ele pega as habilidades, executa os scanners e leva
uma base de código a zero achados. Totalmente opcional; a Sectinel não precisa de mais nada
para ser útil.

## Atualizar o arsenal

As bibliotecas são incorporadas (*vendored*) para que a instalação permaneça autônoma. Você
pode atualizá-las a partir do *upstream* quando quiser:

```bash
bash scripts/sync-arsenal.sh
```

## Contribuir

As contribuições mais úteis são feedback de campo e novas habilidades. Uma nova habilidade
deve seguir o formato `SKILL.md` do agentskills.io e incluir mapeamentos de frameworks (a
CI verifica `name` e `description`). Veja [CONTRIBUTING.md](CONTRIBUTING.md) e o
[Código de Conduta](CODE_OF_CONDUCT.md).

> Se você está corrigindo uma habilidade *upstream* incorporada, envie a correção também ao
> projeto original (linkado abaixo) para que todos se beneficiem, não apenas esta cópia.

## Licença

A [Licença Apache 2.0](LICENSE) cobre o código e o empacotamento próprios da Sectinel. As
bibliotecas incorporadas mantêm suas licenças **originais** (Apache-2.0 e MIT). Veja o
arquivo `LICENSE` de cada biblioteca em [`arsenal/`](arsenal/), junto com [NOTICE](NOTICE) e
[ATTRIBUTIONS.md](ATTRIBUTIONS.md).

## Créditos e atribuições

A Sectinel é, na verdade, um projeto de curadoria e integração. Não existiria sem as
pessoas que escreveram as bibliotecas e ferramentas que ela reúne. Cada uma é trabalho
delas, usado sob a sua própria licença:

### Bibliotecas de habilidades incorporadas (em `arsenal/`, com seus arquivos LICENSE)
- **[Anthropic-Cybersecurity-Skills](https://github.com/mukul975/Anthropic-Cybersecurity-Skills)**, 754 habilidades, por **Mahipal Jangra (@mukul975)**. Apache-2.0.
- **[cybersecurity-skills](https://github.com/briiirussell/cybersecurity-skills)**, 29 habilidades, por **Bri Russell (@briiirussell)**. MIT.
- **[claude-cybersecurity](https://github.com/AgriciDaniel/claude-cybersecurity)**, habilidade principal de 8 agentes, por **@AgriciDaniel**. MIT.

### Ferramentas integradas (invocadas, não embutidas)
- **[ship-safe](https://github.com/asamassekou10/ship-safe)** por @asamassekou10. MIT.
- **[Shannon](https://github.com/KeygraphHQ/shannon)** por Keygraph. AGPL-3.0.
- **[PentAGI](https://github.com/vxcontrol/pentagi)** por vxcontrol. Apache-2.0 / EULA.
- **[Semgrep](https://semgrep.dev)**, **[OSV-Scanner](https://github.com/google/osv-scanner)**, **[Trivy](https://github.com/aquasecurity/trivy)**, **[Gitleaks](https://github.com/gitleaks/gitleaks)**, **[Trufflehog](https://github.com/trufflesecurity/trufflehog)**, **[Checkov](https://github.com/bridgecrewio/checkov)**, **[hadolint](https://github.com/hadolint/hadolint)**.

### Padrões e frameworks
[agentskills.io](https://agentskills.io) · [MITRE ATT&CK](https://attack.mitre.org) · [MITRE D3FEND](https://d3fend.mitre.org) · [MITRE ATLAS](https://atlas.mitre.org) · [NIST CSF 2.0](https://www.nist.gov/cyberframework) · [NIST AI RMF](https://airc.nist.gov/AI_RMF).

"Anthropic" e "Claude" são marcas da Anthropic PBC. Todos os outros nomes e marcas
pertencem aos seus respectivos proprietários. A Sectinel é um projeto independente, **não
afiliado, patrocinado ou endossado** por nenhuma das partes acima. Fornecido **apenas para
uso de segurança defensiva autorizado**.
