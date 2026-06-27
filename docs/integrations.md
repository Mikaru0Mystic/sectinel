# Integrated scanners & engines

Sectinel's skills are wired to real tooling. These are **invoked at runtime**
(not vendored); each is under its own license — see
[../ATTRIBUTIONS.md](../ATTRIBUTIONS.md). Install the ones you need; skills
degrade gracefully when a tool is absent.

## Defensive (safe to run anywhere)

| Tool | Command | Catches |
|---|---|---|
| **ship-safe** | `npx ship-safe audit .` | 23-agent sweep: injection, auth bypass, SSRF, supply chain, config, RLS, LLM/MCP/agentic/RAG, PII, CI/CD, secrets |
| **Semgrep** | `semgrep scan --config p/owasp-top-ten --config p/secrets .` | SAST across OWASP, secrets, framework rules |
| **OSV-Scanner** | `osv-scanner -r .` | dependency CVEs (OSV database) |
| **Trivy** | `trivy fs .` · `trivy config .` | deps, IaC, container misconfig |
| **Gitleaks / Trufflehog** | `gitleaks detect` · `trufflehog filesystem .` | secrets in code + git history |
| **Checkov** | `checkov -d .` | Terraform / K8s / CloudFormation IaC |
| **hadolint** | `hadolint Dockerfile` | Dockerfile best practices |
| **Semgrep MCP** | see [`../mcp/`](../mcp/) | SAST over the Model Context Protocol |

## Active exploitation (authorized targets ONLY)

> ⚠️ These launch **real attacks**. Only run them against systems you own or are
> explicitly authorized in writing to test. See [../SECURITY.md](../SECURITY.md).

| Tool | Command | Notes |
|---|---|---|
| **Shannon** (Keygraph) | `npx @keygraph/shannon start -u <url> -r <repo>` | autonomous white-box AI pentester; needs Docker + an Anthropic key; "no exploit, no report" |
| **PentAGI** (vxcontrol) | self-hosted Docker stack → `https://localhost:8443` | autonomous platform: nmap, metasploit, sqlmap, 20+ tools, multi-agent |

## Letting Breachproof drive them

[Breachproof](https://github.com/PockySweet/breachproof) orchestrates all of the
above automatically — running the defensive set in parallel, looping fix→re-scan
to zero, and escalating to the active engines only when you've confirmed an owned
target.
