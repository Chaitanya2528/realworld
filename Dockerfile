FROM node:latest
WORKDIR app
COPY . .
RUN npm install -g npm@latest
RUN npm install -g nx
EXPOSE 3000
CMD ["npm","start"]
