#!/bin/bash

# dnf repos
sudo rm /etc/yum.repos.d/{fedora-cisco-openh264.repo,_copr:copr.fedorainfracloud.org:phracek:PyCharm.repo,google-chrome.repo,rpmfusion-nonfree-nvidia-driver.repo,rpmfusion-nonfree-steam.repo,fedora-updates-testing-modular.repo,fedora-updates-testing.repo}
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

# dnf
sudo dnf remove firefox gnome-terminal gnome-tour yelp
sudo dnf remove simple-scan libreoffice-* gnome-shell-extension-* cheese eog evince gnome-text-editor gnome-contacts gnome-weather gnome-clocks gnome-maps mediawriter gnome-photos totem gnome-calculator simplescan gnome-boxes gnome-connections gnome-font-viewer gnome-characters gnome-logs rhythmbox gnome-calendar
sudo dnf install neofetch gh libratbag-ratbagd neovim gnome-console fish code podman gnome-tweaks
sudo dnf update

# chsh
sudo usermod -s $(which fish) $USER

# starship
curl -sS https://starship.rs/install.sh | sh


# flatpak
flatpak remote-delete fedora
flatpak remote-delete fedora-testing
flatpak remote-modify --no-filter --enable flathub
flatpak install org.mozilla.firefox com.github.tchx84.Flatseal com.github.wwmm.easyeffects com.usebottles.bottles \
  com.valvesoftware.Steam de.haeckerfelix.Fragments org.freedesktop.Piper org.gnome.Boxes \
  org.gnome.Calculator org.gnome.Evince org.gnome.Loupe org.gnome.NautilusPreviewer \
  org.gnome.Totem org.kde.krita com.spotify.Client com.discordapp.Discord rest.insomnia.Insomnia \
  com.github.marhkb.Pods com.mattjakeman.ExtensionManager org.gnome.Calendar

flatpak override com.usebottles.bottles --user --filesystem=xdg-data/applications
systemctl --user enable --now podman.socket # enable podman socket for com.github.marhkb.Pods

git submodule update

# criar os symlinks
./make-symlinks.sh


