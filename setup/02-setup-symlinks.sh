#!/bin/bash

root=$(git rev-parse --show-toplevel)
home="$root/home"
backup="$root/dotfiles_old"

files="
  .config/asdfrc
  .config/distrobox
  .config/fish
  .config/git
  .config/npmrc
  .config/pipewire
  .config/starship.toml
  .local/share/asdf
  .local/share/flatpak/overrides
  .local/share/fonts
  .var/app/com.google.Chrome/config/chrome-flags.conf
  .var/app/com.github.wwmm.easyeffects/config/easyeffects/input/solocast.json
"

# hard_link_files="
#
# "

mkdir -p "$backup"

for file in $files; do
  if [ -L "$HOME/$file" ]; then
    rm "$HOME/$file"
  fi

  if [ -e "$HOME/$file" ]; then
    echo "Salvando $HOME/$file antigo"
    mv $HOME/$file "$backup"
  fi

  echo "$home/$file -> $HOME/$file"
  ln -sf "$home/$file" $HOME/$file
done

# for file in $hard_link_files; do
#   if [ -e "$HOME/$file" ]; then
#     echo "Salvando $HOME/$file antigo"
#     mv $HOME/$file "$backup"
#   fi

#   echo "AS HARD LINK: $home/$file -> $HOME/$file"
#   cp -l "$home/$file" $HOME/$file
# done

git submodule init && git submodule update
