function update
  set_color -o cyan
  echo "### APT ###"
  set_color normal
  sudo apt-get update -y
  sudo apt-get upgrade -y

  set_color -o cyan
  echo -e "\n### FLATPAK ###"
  set_color normal
  flatpak update -y

  set_color -o cyan
  echo -e "\n### ASDF ###"
  set_color normal
  asdf plugin update --all

  echo ""
end
