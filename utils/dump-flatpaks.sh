#!/bin/bash

ROOT=$(git rev-parse --show-toplevel)

flatpak list --app --columns=app | tail -n +1 > $ROOT/packages/flatpak-install.txt
