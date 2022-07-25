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
export JAVA_HOME="$HOME/.asdf/installs/java/zulu-18.30.11"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/share/npm/bin:$PATH"

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
alias vim="lvim"
alias nvim="lvim"

# starship
eval "$(starship init zsh)"
[ -f  /home/leonardo/.local/share/npm/bin/sti-env ] && source /home/leonardo/.local/share/npm/bin/sti-env
