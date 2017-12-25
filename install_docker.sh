#!/bin/bash
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
# apt-cache madison docker-ce
sudo apt-get install docker-ce=17.09.0~ce-0~ubuntu
sudo docker run --rm hello-world
sudo groupadd docker
sudo usermod -aG docker $USER
docker run --rm hello-world
sudo systemctl enable docker
sudo pip install docker-compose
docker --version
docker-compose --version
