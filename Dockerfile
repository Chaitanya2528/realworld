FROM node:latest
WORKDIR app
COPY . .
RUN npm install
RUN npm install --package-lock-only
RUN npm install uuid@latest
EXPOSE 8000
CMD [ "npm", "start"]
