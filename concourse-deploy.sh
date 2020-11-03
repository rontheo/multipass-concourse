#!/bin/zsh

/usr/local/bin/multipass launch 20.04 -c 2 -d 20G -m 1G  -n concourse-ci
sleep 5

/usr/local/bin/multipass list
