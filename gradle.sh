#!/bin/bash
# Bash script to install Gradle version 6.5

echo -e "\033[92mDownloading Gradle\033[0m"
wget https://services.gradle.org/distributions/gradle-6.5-bin.zip

echo -e "\033[93mCreating folder and unzipping\033[0m"
sudo mkdir /opt/gradle
sudo unzip -d /opt/gradle gradle-6.5-bin.zip

echo -e "\n\033[94mUpdating PATH variable\033[0m"
export PATH=$PATH:/opt/gradle/gradle-6.5/bin

echo -e "\033[92mSuccess!\033[0m"
rm gradle-6.5-bin.zip

gradle -v
