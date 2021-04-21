FROM node:12-alpine

RUN npm install -g aedes-cli

WORKDIR /app

COPY start.sh .

RUN chmod +x ./start.sh

EXPOSE 80

ENTRYPOINT [ "sh", "./start.sh" ]