# Sectinel installer (Windows / PowerShell). Installs the 784-skill arsenal +
# flagship skill, and prints the security-MCP wiring snippet. Idempotent.
$ErrorActionPreference = 'Stop'

$root    = Split-Path -Parent $PSScriptRoot
$cfg     = if ($env:OPENCODE_CONFIG_DIR) { $env:OPENCODE_CONFIG_DIR } else { Join-Path $HOME ".config\opencode" }
$arsenal = Join-Path $cfg "cybersec-arsenal"

Write-Host "Installing Sectinel arsenal..." -ForegroundColor Magenta
New-Item -ItemType Directory -Force -Path $arsenal | Out-Null
Copy-Item -LiteralPath (Join-Path $root "arsenal\*") -Destination $arsenal -Recurse -Force
$n = (Get-ChildItem -LiteralPath $arsenal -Recurse -Filter 'SKILL.md' | Measure-Object).Count
Write-Host "  ok arsenal  -> $arsenal  ($n skills)"

$claudeSkills = Join-Path $HOME ".claude\skills"
New-Item -ItemType Directory -Force -Path $claudeSkills | Out-Null
Copy-Item -LiteralPath (Join-Path $root "skills\cybersecurity") -Destination $claudeSkills -Recurse -Force
Write-Host "  ok flagship -> $claudeSkills\cybersecurity  (/cybersecurity)"

Write-Host ""
Write-Host "Optional - wire the Semgrep security MCP into ~/.config/opencode/opencode.json:" -ForegroundColor Cyan
Write-Host '   "mcp": { "semgrep": { "type": "local", "command": ["uvx","semgrep-mcp"], "enabled": true } }'
Write-Host "   (see mcp/README.md)"
Write-Host ""
Write-Host "Done. Restart your agent runtime." -ForegroundColor Green
Write-Host "Pair with Breachproof: https://github.com/PockySweet/breachproof"
