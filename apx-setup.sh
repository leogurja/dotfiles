
# code
apx install ~/Downloads/code.deb gnome-tweaks git curl neovim fish gh unzip ca-certificates \
  gnupg apt-transport-https
apx export code
apx export --bin code
xdg-mime default code.desktop text/plain

# apx
apx run "sudo ln -s /usr/bin/distrobox-host-exec /usr/local/bin/xdg-open"
apx run "sudo ln -s /usr/bin/distrobox-host-exec /usr/local/bin/flatpak"
apx run "sudo ln -s /usr/bin/distrobox-host-exec /usr/local/bin/podman"

# starship
apx run "curl -sS https://starship.rs/install.sh | sh"

# aws
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip"
unzip /tmp/awscliv2.zip
apx run "sudo /tmp/aws/install"
