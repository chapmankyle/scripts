#!/bin/bash
# Shell script to install Jupyter Notebook

echo -e "\033[92mUpdating local database\033[0m"
sudo apt-get update

echo -e "\n\033[93mInstalling pip and Python 3 headers\033[0m"
sudo apt install python3-pip python3-dev

echo -e "\n\033[94mUpgrading pip and installing virtualenv\033[0m"
sudo -H pip3 install --upgrade pip
sudo -H pip3 install virtualenv
sudo -H pip3 install jupyter

echo -e "\n\033[95mTo run jupyter notebook, do the following:\033[0m"
echo -e "- Create a project directory in the place where you want jupyter notebook to launch from"
echo -e "- Set up a virtual environment in the above directory"
echo -e "  - This can be accomplished by running \033[94mvirtualenv <env_name>\033[0m and replacing <env_name> with anything you want"
echo -e "- Use the newly created virtual environment"
echo -e "  - Run \033[94msource <env_name>/bin/activate\033[0m"
echo -e "- Install jupyter notebook by running \033[92mpip install jupyter\033[0m"
echo -e "- Run the notebook by running \033[93mjupyter notebook\033[0m"
