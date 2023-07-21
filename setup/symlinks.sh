#!/bin/bash

root=$(git rev-parse --show-toplevel)
home="$root/home"
old="$root/dotfiles_old"

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

mkdir -p "$old"

for file in $files; do
  if [ -e "$HOME/$file" ] && [ ! -L "$HOME/$file" ]; then
    echo "Salvando $HOME/$file antigo"
    mv $HOME/$file "$olddir"
  fi

  if [ -L "$HOME/$file" ]; then
    rm "$HOME/$file"
  fi

  echo "$home/$file -> $HOME/$file"
  ln -sf "$home/$file" $HOME/$file
done

git submodule init && git submodule update