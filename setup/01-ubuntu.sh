#!/bin/bash

ROOT=$(git rev-parse --show-toplevel)

# apt packages
sudo apt-get install -y $(cat $ROOT/packages/apt-install.txt)
sudo apt-get purge -y $(cat $ROOT/packages/apt-purge.txt)
sudo apt-get autoremove -y

# flatpak
flatpak remote-add --user flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install -y $(cat $ROOT/packages/flatpak-install.txt)

# add user to docker group
sudo usermod -aG docker $USER

# fix dual boot clock
timedatectl set-local-rtc 1

chsh -s $(which fish)
