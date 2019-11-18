# Evelyn Dooley's .zshrc

###############################
###### ZSH Configuration ######
###############################

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  node          # Node.js section
  ruby          # Ruby section
  php           # PHP section
  rust          # Rust section
  docker        # Docker section
  venv          # virtualenv section
  pyenv         # Pyenv section
  exec_time     # Execution time
  line_sep      # Line break
  char          # Prompt character
)

HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Plugins to load on startup
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  copydir
  copyfile
)

source $ZSH/oh-my-zsh.sh


###############################
#### Environment Variables ####
###############################

export LANG=en_US.UTF-8
export EDITOR='nvim'
export SSH_KEY_PATH="~/.ssh/rsa_id"
# export LSCOLORS="ExGxFxdaCxDADAadhbheFx"
export PAGER="nvimpager"
export MAKEFLAGS="-j$(expr $(nproc) \+ 1)"


###########################
######## Functions ########
###########################

# Auto correct mistyped command
autoload -U colors && colors
export SPROMPT="Correct $fg[red]%R$reset_color to $fg[green]%r?$reset_color ($fg[green]y$reset_color,$fg[blue]N$reset_color,$fg[red]a$reset_color,$fg[yellow]e$reset_color) "
echo "\e[3 q"
case $TERM in
  xterm*)
    precmd () {print -Pn "\e]0;%~\a"}
    ;;
esac

# ZSH completion
autoload -Uz compinit
compinit
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
setopt correctall

# LS on cd
chpwd() {
  /bin/ls --color=auto
}


#########################
######## Aliases ########
#########################

# System
alias rm="rm -i"
alias cp="cp -r"

# SSH
alias samurai="ssh dooley@samurai.csh.rit.edu"
alias eowyn="ssh -p 8020 dooley@eowyn.csh.rit.edu"

# Python
# alias python="python3"
# alias pip="pip3"

# NeoVim
alias vim="nvim"
alias less=$PAGER
alias zless=$PAGER
alias cat="nvimpager -c"

alias pacman="pacman --color=auto"
alias pacaur="pacaur --color=auto"



cat ~/.cache/wal/sequences

clear

fpath+=${ZDOTDIR:-~}/.zsh_functions
