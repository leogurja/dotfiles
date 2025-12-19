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

# flatpak
flatpak remote-delete fedora
flatpak remote-add --user flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install -y $(cat $root/packages/flatpak-install.txt)

# podman
systemctl --user enable --now podman.socket

# fix dual boot clock
timedatectl set-local-rtc 1

# set fish as default shell
chsh -s $(which fish)
