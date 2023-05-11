# Nala
sudo apt install nala
sudo nala update
sudo nala upgrade
sudo nala install git gh gnome-tweaks flatpak gnome-software gnome-software-plugin-flatpak \
  deborphan neovim fish ratbagd bat gnome-shell-extension-manager \
  gnome-shell-extension-alphabetical-grid gnome-console curl
sudo nala purge seahorse switcheroo-control gnome-remote-desktop gnome-logs gnome-font-viewer \
  gnome-characters gnome-calculator nautilus-extension-gnome-terminal evince eog nano \
  vim-tiny update-manager update-notifier gnome-power-manager \
  software-properties-gtk yelp gnome-startup-applications gnome-shell-extension-desktop-icons-ng \
  gnome-shell-extension-ubuntu-dock gnome-terminal network-manager-gnome
sudo nala autoremove

# other
curl -sS https://starship.rs/install.sh | sh
git clone https://github.com/asdf-vm/asdf.git ~/.asdf

# dotfiles
gh auth login
gh repo clone gurgelio/dotfiles

# snap
sudo snap install code --classic
sudo snap install spotify discord slack insomnia
sudo snap remove snap-store

# flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install com.github.tchx84.Flatseal com.github.wwmm.easyeffects com.usebottles.bottles \
  com.valvesoftware.Steam de.haeckerfelix.Fragments org.freedesktop.Piper org.gnome.Boxes \
  org.gnome.Calculator org.gnome.Evince org.gnome.FileRoller org.gnome.Loupe org.gnome.NautilusPreviewer \
  org.gnome.Totem org.kde.krita

# trocar de shell padrão
sudo chsh -s /usr/bin/fish

# criar os symlinks
./make-symlinks.sh