FROM node:latest
WORKDIR app
COPY . .
RUN npm install uuid@latest
RUN npm install ts-evaluator
RUN npm uninstall @wessberg/ts-evaluator
RUN npm run test
EXPOSE 8000
CMD ["node","main.js"]
