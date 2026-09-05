#!/bin/bash

root=$(git rev-parse --show-toplevel)

flatpak list --app --columns=app | tail -n +1 > "$root/packages/flatpak-install.txt"

overrides="$HOME/.local/share/flatpak/overrides"
if [ -d "$overrides" ]; then
  chezmoi add "$overrides"
fi
