#!/bin/bash


export DEBIAN_FRONTEND=noninteractive

# install and run docker 
sudo DEBIAN_FRONTEND=noninteractive apt -yq full-upgrade 
sudo DEBIAN_FRONTEND=noninteractive apt -yq install  apt-transport-https ca-certificates curl gnupg-agent software-properties-common 
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo DEBIAN_FRONTEND=noninteractive apt -yq update
sudo DEBIAN_FRONTEND=noninteractive apt -yq upgrade
sudo DEBIAN_FRONTEND=noninteractive apt -yq install docker-ce
sudo  systemctl status docker
sleep 1
sudo  systemctl enable docker
sleep 1
sudo docker run hello-world

