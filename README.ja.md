<div align="center">

<img src="assets/banner.svg" alt="Sectinel: AI エージェントのためのオープンなセキュリティ・アーセナル" width="100%">

<br/><br/>

[![License: Apache 2.0](https://img.shields.io/badge/License-Apache_2.0-blue.svg?style=flat-square)](LICENSE)
[![Standard: agentskills.io](https://img.shields.io/badge/standard-agentskills.io-ff6600?style=flat-square)](https://agentskills.io)
[![Skills: 784](https://img.shields.io/badge/skills-784-brightgreen?style=flat-square)](#収録内容)
[![Frameworks: 5](https://img.shields.io/badge/frameworks-5-orange?style=flat-square)](#5-つのフレームワーク1-つのアーセナル)
[![Mapped: ATT&CK · NIST · D3FEND · ATLAS](https://img.shields.io/badge/mapped-ATT%26CK·NIST·D3FEND·ATLAS-red?style=flat-square)](#5-つのフレームワーク1-つのアーセナル)

### AI エージェントのためのオープンなセキュリティ・アーセナル。784 のスキル、MCP 連携、スキャナー統合を、インストール可能な一つのスイートに。

**🌐 [English](README.md) · [Español](README.es.md) · [中文](README.zh.md) · [Français](README.fr.md) · [Deutsch](README.de.md) · [Português](README.pt.md) · 日本語**

</div>

---

## なぜ存在するのか

AI エージェントはコードを書いたり Web を検索したりできますが、セキュリティアナリストが
実際に頼りにする実践的なプレイブックは備えていません。メモリダンプに対してどの Volatility3
プラグインを実行するか。どの Sigma ルールが Kerberoasting を捉えるか。ユーザー入力を危険な
シンク（sink）まで追跡する方法。これらを実際にカバーする数少ない優れたスキルライブラリは、
別々のリポジトリ・形式・フレームワークに散らばっています。

Sectinel はそれらを一か所にまとめます。最も強力なオープンソースのセキュリティスキル
ライブラリを束ね、主要なオープンソーススキャナーとセキュリティ MCP を組み込み、すべてを
5 つの業界フレームワークにマッピングし、単一のインストーラーの背後に一式を届けます。
agentskills.io 互換のエージェントなら、組み立てるものは何もなく、そのすべてを手に入れられます。

## 収録内容

**784 のスキル**を 3 つの上流ライブラリから取り込み（各自の元のライセンスのもとで
ベンダリング、完全な[クレジット](#クレジットと表示)付き）、さらにスキャナーと MCP の連携を
加えています。

| ライブラリ | スキル数 | カバー範囲 |
|---|---:|---|
| **Anthropic-Cybersecurity-Skills** (@mukul975) | 754 | 26 ドメイン：クラウド、脅威ハンティング、脅威インテリジェンス、Web/アプリ、ネットワーク、マルウェア、DFIR、SecOps、IAM、SOC、コンテナ、OT/ICS、API、脆弱性管理、インシデント対応、レッドチーム、ペンテスト、エンドポイント、DevSecOps、フィッシング、暗号、ゼロトラスト、モバイル、ランサムウェア、コンプライアンス、デセプション |
| **cybersecurity-skills** (@briiirussell) | 29 | 7 ファミリー：AppSec とサプライチェーン、攻撃/偵察、検知と対応、クラウドとインフラ、AI セキュリティ、設計とガバナンス、コンプライアンスとプライバシー |
| **claude-cybersecurity** (@AgriciDaniel) | 1（8 エージェント） | 旗艦オーケストレーターで、8 つの専門エージェントに並列展開：脆弱性検出、認可、シークレット、サプライチェーン、IaC、脅威インテリジェンス、AI コードのパターン、ビジネスロジック |

完全なカタログは [`docs/arsenal.md`](docs/arsenal.md) または [`arsenal/`](arsenal/) で
閲覧できます。

### スキルの構造（agentskills.io 標準）

各スキルは `SKILL.md` を含むフォルダです：素早い発見のための YAML フロントマター、加えて
構造化された Markdown ワークフロー、しばしば `references/`、`scripts/`、`assets/` を
伴います。エージェントはフロントマター（各約 30 トークン）を読み、必要な 1 つの
プレイブックだけ（500 から 2,000 トークン）を読み込むため、コンテキストウィンドウを
埋めることなく完全なカバレッジが得られます。

## 5 つのフレームワーク、1 つのアーセナル

スキルには主要な業界フレームワークへのマッピングが付いているため、1 つのプレイブックが
複数のコンプライアンスの観点に同時に応えられます：

| フレームワーク | 範囲 |
|---|---|
| [MITRE ATT&CK](https://attack.mitre.org) | 攻撃者の挙動 / TTP（14 戦術） |
| [NIST CSF 2.0](https://www.nist.gov/cyberframework) | 組織の態勢（6 機能） |
| [MITRE D3FEND](https://d3fend.mitre.org) | 防御的対策 |
| [MITRE ATLAS](https://atlas.mitre.org) | AI/ML の敵対的脅威 |
| [NIST AI RMF](https://airc.nist.gov/AI_RMF) | AI リスク管理 |

## 互換性

Sectinel はオープンな **[agentskills.io](https://agentskills.io)** 標準の上に構築されて
いるため、変換なしであらゆる互換エージェントランタイムに組み込めます：

| ランタイム | 状態 |
|---|---|
| **Hermes Agent**（NousResearch） | ✅ agentskills.io スキルをネイティブに読み込み |
| **OpenClaw** | ✅ agentskills.io アーセナルを直接読み込み |
| **opencode** | ✅ ファーストクラス（インストーラーが `~/.config/opencode` を設定） |
| **Claude Code** | ✅ ファーストクラス（`~/.claude/skills`） |
| **Cursor · Cline · Windsurf · Roo Code · Continue · Aider** | ✅ 標準と [`adapters/`](adapters/) 経由 |
| **OpenAI Codex CLI · Gemini CLI** | ✅ 標準と [`adapters/`](adapters/) 経由 |

プラットフォーム別のインストール手順は [`adapters/README.md`](adapters/README.md) を
参照してください。

## インストール

```bash
# クローンしてからアーセナルをインストール（スキル + 旗艦スキル + スキャナー/MCP 連携）
git clone https://github.com/Mikaru0Mystic/sectinel.git
cd sectinel
bash scripts/install.sh        # macOS / Linux / WSL
#  または Windows では:  pwsh scripts/install.ps1
```

これにより 784 スキルのアーセナルが `~/.config/opencode/cybersec-arsenal/` に、旗艦
`cybersecurity` スキルが `~/.claude/skills/` にインストールされ、セキュリティ MCP の設定
スニペットが出力されます。その後、エージェントランタイムを再起動してください。

## 統合されたスキャナーとエンジン

Sectinel のスキルは実際のツールの動かし方を知っています。これらはバンドルされるのではなく
実行時に呼び出され、各自が独自のライセンスを保持します（[クレジット](#クレジットと表示)を
参照）：

| ツール | 役割 | バンドル？ |
|---|---|---|
| **[ship-safe](https://github.com/asamassekou10/ship-safe)** | 23 エージェントの防御スキャナー（API キー不要） | 呼び出し（`npx`） |
| **[Shannon](https://github.com/KeygraphHQ/shannon)** | 自律型ホワイトボックス AI ペンテスター | 呼び出し（AGPL、非バンドル） |
| **[PentAGI](https://github.com/vxcontrol/pentagi)** | 自律型ペンテストプラットフォーム（nmap/metasploit/sqlmap） | 呼び出し（非バンドル） |
| **Semgrep / OSV-Scanner / Trivy / Gitleaks / Checkov / hadolint** | SAST / SCA / IaC / シークレット | 呼び出し |
| **Semgrep MCP** | Model Context Protocol 経由の SAST | [`mcp/`](mcp/) の設定 |

[`docs/integrations.md`](docs/integrations.md) と [`mcp/README.md`](mcp/README.md) を
参照してください。

## Breachproof と組み合わせる（任意）

Sectinel はアーセナルであり、agentskills.io 互換のどのエージェントでも単体で成り立ちます。
それを操る自律オペレーターが欲しい場合、
**[Breachproof](https://github.com/Mikaru0Mystic/breachproof)** はこのライブラリを中心に
作られた自律エージェントです：スキルを取り上げ、スキャナーを実行し、コードベースをゼロ検出
まで導きます。完全に任意であり、Sectinel は有用であるために他に何も必要としません。

## アーセナルの更新

ライブラリはベンダリングされており、インストールは自己完結のままです。いつでも上流から
更新できます：

```bash
bash scripts/sync-arsenal.sh
```

## 貢献

最も有用な貢献は現場のフィードバックと新しいスキルです。新しいスキルは agentskills.io の
`SKILL.md` 形式に従い、フレームワークのマッピングを含めてください（CI が `name` と
`description` を確認します）。[CONTRIBUTING.md](CONTRIBUTING.md) と
[行動規範](CODE_OF_CONDUCT.md)を参照してください。

> ベンダリングされた上流スキルを修正する場合は、このコピーだけでなく全員が恩恵を
> 受けられるよう、元のプロジェクト（下記リンク）にも修正を送ってください。

## ライセンス

[Apache License 2.0](LICENSE) は Sectinel 自身のコードとパッケージングを対象とします。
ベンダリングされたライブラリは**元の**ライセンス（Apache-2.0 と MIT）を保持します。
[`arsenal/`](arsenal/) 配下の各ライブラリの `LICENSE` ファイル、[NOTICE](NOTICE) と
[ATTRIBUTIONS.md](ATTRIBUTIONS.md) を参照してください。

## クレジットと表示

Sectinel は本質的にキュレーションと統合のプロジェクトです。それがまとめるライブラリと
ツールを書いた人々なしには存在しません。それぞれは彼らの作品であり、各自のライセンスのもとで
使用されています：

### ベンダリングされたスキルライブラリ（`arsenal/` に同梱、LICENSE ファイル付き）
- **[Anthropic-Cybersecurity-Skills](https://github.com/mukul975/Anthropic-Cybersecurity-Skills)**、754 スキル、作者 **Mahipal Jangra (@mukul975)**。Apache-2.0。
- **[cybersecurity-skills](https://github.com/briiirussell/cybersecurity-skills)**、29 スキル、作者 **Bri Russell (@briiirussell)**。MIT。
- **[claude-cybersecurity](https://github.com/AgriciDaniel/claude-cybersecurity)**、旗艦 8 エージェントスキル、作者 **@AgriciDaniel**。MIT。

### 統合されたツール（呼び出し、非バンドル）
- **[ship-safe](https://github.com/asamassekou10/ship-safe)** 作者 @asamassekou10。MIT。
- **[Shannon](https://github.com/KeygraphHQ/shannon)** 作者 Keygraph。AGPL-3.0。
- **[PentAGI](https://github.com/vxcontrol/pentagi)** 作者 vxcontrol。Apache-2.0 / EULA。
- **[Semgrep](https://semgrep.dev)**、**[OSV-Scanner](https://github.com/google/osv-scanner)**、**[Trivy](https://github.com/aquasecurity/trivy)**、**[Gitleaks](https://github.com/gitleaks/gitleaks)**、**[Trufflehog](https://github.com/trufflesecurity/trufflehog)**、**[Checkov](https://github.com/bridgecrewio/checkov)**、**[hadolint](https://github.com/hadolint/hadolint)**。

### 標準とフレームワーク
[agentskills.io](https://agentskills.io) · [MITRE ATT&CK](https://attack.mitre.org) · [MITRE D3FEND](https://d3fend.mitre.org) · [MITRE ATLAS](https://atlas.mitre.org) · [NIST CSF 2.0](https://www.nist.gov/cyberframework) · [NIST AI RMF](https://airc.nist.gov/AI_RMF)。

「Anthropic」と「Claude」は Anthropic PBC の商標です。その他のすべての名称と商標は、
それぞれの所有者に帰属します。Sectinel は独立したプロジェクトであり、上記のいずれとも
**提携・スポンサー・推奨の関係にありません**。**認可された防御的セキュリティ用途のみ**に
提供されます。
