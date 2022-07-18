# base packages
sudo dnf install bat fira-code-fonts gnome-tweaks neovim xclip zsh

# oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
sh -c "$(curl -fsSL https://starship.rs/install.sh)"

# flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install com.discordapp.Discord \
  com.getpostman.Postman \
  org.gnome.NautilusPreviewer \
  com.slack.Slack \
  rest.insomnia.Insomnia \
  com.wps.Office \
  com.jetbrains.DataGrip \
  com.google.Chrome
  com.github.tchx84.Flatseal \
  com.stremio.Stremio \
  com.mattjakeman.ExtensionManager \
  com.obsproject.Studio \
  com.slack.Slack \
  com.spotify.Client \
  org.gnome.Boxes \
  org.gnome.Calculator \
  org.gnome.Evince \
  org.gnome.FileRoller \
  org.gnome.Totem \
  org.gnome.baobab \
  org.gnome.eog \
  org.gimp.GIMP