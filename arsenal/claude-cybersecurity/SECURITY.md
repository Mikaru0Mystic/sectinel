# Security Policy

## Reporting a Vulnerability

If you discover a security vulnerability in this skill, please report it responsibly.

**Do NOT open a public GitHub issue for security vulnerabilities.**

Instead, use the [GitHub Security Advisory](https://github.com/AgriciDaniel/claude-cybersecurity/security/advisories/new) form.

## Response Timeline

- **Acknowledgment**: Within 48 hours
- **Assessment**: Within 7 days
- **Fix timeline**: Depends on severity (critical: 24-72 hours, high: 1 week, medium: 2 weeks)

## Scope

This policy covers:
- The skill's SKILL.md instructions and reference files
- Installation scripts (install.sh)
- Any CI/CD workflow files
- Detection pattern accuracy (false negatives that could give false confidence)

## Security Practices

- No credentials stored in the repository
- No external network calls made by the skill
- User-level installation only (no root/sudo required)
- All analysis is read-only (no file modifications unless explicitly requested)
