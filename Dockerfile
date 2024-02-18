FROM node:12.2.0-alpine
WORKDIR app
COPY . .
RUN npm install
RUN npm install -g npm@latest
EXPOSE 8000
CMD [ "npm", "start"]
