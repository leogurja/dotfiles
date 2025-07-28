#!/bin/bash

root=$(git rev-parse --show-toplevel)

# apt packages
sudo apt-get install -y $(cat $root/packages/apt-install.txt)
sudo apt-get purge -y $(cat $root/packages/apt-purge.txt)
sudo apt-get autoremove -y

# flatpak
flatpak remote-add --user flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install -y $(cat $root/packages/flatpak-install.txt)

# add user to docker group
sudo usermod -aG docker $USER

# fix dual boot clock
timedatectl set-local-rtc 1

# set fish as default shell
chsh -s $(which fish)
