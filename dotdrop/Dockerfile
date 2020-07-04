FROM python:3.8-slim

ENV UNAME="user"

ARG GFW=false
RUN if [ "$GFW" = true  ] ; \
        then \
            sed -i 's/deb.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list &&\
            mkdir ~/.pip &&\
            echo "[global]\n" >> ~/.pip/pip.conf &&\
            echo "index-url = https://pypi.tuna.tsinghua.edu.cn/simple\n" >> ~/.pip/pip.conf ; \
        else \
            echo GFW is $GFW ; \
    fi

ADD requirements.txt /requirements.txt

RUN groupadd -r $UNAME --gid=1000 && \ 
    useradd -m -s /bin/bash -r -g $UNAME --uid=1000 $UNAME

RUN apt update \
        && apt install -y git file


RUN pip3 install -r /requirements.txt


USER $UNAME

ENTRYPOINT ["/bin/bash","/dotfiles/dotdrop.sh", "--cfg", "/dotfiles/config.yaml"]
CMD ["install", "-p", "docker"]
