FROM txmao/vimtx:1.3
#FROM txmao/vimtx:latest

ARG GFW=false

USER root

ADD entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

RUN if [ "$GFW" = true  ] ; then sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list ; else echo GFW is $GFW ; fi

RUN apt-get update &&\
    apt-get install -y \
        docker \
        docker-compose \
        proxychains4 \
        libproxychains4 \
        highlight \
        fzf 

RUN sed -i 's/socks4/#socks4/g' /etc/proxychains4.conf \
    && echo "socks5  127.0.0.1 1080" >> /etc/proxychains4.conf

# git
RUN npm install -g commitizen &&\
        npm install -g conventional-changelog-cli

RUN usermod -aG docker dev && newgrp docker 

USER dev
