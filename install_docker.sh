#!/bin/bash
apt-get update
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get update
# apt-cache madison docker-ce
# apt-get install docker-ce=17.09.0~ce-0~ubuntu
apt-get install -y docker-ce=17.12.0~ce-0~ubuntu

docker run --rm hello-world
groupadd docker
usermod -aG docker jungle
docker run --rm hello-world
docker rmi hello-world
systemctl enable docker
pip install docker-compose
docker --version
docker-compose --version
