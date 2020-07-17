#!/usr/bin/bash

yes | $HOME/git/dotfiles/dotdrop.sh -c $HOME/git/dotfiles/config.yaml install -p docker

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes | proxychains4 ~/.fzf/install

git clone --depth 1 https://github.com/samoshkin/tmux-config.git ~/tmux-config
~/tmux-config/install.sh

yes | $HOME/git/dotfiles/dotdrop.sh -c $HOME/git/dotfiles/config.yaml install -p docker

#exec $@
