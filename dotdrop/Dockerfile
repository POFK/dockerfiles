FROM python:3.8-slim

ENV UNAME="user"

ADD requirements.txt /requirements.txt

RUN groupadd -r $UNAME --gid=1000 && \ 
    useradd -m -s /bin/bash -r -g $UNAME --uid=1000 $UNAME

#RUN sed -i 's/deb.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list \
RUN apt update \
        && apt install -y git file

ADD pip.conf /root/.pip/pip.conf

RUN pip3 install -r /requirements.txt


USER $UNAME

ENTRYPOINT ["/bin/bash","/dotfiles/dotdrop.sh", "--cfg", "/dotfiles/config.yaml"]
CMD ["install", "-p", "docker"]
