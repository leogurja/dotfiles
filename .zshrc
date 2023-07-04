# If you come from bash you might have to change your $PATH.
export PATH="$HOME/.local/bin:$PATH"

# XDG
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

# CLEANUP HOME USING XDG
# zsh
export HISTSIZE=1000
export SAVEHIST=1000
export ZDOTDIR=$XDG_CONFIG_HOME/zsh

# variables
export EDITOR=nvim
export NLS_LANG=\x1d # oracle precisa
export TERMINAL=kgx
export PAGER=less
export VISUAL=code

# Path to your oh-my-zsh installation.
export ZSH="$ZDOTDIR/ohmyzsh"

fpath=($HOME/.asdf/completions $ZDOTDIR/completions $fpath) # append completions to fpath
autoload -Uz compinit && compinit # load completions

plugins=(
  git
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

# asdf
source "$HOME/.asdf/asdf.sh"

# starship
eval "$(starship init zsh)"