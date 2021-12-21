# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Shopt
shopt -s cmdhist # multi-line commands as single line
shopt -s histappend # do not overwrite history
shopt -s checkwinsize # check term size when bash regains control
shopt -s autocd # change to named directory
shopt -s cdspell # autoccorect cd misspellings 
shopt -s dotglob # include dotfiles in * expansions


# History
HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoredups:erasedups

bind "set completion-ignore-case on" # ignore case in tab completion
bind "set colored-completion-prefix on" # enable colored completion 
bind "set completion-prefix-display-length 2"

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Alias definitions
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

if [ -f ~/.env ]; then
  . ~/.env
fi

# nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# starship
eval "$(starship init bash)"
