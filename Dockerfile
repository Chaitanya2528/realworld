FROM node:latest
WORKDIR app
COPY package*.json ./
RUN npm install -g npm@latest
RUN npm install -g @nrwl/cli
RUN npm run test
EXPOSE 8000
CMD ["node","main.js"]
