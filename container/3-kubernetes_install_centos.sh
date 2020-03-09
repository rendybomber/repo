#!/bin/bash
#Category : Bash Script
#Content : 
#Author : Randi Sunarsa
#Copyright : 2020
echo '--------------------------------'
echo '####_Please wait for kubernetes Installation _####'
echo '--------------------------------'
echo 'Adding Kubernetes Repository  .'
echo '[kubernetes]
name=Kubernetes
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg' > /etc/yum.repos.d/kubernetes.repo
echo '--------------------------------'
echo 'Kubernetes Installation   .'
sudo yum install -y kubelet kubeadm kubectl
echo '--------------------------------'
echo 'Starting Kubernetes Service   .'
systemctl start kubelet
systemctl enable kubelet
echo 'Kubernetes Installation done and ready for use  .'

