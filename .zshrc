export ZSH="$HOME/.oh-my-zsh"

# oh my zsh config
plugins=(
  zsh-autosuggestions
  colored-man-pages
  colorize
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# gcloud config
if [ -f '/home/gurja/google-cloud-sdk/path.zsh.inc' ]; then
  . '/home/gurja/google-cloud-sdk/path.zsh.inc';
fi

if [ -f '/home/gurja/google-cloud-sdk/completion.zsh.inc' ]; then
  . '/home/gurja/google-cloud-sdk/completion.zsh.inc';
fi

# Alias definitions
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

if [ -f ~/.env ]; then
    . ~/.env
fi

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# starship
eval "$(starship init zsh)"

