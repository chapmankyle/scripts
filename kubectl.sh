#!/bin/bash
# Bash script to install Kubernetes command-line interface

echo -e "\n\033[92mInstalling pre-requisites\033[0m"
sudo apt-get update
sudo apt-get install -y apt-transport-https gnupg2

echo -e "\n\033[93mAdding key\033[0m"
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list

echo -e "\n\033[94mInstalling kubectl\033[0m"
sudo apt-get update
sudo apt-get install -y kubectl

echo -e "\033[92mSuccess!\033[0m"
kubectl version --client
