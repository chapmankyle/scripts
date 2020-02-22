#!/bin/bash
# Shell script to install Neo4j

echo -e "\033[92mDownloading and adding GPG key\033[0m"
wget -O - https://debian.neo4j.com/neotechnology.gpg.key | sudo apt-key add -

echo -e "\n\033[93mAdding Neo4j to sources\033[0m"
echo 'deb https://debian.neo4j.com stable latest' | sudo tee -a /etc/apt/sources.list.d/neo4j.list

echo -e "\n\033[94mUpdating local database\033[0m"
sudo apt-get update

echo -e "\n\033[95mInstalling Neo4j\033[0m"
sudo apt-get install neo4j=1:4.0.0 -y

echo -e "\n\033[92mUpdating java version to 1.11.0\033[0m"
sudo update-java-alternatives --jre --set java-1.11.0-openjdk-amd64

echo ""
neo4j version
