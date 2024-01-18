# Use an official lightweight Node.js image
FROM node:alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the application files to the container
COPY . .

# Install a simple HTTP server for serving static content
RUN npm install -g http-server

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run your application
CMD ["http-server", "-p", "8080"]
