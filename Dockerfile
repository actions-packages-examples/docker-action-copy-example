# Container image that runs your code
FROM alpine:3.9

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Attempt to change working directory
# https://docs.docker.com/engine/reference/builder/#workdir
# WORKDIR /github/workspace

RUN ls -alrth

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]