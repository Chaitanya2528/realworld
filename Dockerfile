FROM node:latest
WORKDIR app
COPY . .
RUN npm install -g npm@latest
RUN npm run test
EXPOSE 8000
CMD ["node","main.js"]
