# manjaro latest
FROM manjarolinux/base:latest
LABEL org.opencontainers.image.source https://github.com/mtharpe/docker-images
RUN pacman -Syyu --noconfirm
RUN pacman -Syy --noconfirm terraform vault consul nomad
