# syntax=docker/dockerfile:1
FROM fedora:35
RUN dnf install -y dnf-plugins-core
RUN dnf upgrade -y
RUN dnf config-manager --add-repo https://rpm.releases.hashicorp.com/fedora/hashicorp.repo
RUN dnf install terraform vault consul nomad -y
