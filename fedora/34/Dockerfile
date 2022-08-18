# fedora 34
FROM fedora:34
LABEL org.opencontainers.image.source https://github.com/mtharpe/docker-images
RUN dnf install -y dnf-plugins-core --nodocs --setopt install_weak_deps=False
RUN dnf upgrade -y
RUN dnf config-manager --add-repo https://rpm.releases.hashicorp.com/fedora/hashicorp.repo
RUN dnf install terraform vault consul nomad -y --nodocs --setopt install_weak_deps=False
RUN dnf clean all -y