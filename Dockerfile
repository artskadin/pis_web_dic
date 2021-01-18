FROM node:12
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# package.json and package-lock.json

COPY package*.json ./
RUN npm install
COPY docker-compose.yml /
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
