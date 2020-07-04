FROM txmao/vimtx:1.2.1

ARG GFW=false

USER root

RUN if [ "$GFW" = true  ] ; then sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list ; else echo GFW is $GFW ; fi

RUN apt-get update &&\
    apt-get install -y \
        docker \
        docker-compose \
        fzf 

RUN usermod -aG docker dev

USER dev
