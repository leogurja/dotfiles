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
[ -f ~/.env ] && source ~/.env
[ -f ~/.aliases ] && source ~/.aliases
[ -f "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -f ~/.sdkman/bin/sdkman-init.sh ] && source ~/.sdkman/bin/sdkman-init.sh
[ -f ~/.rvm/scripts/rvm ] && source ~/.rvm/scripts/rvm

# starship
eval "$(starship init zsh)"

export LD_LIBRARY_PATH=/home/leonardo/.local/share/sti/instantclient_12_2

export TNS_ADMIN=/home/leonardo/.config/sti/oracle

export ORACLE_SID=ORCLPDB1

