# Container image that runs your code
FROM alpine:3.10

RUN apk update && apk add curl wget jq
# RUN wget https://github.com/cli/cli/releases/download/v1.0.0/gh_1.0.0_linux_386.tar.gz -O ghcli.tar.gz
# RUN tar --strip-components=1 -xf ghcli.tar.gz

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]