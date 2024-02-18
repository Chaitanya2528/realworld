FROM node:latest
WORKDIR app
COPY . .
RUN npm install -g npm@latest
EXPOSE 3000
CMD ["npm","start"]
