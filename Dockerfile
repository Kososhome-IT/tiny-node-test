# Use official Node image
FROM node:20-alpine

# Create app directory
WORKDIR /usr/src/app

# Install dependencies
COPY package*.json ./
RUN npm install --omit=dev

# Copy source
COPY . .

# App runs on PORT env variable
ENV PORT=8080

# Expose (for local use – Cloud Run uses PORT env)
EXPOSE 8080

# Start command
CMD ["npm", "start"]
