

# Variables
export EDITOR=nvim
export NLS_LANG=\x1d # oracle precisa
export PAGER=less
export PATH="$HOME/.local/bin:$PATH"
export TERMINAL=kgx
export VISUAL=code
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

# CLEANUP HOME USING XDG
export ZDOTDIR=$XDG_CONFIG_HOME/zsh # zshrc
export ZSH="$ZDOTDIR/ohmyzsh" # ohmyzsh
export ZSH_CUSTOM="$ZDOTDIR/custom" # zsh plugins

# Plugins
plugins=(
  asdf
  aws
  gh
  git
  starship
  yarn
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# aliases
alias c=clear
alias g=git
alias vim=nvim
alias q="exit 0"
alias dev="cd $HOME/Desktop"
alias ll="ls -la"
