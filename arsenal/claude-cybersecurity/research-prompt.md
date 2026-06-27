# Ultimate Cybersecurity Skill — Research Agent Prompt

> **Mission**: Research EVERYTHING needed to build the most comprehensive AI-powered cybersecurity code review skill ever created for Claude Code. This skill must **surpass GitHub Advanced Security** (CodeQL, secret scanning, Dependabot, code scanning) and match or exceed commercial tools like Snyk, SonarQube, Semgrep, and Checkmarx — but with the advantage of AI reasoning, contextual understanding, and zero configuration.

---

## Instructions for Research Agents

You are a team of specialized research agents. Each agent handles ONE research track below. Work autonomously, search the web thoroughly, fetch and read actual documentation pages, and produce structured findings. **Do not summarize from memory — fetch real, current sources.**

For each track:
1. Execute every search query listed (and add more if you discover promising leads)
2. Fetch and read the top results — don't just list URLs
3. Extract actionable insights, patterns, checklists, and taxonomies
4. Note what's missing or weak in existing tools (opportunities for us)
5. Save findings in structured markdown under `/home/agricidaniel/Desktop/claude-cybersecurity/research/`

---

## Track 1: Existing AI Security Skills & Tools for Code Assistants

**Goal**: Find what others have built for AI-powered code security review — Claude Code skills, GitHub Copilot extensions, Cursor rules, VS Code extensions, and any open-source AI security tools.

### Search Queries
```
"claude code" security skill site:github.com
"claude code" cybersecurity SKILL.md
"claude code" OWASP skill
claude code security review plugin
"SKILL.md" security audit code review
AI code security review tool 2025 2026
"copilot extension" security review
cursor rules security code review .cursorrules
AI-powered SAST tool open source
LLM code security scanner
"code review" AI security vulnerabilities automated
```

### What to Extract
- Skill/plugin names, authors, GitHub URLs
- Feature lists and coverage areas
- How they structure their security checks (categories, severity levels)
- Scoring methodologies (if any)
- Limitations and gaps users complain about
- Trigger phrases and UX patterns
- How they handle false positives
- Whether they do contextual analysis or just pattern matching

### Output File
`/home/agricidaniel/Desktop/claude-cybersecurity/research/01-existing-tools.md`

---

## Track 2: GitHub Advanced Security — Deep Dive (The Benchmark to Beat)

**Goal**: Fully understand every feature of GitHub Advanced Security so we can match AND surpass each capability with AI reasoning advantages.

### Primary Sources to Fetch and Read
```
https://docs.github.com/en/get-started/learning-about-github/about-github-advanced-security
https://docs.github.com/en/code-security/code-scanning/introduction-to-code-scanning/about-code-scanning
https://docs.github.com/en/code-security/codeql-cli/getting-started-with-the-codeql-cli/about-the-codeql-cli
https://docs.github.com/en/code-security/secret-scanning/introduction/about-secret-scanning
https://docs.github.com/en/code-security/dependabot/dependabot-alerts/about-dependabot-alerts
https://docs.github.com/en/code-security/supply-chain-security/understanding-your-software-supply-chain/about-dependency-review
https://docs.github.com/en/code-security/security-overview/about-security-overview
https://docs.github.com/en/code-security/code-scanning/managing-your-code-scanning-configuration/about-the-tool-status-page
```

### Search Queries
```
GitHub Advanced Security features complete list 2025 2026
GitHub CodeQL query library what it detects
GitHub secret scanning supported patterns full list
GitHub code scanning vs Snyk vs SonarQube comparison
GitHub Advanced Security limitations criticism
GitHub Advanced Security what it misses
"GitHub Advanced Security" review pros cons
CodeQL custom queries tutorial
GitHub Copilot Autofix security how it works
GitHub security features free vs paid
```

### What to Extract
- **Complete feature inventory**: Every capability (code scanning, secret scanning, Dependabot alerts, dependency review, security overview, push protection, custom patterns, autofix)
- **CodeQL specifics**: What languages, what query types, what vulnerability classes, how custom queries work
- **Secret scanning**: Full list of supported secret patterns/providers
- **Dependabot**: How it scores vulnerabilities, what ecosystems it supports
- **Limitations**: What GHAS does NOT catch (logic bugs, business logic, auth flaws, race conditions, etc.)
- **Pricing model**: What's free, what requires GHAS license — our skill is FREE advantage
- **Autofix capabilities**: How GitHub Copilot Autofix works, its limitations
- **Gap analysis**: Create a table of "GHAS does this / GHAS misses this" — every "miss" is our opportunity

