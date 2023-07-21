#!/bin/bash

root=$(git rev-parse --show-toplevel)

install=$(cat $root/setup/ubuntu/add.txt)
remove=$(cat $root/setup/ubuntu/remote.txt)
flatpaks=$(cat $root/setup/flatpaks.txt)
snaps=$(cat $root/setup/ubuntu/snaps.txt) # snaps a serem removidos (ordem importa!)

# flathub
flatpak remote-add --user flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install $flatpaks

# remove snaps
for app in $snaps; do
  snap remove app
done

sudo apt-get purge $remove -y
sudo apt-get install $install -y
sudo nala fetch
