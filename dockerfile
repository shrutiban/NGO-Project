#  Dockerfile for Node Express Backend

FROM node:10.16-alpine

# Create App Directory

WORKDIR /usr/src/app

# Install Dependencies
COPY ./package*.json ./

RUN npm install --silent

# Copy app source code
COPY . .

# Exports
EXPOSE 5050

CMD ["npm","start"]