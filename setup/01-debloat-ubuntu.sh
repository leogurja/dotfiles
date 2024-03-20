#!/bin/bash

# remove snaps
snap remove snap-store firefox firmware-updater
snap remove gnome-42-2204 gtk-common-themes snapd-desktop-integration
snap remove core22 bare
snap remove snapd

# remove unused deb packages
sudo apt purge -y snapd gnome-calculator seahorse eog evince apport-gtk gnome-characters \
  gnome-clocks gnome-font-viewer gnome-logs gnome-remote-desktop gnome-startup-applications \
  gnome-text-editor gnome-power-manager network-manager-gnome yelp gnome-terminal

# stop snapd from reinstalling
sudo apt-mark hold snapd yelp

# cleanup
sudo apt autoremove -y