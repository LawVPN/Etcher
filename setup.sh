#!/bin/bash

clear
echo "Preparing to install Etcher into your machine!"
sleep 2

clear
echo "Preparing to install Etcher into your machine! [done]"
echo "Downloading the package"; sleep 2
echo "deb https://deb.etcher.io stable etcher" | sudo tee /etc/apt/sources.list.d/balena-etcher.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 379CE192D401AB61

clear
echo "Preparing to install Etcher into your machine! [done]"
echo "Downloading the package [done]"
echo "Installing the package"
sudo apt update
sudo apt install -y balena-etcher-electron

clear
echo "Preparing to install Etcher into your machine! [done]"
echo "Downloading the package [done]"
echo "Installing the package [done]"
echo "Installaton is completed! Run Etcher now? (Y/n): "; read conf
if [ $conf == $conf[Yy] ]; do
     sleep 1
     exit 0
else
     balena-etcher-electron
fi
