#!/bin/sh

# Update Packages
apt-get update
# Upgrade Packages
apt-get upgrade

apt install software-properties-common

# Basic Linux Stuff
apt-get install -y git

# install ansible
apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y

# enter origin master git or create new git account and commit test
# Install expect, dos2unix & tree
apt-get install expect -y 
apt-get install dos2unix -y
apt-get install tree -y 

# Cleanup unneded packages
apt-get -y autoremove

# Adjust timezone
ln -sf /usr/share/zoneinfo/America/Denver /etc/localtime




