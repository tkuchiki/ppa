FROM ubuntu:24.04

RUN apt update -y
RUN apt install -y gzip dpkg-dev apt-utils

COPY create-packages-and-releases.sh /tmp/create-packages-and-releases.sh

ENTRYPOINT ["bash", "/tmp/create-packages-and-releases.sh"]