### Output File
`/home/agricidaniel/Desktop/claude-cybersecurity/research/02-github-advanced-security.md`

---

## Track 3: Industry Frameworks & Standards — The Knowledge Foundation

**Goal**: Build the complete taxonomy of security vulnerabilities, attack vectors, and best practices that our skill must know. This is the "brain" of the skill.

### Sources to Fetch and Read
```
https://owasp.org/www-project-top-ten/
https://owasp.org/API-Security/editions/2023/en/0x11-t10/
https://owasp.org/www-project-mobile-top-10/
https://owasp.org/www-project-web-security-testing-guide/
https://owasp.org/www-project-secure-coding-practices-quick-reference-guide/
https://owasp.org/www-community/vulnerabilities/
https://cwe.mitre.org/top25/archive/2024/2024_cwe_top25.html
https://www.sans.org/top25-software-errors/
https://nvd.nist.gov/
https://attack.mitre.org/
https://cheatsheetseries.owasp.org/
```

### Search Queries
```
OWASP Top 10 2025 2026 latest
OWASP API Security Top 10 2023
OWASP secure coding practices complete checklist
CWE Top 25 Most Dangerous Software Weaknesses 2024 2025
SANS Top 25 software errors
NIST Secure Software Development Framework SSDF
MITRE ATT&CK techniques relevant to code review
OWASP Application Security Verification Standard ASVS
OWASP Cheat Sheet Series complete list
security code review checklist comprehensive
CERT secure coding standards
BSIMM software security framework
ISO 27001 secure development requirements
PCI DSS secure coding requirements
HIPAA security requirements for code
SOC 2 secure development
GDPR security by design code requirements
```

### What to Extract
- **OWASP Top 10 (Web)**: Full list with descriptions, code examples of each vulnerability, and detection strategies
- **OWASP API Security Top 10**: Full list tailored for API code
- **OWASP Mobile Top 10**: Mobile-specific vulnerabilities
- **CWE Top 25**: Complete weakness enumeration with CWE IDs, descriptions, and code patterns
- **OWASP Cheat Sheets**: Extract the FULL list of cheat sheet topics — each becomes a knowledge module
- **OWASP ASVS**: All verification requirements organized by level (L1, L2, L3)
- **SANS/CWE mappings**: How SANS maps to CWE IDs
- **Compliance frameworks**: What PCI DSS, HIPAA, SOC 2, GDPR require in code — create a compliance matrix
- **MITRE ATT&CK**: Techniques that can be detected at the code level (hardcoded creds = Initial Access, etc.)
- **Secure coding checklists**: Merge all into a master checklist organized by category

### Output File
`/home/agricidaniel/Desktop/claude-cybersecurity/research/03-frameworks-standards.md`

---

## Track 4: Language-Specific Vulnerability Patterns

**Goal**: Build per-language vulnerability databases. Security is NOT language-agnostic — each language has unique pitfalls, dangerous functions, and idioms that lead to vulnerabilities.

### Languages to Cover
Python, JavaScript/TypeScript, Java, C/C++, Go, Rust, Ruby, PHP, C#/.NET, Swift, Kotlin, Shell/Bash, SQL, Terraform/IaC, Dockerfile, YAML (CI/CD)

### Search Queries (repeat pattern for each language)
```
[language] common security vulnerabilities code examples
[language] dangerous functions security
[language] secure coding best practices 2025
[language] OWASP specific vulnerabilities
[language] CWE common weakness patterns
[language] security anti-patterns
[language] dependency vulnerability common packages
OWASP [language] security cheat sheet
```

### Specific Searches
```
Python pickle deserialization vulnerability
Python eval exec security risks
JavaScript prototype pollution
JavaScript XSS prevention patterns
TypeScript type confusion security
Java deserialization attacks
Java Spring Security common mistakes
Go goroutine race condition security
Rust unsafe block security audit
C buffer overflow patterns modern
C++ memory safety vulnerabilities
PHP SQL injection patterns modern frameworks
Ruby on Rails security guide
C# .NET security best practices
Shell injection bash script vulnerabilities
Terraform security misconfigurations
Dockerfile security best practices hardening
YAML injection CI/CD pipeline attacks
Infrastructure as Code security scanning
Kubernetes YAML security patterns
GitHub Actions security vulnerabilities workflow injection
```

### What to Extract Per Language
- **Dangerous functions/patterns**: List with explanations (e.g., Python `eval()`, `pickle.loads()`, `subprocess.call(shell=True)`)
- **Common vulnerability types**: Ranked by frequency and severity
- **Secure alternatives**: For every dangerous pattern, the safe replacement
- **Framework-specific issues**: Django, Flask, Express, Spring, Rails, Laravel, ASP.NET
- **Dependency risks**: Known problematic packages/libraries per ecosystem
- **Static analysis patterns**: Regex or AST patterns that catch each issue
- **IaC/CI-CD specific**: Terraform, Docker, K8s, GitHub Actions misconfigurations

