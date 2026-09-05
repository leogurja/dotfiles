#!/bin/bash
set -euo pipefail

root=$(git rev-parse --show-toplevel)

if ! command -v cursor >/dev/null 2>&1; then
  echo "cursor not on PATH; install the AppImage first" >&2
  exit 1
fi

grep -v '^ *#' "$root/packages/cursor-extensions.txt" | while IFS= read -r extension; do
  [ -n "$extension" ] || continue
  cursor --install-extension "$extension"
done
