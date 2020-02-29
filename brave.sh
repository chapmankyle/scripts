#!/bin/bash
# Shell script to install Brave Browser

echo -e "\033[92mInstalling dependencies\033[0m"
sudo apt install apt-transport-https curl

echo -e "\n\033[93mAdding GPG key\033[0m"
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -

echo -e "\n\033[94mDownloading latest release\033[0m"
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

echo -e "\n\033[95mUpdating local database\033[0m"
sudo apt update

echo -e "\033[92mInstalling Brave\033[0m"
sudo apt install brave-browser
