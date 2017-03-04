#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -l'
alias vi=vim

PS1='\[\033[01;34m\]\u@\h \[\033[00;31m\]\W \$ \[\033[00m\]'
#PS1='[\u@\h \W]\$ '
