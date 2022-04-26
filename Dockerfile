# Use the official lightweight Node.js 16 image.
# https://hub.docker.com/_/node
FROM node:lts-alpine

# Copy local code to the container image.
COPY . ./

# Install production dependencies.
RUN npm install


CMD [ "npm", "start" ]


# EXPOSE must be last command in Dockerfile. Otherwise this information will not be exposed as .ContainerConfig.ExposedPorts
EXPOSE 3000
