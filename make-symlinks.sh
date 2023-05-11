#!/bin/bash

dir=$(pwd)
olddir="$dir/dotfiles_old"

files="
  .gitconfig
  .config/starship.toml
  .config/fish
  .local/share/fonts
  .asdfrc
  .tool-versions
"

mkdir -p "$olddir"
cd "$dir"

for file in $files; do
  if ! [ -L "$HOME/$file" ]; then
    if [ -s "$HOME/$file" ]; then
      mv $HOME/$file $olddir
      echo "Salvando $HOME/$file antigo"
    fi

    echo "$dir/$file -> $HOME/$file"
    mkdir -p "$HOME/$file"
    ln -sf $dir/$file $HOME/$file
  fi
done
