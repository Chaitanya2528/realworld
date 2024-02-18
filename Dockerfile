FROM node:latest
RUN mkdir -p /opt/app
WORKDIR /opt/app
COPY package.json .
EXPOSE 3000
CMD [ "node", "start"]