### Output File
`/home/agricidaniel/Desktop/claude-cybersecurity/research/04-language-vulnerabilities.md`

---

## Track 5: Security Expert Personas & Review Methodologies

**Goal**: Understand how elite security researchers and penetration testers think when reviewing code. Our skill should embody the mindset of the best security reviewers, not just run pattern matching.

### Search Queries
```
how security experts review code methodology
security code review process step by step
"threat modeling" code review integration
STRIDE threat model code review
attack surface analysis methodology
security code review heuristics expert
penetration tester code review approach
bug bounty hunter code review techniques
security architect mindset code review
"security champion" role responsibilities
attacker mindset defensive coding
security review different from code review
manual security code review vs automated
security code review prioritization triage
red team code review methodology
security code review cognitive biases
```

### Sources to Fetch
```
https://owasp.org/www-project-code-review-guide/
https://owasp.org/www-community/Threat_Modeling
https://cheatsheetseries.owasp.org/cheatsheets/Threat_Modeling_Cheat_Sheet.html
```

### What to Extract
- **Expert mental models**: How do top security reviewers approach code? What do they look for first?
- **Review methodologies**: Step-by-step processes (OWASP Code Review Guide, Microsoft SDL, etc.)
- **Threat modeling integration**: How STRIDE/DREAD/PASTA applies to code review
- **Triage and prioritization**: How to rank findings by actual exploitability, not just theoretical severity
- **Attack surface enumeration**: How to identify entry points, trust boundaries, data flows in code
- **Context-aware review**: How to understand business logic implications (auth bypass, privilege escalation, data leakage)
- **False positive management**: How experts avoid noise and focus on real, exploitable issues
- **Security review personas**: Different reviewer archetypes (attacker, defender, architect, compliance) and when each applies
- **Confidence scoring**: How to express certainty levels for findings
- **Communication patterns**: How security findings should be reported (severity, impact, proof, remediation)

### Output File
`/home/agricidaniel/Desktop/claude-cybersecurity/research/05-expert-personas.md`

---

## Track 6: Competitive Landscape — Commercial & Open-Source Security Tools

**Goal**: Understand every major security scanning tool's capabilities, scoring systems, output formats, and weaknesses. We need to know what works and what frustrates users.

### Tools to Research
| Tool | Type | Focus |
|------|------|-------|
| **Snyk** | Commercial | SCA, SAST, Container, IaC |
| **SonarQube/SonarCloud** | Commercial/OSS | Code quality + security |
| **Semgrep** | OSS + Commercial | Pattern-based SAST |
| **Checkmarx** | Commercial | Enterprise SAST/DAST |
| **Veracode** | Commercial | SAST/DAST/SCA |
| **CodeQL** | Free (GitHub) | Semantic code analysis |
| **Bandit** | OSS | Python security linter |
| **Brakeman** | OSS | Ruby/Rails security |
| **ESLint security plugins** | OSS | JS/TS security rules |
| **Bearer** | OSS | Data flow security |
| **Trivy** | OSS | Container/IaC/SCA |
| **Grype/Syft** | OSS | SCA vulnerability scanning |
| **TruffleHog** | OSS | Secret scanning |
| **GitLeaks** | OSS | Secret scanning |
| **tfsec/checkov** | OSS | IaC security |
| **KICS** | OSS | IaC security |
| **Nuclei** | OSS | Vulnerability scanning |
| **OSV-Scanner** | Google OSS | Dependency vulnerabilities |
| **Socket.dev** | Commercial | Supply chain security |

### Search Queries
```
best SAST tools comparison 2025 2026
Snyk vs SonarQube vs Semgrep comparison
security scanning tool comparison comprehensive
SAST tool false positive rates comparison
Semgrep rules library security
SonarQube security rules complete list
code security scanner user reviews complaints
best open source security scanning tools
"supply chain security" tools comparison
secret scanning tools comparison TruffleHog GitLeaks
IaC security scanning tools comparison
container security scanning comparison
SAST DAST IAST SCA explained differences
security tool scoring systems CVSS EPSS
vulnerability severity scoring methodologies
```

