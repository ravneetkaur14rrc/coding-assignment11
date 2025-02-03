# Use an official Node.js image as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /Kaur_Ravneet_site

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the application port
EXPOSE 7775

# Start the React application
CMD ["npm", "start"]
