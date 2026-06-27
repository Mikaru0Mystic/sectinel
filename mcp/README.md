# Security MCP servers

Sectinel's skills can drive **Model Context Protocol (MCP)** security servers
when your runtime has them wired. The flagship is the **Semgrep MCP** (SAST over
MCP); others (OSV / dependency, SAST aggregators) slot in the same way.

## opencode

Add to `~/.config/opencode/opencode.json` (or `.jsonc`) and restart:

```json
{
  "$schema": "https://opencode.ai/config.json",
  "mcp": {
    "semgrep": {
      "type": "local",
      "command": ["uvx", "semgrep-mcp"],
      "enabled": true
    }
  }
}
```

A ready-to-merge snippet is in [`opencode.mcp.json`](opencode.mcp.json).

## Claude Code

```bash
claude mcp add semgrep -- uvx semgrep-mcp
```

## Notes

- `uvx` ships with [uv](https://github.com/astral-sh/uv) (`pipx install uv` or
  `pip install uv`). Alternatively run the server however its project documents.
- Sectinel **degrades gracefully**: if no security MCP is wired, skills fall
  back to the CLI engines (`semgrep`, `osv-scanner`, etc.) listed in
  [`../docs/integrations.md`](../docs/integrations.md). An MCP is a convenience,
  never a hard dependency.
- **Breachproof** auto-detects and uses any security MCP present in the session;
  see https://github.com/PockySweet/breachproof.
