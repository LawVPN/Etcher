#!/bin/bash

clear
echo "Preparing to install Etcher into your machine!"
sleep 2

clear
echo "Preparing to install Etcher into your machine! [done]"
echo "Downloading the package"; sleep 2
#echo "deb https://deb.etcher.io stable etcher" | sudo tee /etc/apt/sources.list.d/balena-etcher.list
#sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 379CE192D401AB61
wget -q https://github.com/balena-io/etcher/releases/download/v1.18.8/balena-etcher_1.18.8_amd64.deb

clear
echo "Preparing to install Etcher into your machine! [done]"
echo "Downloading the package [done]"
echo "Installing the package"
sudo apt update
#sudo apt install -y balena-etcher-electron
#sudo dpkg -i balena-etcher_1.18.8_amd64.deb
sudo apt install ./balena-etcher_1.18.8_amd64.deb

clear
echo "Preparing to install Etcher into your machine! [done]"
echo "Downloading the package [done]"
echo "Installing the package [done]"
echo "Installaton is completed! Run Etcher now? (Y/n): "; read conf
if [ $conf != [Yy] ]; then
     sleep 1
     exit 0
else
     balena-etcher-electron
fi
