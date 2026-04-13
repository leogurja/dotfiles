eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv fish)"

set -l _brew_fish_vendor "$HOMEBREW_PREFIX/share/fish/vendor_completions.d"
if test -d "$_brew_fish_vendor"
    and not contains -- "$_brew_fish_vendor" $fish_complete_path
    set -gx fish_complete_path $fish_complete_path "$_brew_fish_vendor"
end
