dir="$(pwd)/home"
olddir="$dir/dotfiles_old"

files="
  .gitconfig
  .config/starship.toml
  .config/nvim/lua/user
  .var/app/com.raggesilver.BlackBox/data/blackbox/schemes
  .config/fish
  .local/share/fonts
  .npmrc
  .asdfrc
  .tool-versions
"

mkdir -p "$olddir"
cd "$dir"

for file in $files; do
  [ -s "$HOME/$file" ] && mv $HOME/$file $olddir
  echo "$dir/$file -> $HOME/$file"
  ln -sf $dir/$file $HOME/$file
done
