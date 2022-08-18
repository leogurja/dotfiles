#!/bin/bash

dir="$(pwd)/home"
olddir=$dir/dotfiles_old

files="
  .gitconfig
  .hyper.js
  .config/starship.toml
  .config/lvim/config.lua
  .config/nvim
  .config/fish
  .local/share/fonts
  .asdfrc
  .tool-versions
"

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

for file in $files; do
  [ -s ~/$file ] && mv ~/$file $olddir
  echo "Creating symlink to $file in home directory."
  ln -s $dir/$file ~/$file
done
