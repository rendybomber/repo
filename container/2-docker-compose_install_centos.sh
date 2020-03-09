#!/bin/bash
#Category : Bash Script
#Content : Docker Compose Installation for CentOS 7
#Author : Randi Sunarsa
#Copyright : 2020
echo '--------------------------------'
echo '####_Please wait for Docker Compose Installation_####'
echo '--------------------------------'
echo 'Dependencies installation   .'
yum -y install curl
echo '--------------------------------'
echo 'Docker-compose Installation   .'
curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
echo '--------------------------------'
echo 'Adding access and Symlink  .'
chmod +x /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
echo '--------------------------------'
echo 'Docker Compose installation done and ready to use .'
docker-compose --version
