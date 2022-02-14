flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf remove anaconda cheese document-scanner eog fedora-bookmarks fedora-chromium-config gnome-calendar gnome-characters gnome-clocks gnome-color-manager gnome-contacts gnome-getting-started-docs