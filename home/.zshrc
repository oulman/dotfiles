# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
unsetopt beep
bindkey -e

zstyle :compinstall filename '/home/oulman/.zshrc'

autoload -Uz compinit
compinit

# rdp foo.domain.com DOMAIN oulman
alias rdp="xfreerdp /u:$3 /d:$2 /sound:sys:alsa /microphone:sys:alsa /h:1050 /w:1680 /drive:workstation,/home/oulman/rdpmap +clipboard /v:$1"
