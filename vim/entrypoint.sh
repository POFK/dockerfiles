#!/usr/bin/bash

sudo chown -R dev /opt/*

curl http://git.storage.datalab/POFK/ansible-init/raw/main/files/add_caches.sh | sh -s pip

curl http://git.storage.datalab/POFK/ansible-init/raw/main/files/add_caches.sh | sh -s conda

yes | conda install ruamel ruamel.yaml pip

yes | pip install -r $HOME/git/dotfiles/dotdrop/requirements.txt

yes | $HOME/git/dotfiles/dotdrop.sh -c $HOME/git/dotfiles/config.yaml install -p docker

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes | ~/.fzf/install

git clone --depth 1 https://github.com/samoshkin/tmux-config.git ~/tmux-config
~/tmux-config/install.sh

yes | $HOME/git/dotfiles/dotdrop.sh -c $HOME/git/dotfiles/config.yaml install -p docker

#exec $@
