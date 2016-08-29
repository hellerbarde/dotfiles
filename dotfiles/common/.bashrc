#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

. /etc/profile

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export GOPATH="${HOME}/go"

export PATH="${HOME}/.local/bin:${HOME}/.gem/ruby/2.2.0/bin:${PATH}";

export GIT_ASKPASS="${SSH_ASKPASS}"

EDITOR=vim

HISTFILESIZE=10000000
