# Use an official Node.js runtime as a parent image
FROM node:18 AS build

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install -g npm@latest

RUN npm install -g @nrwl/cli

# Copy the rest of the application source code
COPY . .



# Use NGINX to serve the AngularJS application
FROM nginx:alpine

# Copy the built AngularJS files to the NGINX HTML directory
COPY --from=build /usr/src/app/dist /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start NGINX server when the container starts
CMD ["nginx", "-g", "daemon off;"]
