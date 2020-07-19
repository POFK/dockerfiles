FROM python:3.8-alpine3.12

ADD pip.conf /root/.pip/pip.conf
RUN pip3 install rotate-backups==8.0

COPY cronjobs /etc/crontabs/root

# start crond with log level 8 in foreground, output to stderr
ENTRYPOINT ["crond", "-f", "-d", "8"]


