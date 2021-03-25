FROM node:12

RUN npm install -g aedes-cli

WORKDIR /app

COPY start.sh .

RUN chmod +x ./start.sh

EXPOSE 80

ENTRYPOINT [ "./start.sh" ]