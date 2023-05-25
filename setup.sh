#!/bin/bash

# dnf repos
sudo rm /etc/yum.repos.d/{fedora-cisco-openh264.repo,_copr:copr.fedorainfracloud.org:phracek:PyCharm.repo,google-chrome.repo,rpmfusion-nonfree-nvidia-driver.repo,rpmfusion-nonfree-steam.repo,fedora-updates-testing-modular.repo,fedora-updates-testing.repo}
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

# packages
sudo dnf install neofetch gh libratbag-ratbagd neovim fish podman code
curl -sS https://starship.rs/install.sh | sh

# set defaults
sudo usermod -s $(which fish) $USER
xdg-mime default code.desktop text/plain


# flatpak
flatpak remote-delete fedora
flatpak remote-delete fedora-testing
flatpak remote-delete flathub
flatpak remote-add --user flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak override com.usebottles.bottles --user --filesystem=xdg-data/applications
systemctl --user enable --now podman.socket # enable podman socket for com.github.marhkb.Pods

git submodule init && git submodule update

# criar os symlinks
./make-symlinks.sh
