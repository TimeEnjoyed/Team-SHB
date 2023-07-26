FROM node:latest

WORKDIR /app

COPY . .

RUN cd react_prototype \
 && npm install

RUN cd worker \
 && npm install

EXPOSE 3000

CMD ["/bin/bash", "docker_init.sh"]