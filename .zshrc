# XDG
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

# path
export PATH="$HOME/.local/bin:$PATH"

# variables
export EDITOR=nvim
export NLS_LANG=\x1d # oracle precisa
export TERMINAL=kgx
export PAGER=less
export VISUAL=code

# CLEANUP HOME USING XDG
# zsh
export HISTSIZE=1000
export SAVEHIST=1000
export ZDOTDIR=$XDG_CONFIG_HOME/zsh

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

# completion
fpath=(${ASDF_DIR}/completions $ZDOTDIR/completions $fpath) # append completions to fpath
autoload -U compinit && compinit -u
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*' # Auto complete with case insenstivity

zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.
