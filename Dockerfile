# Use the official lightweight Node.js 16 image.
# https://hub.docker.com/_/node
FROM node:lts-alpine

# Copy local code to the container image.
COPY . ./

# Install production dependencies.
RUN npm install

EXPOSE 3000

CMD [ "npm", "start" ]