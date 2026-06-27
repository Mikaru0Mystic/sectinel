# The Arsenal — catalog

Sectinel bundles **784 skills** across three vendored libraries. They install to
`~/.config/opencode/cybersec-arsenal/` and are designed for **progressive
disclosure**: an agent scans frontmatter (~30 tokens each) to find the right
playbook, then loads only that one (500–2,000 tokens). Full coverage, lean
context.

```
arsenal/
├── Anthropic-Cybersecurity-Skills/   754 skills · 26 domains   (Apache-2.0, @mukul975)
│   └── skills/<name>/SKILL.md
├── cybersecurity-skills/              29 skills · 7 families    (MIT, @briiirussell)
│   └── skills/<name>/SKILL.md
└── claude-cybersecurity/             flagship 8-agent sweep     (MIT, @AgriciDaniel)
    └── skills/cybersecurity/SKILL.md  (also installed to ~/.claude/skills)
```

## Domains (Anthropic-Cybersecurity-Skills, 754)

Cloud Security · Threat Hunting · Threat Intelligence · Web Application Security ·
Network Security · Malware Analysis · Digital Forensics · Security Operations ·
Identity & Access Management · SOC Operations · Container Security · OT/ICS
Security · API Security · Vulnerability Management · Incident Response · Red
Teaming · Penetration Testing · Endpoint Security · DevSecOps · Phishing Defense
· Cryptography · Zero Trust · Mobile Security · Ransomware Defense · Compliance &
Governance · Deception Technology.

## Families (cybersecurity-skills, 29)

AppSec & supply chain (`owasp-audit`, `api-audit`, `dependency-audit`,
`secrets-audit`, `crypto-audit`, `mobile-audit`) · Offensive/recon (`recon`,
`osint-recon`, `web-pentest`, `red-team-engagement`) · Detect & respond
(`incident-triage`, `disk-forensics`, `siem-detection`, `soc-operations`,
`threat-hunting`, `breach-patterns`) · Cloud & infra (`cloud-audit`,
`container-audit`, `iam-audit`) · AI security (`prompt-injection`,
`ai-risk-management`) · Design & governance (`threat-modeling`, `vuln-research`,
`finding-triage`, `csf-mapping`, `security-comms`) · Compliance & privacy
(`privacy-engineering`, `pci-audit`, `hipaa-audit`).

## Flagship (claude-cybersecurity)

`/cybersecurity` spawns 8 parallel specialist agents — vulnerability detection,
authorization verification, secret scanning, supply-chain analysis, IaC
security, threat intelligence, AI-generated-code patterns, and business-logic
flaws — with framework-aware false-positive suppression.

## How to find a skill

```bash
# search by keyword
grep -ril "kerberoasting" ~/.config/opencode/cybersec-arsenal/
# then read the matching SKILL.md and follow its Workflow section
```

Full per-skill detail lives in each `SKILL.md`. For provenance + licensing of
every library, see [../ATTRIBUTIONS.md](../ATTRIBUTIONS.md).
