#!/bin/bash

# packages
sudo abroot exec apt install ratbagd gamemode epiphany-browser- totem- gnome-music- eog-
curl -sS https://starship.rs/install.sh | sh
curl https://az764295.vo.msecnd.net/stable/b3e4e68a0bc097f0ae7907b217c1119af9e03435/code_1.78.2-1683731010_amd64.deb -o ~/Downloads/code.deb

# code
apx install ~/Downloads/code.deb
apx export code
apx export --bin code
xdg-mime default code.desktop text/plain

# flatpak
flatpak install com.discordapp.Discord com.github.marhkb.Pods com.github.tchx84.Flatseal \
  com.github.wwmm.easyeffects com.spotify.Client com.usebottles.bottles com.valvesoftware.Steam \
  org.freedesktop.Piper org.gnome.Boxes org.gnome.Calendar org.gnome.DejaDup org.gnome.Evince \
  org.gnome.Totem org.gnome.baobab org.mozilla.firefox
flatpak override com.usebottles.bottles --user --filesystem=xdg-data/applications

git submodule init && git submodule update

# criar os symlinks
./make-symlinks.sh
