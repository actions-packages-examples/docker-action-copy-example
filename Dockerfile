# Container image that runs your code
FROM node:12

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

WORKDIR /usr/src/app

# install app dependencies
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
