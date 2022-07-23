alias ls="ls --color=auto"
alias vi="nvim"
alias vim="nvim"
alias g="git"
alias tmux="tmux -u"
export GOPATH="$HOME/.go"
export CLOUDSDK_PYTHON=python2
export EDITOR=nvim
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk
export PATH="$PATH:$HOME/.local/bin:$HOME/.deno/bin:/usr/local/go/bin:$HOME/.go/bin:$HOME/.anyenv/bin:$HOME/.anyenv/versions/2.6.8/bin:$HOME/.anyenv/envs/nodenv/bin:$HOME/.cargo/bin:/usr/lib/jvm/default/bin:$HOME/.google-cloud-sdk/bin:$HOME/.gsutil/gsutil/"
export NIX_REMOTE=daemon
#export JAVA_HOME=/usr/lib/jvm/java-11-openjdk
export GIT_PS1_SHOWDIRTYSTATE=1
if [ -x "`which anyenv`" ]; then
    export ANYENV_ROOT="$HOME/.anyenv"
    eval "$(anyenv init -)"
fi

source "$HOME/.git-completion.bash"
source "$HOME/.git-prompt.sh"

set -o vi

prompt() {
    local GITPS='$(__git_ps1 "[%s]")'
    local BLUE="\[\e[1;34m\]"
    local RED="\[\e[1;31m\]"
    local GREEN="\[\e[2;32m\]"
    local WHITE="\[\e[00m\]"
    local GRAY="\[\e[1;37m\]"
    local RESET="\[\e[0m\]"
    PS1=" $RED\u$WHITE@\h$RESET $GRAY\w$RESET $RED$GITPS\n\[\e[0m\]$ $WHITE "
}

prompt

clear-panes() {
    for _pane in $(tmux list-panes -F '#P'); do
        tmux send-keys -t ${_pane}
    done
}

dev() {
    if [ $# != 0 ]; then
        cd "$HOME/Works/$1"
    fi
    tmux split-window -h -p 24
    tmux split-window -v -p 75
    tmux split-window -v -p 66
    tmux split-window -v -p 50
    #tmux split-window -h -p 50
    tmux select-pane -L
    clear-panes
    
    tmux rename-window "$1"
}

deh() {
    if [ $# != 0 ]; then
        cd "$HOME/Works/$1"
    fi
    tmux split-window -v -p 30
    tmux split-window -h -p 66
    tmux split-window -h -p 50
    #tmux split-window -h -p 50
    tmux select-pane -L
    clear-panes
    
    tmux rename-window "$1"
}

_dev() {
    local cur prev cword
    _get_comp_words_by_ref -n : cur prev cword
    if [ "$(uname)" == "Darwin" ]; then
        COMPREPLY=( $(compgen -W "$(ls "$HOME/Works")" -- "${cur}") )
    else
        COMPREPLY=( $(compgen -W "$(ls -N "$HOME/Works")" -- "${cur}") )
    fi
}

complete -F _dev dev
complete -F _dev deh

lab() {
    if [ $# != 0]; then
        cd "$HOME/Labo/"
    fi
    tmux split-window -v -p 30
    tmux select-pane -U
    clear-pane
}

complete -F _dev lab

wcd() {
    cd "$HOME/Works/$1"
}

complete -F _dev wcd

if [ -x "`which direnv`" ]; then
    eval "$(direnv hook bash)"
fi

if [ -f $HOME/.cargo/env ]; then
    source "$HOME/.cargo/env"
fi
if [ -f /usr/share/jenv-git/init-jenv ]; then
    source /usr/share/jenv-git/init-jenv.sh
fi
if [ -f $HOME/.profile ]; then
    source $HOME/.profile
fi

alias .="cd .. && pushd ."
alias ..="cd ../.. && pushd ."
alias ...="cd ../../.. && pushd ."
alias ....="cd ../../../.. && pushd ."
alias .....="cd ../../../../.. && pushd ."
alias ......="cd ../../../../../.. && pushd ."
alias .......="cd ../../../../../../.. && pushd ."
alias ,,="popd"

