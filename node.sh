#!/bin/bash
# Shell script to install NodeJS and NPM

echo -e "\033[92mUpdating local database\033[0m"
sudo apt-get update

echo -e "\n\033[93mInstalling cURL\033[0m"
sudo apt-get install curl

read -p "\n\033[94mInstall LTS or latest version?\033[0m [LTS/latest] : " choice
if [ "$choice" == "LTS" -o "$choice" == "lts" ]; then
	curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
else
	curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
fi

echo -e "\n\033[93mInstalling NodeJS\033[0m"
sudo apt-get install nodejs

echo -e "\n\033[92mSuccess!\033[0m"
node_ver="$(node -v)"
npm_ver="$(npm -v)"
echo -e "Installed NodeJS version $node_ver and NPM version $npm_ver"
