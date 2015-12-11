FROM node:latest
MAINTAINER Patrice FERLET <metal3d@gmail.com>

RUN npm install -g json-server
ADD serve.sh /serve.sh

EXPOSE 3000
CMD ["json-server"]
