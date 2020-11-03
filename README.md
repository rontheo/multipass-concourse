# multipass-concourse
Deploy concourse-ci vm on osx multipass 

This ansible-playbook deploys a multipass vm on osx, followed by concourse-ci installation 
ubuntu 20.04
cpu: 2
disk: 20G
memory 1G

## Requirements
```
Install multipass on macOS: https://multipass.run/docs/installing-on-macos
Install ansible on OSX: https://formulae.brew.sh/formula/ansible
```
## Installation  
```
ansible-playbook ~/multipass-concoure/concourse-deploy.yml
```
## Access concourse-ci
```
http://multipass-ip:8080 

username: test
password: test
```
## Access multipass shell
```
$ multipass shell concourse-ci

$ls
docker-compose.yml
```
