#!/usr/bin/bash

$HOME/git/dotfiles/dotdrop.sh -c $HOME/git/dotfiles/config.yaml install -p docker

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
proxychains4 ~/.fzf/install

git clone --depth 1 https://github.com/samoshkin/tmux-config.git ~/tmux-config
proxychains4 ~/tmux-config/install.sh

#exec $@
