# inside distrobox

# add vscode
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
sudo dnf update

sudo dnf -y install code fish gh

# setup shell
chsh -s $(which fish)
curl -sS https://starship.rs/install.sh | sh

# export vscode
distrobox-export --app code
distrobox-export --bin $(which code)

sudo ln -s $(which distrobox-host-exec) /usr/local/bin/flatpak
sudo ln -s $(which distrobox-host-exec) /usr/local/bin/xdg-run
