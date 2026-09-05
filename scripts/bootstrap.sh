#!/bin/bash
set -euo pipefail

root=$(git rev-parse --show-toplevel)

"$root/scripts/setup/fedora.sh"
"$root/scripts/setup/flatpak.sh"
"$root/scripts/setup/brew.sh"

chezmoi apply

if command -v cursor >/dev/null 2>&1; then
  "$root/scripts/setup/cursor-extensions.sh"
else
  echo "cursor not on PATH; skipping extensions (install the AppImage first)"
fi
