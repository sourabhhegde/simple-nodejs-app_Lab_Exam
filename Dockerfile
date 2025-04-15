# Use an official Node.js runtime as a base image
FROM node:18

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install the app dependencies inside the container
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose the port that the app will run on (default is 3000 for Node.js apps)
EXPOSE 3000

# Define the command to run your app using pm2 (or node)
CMD ["pm2-runtime", "index.js"]
