# Changelog

All notable changes to claude-cybersecurity will be documented in this file.

## [Unreleased]
### Security
- Remove WebFetch/WebSearch phantom permissions (VULN-003, VULN-006)
- Add prompt injection defense to agent dispatch (VULN-001)
- Add .claude/ to file exclusion list (VULN-004)
- Add integrity verification to install script (VULN-002)
- Fix permission path mismatch in settings.local.json (VULN-014)
- Add per-agent tool restrictions (VULN-010)
- Add evidence redaction rules for secret masking (VULN-007)
- Add agent failure handling with Step 2.5 validation (VULN-013)

### Fixed
- Correct OWASP Top 10 references from 2025 to 2021
- Remove unsubstantiated statistical claims
- Remove references to nonexistent install.ps1
- Harden .gitignore with certificate/key patterns

### Added
- CI/CD pipeline with shellcheck, markdown linting, and checksum verification
- checksums.sha256 for file integrity verification
- CHANGELOG.md for release tracking

## [1.0.0] - 2026-04-11
### Added
- Initial release
- 8 parallel specialist agents with weighted scoring
- 25 CWE categories, 11 language pattern files, 4 IaC pattern files
- STRIDE threat modeling, MITRE ATT&CK v15 mapping
- Framework-aware false-positive suppression (10 frameworks)
- Compliance matrix (PCI DSS 4.0, HIPAA, SOC 2, GDPR, NIST 800-53)
