#!/bin/bash

root=$(git rev-parse --show-toplevel)
home="$root/home"
backup="$root/dotfiles_old"

files=$(ls home -A)

mkdir -p "$backup"

for file in $files; do
  destination="$HOME/$(echo $file | sed 's/__/\//g')"

  if [ -L "$HOME/$file" ]; then
    rm "$HOME/$file"
  fi

  if [ -e "$HOME/$file" ]; then
    echo "Salvando $HOME/$file antigo"
    mv $HOME/$file "$backup"
  fi

  echo "$file -> $destination"
  ln -sf "$home/$file" $destination
done
