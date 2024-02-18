FROM node:12.2.0-alpine
WORKDIR app
COPY . .
RUN npm install
RUN npm install --package-lock-only
RUN npm install uuid@latest
EXPOSE 8000
CMD [ "npm", "start"]
