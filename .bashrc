# ____    _    ____  _   _   ____   ____ 
#| __ )  / \  / ___|| | | | |  _ \ / ___|
#|  _ \ / _ \ \___ \| |_| | | |_) | |    
#| |_) / ___ \ ___) |  _  | |  _ <| |___ 
#|____/_/   \_\____/|_| |_| |_| \_\\____|
                                        
export PATH=$PATH:~/Scripts
export PATH=$PATH:~/opt/cross/bin/
export PATH=$PATH:~/Downloads/mtools-4.0.23/
export TMPDIR=$HOME/.tmp

# No limit of history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Better Colouring for ls
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Auto CD
shopt -s autocd

#Alliases
alias p="sudo pacman"
alias v="vim"
alias sv="sudo vim"
alias s="sudo"
alias cs="cd ~/Scripts"
alias cw="cd ~/Workspace"
alias n="nnn"

alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Keep Colour Scheme
#wal -R -q & #-nj&

# Why Not get a fortune
# Note this requires parrotsay 
fortune | parrotsay
