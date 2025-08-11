#!/bin/bash

# This script dumps the list of installed Flatpak applications to a file.

root=$(git rev-parse --show-toplevel)

flatpak list --app --columns=app | tail -n +1 > $root/packages/flatpak-install.txt
