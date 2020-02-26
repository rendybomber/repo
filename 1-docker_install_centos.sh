#!/bin/bash
#Category : Bash Script
#Content : Docker Installation for CentOS 7
#Author : Randi Sunarsa
#Copyright : 2020
echo '--------------------------------'
echo '####_Please wait for Docker Installation_####'
echo '--------------------------------'
echo 'Dependencies installation   .'
yum install -y yum-utils device-mapper-persistent-data lvm2
echo '--------------------------------'
echo 'Adding Docker Repository   .'
yum-config-manager  --add-repo https://download.docker.com/linux/centos/docker-ce.repo
echo '--------------------------------'
echo 'Docker installation   .'
yum install -y docker-ce
echo '--------------------------------'
echo 'Starting Docker Service  .'
systemctl start docker
systemctl enable docker
echo 'Docker installation done and ready to use   .'
