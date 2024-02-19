FROM node:14

RUN npm install 

# Install Nx CLI globally
RUN npm install -g @nrwl/cli

# Set the working directory
WORKDIR /app

# Copy project files
COPY package*.json ./

EXPOSE 8000

# Run Nx build command
CMD ["node","nx", "build"]

