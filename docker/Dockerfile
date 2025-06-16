# Use official Node.js LTS base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install --production

# Copy the rest of the app code
COPY . .

# Expose the app port (adjust if needed)
EXPOSE 3000

# Run the application
CMD ["npm", "start"]
