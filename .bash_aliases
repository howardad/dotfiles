#
# ~/.bash_aliases
#

# Expand aliases before execution when using sudo
alias sudo='sudo '

# ls aliases
alias ls='ls -F --color=auto'
alias la='ls -A'
alias ll='ls -l'
eval $(dircolors -b)

# Make destructive commands interactive
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# grep, diff, etc
alias grep='grep --color=auto'
alias diff='colordiff'
alias pacdiff='env DIFFPROG=gvimdiff pacdiff'

# Use vim as a syntax-highlighting supercharged pager
alias vless='/usr/share/vim/vim74/macros/less.sh'

# One-command full system update, including AUR packages
alias upd='gem update && pacaur -Syu --devel --needed'

# Python2 things that need different env
#alias markdowner='PYTHONPATH=/usr/lib/python2.7/site-packages markdowner'

# (U)Mount sshfs via sftpman
alias smount='sftpman mount'
alias sumount='sftpman unmount'

# Packer the AUR helper has a binary called 'packer', so Packer the machine image
# builder has had its binary installed as 'packer-io'. That sucks, so I'm reverting it.
alias packer='packer-io'
