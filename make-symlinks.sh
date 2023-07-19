#!/bin/bash

dir=$(pwd)
olddir="$dir/dotfiles_old"

files="
  .gitconfig
  .config/starship.toml
  .config/fish
  .asdf
  .asdfrc
  .local/share/flatpak/overrides
  .config/distrobox
  .config/zsh
  .zshrc
"

mkdir -p "$olddir"
cd "$dir"

for file in $files; do
  if [ -e "$HOME/$file" ] && [ ! -L "$HOME/$file" ]; then
    echo "Salvando $HOME/$file antigo"
    mv $HOME/$file "$olddir"
  fi

  if [ -L "$HOME/$file" ]; then
    rm "$HOME/$file"
  fi

  echo "$dir/$file -> $HOME/$file"
  ln -sf "$dir/$file" $HOME/$file
done

git submodule init && git submodule update