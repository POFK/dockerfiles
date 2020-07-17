FROM kanboard/kanboard:v1.2.15

COPY ./config.php /var/www/app/config.php
COPY ./plugins.json /var/www/app/plugins.json

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories &&\
        apk update &&\
        apk add git

USER nginx

RUN git config --global url."http://gitcache.local/github.com".insteadOf "https://github.com"

USER root
