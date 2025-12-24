#!/bin/bash

root=$(git rev-parse --show-toplevel)

# flatpak
flatpak install -y $(cat $root/packages/flatpak-install.txt)
