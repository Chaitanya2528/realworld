FROM node:latest
WORKDIR app
COPY . .
RUN npm install -g npm@latest
RUN npm install -g nx
RUN npm install --save-dev @nrwl/cli
RUN npm install
EXPOSE 3000
CMD ["npm","start"]
