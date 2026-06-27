# Attributions

Sectinel stands entirely on the shoulders of the open-source security community.
It **combines, wires, and packages** the work of others; it does not claim
authorship of the vendored skills or the integrated tools. This document records
every source, its author, its license, and exactly what Sectinel does with it.

If you are one of these authors and want a change to how you're credited (or want
your work removed), please open an issue — we'll act on it immediately.

## Vendored skill libraries (redistributed in `arsenal/`)

These are bundled in this repository so the suite installs self-contained. Each
is redistributed **under its own original license**, with the upstream `LICENSE`
file preserved inside its folder. Their content is unmodified except for being
placed under `arsenal/`.

| Library | Author | License | License file | Upstream |
|---|---|---|---|---|
| Anthropic-Cybersecurity-Skills (754 skills) | Mahipal Jangra (**@mukul975**) | Apache-2.0 | `arsenal/Anthropic-Cybersecurity-Skills/LICENSE` | https://github.com/mukul975/Anthropic-Cybersecurity-Skills |
| cybersecurity-skills (29 skills) | **Bri Russell** (@briiirussell) | MIT | `arsenal/cybersecurity-skills/LICENSE` | https://github.com/briiirussell/cybersecurity-skills |
| claude-cybersecurity (flagship 8-agent skill) | **@AgriciDaniel** | MIT | `arsenal/claude-cybersecurity/LICENSE` | https://github.com/AgriciDaniel/claude-cybersecurity |

> The Apache-2.0 and MIT licenses both permit redistribution with attribution
> and license inclusion, which is satisfied here. We did **not** relicense any
> vendored content — Sectinel's own Apache-2.0 applies only to Sectinel's own
> packaging, installers, docs, and integration code.

## Integrated tools (invoked at runtime, **not** bundled)

Sectinel's skills + installer call these tools; their source is **not** included
in this repository. Notably, **Shannon is AGPL-3.0** and **PentAGI** carries its
own EULA — to respect copyleft and their terms, they are integrated by
invocation only and are never vendored or relicensed.

| Tool | Author | License | Upstream |
|---|---|---|---|
| ship-safe | @asamassekou10 | MIT | https://github.com/asamassekou10/ship-safe |
| Shannon (Shannon Lite) | Keygraph | AGPL-3.0 | https://github.com/KeygraphHQ/shannon |
| PentAGI | vxcontrol | Apache-2.0 / EULA | https://github.com/vxcontrol/pentagi |
| Semgrep | Semgrep, Inc. | LGPL-2.1 / commercial | https://semgrep.dev |
| OSV-Scanner | Google | Apache-2.0 | https://github.com/google/osv-scanner |
| Trivy | Aqua Security | Apache-2.0 | https://github.com/aquasecurity/trivy |
| Gitleaks | Zachary Rice | MIT | https://github.com/gitleaks/gitleaks |
| Trufflehog | Truffle Security | AGPL-3.0 | https://github.com/trufflesecurity/trufflehog |
| Checkov | Prisma / Bridgecrew | Apache-2.0 | https://github.com/bridgecrewio/checkov |
| hadolint | hadolint | GPL-3.0 | https://github.com/hadolint/hadolint |

## Standards & frameworks

- [agentskills.io](https://agentskills.io) — the open skill standard Sectinel adheres to.
- [MITRE ATT&CK](https://attack.mitre.org), [D3FEND](https://d3fend.mitre.org), [ATLAS](https://atlas.mitre.org) — © The MITRE Corporation.
- [NIST CSF 2.0](https://www.nist.gov/cyberframework), [NIST AI RMF](https://airc.nist.gov/AI_RMF) — U.S. NIST.

## Sister project

- **[Breachproof](https://github.com/PockySweet/breachproof)** — the autonomous
  agent that wields this arsenal (Apache-2.0).

## Trademarks

"Anthropic" and "Claude" are trademarks of Anthropic PBC. "MITRE", "ATT&CK",
"D3FEND", and "ATLAS" are trademarks of The MITRE Corporation. All other names
and marks belong to their respective owners. Sectinel is independent and not
affiliated with, sponsored by, or endorsed by any listed party.
