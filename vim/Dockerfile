FROM txmao/vimtx:1.3

USER root

ENV HOME="/root"

RUN curl http://git.storage.datalab/POFK/ansible-init/raw/main/files/add_caches.sh | sh -s all ubuntu focal
RUN apt-get update &&\
    apt-get install -y \
        language-pack-en \
	    docker \
        docker-compose \
        proxychains4 \
        libproxychains4 \
        highlight \
        fzf 

RUN npm install -g commitizen &&\
        npm install -g conventional-changelog-cli

RUN usermod -aG docker dev && newgrp docker 

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

USER dev
ENV HOME="/home/dev"

WORKDIR $HOME/workspace
