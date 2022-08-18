# alpine 3.14

FROM alpine:3.14
LABEL org.opencontainers.image.source https://github.com/mtharpe/docker-images

# make sure the package repository is up to date
RUN apk --no-cache add bash
RUN echo "" > /root/.ash_history

# change default shell from ash to bash
RUN sed -i -e "s/bin\/ash/bin\/bash/" /etc/passwd

ENV LC_ALL=en_US.UTF-8

WORKDIR /root

RUN wget -q -nv https://releases.hashicorp.com/boundary/0.7.6/boundary_0.7.6_linux_amd64.zip -P /tmp
RUN unzip /tmp/boundary_0.7.6_linux_amd64.zip -d /usr/local/bin

RUN wget -q -nv https://releases.hashicorp.com/consul/1.12.0/consul_1.12.0_linux_amd64.zip -P /tmp
RUN unzip /tmp/consul_1.12.0_linux_amd64.zip -d /usr/local/bin

RUN wget -q -nv https://releases.hashicorp.com/nomad/1.2.6/nomad_1.2.6_linux_amd64.zip -P /tmp
RUN unzip /tmp/nomad_1.2.6_linux_amd64.zip -d /usr/local/bin

RUN wget -q -nv https://releases.hashicorp.com/packer/1.8.0/packer_1.8.0_linux_amd64.zip -P /tmp
RUN unzip /tmp/packer_1.8.0_linux_amd64.zip -d /usr/local/bin

RUN wget -q -nv https://releases.hashicorp.com/terraform/1.1.9/terraform_1.1.9_linux_amd64.zip -P /tmp
RUN unzip /tmp/terraform_1.1.9_linux_amd64.zip -d /usr/local/bin

RUN wget -q -nv https://releases.hashicorp.com/vault/1.10.1/vault_1.10.1_linux_amd64.zip -P /tmp
RUN unzip /tmp/vault_1.10.1_linux_amd64.zip -d /usr/local/bin

RUN wget -q -nv https://releases.hashicorp.com/waypoint/0.8.1/waypoint_0.8.1_linux_amd64.zip -P /tmp
RUN unzip /tmp/waypoint_0.8.1_linux_amd64.zip -d /usr/local/bin

RUN rm -rf /var/cache/*/*
