#!/usr/bin/bash

$HOME/git/dotfiles/dotdrop.sh -c $HOME/git/dotfiles/config.yaml install -p docker

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

#exec $@
