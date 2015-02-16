FROM ubuntu:14.04
MAINTAINER github.com/shanewow

RUN apt-get -y update && apt-get install -y nodejs npm
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN npm install -g peer

EXPOSE 80

ENTRYPOINT ["peerjs"]
CMD ["--port", "80", "--key", "peerjs"]
