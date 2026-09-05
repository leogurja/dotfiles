#!/bin/bash

root=$(git rev-parse --show-toplevel)

sudo tee /etc/dnf/dnf.conf >/dev/null << 'EOF'
# see `man dnf.conf` for defaults and possible options

[main]
assumeyes=True
installonly_limit=2
fastestmirror=True
max_parallel_downloads=10
EOF

COPR="atim/starship lilay/topgrade"

for copr in $COPR; do
  sudo dnf copr enable -y "$copr"
done

# shellcheck disable=SC2046
sudo dnf install -y $(cat "$root/packages/fedora-install.txt")
# shellcheck disable=SC2046
sudo dnf remove -y $(cat "$root/packages/fedora-remove.txt")
sudo dnf autoremove -y
