#!/bin/bash

if [ -t 1 ]; then
	export PS1="\e[1;34m[\e[1;33m\u@\e[1;32mdocker-\h\e[1;37m:\w\[\e[1;34m]\e[1;36m\\$ \e[0m"
fi

# Aliases
alias l='ls -lAsh --color'
alias ls='ls -C1 --color'
alias cp='cp -ip'
alias rm='rm -i'
alias mv='mv -i'
alias h='cd ~;clear;'

echo -e -n '\E[1;34m'
figlet -w 120 "nginx-full"
echo -e "\E[1;36mOpenResty \E[1;32m${OPENRESTY_VERSION:-unknown}\E[1;36m, Kernel \E[1;32m$(uname -r)\E[0m"
echo -e -n '\E[1;34m'
cat /built-for-arch
echo -e -n '\E[0m'
echo