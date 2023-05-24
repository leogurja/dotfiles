#!/bin/bash

FLATPAK_APPS="
  com.discordapp.Discord
  com.github.marhkb.Pods
  com.github.tchx84.Flatseal
  com.github.wwmm.easyeffects
  com.mattjakeman.ExtensionManager
  com.spotify.Client
  com.usebottles.bottles
  com.valvesoftware.Steam
  de.haeckerfelix.Fragments
  org.freedesktop.Piper
  org.gnome.Boxes
  org.gnome.Calculator
  org.gnome.Calendar
  org.gnome.Evince
  org.gnome.Loupe
  org.gnome.NautilusPreviewer
  org.gnome.Totem
  org.kde.krita
  org.mozilla.firefox
  rest.insomnia.Insomnia
"

# pacman
sudo pacman -S neofetch github-cli libratbag neovim fish podman gnome-tweaks

# aur
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

# set defaults
sudo usermod -s $(which fish) $USER
xdg-mime default code.desktop text/plain

# starship
curl -sS https://starship.rs/install.sh | sh


# flatpak
flatpak remote-delete fedora
flatpak remote-delete fedora-testing
flatpak remote-modify --no-filter --enable flathub
flatpak install $FLATPAK_APPS
flatpak override com.usebottles.bottles --user --filesystem=xdg-data/applications
systemctl --user enable --now podman.socket # enable podman socket for com.github.marhkb.Pods

git submodule update

# criar os symlinks
./make-symlinks.sh


