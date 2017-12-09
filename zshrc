# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/nate/.zshrc'

setopt correct
autoload -U colors && colors
export SPROMPT="Correct $fg[red]%R$reset_color to $fg[green]%r?$reset_color ($fg[green]y$reset_color,$fg[blue]N$reset_color,$fg[red]a$reset_color,$fg[yellow]e$reset_color) "

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

echo "\e[3 q"
case $TERM in
  xterm*)
    precmd () {print -Pn "\e]0;%~\a"}
    ;;
esac
autoload -Uz compinit
compinit
# End of lines added by compinstall
export MAKEFLAGS="-j$(expr $(nproc) \+ 1)" 
. /usr/share/zsh/site-contrib/powerline.zsh
eval $(thefuck --alias)
alias ls='ls --color=auto'
alias rm='rm -i'
alias vim='nvim'
clear
