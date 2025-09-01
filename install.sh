#!/bin/bash

# This script sets up symbolic links for configuration files in the home directory.
# It also backs up existing files to a specified backup directory.

root=$(git rev-parse --show-toplevel)
home="$root/home"
backup="$root/dotfiles_old"

files=$(ls home -A)

mkdir -p "$backup"

for file in $files; do
  destination="$HOME/$(echo $file | sed 's|__|/|g')"

  if [ -L "$destination" ]; then
    rm "$destination"
  fi

  if [ -e "$destination" ]; then
    echo "Salvando $destination antigo"
    mv "$destination" "$backup"
  fi

  echo "$file -> $destination"
  ln -sf "$home/$file" "$destination"
done
