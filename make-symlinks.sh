#!/bin/bash

dir=$(pwd)
olddir="$dir/dotfiles_old"

files="
  .gitconfig
  .config/starship.toml
  .asdf
  .asdfrc
  .local/share/flatpak/overrides
  .config/Code/User/keybindings.json
  .config/Code/User/settings.json
  .config/distrobox
  .config/zsh
  .vscode/extensions/extensions.json
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