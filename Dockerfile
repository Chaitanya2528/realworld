FROM node:14

RUN npm install -g npm@latest

# Install Nx CLI globally
RUN npm install -g @nrwl/cli

# Set the working directory
WORKDIR /app

# Copy project files
COPY . .

# Run Nx build command
CMD ["nx", "build"]

