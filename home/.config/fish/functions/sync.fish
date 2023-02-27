function sync
  set -l CYAN '\033[0;36m'
  set -l NC '\033[0m'
  echo -e "$CYAN### pacman ###$NC"
  sudo pacman -Syu 
  echo -e "\n$CYAN### flatpak ###$NC"
  flatpak update -y 
  echo -e "\n$CYAN### asdf ###$NC"
  asdf update && asdf plugin update --all
  echo -e "\n$CYAN### astronvim ###$NC"
  nvim +TSUpdate +AstroUpdate +q 
end
