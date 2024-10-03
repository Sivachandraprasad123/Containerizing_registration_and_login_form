# Step 1: Use the official Node.js image as the base image
FROM node:16

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy package.json and package-lock.json to the container
COPY package*.json ./

# Step 4: Install Node.js dependencies
RUN npm install

# Step 5: Copy the rest of the application files
COPY . .

# Step 6: Expose the port the app runs on (3000)
EXPOSE 3000

# Step 7: Use environment variables defined in the .env file
CMD ["npm", "start"]

