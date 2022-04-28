FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install curl unzip iproute2 -y

ARG NOMAD_VERSION=1.2.5

RUN curl -L https://releases.hashicorp.com/nomad/${NOMAD_VERSION}/nomad_${NOMAD_VERSION}_linux_amd64.zip -o nomad.zip && \
    unzip nomad.zip && \
    mv nomad /usr/local/bin

RUN mkdir -p /etc/nomad /data/nomad

COPY server/server.hcl /etc/nomad/server.hcl

EXPOSE 4646 4647 4648 4648/udp

ENTRYPOINT ["nomad"]
