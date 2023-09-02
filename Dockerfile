# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application source code to the working directory
COPY . .

# Expose a port (you can change this if your app uses a different port)
EXPOSE 3000

# Define the command to run your app
CMD ["npm", "run", "dev"]
