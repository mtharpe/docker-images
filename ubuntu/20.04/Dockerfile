# ubuntu 20.04
FROM ubuntu:20.04
LABEL org.opencontainers.image.source https://github.com/mtharpe/docker-images
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN apt-get update && \
    apt-get install curl wget sudo gnupg lsb-release software-properties-common -y --autoremove --no-install-recommends && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -
RUN apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
RUN apt-get update && \ 
    apt-get install terraform vault consul nomad -y --autoremove --no-install-recommends && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*