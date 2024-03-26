# Use the official Node.js 16 image as base
FROM node:18.15

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json files to the container
COPY package*.json ./

# Install dependencies
RUN npm install -f

# Copy the rest of the application code to the container
COPY . .

# Expose the port on which your application will run
EXPOSE 4000

# Command to run your application
CMD ["npm", "run", "start"]

