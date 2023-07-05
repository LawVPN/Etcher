#!/bin/bash

red=$'\e[1;31m'
green=$'\e[1;32m'
yellow=$'\e[1;33m'
blue=$'\e[1;34m'
magenta=$'\e[1;35m'
cyan=$'\e[1;36m'
none=$'\e[0m'

clear
echo "$none[${blue}INFO$none] ${green}Preparing to install Etcher into your machine!"
sudo apt update -qq; apt install -y wget -qq

clear
echo "$none[${blue}INFO$none] ${green}Preparing to install Etcher into your machine!     $none[${yellow}done$none] ${green}"
echo "$none[${blue}INFO$none] ${green}Downloading the package"
#echo "deb https://deb.etcher.io stable etcher" | sudo tee /etc/apt/sources.list.d/balena-etcher.list
#sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 379CE192D401AB61
wget -q https://github.com/balena-io/etcher/releases/download/v1.18.8/balena-etcher_1.18.8_amd64.deb

clear
echo "$none[${blue}INFO$none] ${green}Preparing to install Etcher into your machine!     $none[${yellow}done$none] ${green}"
echo "$none[${blue}INFO$none] ${green}Downloading the package                            $none[${yellow}done$none] ${green}"
echo "$none[${blue}INFO$none] ${green}Installing the package"
#sudo apt install -y balena-etcher-electron
#sudo dpkg -i balena-etcher_1.18.8_amd64.deb
apt install ./balena-etcher_1.18.8_amd64.deb
rm balena-etcher_1.18.8_amd64.deb

clear
echo "$none[${blue}INFO$none] ${green}Preparing to install Etcher into your machine!     $none[${yellow}done$none] ${green}"
echo "$none[${blue}INFO$none] ${green}Downloading the package                            $none[${yellow}done$none] ${green}"
echo "$none[${blue}INFO$none] ${green}Installing the package                             $none[${yellow}done$none] ${green}"
read "$none[${blue}INFO$none] ${green}Installaton is completed! Run Etcher now? (Y/n): " conf
if [ $conf != [Yy] ]; then
     sleep 1
else
     balena-etcher-electron
fi