### What to Extract Per Tool
- **Coverage**: Languages, vulnerability types, frameworks supported
- **Detection methodology**: Pattern matching vs semantic analysis vs data flow
- **Scoring system**: How they rate severity (CVSS? Custom? Priority score?)
- **False positive rates**: User reports and benchmarks
- **Output format**: How findings are presented
- **Integration model**: CI/CD, IDE, CLI, API
- **Strengths**: What each tool does better than others
- **Weaknesses**: Known gaps, user complaints, missed vulnerability classes
- **Rule/query libraries**: Size, customizability, community contributions
- **Pricing**: Free tier limitations vs paid capabilities

### Specific Analyses
- Create a **feature matrix**: rows = vulnerability categories, columns = tools, cells = coverage level
- Identify the **"nobody catches this" gaps** — vulnerability classes that NO tool handles well
- Document **user frustration patterns** — what developers hate about security tools (noise, false positives, slow, unclear remediation)

### Output File
`/home/agricidaniel/Desktop/claude-cybersecurity/research/06-competitive-landscape.md`

---

## Track 7: Emerging Threats & AI-Era Security

**Goal**: Cover the cutting edge — threats that are NEW in the AI era, supply chain attacks, LLM-specific vulnerabilities, and emerging attack vectors that traditional tools miss entirely.

### Search Queries
```
OWASP Top 10 for LLM Applications 2025
AI prompt injection code vulnerability
LLM security risks in code
supply chain attack npm PyPI examples 2024 2025
typosquatting package managers security
CI/CD pipeline security vulnerabilities
GitHub Actions security injection attacks
dependency confusion attack
software supply chain security best practices
AI-generated code security risks
Copilot generated code vulnerabilities study
AI code assistant security implications
zero day vulnerability patterns
server-side request forgery SSRF modern
prototype pollution JavaScript 2025
deserialization attacks modern frameworks
JWT security vulnerabilities common mistakes
OAuth implementation security mistakes
API key exposure code patterns
secrets in code detection patterns
environment variable security
.env file security risks
infrastructure as code security misconfigurations common
Kubernetes security misconfigurations
cloud security code patterns AWS Azure GCP
serverless security vulnerabilities
WebSocket security vulnerabilities
GraphQL security vulnerabilities
gRPC security considerations
WebAssembly security model
container escape vulnerabilities
```

### Sources to Fetch
```
https://owasp.org/www-project-top-10-for-large-language-model-applications/
https://genai.owasp.org/
```

### What to Extract
- **OWASP Top 10 for LLMs**: Full list with code-level implications
- **AI-specific code vulnerabilities**: Prompt injection via code, training data poisoning, model extraction through API abuse
- **Supply chain attacks**: Real-world examples, detection patterns, prevention strategies
- **CI/CD pipeline attacks**: Workflow injection, secret exfiltration, build tampering
- **Modern API vulnerabilities**: GraphQL, gRPC, WebSocket, SSE specific issues
- **Cloud-native security**: Serverless, container, Kubernetes code-level issues
- **Emerging patterns**: What's trending in CVEs and bug bounty reports
- **AI-assisted attacks**: How attackers use AI, and how code can be defensively written
- **Zero-trust code patterns**: Authentication/authorization at every boundary

### Output File
`/home/agricidaniel/Desktop/claude-cybersecurity/research/07-emerging-threats.md`

---

## Post-Research Synthesis

After all 7 tracks complete, produce a **synthesis document** at:
`/home/agricidaniel/Desktop/claude-cybersecurity/research/00-synthesis.md`

### Synthesis Must Include

1. **Master Vulnerability Taxonomy**: Unified categorization from all sources (OWASP + CWE + SANS + language-specific + emerging), deduplicated and hierarchically organized

2. **Gap Analysis vs GitHub Advanced Security**: Table showing:
   | Capability | GHAS | Our Skill | Our Advantage |
   |------------|------|-----------|---------------|

3. **Competitive Moat**: What our AI-powered skill can do that NO static tool can:
   - Understand business context and intent
   - Trace data flows across complex architectures
   - Explain WHY something is dangerous in plain language
   - Suggest contextual fixes (not generic patches)
   - Detect logic vulnerabilities (auth bypass, race conditions, TOCTOU)
   - Review infrastructure-as-code alongside application code
   - Adapt to the project's specific tech stack automatically
   - Score confidence levels for each finding
   - Zero configuration — works immediately

4. **Skill Architecture Recommendation**: Based on findings, propose:
   - Sub-skill breakdown (what specialist agents we need)
   - Scoring methodology (0-100 with category breakdowns)
   - Severity classification system
   - Output format and reporting structure
   - Persona definition for the security reviewer agent

5. **Priority Matrix**: What to build first based on:
   - Impact (what catches the most real vulnerabilities)
   - Uniqueness (what no other tool does well)
   - Feasibility (what AI reasoning excels at)

