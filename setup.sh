#!/bin/bash

# packages
sudo abroot exec apt install 7z ratbagd gamemode epiphany-browser- totem- gnome-music- eog-
curl https://az764295.vo.msecnd.net/stable/b3e4e68a0bc097f0ae7907b217c1119af9e03435/code_1.78.2-1683731010_amd64.deb \
  -o ~/Downloads/code.deb
sudo ln -s /usr/bin/7zz /usr/local/bin/7z # mod organizer precisa

# flatpak
flatpak install com.discordapp.Discord com.github.marhkb.Pods com.github.tchx84.Flatseal \
  com.github.wwmm.easyeffects com.spotify.Client com.usebottles.bottles com.valvesoftware.Steam \
  org.freedesktop.Piper org.gnome.Boxes org.gnome.Calendar org.gnome.DejaDup org.gnome.Evince \
  org.gnome.Totem org.gnome.baobab org.mozilla.firefox com.github.Matoking.protontricks

# flatpak overrides
flatpak override com.usebottles.bottles --user --filesystem=xdg-data/applications
flatpak override com.valvesoftware.Steam --user --filesystem=xdg-data/applications
flatpak override com.valvesoftware.Steam --user --filesystem=~/Games

git submodule init && git submodule update

# criar os symlinks
./make-symlinks.sh
