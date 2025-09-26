# fedora latest 
FROM fedora:latest
LABEL org.opencontainers.image.source=https://github.com/mtharpe/docker-images
RUN dnf upgrade -y && dnf clean all
RUN dnf install -y dnf-plugins-core wget curl unzip && dnf clean all

RUN rm -rf /tmp/*

RUN wget -q -nv https://releases.hashicorp.com/boundary/0.20.0/boundary_0.20.0_linux_amd64.zip -P /tmp
RUN unzip -o /tmp/boundary_0.20.0_linux_amd64.zip -d /usr/local/bin

RUN wget -q -nv https://releases.hashicorp.com/consul/1.21.5/consul_1.21.5_linux_amd64.zip -P /tmp
RUN unzip -o /tmp/consul_1.21.5_linux_amd64.zip -d /usr/local/bin

RUN wget -q -nv https://releases.hashicorp.com/nomad/1.10.5/nomad_1.10.5_linux_amd64.zip -P /tmp
RUN unzip -o /tmp/nomad_1.10.5_linux_amd64.zip -d /usr/local/bin

RUN wget -q -nv https://releases.hashicorp.com/packer/1.14.2/packer_1.14.2_linux_amd64.zip -P /tmp
RUN unzip -o /tmp/packer_1.14.2_linux_amd64.zip -d /usr/local/bin

RUN wget -q -nv https://releases.hashicorp.com/terraform/1.13.3/terraform_1.13.3_linux_amd64.zip -P /tmp
RUN unzip -o /tmp/terraform_1.13.3_linux_amd64.zip -d /usr/local/bin

RUN wget -q -nv https://releases.hashicorp.com/vault/1.20.4/vault_1.20.4_linux_amd64.zip -P /tmp
RUN unzip -o /tmp/vault_1.20.4_linux_amd64.zip -d /usr/local/bin

RUN wget -q -nv https://releases.hashicorp.com/waypoint/0.11.4/waypoint_0.11.4_linux_amd64.zip -P /tmp
RUN unzip -o /tmp/waypoint_0.11.4_linux_amd64.zip -d /usr/local/bin

RUN rm -rf /var/cache/*/*
