FROM node:latest
RUN mkdir -p /opt/app
WORKDIR /opt/app
COPY package.json .
RUN npm install
EXPOSE 3000
CMD [ "node", "index.js"]
