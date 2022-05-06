FROM ubuntu:20.04


RUN apt-get update && \
    apt-get install curl unzip iproute2 -y

ARG NOMAD_VERSION=1.2.5

ARG CLIENT_FILE

ARG GENERIC_DEVICE_URL

ENV NOMAD_DATA_DIR /data/nomad

ENV NOMAD_PLUGINS_DIR ${NOMAD_DATA_DIR}/plugins


RUN curl -L https://releases.hashicorp.com/nomad/${NOMAD_VERSION}/nomad_${NOMAD_VERSION}_linux_amd64.zip -o nomad.zip && \
    unzip nomad.zip && \
    mv nomad /usr/local/bin

RUN mkdir -p /etc/nomad ${NOMAD_DATA_DIR} ${NOMAD_PLUGINS_DIR}

COPY client/${CLIENT_FILE} /etc/nomad/${CLIENT_FILE}

COPY plugins/generic-device ${NOMAD_PLUGINS_DIR}

EXPOSE 4646 4647 4648 4648/udp

ENTRYPOINT ["nomad"]
