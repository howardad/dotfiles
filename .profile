# Findbugs environment
FINDBUGS_HOME=/opt/findbugs
export FINDBUGS_HOME

# Personalize PATH
export PATH=$PATH:~/bin:~/bin/android-sdk/tools:~/bin/android-sdk/platform-tools:/usr/lib32/smlnj/bin:$FINDBUGS_HOME/bin:/home/adam/.gem/ruby/2.0.0/bin

# For pacaur
export AURDEST=/home/sources

# Necessary for SML/NJ
SMLNJ_HOME=/usr/lib32/smlnj
export SMLNJ_HOME

# For building AOSP
export AOSPSRCDIR=~/android

# For Algorithms class tools
test -r ~/algs4/bin/config.sh && source ~/algs4/bin/config.sh

# Go
export GOPATH=~/go
export PATH=$PATH:~/go/bin

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export MANPATH=$MANPATH:/home/adam/texlive/2014/texmf-dist/doc/man
export INFOPATH=:$INFOPATH:/home/adam/texlive/2014/texmf-dist/doc/info

export PATH="$PATH:$HOME/bin/nand2tetris/tools"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
