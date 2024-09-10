# Use the official Node.js image as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /cao_jiale_site

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install the project dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the React app for production
RUN npm run build

# Install a lightweight web server to serve the React app
RUN npm install -g serve

# Expose the desired port
EXPOSE 7775

# Command to serve the build folder on port 7775
CMD ["serve", "-s", "dist", "-l", "7775"]
