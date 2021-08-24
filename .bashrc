# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR="nvim"

# android studio
export ANDROID_HOME=~/Android/Sdk

# path
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:/usr/local/bin"
export PATH="$HOME/.fastlane/bin:$PATH"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:/snap/bin"

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

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Alias definitions
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# go
export GOPATH=$HOME/go
export PATH="$PATH:$GOPATH/bin"

# gh completion
source ~/.gh-completion.sh

# mysql
export PATH="$PATH:/home/leonardo/.local/share/sti/mysql-5.7.34-linux-glibc2.12-x86_64/bin"

# rvm
export PATH="$GEM_HOME/bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin"

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# starship
eval "$(starship init bash)"

export LD_LIBRARY_PATH=/home/leonardo/.local/share/sti/instantclient_12_2

export PATH="$PATH:$LD_LIBRARY_PATH"

export TNS_ADMIN=/home/leonardo/.config/sti/oracle

export ORACLE_SID=ORCLPDB1

