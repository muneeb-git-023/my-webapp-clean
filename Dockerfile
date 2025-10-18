# Step 1: Use official Node.js image
FROM node:18

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy package files and install dependencies
COPY package*.json ./
RUN npm install --production

# Step 4: Copy the rest of the app
COPY . .

# Step 5: Expose container port
EXPOSE 3000

# Step 6: Start app
# Ensure Node listens on 0.0.0.0
CMD ["node", "server.js"]
