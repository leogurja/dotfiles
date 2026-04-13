#!/bin/bash

root=$(git rev-parse --show-toplevel)

COPR="atim/starship lilay/topgrade"

for copr in $COPR; do
  sudo dnf copr enable $copr
done

sudo tee /etc/yum.repos.d/cursor.repo << 'EOF'
[cursor]
name=Cursor
baseurl=https://downloads.cursor.com/yumrepo
enabled=1
gpgcheck=1
gpgkey=https://downloads.cursor.com/keys/anysphere.asc
EOF

sudo dnf install -y $(cat $root/packages/fedora-install.txt)
sudo dnf remove -y $(cat $root/packages/fedora-remove.txt)
sudo dnf autoremove -y
