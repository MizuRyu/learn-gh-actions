#!/usr/bin/env bash
set -euo pipefail

NAME="world"
if [[ "${1:-}" == "--name" ]]; then
  NAME="${2:-world}"
fi

MSG="Hello, ${NAME}!"
echo "${MSG}"

echo "PWD: $(pwd)"
ls -la /github/workspace || true

echo "shout=${MSG^^}" >> "$GITHUB_OUTPUT"
