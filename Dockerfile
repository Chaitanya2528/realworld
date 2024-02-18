FROM node:latest
RUN mkdir -p /opt/app
WORKDIR /opt/app
COPY . .
EXPOSE 3000
CMD [ "npm", "start"]

