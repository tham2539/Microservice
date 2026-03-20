FROM node:20-alpine
WORKDIR /app
# b. Package Manager & c. Dependency File
COPY package*.json ./
RUN npm install
# a. Source Code
COPY . .
# d. App Runtime
CMD ["node", "index.js"]
