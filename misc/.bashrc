#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.tar.xz)    tar xJf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

alias ls='ls --color=auto'
alias la='ls -A'
alias ll='ls -Alh'
alias grep='grep --color=auto'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias orphans='yay -Qtdq | yay -Rns -'
alias grubcfg='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias vim='nvim'
alias sudo='sudo '
alias mkdir='mkdir -p'
alias ..='cd ..'

[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

set -o vi

PS1='[\u@\h \W]\$ '
