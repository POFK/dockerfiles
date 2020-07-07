FROM txmao/mdbook:latest

USER root

ADD entrypoint.sh /entrypoint.sh

RUN addgroup -S -g 1000 writer && adduser --shell /bin/bash -S writer -u 1000 -G writer

RUN chmod +x /entrypoint.sh

WORKDIR /books

USER writer
