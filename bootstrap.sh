#!/bin/bash

set -e

#check for update and then upgrade ubuntu
sudo apt update -y \
sudo apt full-upgrade -y	

#installing apache
sudo apt install apache2

#check apache
sudo systemcl status apache2

#adjust ufw firewall
sudo ufw status
sudo ufw allow OpenSSH
sudo ufw allow 'Apache Full'

#adding ondrej repository for install php 7.3
sudo add-apt-repository ppa:ondrej/php
sudo apt update -y

#installing php
sudo apt install php7.3 -y

#restarting apache server
sudo systemctl restart apache2

#installing php moduls
sudo apt install php7.3-common php7.3-opcache php7.3-cli php7.3-gd php7.3-curl php7.3-mysql