#!/bin/bash

ip=$(hostname -I | awk '{print $1}')
export ip 

echo "setup user id for docker"
sudo groupadd docker
sudo  usermod -aG docker ${USER}
sudo su ${USER}
docker ps -a 

echo "install and run docker-compose"
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

echo "install and run concourse"
wget https://concourse-ci.org/docker-compose.yml
sed -i "s/localhost/${ip}/g" docker-compose.yml
docker-compose up -d
