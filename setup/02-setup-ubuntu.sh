#!/bin/bash

sudo apt install -y nala
sudo nala fetch --auto
sudo nala install -y git curl gh deborphan flatpak zsh gnome-software gnome-software-plugin-flatpak \
  chrome-gnome-shell


# setup flatpak
flatpak remote-add --user flathub https://flathub.org/repo/flathub.flatpakrepo

# setup zsh shell
chsh -s $(which zsh)
curl -sS https://starship.rs/install.sh | sh