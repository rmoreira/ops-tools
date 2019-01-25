FROM debian:stretch-slim
MAINTAINER rafaelanderson@gmail.com

RUN mkdir -p /usr/share/man/man1 && \
    mkdir -p /usr/share/man/man7 && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    git-core \
    openvpn \
    ssh \
    iputils-ping \
    postgresql-client \
    mysql-client \
    #ruby \
    #ruby-dev \
    #python \
    #python-pip \
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
    unzip && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

RUN curl -O https://releases.hashicorp.com/vault/0.11.3/vault_0.11.3_linux_amd64.zip && \
    unzip vault_0.11.3_linux_amd64.zip -d /usr/bin/ && \
    rm vault_0.11.3_linux_amd64.zip && chown daemon:daemon /usr/bin/vault

USER daemon

CMD ["/bin/bash"]
