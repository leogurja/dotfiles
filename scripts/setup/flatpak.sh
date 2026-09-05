#!/bin/bash

root=$(git rev-parse --show-toplevel)

# flatpak
# shellcheck disable=SC2046
flatpak install -y $(cat "$root/packages/flatpak-install.txt")
