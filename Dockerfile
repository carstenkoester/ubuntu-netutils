FROM ubuntu:latest

RUN apt-get -y update && \
    apt-get -y install \
      iputils-ping \
      traceroute \
      dnsutils \
      iproute2 \
      iptables \
      tcpdump \
      socat \
      netcat \
 && useradd -c "Nonprivileged test user" -m -u 1000 -U testuser
