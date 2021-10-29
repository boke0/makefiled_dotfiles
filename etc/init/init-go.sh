#!/bin/sh

if [ ! -d $HOME/.go ]; then
    mkdir $HOME/.go
fi

git clone https://github.com/syndbg/goenv.git ~/.goenv
