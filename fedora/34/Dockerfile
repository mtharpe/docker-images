# syntax=docker/dockerfile:1
FROM fedora:34
LABEL org.opencontainers.image.source https://github.com/mtharpe/docker-images
RUN dnf install -y dnf-plugins-core
RUN dnf upgrade -y
RUN dnf config-manager --add-repo https://rpm.releases.hashicorp.com/fedora/hashicorp.repo
RUN dnf install terraform vault consul nomad -y
