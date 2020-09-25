FROM ubuntu:latest

RUN apt-get -y update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install \
      ethtool \
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
      dropbear \
      vim \
      jq \
      unzip \
      iperf \
 && useradd -c "Nonprivileged test user" -m -u 1000 -U testuser
