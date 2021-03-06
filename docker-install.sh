#!/bin/bash

# Installation instructions for docker-ce in ubuntu 16.04+
# https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/

sudo apt remove docker docker-engine docker.io
sudo apt update
sudo apt install -y --no-install-recommends apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt update
sudo apt install -y docker-ce
sudo usermod -aG docker `whoami`
echo "Please logout/login for the usermod changes to take effect!"

curl -L https://github.com/docker/compose/releases/download/1.17.1/docker-compose-`uname -s`-`uname -m` >/tmp/docker-compose
chmod +x /tmp/docker-compose
sudo mv /tmp/docker-compose /usr/local/bin/docker-compose

curl -L https://github.com/docker/machine/releases/download/v0.13.0/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine
chmod +x /tmp/docker-machine
sudo mv /tmp/docker-machine /usr/local/bin/docker-machine
