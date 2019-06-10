FROM node:8

RUN npm install -g --unsafe-perm mosca

ARG USERNAME=admin
ARG PASSWORD=test

RUN mosca adduser ${USERNAME} ${PASSWORD} --credentials ./credentials.json

EXPOSE 80

ENTRYPOINT [ "mosca", "--credentials", "./credentials.json", "--http-port", "80", "--only-http"]
