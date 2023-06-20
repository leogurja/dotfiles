
apt install gh fish git curl vim
sudo ln -s /usr/bin/distrobox-host-exec /usr/local/bin/xdg-open
sudo ln -s /usr/bin/distrobox-host-exec /usr/local/bin/flatpak
sudo ln -s /usr/bin/distrobox-host-exec /usr/local/bin/podman

# starship
curl -sS https://starship.rs/install.sh | sh

# aws
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip"
unzip /tmp/awscliv2.zip
sudo /tmp/aws/install"
