#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS1='[\u@\h \W]\$ ' original PS1
# PS1="\[\033[35m\]\t\[\033[m\]-\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ " old PS1

# Set prompt using vim-promptline file
[[ -f ~/.shell_prompt.sh ]] && . ~/.shell_prompt.sh

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
    export TERM='xterm-256color'
else
    export TERM='xterm-color'
fi

# Pull in .bash_aliases if it exists
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

# Pull in .bash_functions if it exists
[[ -f ~/.bash_functions ]] && . ~/.bash_functions

# Pull in /etc/bash.colors if it exists
[[ -f /etc/bash.colors ]] && . /etc/bash.colors

GIT_EDITOR='vim'
export GIT_EDITOR

EDITOR='vim'
export EDITOR

VISUAL='gvim'
export VISUAL

ANDROID_HOME='/opt/android-sdk'
export ANDROID_HOME

ANDROID_NDK_HOME='/opt/android-ndk'
export ANDROID_NDK_HOME

# Colorize Man Pages
man() {
	env LESS_TERMCAP_mb=$'\E[01;31m' \
	LESS_TERMCAP_md=$'\E[01;38;5;74m' \
	LESS_TERMCAP_me=$'\E[0m' \
	LESS_TERMCAP_se=$'\E[0m' \
	LESS_TERMCAP_so=$'\E[38;5;246m' \
	LESS_TERMCAP_ue=$'\E[0m' \
	LESS_TERMCAP_us=$'\E[04;38;5;146m' \
	man "$@"
}

# Set 'command not found' hook
. /usr/share/doc/pkgfile/command-not-found.bash

# Make LibreOffice a little prettier
export SAL_USE_VCLPLUGIN=gtk3 lowriter

# Enable DRI video acceleration
export LIBVA_DRIVER_NAME=vdpau
export VDPAU_DRIVER=r600

# Add RubyGems to PATH
export PATH=$PATH:"`ruby -e 'puts Gem.user_dir'`/bin"

# export CTM="--colorize --https --email howardad@gmail.com --password PM8dyJctyV"

# RVM
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -r "$HOME/.rvm/scripts/completion" ]] && source "$HOME/.rvm/scripts/completion"

# Add TeX to PATH
export PATH=$PATH:"/home/adam/texlive/2014/bin/x86_64-linux"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

doge
