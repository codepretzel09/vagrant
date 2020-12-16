#!/bin/bash

#sudo apt-get update
#sudo apt-get upgrade
sudo apt-get install nginx -y
sudo usermod -aG sudo vagrant
sudo chown vagrant /etc/nginx/conf.d
sudo chgrp vagrant /etc/nginx/conf.d
sudo chown vagrant /etc/nginx/sites-available/default
sudo chgrp vagrant /etc/nginx/sites-available/default