---

## Research Quality Requirements — STRICT

### Source Trust Hierarchy (MANDATORY)

Every claim, statistic, checklist, or recommendation MUST come from one of these tiers. **If you can't source it to Tier 1-3, don't include it.**

| Tier | Source Type | Examples | Trust Level |
|------|-----------|----------|-------------|
| **1 — Primary Authority** | Standards bodies, official project docs | OWASP.org, CWE/MITRE, NIST (nvd.nist.gov, csrc.nist.gov), SANS, GitHub official docs, RFC documents, CERT/CC | **Highest — use as ground truth** |
| **2 — Official Tool Docs** | First-party documentation from security tools | Snyk docs, Semgrep docs, SonarQube docs, CodeQL docs, Trivy docs, tool changelogs, official blogs from these orgs | **High — verified by maintainers** |
| **3 — Peer-Reviewed / Expert** | Published research, conference talks, reputable security blogs | Academic papers (IEEE, ACM, USENIX Security), DEF CON/Black Hat talks, Google Project Zero blog, Trail of Bits blog, PortSwigger Research, Mandiant/CrowdStrike reports | **Good — cross-reference when possible** |
| **4 — Community** | Developer blogs, tutorials, Stack Overflow | Medium posts, personal blogs, Reddit, HackerNews threads | **Use ONLY for "user frustration" and "real-world experience" data — NEVER for vulnerability definitions or best practices** |
| **REJECT** | AI-generated summaries, listicles, SEO content farms | "Top 10 security tools 2025" from random blogs, undated articles, content with no author/org | **DO NOT USE — zero tolerance** |

### Freshness Requirements

- **MANDATORY**: All framework/standard references must be the **latest published version** (e.g., OWASP Top 10 2021 is current as of 2026, CWE Top 25 uses 2024 data)
- **PREFERRED**: 2024-2026 sources for tools, comparisons, and emerging threats
- **FLAG explicitly**: Anything citing pre-2023 data — include `⚠️ DATED: [year]` marker
- **VERIFY versions**: Don't cite "OWASP Top 10" without specifying which edition. Don't cite tool features without checking they still exist in the current version.

### Zero-Fluff Policy

- **NO generic advice**: "Always validate user input" is useless without specifying HOW, WHERE, and with WHAT function for each language
- **NO vague claims**: "This tool is popular" — give numbers (GitHub stars, downloads, CVE coverage count)
- **NO unsourced statistics**: Every number needs a URL. "90% of breaches involve..." — WHERE does that stat come from?
- **NO marketing language**: Strip vendor claims. Report what the tool ACTUALLY does based on docs and independent testing, not what its landing page says
- **NO redundancy**: If OWASP and CWE describe the same vulnerability, merge them into ONE entry with both IDs — don't list it twice
- **CONCRETE over abstract**: Instead of "SQL injection is dangerous", show the vulnerable code, the exploit, and the fix — for EACH language/framework

### Attribution Format

Every major claim must include inline attribution:
```
[Claim text] — Source: [Organization/Author], [URL], [Date accessed or published]
```

For vulnerability patterns, use this format:
```
**[Vulnerability Name]** (CWE-XXX / OWASP A0X)
- Affected: [languages/frameworks]
- Dangerous pattern: `[code snippet]`
- Secure alternative: `[code snippet]`
- Source: [URL]
```

### What Gets REJECTED in Review

Research output will be rejected and must be redone if it contains:
- [ ] Claims without source URLs
- [ ] Statistics without attribution
- [ ] Tool comparisons based on memory instead of current docs
- [ ] "Best practices" not traceable to Tier 1-3 sources
- [ ] Outdated framework versions presented as current
- [ ] Generic advice that applies to "any code" without language-specific guidance
- [ ] Marketing copy presented as technical fact

---

## Directory Structure for Output

```
/home/agricidaniel/Desktop/claude-cybersecurity/
├── research-prompt.md          ← THIS FILE
└── research/
    ├── 00-synthesis.md         ← Final synthesis (produced last)
    ├── 01-existing-tools.md    ← Track 1: AI security skills & tools
    ├── 02-github-advanced-security.md  ← Track 2: GHAS deep dive
    ├── 03-frameworks-standards.md      ← Track 3: OWASP, CWE, SANS, NIST
    ├── 04-language-vulnerabilities.md  ← Track 4: Per-language patterns
    ├── 05-expert-personas.md   ← Track 5: Security review methodologies
    ├── 06-competitive-landscape.md     ← Track 6: Tool comparison matrix
    └── 07-emerging-threats.md  ← Track 7: AI-era & emerging threats
```
