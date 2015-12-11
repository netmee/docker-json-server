FROM node:latest
MAINTAINER Patrice FERLET <metal3d@gmail.com>

EXPOSE 3000

# to be able to use --user, node need to write 
# data to $HOME, but using root will break that possibility, so 
# use /tmp instead
ENV HOME /tmp
WORKDIR /srv

RUN set -ex;\
    npm install -g json-server;\
    mkdir /srv;

CMD ["json-server"]
