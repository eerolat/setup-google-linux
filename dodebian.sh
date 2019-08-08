#!/bin/bash

# Tuomas Eerola - 2019

echo '==== This script will enable Graphical User Interface on your Debian Server ===='
echo '==== and creates a user account that you can use with Remote Desktop Connections ===='
echo '==== Username: ' $1
echo '==== Password: ' $2

echo ''

echo '==== Upgrade system ===='
sudo apt-get update
sudo apt-get upgrade -y

echo '==== Install packages ===='
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y gnome
sudo apt-get install -y autocutsel
sudo apt install -y xrdp
sudo systemctl enable xrdp
sudo apt-get install -y gnome-core
sudo apt-get install -y gnome-panel
sudo apt-get install -y synaptic

sudo sed -i 's/allowed_users=console/allowed_users=anybody/' /etc/X11/Xwrapper.config

touch ~/.Xresources

sudo adduser  --disabled-password --gecos "GUI User" $1
echo "$1:$2" | sudo chpasswd
sudo /usr/sbin/usermod -aG sudo $1
