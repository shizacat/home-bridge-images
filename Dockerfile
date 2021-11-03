FROM arm32v6/node:14-alpine

ENV PATH="${PATH}:/homebridge/node_modules/.bin"

RUN mkdir /homebridge &&\
    npm set global-style=true &&\
    npm set audit=false &&\
    npm set fund=false &&\
    npm install -g --unsafe-perm homebridge@1.3.5 &&\
    npm install -g --unsafe-perm homebridge-config-ui-x@4.41.2

WORKDIR /homebridge
EXPOSE 8581
