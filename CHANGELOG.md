# Changelog

This project follows [Semantic Versioning](https://semver.org) and
[Keep a Changelog](https://keepachangelog.com).

## [1.0.0] - 2026-05-31

### Added
- Initial release of **Sectinel**, the open security arsenal for AI agents.
- **784 security skills** combined from three upstream libraries (vendored under
  their original Apache-2.0 / MIT licenses, with attribution): Anthropic-
  Cybersecurity-Skills (754), briiirussell/cybersecurity-skills (29), and
  AgriciDaniel/claude-cybersecurity (1 flagship 8-agent orchestrator).
- Scanner integrations: ship-safe, Shannon, PentAGI, semgrep, gitleaks,
  osv-scanner, trivy, checkov, hadolint.
- **Security MCP** wiring (Semgrep MCP) + config examples.
- `install.sh` / `install.ps1` installer and `sync-arsenal.sh` upstream-refresh.
- agentskills.io standard throughout → Hermes Agent / OpenClaw / opencode /
  Claude Code / Cursor / Cline / Codex / Gemini compatible.
