#!/bin/bash

root=$(git rev-parse --show-toplevel)

sudo tee /etc/yum.repos.d/cursor.repo << 'EOF'
[cursor]
name=Cursor
baseurl=https://downloads.cursor.com/yumrepo
enabled=1
gpgcheck=1
gpgkey=https://downloads.cursor.com/keys/anysphere.asc
EOF

sudo dnf update
sudo dnf install -y $(cat $root/packages/distrobox-install.txt)

distrobox-export --app cursor
distrobox-export --bin $(which cursor)
