#!/bin/bash

dir=$(pwd)
olddir="$dir/dotfiles_old"

files="
  .gitconfig
  .config/starship.toml
  .config/fish
  .local/share/fonts
  .asdf
  .asdfrc
"

mkdir -p "$olddir"
cd "$dir"

for file in $files; do
  if [ -e "$HOME/$file" ] && [ ! -L "$HOME/$file" ]; then
    echo "Salvando $HOME/$file antigo"
    mv $HOME/$file $olddir
  fi

  if [ -L "$HOME/$file" ]; then
    rm "$HOME/$file"
  fi

  echo "$dir/$file -> $HOME/$file"
  ln -sf $dir/$file $HOME/$file
done
