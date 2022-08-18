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
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$PATH"

# imports
[ -f ~/.gh-completion.sh ] && source ~/.gh-completion.sh
[ -f ~/.cargo/env ] && source ~/.cargo/env
hash asdf && source $(asdf which sti-env)

asdf_update_java_home() {
  local java_path
  java_path="$(asdf which java)"
  if [[ -n "${java_path}" ]]; then
    export JAVA_HOME
    JAVA_HOME="$(dirname "$(dirname "${java_path:A}")")"
    export JDK_HOME=${JAVA_HOME}
  fi
}

autoload -U add-zsh-hook
add-zsh-hook precmd asdf_update_java_home

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
