#!/usr/bin/env bash
set -euo pipefail

SKILL_NAME="cybersecurity"
SKILL_DIR="$HOME/.claude/skills/$SKILL_NAME"

if [ -d "$SKILL_DIR" ]; then
    rm -rf "$SKILL_DIR"
    echo "cybersecurity uninstalled successfully."
else
    echo "cybersecurity is not installed at $SKILL_DIR"
fi
