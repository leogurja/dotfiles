#!/bin/bash

SCRIPT_DIR=$(dirname $BASH_ARGV[0])

# flatpak repos
flatpak remove --all
flatpak remote-delete fedora
flatpak remote-delete fedora-testing
flatpak remote-delete flathub
flatpak remote-add --user flathub https://flathub.org/repo/flathub.flatpakrepo

# flatpak packages
flatpak install $(cat $SCRIPT_DIR/flatpak-install.txt)

# dnf repos
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
sudo dnf copr enable atim/starship

# dnf packages
sudo dnf update
sudo dnf install -y $(cat $SCRIPT_DIR/dnf-install.txt)
sudo dnf remove -y $(cat $SCRIPT_DIR/dnf-remove.txt)
sudo dnf autoremove

# fix dual boot clock
timedatectl set-local-rtc 1

chsh -s $(which fish)
