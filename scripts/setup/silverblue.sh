#!/bin/bash

root=$(git rev-parse --show-toplevel)

# ostree packages
rpm-ostree install $(cat $root/packages/ostree-install.txt)
sudo rpm-ostree apply-live --allow-replacement

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
