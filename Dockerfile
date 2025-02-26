# Use official Node.js 22 Alpine image
FROM node:22-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first for dependency installation
COPY package*.json ./

# Install dependencies (production only)
RUN npm install --omit=dev

# Copy the rest of the application
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Default command to run the app
CMD ["npm", "run", "start"]
