#!/bin/bash
# Shell script to install Docker

echo -e "\033[92mUpdating local database\033[0m"
sudo apt-get update

echo -e "\n\033[93mDownloading dependencies\033[0m"
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

echo -e "\n\033[94mAdding Docker's GPG key\033[0m"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo -e "\n\033[92mInstalling Docker repository\033[0m"
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

echo -e "\n\033[93mUpdating local database (again)\033[0m"
sudo apt-get update

echo -e "\n\033[94mInstalling latest version of Docker\033[0m"
sudo apt-get install -y docker-ce

echo -e "\n\033[92mStarting docker daemon\033[0m"
sudo systemctl start docker
sudo systemctl enable docker
