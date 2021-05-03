# ~/.zshrc
### Installation
# Oh My Zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#
# Spaceship Prompt
# git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
# ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
#
# Zinit
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
#
# Firacode font
# baixar a última release e colocar o conteúdo tff/ na pasta ~/.fonts
# https://github.com/tonsky/FiraCode/releases
#
# NVM
# curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
#
# RVM
# gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
# \curl -sSL https://get.rvm.io | bash -s stable
#
# Local Time
# timedatectl set-local-rtc 1 --adjust-system-clock
#
# AUR
# echo -e '[archlinuxfr]\n SigLevel = Never\n Server = http://repo.archlinux.fr/x86_64' | sudo tee  >> /etc/pacman.conf
# git clone https://aur.archlinux.org/yay.git
# cd yay && makepkg -si
#
# Sudo
# sudo visudo
# add: 
# Defaults lecture=always
# Defaults lecture_file=/etc/sudoers.lecture
# Defaults insults
# 
# após: 
# sudo vim /etc/sudoers.lecture
# and paste text from here https://raw.githubusercontent.com/0aax/sudowoodo/master/sudoers.lecture
# 
# Setup mysql
# Baixar libmysqlclient-dev para versões antigas de:
# https://www.ubuntuupdates.org/pm/libmysqlclient-dev
#
# Docker
# sudo usermod -aG docker USERNAME

export EDITOR=vim

# Environment Variables
export ANDROID_HOME=~/Android/Sdk
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export ZSH="$HOME/.oh-my-zsh"
export PATH="$PATH:/usr/local/bin"
export PATH="$HOME/.fastlane/bin:$PATH"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:/snap/bin"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# rvm
export PATH="$PATH:$HOME/.rvm/bin"

# oh my zsh config
ZSH_THEME="spaceship"
plugins=(git)

source $ZSH/oh-my-zsh.sh

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing DHARMA Initiative Plugin Manager (zdharma/zinit)…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f" || \
        print -P "%F{160}▓▒░ The clone has failed.%f"
fi
source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit installer's chunk

# zplugins
zplugin light zdharma/fast-syntax-highlighting
zplugin light zsh-users/zsh-autosuggestions
zplugin light zsh-users/zsh-history-substring-search
zplugin light zsh-users/zsh-completions
zplugin light buonomo/yarn-completion

pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish

# spaceship config
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="$"
SPACESHIP_CHAR_SUFFIX=" "

# gcloud config
if [ -f '/home/gurja/google-cloud-sdk/path.zsh.inc' ]; then . '/home/gurja/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/home/gurja/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/gurja/google-cloud-sdk/completion.zsh.inc'; fi

# gh completion
source ~/.gh-completion.sh

# aliases
alias c="clear"
alias cls="clear"
alias g="git"
alias q="exit"
alias copy="xclip -sel clip <"
alias out="shutdown now"

# config aliases
alias zshconfig="vim ~/.zshrc"
alias reloadconfig="source ~/.zshrc"

# navigation aliases
alias cd..="cd .."
alias cd...="cd ../.."
alias cd....="cd ../../../"
alias dev="cd ~/dev"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to path for scripting (to manage Ruby versions)
export PATH="$GEM_HOME/bin:$PATH"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # Load RVM into a shell session *as a function*

export LD_LIBRARY_PATH=/opt/oracle/instantclient_12_2
