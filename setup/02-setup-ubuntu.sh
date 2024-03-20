#!/bin/bash

sudo apt install -y nala
sudo nala fetch --auto
sudo nala install -y git curl gh deborphan flatpak zsh gnome-software gnome-software-plugin-flatpak \
  chrome-gnome-shell


# install flatpaks
flatpak remote-add --user flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install -y com.belmoussaoui.Obfuscate com.discordapp.Discord com.github.finefindus.eyedropper \
  com.github.marhkb.Pods com.github.tchx84.Flatseal com.github.wwmm.easyeffects com.google.Chrome \
  com.mattjakeman.ExtensionManager com.obsproject.Studio com.rafaelmardojai.WebfontKitGenerator \
  com.raggesilver.BlackBox com.spotify.Client de.haeckerfelix.Fragments io.github.diegoivan.pdf_metadata_editor \
  io.gitlab.adhami3310.Footage org.gnome.Boxes org.gnome.Calendar org.gnome.Evince \
  org.gnome.Loupe org.gnome.NautilusPreviewer org.gnome.TextEditor org.gnome.Totem org.gnome.design.Contrast \
  org.gnome.design.IconLibrary org.gnome.design.SymbolicPreview org.kde.krita rest.insomnia.Insomnia

# setup zsh shell
chsh -s $(which zsh)
curl -sS https://starship.rs/install.sh | sh