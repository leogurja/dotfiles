#!/bin/bash

ROOT=$(git rev-parse --show-toplevel)

# flatpak repos
flatpak remove --all
flatpak remote-delete fedora
flatpak remote-delete fedora-testing
flatpak remote-delete flathub
flatpak remote-add --user flathub https://flathub.org/repo/flathub.flatpakrepo

# flatpak packages
flatpak install $(cat $ROOT/setup/flatpak-install.txt)

# dnf repos
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
sudo dnf copr enable atim/starship

# dnf packages
sudo dnf update
sudo dnf install -y $(cat $ROOT/setup/dnf-install.txt)
sudo dnf remove -y $(cat $ROOT/setup/dnf-remove.txt)
sudo dnf autoremove

# add user to docker group
sudo usermod -aG docker $USER

# fix dual boot clock
timedatectl set-local-rtc 1

# mise
curl https://mise.run | sh

chsh -s $(which fish)
