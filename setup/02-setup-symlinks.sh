#!/bin/bash

root=$(git rev-parse --show-toplevel)
home="$root/home"
backup="$root/dotfiles_old"

files="
  .config/starship.toml
  .config/asdfrc
  .config/git
  .local/share/asdf
  .local/share/flatpak/overrides
  .local/share/fonts
  .config/distrobox
  .config/fish
"

mkdir -p "$backup"

for file in $files; do
  if [ -e "$HOME/$file" ] && [ ! -L "$HOME/$file" ]; then
    echo "Salvando $HOME/$file antigo"
    mv $HOME/$file "$backup"
  fi

  if [ -L "$HOME/$file" ]; then
    rm "$HOME/$file"
  fi

  echo "$home/$file -> $HOME/$file"
  ln -sf "$home/$file" $HOME/$file
done

git submodule init && git submodule update
