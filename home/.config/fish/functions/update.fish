function update
  set_color -o cyan
  echo "### DNF ###"
  set_color normal
  sudo dnf update -y

  set_color -o cyan
  echo -e "\n### FLATPAK ###"
  set_color normal
  flatpak update -y

  set_color -o cyan
  echo -e "\n### ASDF ###"
  set_color normal
  asdf update
  asdf plugin update --all
end
