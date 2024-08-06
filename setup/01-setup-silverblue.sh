#!/bin/bash

# flatpak
flatpak remove --all
flatpak remote-delete fedora
flatpak remote-delete fedora-testing
flatpak remote-delete flathub

flatpak remote-add --user flathub https://flathub.org/repo/flathub.flatpakrepo

# rpm-ostree
rpm-ostree override remove firefox firefox-langpacks gnome-terminal gnome-terminal-nautilus gnome-tour toolbox yelp
rpm-ostree install distrobox gnome-console gnome-tweaks fish
sudo rpm-ostree apply-live --allow-replacement

# setup shell
chsh -s $(which fish)
curl -sS https://starship.rs/install.sh | sh

# fix dual boot clock
timedatectl set-local-rtc 1
