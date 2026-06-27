#!/usr/bin/env bash
# Validate that every SKILL.md has name + description frontmatter.
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
fail=0; count=0
while IFS= read -r f; do
  count=$((count+1))
  head -1 "$f" | grep -q '^---$' || { echo "MISSING frontmatter: $f"; fail=1; continue; }
  grep -q '^name:' "$f"        || { echo "MISSING name: $f"; fail=1; }
  grep -q '^description:' "$f" || { echo "MISSING description: $f"; fail=1; }
done < <(find "$ROOT/arsenal" "$ROOT/skills" -name SKILL.md)
echo "validated $count skills; result=$fail"
exit $fail
