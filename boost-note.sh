#!/bin/bash
# Shell script to install boost note (note-taking app)

boost_note_deb="boostnote_0.14.0_amd64.deb"

echo -e "\033[92mUpdating local database\033[0m"
sudo apt-get update

echo -e "\n\033[93mDownloading BoostNote v0.14.0\033[0m"
wget "https://github.com/BoostIO/boost-releases/releases/download/v0.14.0/$boost_note_deb"

echo -e "\n\033[94mInstalling BoostNote\033[0m"
sudo dpkg -i "$boost_note_deb"
sudo apt-get install -f
rm "$boost_note_deb"
