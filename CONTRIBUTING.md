# Contributing to Sectinel

Sectinel grows through community contributions — new skills, sharper playbooks,
better framework mappings, and new tool/MCP integrations.

## Two kinds of contribution

1. **Sectinel's own additions** — new skills authored here, new scanner/MCP
   integrations, installer/docs improvements. These land in this repo under
   Apache-2.0.
2. **Fixes to a vendored upstream skill** — if you improve a skill under
   `arsenal/<library>/`, please **also open a PR upstream** to the original
   project (see [ATTRIBUTIONS.md](ATTRIBUTIONS.md)) so the wider community
   benefits and the vendored copy can be re-synced cleanly. We avoid diverging
   from upstreams; substantial local edits to vendored content may be declined
   in favor of an upstream fix + `scripts/sync-arsenal.sh`.

## Authoring a skill (agentskills.io standard)

```
skills/<your-skill>/SKILL.md
```
```yaml
---
name: your-skill-name          # kebab-case, 1–64 chars
description: >-                 # keyword-rich; what it does AND when to use it
  ...
domain: cybersecurity
tags: [ ... ]
# framework mappings where applicable:
nist_csf: [ ... ]
atlas_techniques: [ ... ]
d3fend_techniques: [ ... ]
---
## When to Use
## Prerequisites
## Workflow
## Verification
```

Requirements (CI enforces the first two):
- Valid frontmatter with `name` + `description`.
- Map to at least one framework (ATT&CK / NIST CSF / D3FEND / ATLAS / AI RMF) where it makes sense.
- Imperative, step-by-step Workflow; a Verification section.
- **No malicious payloads, no unauthorized-target instructions.** Offensive
  skills must open with an authorization check and refuse unauthorized use.

## Workflow

1. Fork, branch (`skill/...`, `integration/...`, `docs/...`).
2. Add your skill/integration; run the validator: `bash scripts/validate.sh` (or rely on CI).
3. Open a PR with the template.

## Code of Conduct

This project follows the [Contributor Covenant](CODE_OF_CONDUCT.md).

## License

Contributions to Sectinel's own code are licensed under [Apache-2.0](LICENSE).
Do not add third-party content without preserving its license + updating
[ATTRIBUTIONS.md](ATTRIBUTIONS.md).
