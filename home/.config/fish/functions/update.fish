function update
  set_color -o cyan
  echo "### RPM OSTREE ###"
  set_color normal
  rpm-ostree update

  set_color -o cyan
  echo -e "\n### FLATPAK ###"
  set_color normal
  flatpak update -y

  set_color -o cyan
  echo -e "\n### DISTROBOX ###"
  set_color normal
  distrobox upgrade --all

  set_color -o cyan
  echo -e "\n### ASDF ###"
  set_color normal
  asdf update
  asdf plugin update --all
end
