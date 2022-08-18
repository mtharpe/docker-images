# fedora latest 
FROM fedora:latest
LABEL org.opencontainers.image.source https://github.com/mtharpe/docker-images
RUN dnf install -y dnf-plugins-core --nodocs --setopt install_weak_deps=False && dnf clean all
RUN dnf upgrade -y && dnf clean all
RUN dnf config-manager --add-repo https://rpm.releases.hashicorp.com/fedora/hashicorp.repo
RUN dnf install terraform vault consul nomad -y --nodocs --setopt install_weak_deps=False && dnf clean all