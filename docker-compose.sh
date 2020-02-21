#!/bin/bash
# Script to install docker-compose

echo -e "\033[92mDownloading docker-compose\033[0m\n"
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

echo -e "\n033[93mChanging permissions of docker-compose\033[0m"
sudo chmod +x /usr/local/bin/docker-compose

echo -e "\n\033[92mSuccess!\033[0m"
docker-compose --version
