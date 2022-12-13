function sync
  rpm-ostree update 
  flatpak update -y 
  asdf update && asdf plugin update --all
  nvim +TSUpdate +AstroUpdate +q 
end
