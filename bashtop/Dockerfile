FROM ubuntu:focal

RUN add-apt-repository ppa:bashtop-monitor/bashtop &&\
    apt-get update &&\
    apt-get install -y \
        software-properties-common \
        bashtop \
        python3-psutil

ENTRYPOINT [ "/usr/bin/bashtop"]

