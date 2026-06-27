<div align="center">

<img src="assets/banner.svg" alt="Sectinel：面向 AI 智能体的开放安全军火库" width="100%">

<br/><br/>

[![License: Apache 2.0](https://img.shields.io/badge/License-Apache_2.0-blue.svg?style=flat-square)](LICENSE)
[![Standard: agentskills.io](https://img.shields.io/badge/standard-agentskills.io-ff6600?style=flat-square)](https://agentskills.io)
[![Skills: 784](https://img.shields.io/badge/skills-784-brightgreen?style=flat-square)](#内容一览)
[![Frameworks: 5](https://img.shields.io/badge/frameworks-5-orange?style=flat-square)](#五大框架一个军火库)
[![Mapped: ATT&CK · NIST · D3FEND · ATLAS](https://img.shields.io/badge/mapped-ATT%26CK·NIST·D3FEND·ATLAS-red?style=flat-square)](#五大框架一个军火库)

### 面向 AI 智能体的开放安全军火库。784 项技能、MCP 接线与扫描器集成，汇于一个可安装的套件。

**🌐 [English](README.md) · [Español](README.es.md) · 中文**  ·  _更多语言陆续推出_

</div>

---

> **Sectinel 是军火库，[Breachproof](https://github.com/Mikaru0Mystic/breachproof) 是操作员。**
> Sectinel 为任何 AI 智能体提供一套可用的安全知识库：数百份分步操作手册、对所有主流框架的
> 映射，以及运行真实扫描器所需的接线。Breachproof 则是自主智能体，拿起这些技能、把一个代码库
> 推进到「零发现」。两者搭配使用，或者把 Sectinel 的军火库直接对接到你已经在用的任何智能体。

## 为什么需要它

AI 智能体能写代码、能上网搜索，却并不自带安全分析师真正依赖的实操手册：该用哪个 Volatility3
插件去分析内存转储；哪条 Sigma 规则能捕获 Kerberoasting；如何把一处用户输入一路追踪到危险的
汇聚点（sink）。少数几个真正覆盖这些内容的优秀技能库，分散在不同的仓库、格式和框架之中。

Sectinel 把它们汇聚到一处。它打包了最强的开源安全技能库，接入了主流的开源扫描器和一个安全
MCP，将所有内容映射到五大行业框架，并通过单一安装器交付整套方案。任何兼容 agentskills.io 的
智能体都能一次性获得全部能力，无需自行拼装。

## 内容一览

**784 项技能**，取自三个上游技能库（按其原始许可证内置（vendored），并附完整
[致谢](#致谢与署名)），外加扫描器与 MCP 接线：

| 技能库 | 技能数 | 覆盖范围 |
|---|---:|---|
| **Anthropic-Cybersecurity-Skills** (@mukul975) | 754 | 26 个领域：云、威胁狩猎、威胁情报、Web/应用、网络、恶意软件、DFIR、安全运营、IAM、SOC、容器、OT/ICS、API、漏洞管理、事件响应、红队、渗透测试、终端、DevSecOps、钓鱼、密码学、零信任、移动、勒索软件、合规、欺骗 |
| **cybersecurity-skills** (@briiirussell) | 29 | 7 大族群：应用安全与供应链、攻击/侦察、检测与响应、云与基础设施、AI 安全、设计与治理、合规与隐私 |
| **claude-cybersecurity** (@AgriciDaniel) | 1（8 个智能体） | 旗舰编排器，并行分发给 8 个专家：漏洞检测、授权、密钥、供应链、IaC、威胁情报、AI 代码模式、业务逻辑 |

在 [`docs/arsenal.md`](docs/arsenal.md) 或 [`arsenal/`](arsenal/) 中浏览完整目录。

### 技能结构（agentskills.io 标准）

每项技能都是一个包含 `SKILL.md` 的文件夹：用于快速发现的 YAML 前置元数据（front-matter），
加上结构化的 Markdown 工作流，通常还附带 `references/`、`scripts/` 和 `assets/`。智能体先读取
前置元数据（每条约 30 个 token），再只加载它需要的那一份手册（500 至 2000 个 token），从而在
不占满上下文窗口的前提下获得完整覆盖。

## 五大框架，一个军火库

技能均带有对主流行业框架的映射，因此一份手册可以同时回应多个合规视角：

| 框架 | 范畴 |
|---|---|
| [MITRE ATT&CK](https://attack.mitre.org) | 对手行为 / TTP（14 类战术） |
| [NIST CSF 2.0](https://www.nist.gov/cyberframework) | 组织安全态势（6 项职能） |
| [MITRE D3FEND](https://d3fend.mitre.org) | 防御性对策 |
| [MITRE ATLAS](https://atlas.mitre.org) | AI/ML 对抗性威胁 |
| [NIST AI RMF](https://airc.nist.gov/AI_RMF) | AI 风险管理 |

## 兼容性

Sectinel 构建于开放的 **[agentskills.io](https://agentskills.io)** 标准之上，因此无需转换即可
接入任何兼容的智能体运行时：

| 运行时 | 状态 |
|---|---|
| **Hermes Agent**（NousResearch） | ✅ 原生加载 agentskills.io 技能 |
| **OpenClaw** | ✅ 直接读取 agentskills.io 军火库 |
| **opencode** | ✅ 一等支持（安装器会配置 `~/.config/opencode`） |
| **Claude Code** | ✅ 一等支持（`~/.claude/skills`） |
| **Cursor · Cline · Windsurf · Roo Code · Continue · Aider** | ✅ 通过标准与 [`adapters/`](adapters/) |
| **OpenAI Codex CLI · Gemini CLI** | ✅ 通过标准与 [`adapters/`](adapters/) |

各平台的安装步骤见 [`adapters/README.md`](adapters/README.md)。

## 安装

```bash
# 克隆后安装军火库（技能 + 旗舰技能 + 扫描器/MCP 接线）
git clone https://github.com/Mikaru0Mystic/sectinel.git
cd sectinel
bash scripts/install.sh        # macOS / Linux / WSL
#  或在 Windows 上：  pwsh scripts/install.ps1
```

这会把 784 项技能的军火库安装到 `~/.config/opencode/cybersec-arsenal/`，把旗舰
`cybersecurity` 技能安装到 `~/.claude/skills/`，并打印安全 MCP 的接线片段。完成后请重启你的
智能体运行时。

> 想让它自己跑起来？把它与
> **[Breachproof](https://github.com/Mikaru0Mystic/breachproof)** 搭配——这是自主操作员，
> 它会拿起这套军火库，把一个代码库一路推进到「零发现」。

## 集成的扫描器与引擎

Sectinel 的技能知道如何驱动真实工具。这些工具在运行时被调用，而非内置打包，且各自保留自己的
许可证（见[致谢](#致谢与署名)）：

| 工具 | 作用 | 是否内置？ |
|---|---|---|
| **[ship-safe](https://github.com/asamassekou10/ship-safe)** | 23 智能体防御扫描器（无需 API 密钥） | 调用（`npx`） |
| **[Shannon](https://github.com/KeygraphHQ/shannon)** | 自主白盒 AI 渗透测试器 | 调用（AGPL，未内置） |
| **[PentAGI](https://github.com/vxcontrol/pentagi)** | 自主渗透测试平台（nmap/metasploit/sqlmap） | 调用（未内置） |
| **Semgrep / OSV-Scanner / Trivy / Gitleaks / Checkov / hadolint** | SAST / SCA / IaC / 密钥 | 调用 |
| **Semgrep MCP** | 基于 Model Context Protocol 的 SAST | [`mcp/`](mcp/) 中的配置 |

详见 [`docs/integrations.md`](docs/integrations.md) 与 [`mcp/README.md`](mcp/README.md)。

## 更新军火库

这些技能库以内置（vendored）方式打包，使安装保持自包含。你可以随时从上游刷新它们：

```bash
bash scripts/sync-arsenal.sh
```

## 参与贡献

最有价值的贡献是实战反馈与新技能。新技能应遵循 agentskills.io 的 `SKILL.md` 格式，并包含框架
映射（CI 会检查 `name` 与 `description`）。请参阅 [CONTRIBUTING.md](CONTRIBUTING.md) 与
[行为准则](CODE_OF_CONDUCT.md)。

> 如果你修复的是某个被内置的上游技能，请同时把修复提交到原始项目（链接见下方），让所有人都能
> 受益，而不仅仅是这份副本。

## 许可证

[Apache License 2.0](LICENSE) 适用于 Sectinel 自身的代码与打包。被内置的技能库保留其**原始**
许可证（Apache-2.0 与 MIT）。请查看 [`arsenal/`](arsenal/) 下各技能库的 `LICENSE` 文件，以及
[NOTICE](NOTICE) 与 [ATTRIBUTIONS.md](ATTRIBUTIONS.md)。

## 致谢与署名

Sectinel 本质上是一个策展与集成项目。没有那些编写了它所汇聚的技能库与工具的人，它就不会存在。
每一项都是他们的作品，并按其各自的许可证使用：

### 内置的技能库（打包于 `arsenal/`，附带其 LICENSE 文件）
- **[Anthropic-Cybersecurity-Skills](https://github.com/mukul975/Anthropic-Cybersecurity-Skills)**，754 项技能，作者 **Mahipal Jangra (@mukul975)**。Apache-2.0。
- **[cybersecurity-skills](https://github.com/briiirussell/cybersecurity-skills)**，29 项技能，作者 **Bri Russell (@briiirussell)**。MIT。
- **[claude-cybersecurity](https://github.com/AgriciDaniel/claude-cybersecurity)**，旗舰 8 智能体技能，作者 **@AgriciDaniel**。MIT。

### 集成的工具（调用，未内置）
- **[ship-safe](https://github.com/asamassekou10/ship-safe)**，作者 @asamassekou10。MIT。
- **[Shannon](https://github.com/KeygraphHQ/shannon)**，作者 Keygraph。AGPL-3.0。
- **[PentAGI](https://github.com/vxcontrol/pentagi)**，作者 vxcontrol。Apache-2.0 / EULA。
- **[Semgrep](https://semgrep.dev)**、**[OSV-Scanner](https://github.com/google/osv-scanner)**、**[Trivy](https://github.com/aquasecurity/trivy)**、**[Gitleaks](https://github.com/gitleaks/gitleaks)**、**[Trufflehog](https://github.com/trufflesecurity/trufflehog)**、**[Checkov](https://github.com/bridgecrewio/checkov)**、**[hadolint](https://github.com/hadolint/hadolint)**。

### 标准与框架
[agentskills.io](https://agentskills.io) · [MITRE ATT&CK](https://attack.mitre.org) · [MITRE D3FEND](https://d3fend.mitre.org) · [MITRE ATLAS](https://atlas.mitre.org) · [NIST CSF 2.0](https://www.nist.gov/cyberframework) · [NIST AI RMF](https://airc.nist.gov/AI_RMF)。

「Anthropic」与「Claude」是 Anthropic PBC 的商标。所有其他名称与商标归各自所有者所有。Sectinel
是一个独立项目，**不隶属于、不受赞助、也未获得**上述任何一方的认可。仅供**经过授权的防御性安全
用途**使用。
