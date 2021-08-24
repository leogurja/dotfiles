export ZSH="$HOME/.oh-my-zsh"

# oh my zsh config
plugins=(
  zsh-autosuggestions
  colored-man-pages
  colorize
  fast-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# better paste
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}
pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Alias definitions
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# Environment Variables
export EDITOR=nvim
export ANDROID_HOME=~/Android/Sdk
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:/usr/local/bin"
export PATH="$HOME/.fastlane/bin:$PATH"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:/snap/bin"

# oracle
export LD_LIBRARY_PATH="$HOME/.local/share/sti/instantclient_12_2"
export PATH="$PATH:$LD_LIBRARY_PATH"
export TNS_ADMIN=$HOME/.oracle
export ORACLE_SID=ORCLPDB1

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# go
export GOPATH=$HOME/go
export PATH="$PATH:$GOPATH/bin"

# gcloud config
if [ -f '/home/gurja/google-cloud-sdk/path.zsh.inc' ]; then . '/home/gurja/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/home/gurja/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/gurja/google-cloud-sdk/completion.zsh.inc'; fi

# gh completion
source ~/.gh-completion.sh

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# rvm
export PATH="$GEM_HOME/bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# starship
eval "$(starship init zsh)"
