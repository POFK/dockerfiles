FROM golang:alpine3.12

ARG GFW=false
RUN if [ "$GFW" = true   ] ; \
        then \
            sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories ;\
        else \
            echo GFW is $GFW ; \
    fi

ENV GO111MODULE=on \
    GOPROXY=https://goproxy.cn

RUN apk add --no-cache git

#RUN git clone https://github.com/git-cloner/gitcache /gitcache &&\
RUN git clone https://github.com/POFK/gitcache.git /gitcache &&\
    cd /gitcache &&\
    go build

WORKDIR /gitcache
