###############################
###### ZSH Configuration ######
###############################

# Path to your oh-my-zsh installation.
export ZSH=/home/dooley/.oh-my-zsh
ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ORDER=(
  #time        # Time stampts section (Disabled)
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  # hg            # Mercurial section (hg_branch  + hg_status)
  # package     # Package version (Disabled)
  node          # Node.js section
  ruby          # Ruby section
  # elixir        # Elixir section
  # xcode       # Xcode section (Disabled)
  # swift         # Swift section
  # golang        # Go section
  php           # PHP section
  rust          # Rust section
  # haskell       # Haskell Stack section
  # julia       # Julia section (Disabled)
  docker      # Docker section (Disabled)
  # aws           # Amazon Web Services section
  venv          # virtualenv section
  pyenv         # Pyenv section
  # dotnet        # .NET section
  # ember       # Ember.js section (Disabled)
  # kubecontext   # Kubectl context section
  exec_time     # Execution time
  line_sep      # Line break
  # vi_mode     # Vi-mode indicator (Disabled)
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
)

source $ZSH/oh-my-zsh.sh


################################
###### User configuration ######
################################
#
# Environment Variables

export LANG=en_US.UTF-8
export EDITOR='nvim'
export SSH_KEY_PATH="~/.ssh/rsa_id"
#export PAGER="nvimpager"

# Functions

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
  ls
}

# Aliases

export MAKEFLAGS="-j$(expr $(nproc) \+ 1)"

# System
alias rm="rm -i"
alias ls="ls --color=auto"
alias cp="cp -r"

# Python
alias python="python3"
alias pip="pip3"

fpath+=${ZDOTDIR:-~}/.zsh_functions

clear
# Uncomment the following line to change how often to auto-update (in days).
# COMPLETION_WAITING_DOTS="true"
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"

export ARCHFLAGS="-arch x86_64"
