FROM alpine

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

RUN apk update && apk add openssh autossh

RUN adduser -h /home/user -DG users -u 1000 user

USER user

ADD ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh","/entrypoint.sh"]
