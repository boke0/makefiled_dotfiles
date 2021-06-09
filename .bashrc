alias ls="ls --color=auto"
alias vi="vim"
alias g="git"
export GOPATH="$HOME/.go"
export CLOUDSDK_PYTHON=python2
export GOENV_ROOT=$HOME/.goenv
export EDITOR=vim
#export JAVA_HOME=/usr/lib/jvm/java-11-openjdk
export PATH="$PATH:$HOME/.local/bin:$HOME/.deno/bin:/usr/local/go/bin:/$HOME/.go/bin:$GOENV_ROOT/bin:/home/boke0/.local/share/gem/ruby/2.7.3:/usr/lib/ruby/gems/2.7.3:/usr/lib/jvm/default/bin"
export GIT_PS1_SHOWDIRTYSTATE=1
eval "$(goenv init -)"
eval "$(rbenv init -)"

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
    COMPREPLY=( $(compgen -W "$(ls -N "$HOME/Works")" -- "${cur}") )
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

wcd() {
    cd "$HOME/Works/$1"
}

eval "$(direnv hook bash)"

source "$HOME/.cargo/env"
