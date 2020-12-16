#!/bin/sh

# Update Packages
apt-get update -y
# Upgrade Packages
apt-get upgrade -y

# Basic Linux Stuff
apt-get install -y git

sudo mkdir /home/vagrant/docker
sudo mkdir /home/vagrant/html
# Install Docker

sudo apt-get remove docker docker-engine docker.io containerd runc

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common


curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -


sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io -y

sudo docker run hello-world


#docker compose

sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

sudo chown vagrant /home/vagrant/docker
sudo chgrp vagrant /home/vagrant/docker
sudo chown vagrant /home/vagrant/html
sudo chgrp vagrant /home/vagrant/html