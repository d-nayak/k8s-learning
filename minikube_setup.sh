#!/usr/bin/bash

# script for setting up minikube on "fresh" Rocky 9 - minimal install

yum install -y wget curl

# install kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x kubectl && mv kubectl /usr/local/bin
kubectl version --client -o json

# install docker
sudo dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo dnf install docker-ce docker-cli
sudo systemctl enable docker
sudo systemctl start docker

# install minikube
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 -O minikube
chmod +x minikube && mv minikube /usr/local/bin

# start minikube
minikube start --force

# check
kubectl get nodes
minikube ip
