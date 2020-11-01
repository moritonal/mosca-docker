FROM node:12

RUN npm install -g aedes-cli

ARG USERNAME=admin
ARG PASSWORD=test

RUN aedes adduser ${USERNAME} ${PASSWORD} --credentials ./credentials.json

EXPOSE 80

ENTRYPOINT [ "aedes", "--credentials", "./credentials.json", "--protos", "ws", "--ws-port", "80"]
