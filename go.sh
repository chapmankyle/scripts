#!/bin/bash
# Bash script to install Go version 1.13.8

echo -e "\033[92mDownloading Go 1.13.8\033[0m\n"
curl -O https://storage.googleapis.com/golang/go1.13.8.linux-amd64.tar.gz

echo -e "\n\033[93mMoving compressed file to /usr/local and unzipping\033[0m"
sudo tar -C /usr/local -xzf go1.13.8.linux-amd64.tar.gz

echo -e "\n\033[94mAdding Go to PATH\033[0m"
sudo echo "export GOPATH=$HOME/go" >> ~/.profile
sudo echo "export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin" >> ~/.profile

rm -f go1.13.8.linux-amd64.tar.gz

echo -e "\n\033[92mSuccess!\033[0m"
echo -e "Now type \033[93msource ~/.profile\033[0m in order to apply changes."
