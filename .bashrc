#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='┌[\u@\h] - [\w] - [\d, \A] \n└[\$]> '

# User defined functions

_trash() {
	mv $1 ~/.Trash;
}

# User defined aliases

alias rm='_trash'
alias woman='man'


# User defined exports

export VISUAL=vim
export EDITOR="$VISUAL"

export PATH=$PATH:/usr/local/go/bin:~/go/bin/
