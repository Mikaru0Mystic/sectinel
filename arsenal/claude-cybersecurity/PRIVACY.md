# Privacy Policy

## claude-cybersecurity operates entirely locally.

This skill runs within your Claude Code session. It does not:

- Collect, transmit, or store any telemetry
- Require account creation or authentication
- Send your code to external services
- Create cookies, tracking pixels, or analytics
- Phone home to any server
- Store data outside your local filesystem

## What This Skill Does

- Reads source code files in your project directory (as instructed by you)
- Analyzes code patterns using Claude's reasoning capabilities
- Produces security findings in markdown format to your terminal
- Optionally writes report files to your project directory (only if you request it)

## Third-Party Services

| Feature | Service | When | Data Sent |
|---------|---------|------|-----------|
| Core analysis | Claude (Anthropic) | Every invocation | Your code (within your existing Claude session) |
| Dependency CVE lookup | None (pattern-based) | Dependency audit | Nothing — uses local pattern matching |
| Secret detection | None (local analysis) | Secret scanning | Nothing — entirely local |

## Data Residency

All analysis happens within your Claude Code session. No data leaves the Anthropic API boundary you already agreed to when using Claude Code.

## Your Code

Your code is processed by Claude within your existing session context. This skill does not introduce any additional data processing beyond what Claude Code already provides. Review [Anthropic's privacy policy](https://www.anthropic.com/privacy) for details on how Claude handles conversation data.

## Contact

Questions or concerns: [GitHub Issues](https://github.com/AgriciDaniel/claude-cybersecurity/issues)

**Last updated:** 2026-04-11
