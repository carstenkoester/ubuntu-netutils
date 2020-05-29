FROM ubuntu:latest

RUN apt-get -y update && \
    apt-get -y install \
      net-tools \
      iputils-ping \
      traceroute \
      dnsutils \
      iproute2 \
      iptables \
      tcpdump \
      socat \
      netcat \
      curl \
      wget \
 && useradd -c "Nonprivileged test user" -m -u 1000 -U testuser
