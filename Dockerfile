# Step 1: Base image
FROM node:18 AS builder

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Step 4: Copy the rest of the project files
COPY . .

# Step 5: Expose app port and set start command
EXPOSE 3002
CMD ["npm", "start"]
