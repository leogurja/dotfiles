function update
  set_color -o cyan
  echo "### OSTREE ###"
  set_color normal
  rpm-ostree update

  set_color -o cyan
  echo "### DISTROBOX ###"
  set_color normal
  distrobox upgade all

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
