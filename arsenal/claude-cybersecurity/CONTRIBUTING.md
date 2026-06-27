# Contributing to claude-cybersecurity

Thank you for your interest in contributing!

## How to Contribute

### Reporting Bugs

- Use [GitHub Issues](https://github.com/AgriciDaniel/claude-cybersecurity/issues)
- Include: what you expected, what happened, steps to reproduce
- If it's a false positive/negative: include the code snippet and expected finding

### Suggesting Features

- Use [GitHub Discussions](https://github.com/AgriciDaniel/claude-cybersecurity/discussions)
- Describe the vulnerability class or detection pattern you'd like added
- Reference CWE IDs, OWASP categories, or CVEs where applicable

### Pull Requests

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/new-detection-pattern`
3. Make your changes
4. Test by running `/cybersecurity` on a sample project
5. Submit a PR with a clear description of what you added/changed

### Adding Language Patterns

If you're adding detection patterns for a language:
- Follow the existing format in `skills/cybersecurity/references/language-patterns/`
- Include: dangerous function, CWE ID, severity, and secure alternative
- Add framework-specific patterns where applicable
- Include at least one code example (vulnerable + fixed)

### Adding CWE Coverage

- Add a `## Category N:` section to `vulnerability-taxonomy.md`
- Include: severity range, affected languages, dangerous patterns, detection heuristic, secure alternatives
- Update the cross-reference table

## Code Style

- Markdown files: 80-100 char line width preferred
- Tables: aligned columns
- Code examples: realistic, not contrived
- CWE references: always include the ID number

## Questions?

Open a [Discussion](https://github.com/AgriciDaniel/claude-cybersecurity/discussions) — we're happy to help!
