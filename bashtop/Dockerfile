FROM ubuntu:focal

ARG GFW=false

RUN if [ "$GFW" = true  ] ; then sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list ; else echo GFW is $GFW ; fi

RUN apt-get update &&\
    apt-get install -y software-properties-common &&\
    add-apt-repository ppa:bashtop-monitor/bashtop &&\
    apt-get install -y \
        bashtop \
        python3-psutil

ENTRYPOINT [ "/usr/bin/bashtop"]

