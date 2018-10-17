FROM ubuntu:latest
MAINTAINER rafaelanderson@gmail.com

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    git-core \
    openvpn \
    ssh \
    postgresql-client \
    mysql-client \
    ruby \
    ruby-dev \
    python \
    python-pip \
    awscli \
    redis-tools \
    dnsutils \
    dnsmasq \
    vim \
    curl \
    net-tools \
    vim \
    nmap \
    netcat && \
    rm -rf /var/lib/apt/lists/*

RUN curl -O https://releases.hashicorp.com/vault/0.11.3/vault_0.11.3_linux_amd64.zip && \
    unzip vault_0.11.3_linux_amd64.zip -d /usr/bin/ && \
    rm vault_0.11.3_linux_amd64.zip

CMD ["/bin/bash"]
