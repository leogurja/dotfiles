# oh my zsh config
export ZSH=~/.oh-my-zsh
plugins=(
  zsh-autosuggestions
  colored-man-pages
  colorize
  zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

# Environment Variables
export EDITOR=nvim
export GOPATH="$HOME/go"
export NVM_DIR="$HOME/.nvm"
export SDKMAN_DIR="$HOME/.sdkman"
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# PATH
export PATH="$PATH:$GOPATH/bin"

# imports
[ -f ~/google-cloud-sdk/path.zsh.inc ] && source ~/google-cloud-sdk/path.zsh.inc
[ -f ~/google-cloud-sdk/completion.zsh.inc ] && source ~/google-cloud-sdk/completion.zsh.inc
[ -f ~/.gh-completion.sh ] && source ~/.gh-completion.sh
[ -f ~/.cargo/env ] && source ~/.cargo/env
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f /home/leonardo/.local/bin/sti-load ] && source /home/leonardo/.local/bin/sti-load
[ -f "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"
[ -f ~/.sdkman/bin/sdkman-init.sh ] && source ~/.sdkman/bin/sdkman-init.sh
[ -f ~/.rvm/scripts/rvm ] && source ~/.rvm/scripts/rvm

# aliases
alias g="git"
alias c="clear"
alias q="exit 0"
alias dev="cd ~/Projetos"
alias out="shutdown now"
alias copy="xclip -sel clipboard <"
alias cat="bat"
alias vim="nvim"
alias ls="ls -lah --color=auto"
alias grep="grep --color=auto"
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

# starship
eval "$(starship init zsh)"
