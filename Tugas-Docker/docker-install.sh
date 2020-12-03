#!/bin/bash

set -e

echo "installing docker and docker-compose"

sudo apt update -y && sudo apt full-upgrade -y
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker ubuntu
sudo apt install -y docker-compose

#!!!!! IF DOCKER COMPOSE ERROR !!!!!
#if docker-compose error, uncomment the line below
#sudo chown $USER /var/run/docker.sock
