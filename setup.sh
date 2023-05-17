#!/bin/bash

# dnf
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf remove firefox gnome-terminal gnome-tour yelp
sudo dnf install libratbag-ratbagd neovim gnome-console fish code podman gnome-tweaks

sudo usermod -s $(which fish) $USER

# starship
curl -sS https://starship.rs/install.sh | sh

# enable podman socket for com.github.marhkb.Pods
systemctl --user enable --now podman.socket

# flatpak
flatpak remote-delete fedora
flatpak install org.mozilla.firefox com.github.tchx84.Flatseal com.github.wwmm.easyeffects com.usebottles.bottles \
  com.valvesoftware.Steam de.haeckerfelix.Fragments org.freedesktop.Piper org.gnome.Boxes \
  org.gnome.Calculator org.gnome.Evince org.gnome.Loupe org.gnome.NautilusPreviewer \
  org.gnome.Totem org.kde.krita com.spotify.Client com.discordapp.Discord rest.insomnia.Insomnia \
  com.github.marhkb.Pods com.mattjakeman.ExtensionManager

flatpak override com.usebottles.bottles --user --filesystem=xdg-data/applications


# criar os symlinks
./make-symlinks.sh


