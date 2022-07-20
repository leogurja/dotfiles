# oh my zsh config
export ZSH=~/.oh-my-zsh
plugins=(
  zsh-autosuggestions
  colored-man-pages
  colorize
  zsh-syntax-highlighting
  asdf
)
source $ZSH/oh-my-zsh.sh

# Environment Variables
export EDITOR=nvim
export PATH="$PATH:$HOME/.local/bin"

# imports
[ -f ~/.gh-completion.sh ] && source ~/.gh-completion.sh
[ -f ~/.cargo/env ] && source ~/.cargo/env

# aliases
alias g="git"
alias c="clear"
alias q="exit 0"
alias dev="cd ~/Projetos"
alias copy="xclip -sel clipboard <"
alias cat="bat"
alias ls="ls -lah --color=auto"
alias grep="grep --color=auto"
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

# starship
eval "$(starship init zsh)"
