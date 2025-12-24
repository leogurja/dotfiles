function update
  set_color -o cyan
  echo "### UJUST ###"
  set_color normal
  ujust update

  set_color -o cyan
  echo "### DISTROBOX ###"
  set_color normal
  distrobox upgrade --all

  set_color -o cyan
  echo -e "\n### ASDF ###"
  set_color normal
  asdf plugin update --all

  echo ""
end
