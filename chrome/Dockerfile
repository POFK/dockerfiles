FROM txmao/chrome:latest

USER root
RUN sed -i 's/deb.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list &&\
    apt-get update &&\
    apt-get install -y fonts-noto-cjk

USER chrome
