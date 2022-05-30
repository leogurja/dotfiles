export ZSH=~/.oh-my-zsh

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

# imports
[ -f ~/google-cloud-sdk/path.zsh.inc ] && source ~/google-cloud-sdk/path.zsh.inc
[ -f ~/google-cloud-sdk/completion.zsh.inc ] && source ~/google-cloud-sdk/completion.zsh.inc
[ -f ~/.gh-completion.sh ] && source ~/.gh-completion.sh
[ -f ~/.cargo/env ] && source ~/.cargo/env
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Environment Variables
export EDITOR=nvim

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# go
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -f "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"

# oracle
export LD_LIBRARY_PATH="$HOME/.local/share/sti/instantclient_12_2"
export TNS_ADMIN="$HOME/.config/sti/oracle"
export ORACLE_SID=ORCLPDB1

# sdkman
export SDKMAN_DIR="$HOME/.sdkman"
[ -f "$HOME/.sdkman/bin/sdkman-init.sh" ] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# rvm
[ -f "$HOME/.rvm/scripts/rvm" ] && source "$HOME/.rvm/scripts/rvm"

# thefuck
eval $(thefuck --alias)

alias g="git"
alias c="clear"
alias q="exit 0"
alias dev="cd ~/Projetos"
alias out="shutdown now"
alias copy="xclip -sel clipboard <"

# substitutions
alias cat="bat"
alias vim="nvim"

# colors
alias ls="ls -lah --color=auto"
alias grep="grep --color=auto"

# confirm before overwriting
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"


# starship
eval "$(starship init zsh)"

[ -f /home/leonardo/.local/bin/sti-load ] && source /home/leonardo/.local/bin/sti-load

# rvm
export PATH="$HOME/.rvm/bin:$PATH"
[ -f ~/.rvm/scripts/rvm ] && source ~/.rvm/scripts/rvm
