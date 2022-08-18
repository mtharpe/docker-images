# ubuntu 22.04
FROM ubuntu:22.04
LABEL org.opencontainers.image.source https://github.com/mtharpe/docker-images
RUN apt-get update && apt-get upgrade -y --autoremove
RUN apt-get install curl wget sudo gnupg lsb-release software-properties-common -y --autoremove
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -
RUN apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
