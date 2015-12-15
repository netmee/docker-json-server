FROM node:latest
MAINTAINER Patrice FERLET <metal3d@gmail.com>

EXPOSE 3000

# to be able to use --user, node need to write 
# data to $HOME, but using root will break that possibility, so 
# use /project instead
ENV HOME /project
WORKDIR /project

ADD entrypoint.sh /entrypoint.sh

RUN set -ex;\
    chmod +x /entrypoint.sh; \
    npm install -g json-server;

ENTRYPOINT /entrypoint.sh
