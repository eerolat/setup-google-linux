#!/bin/bash

# Tuomas Eerola - 2019

echo '==== This script will enable Graphical User Interface on your Ubuntu Server ===='
echo '==== and creates a user account that you can use with Remote Desktop Connections ===='
echo '==== Username: ' $1
echo '==== Password: ' $2

echo ''

echo '==== Upgrade system ===='
sudo apt-get update
sudo apt-get upgrade -y

echo '==== Install packages ===='
sudo apt-get install -y gnome-shell
sudo apt-get install -y ubuntu-gnome-desktop
sudo apt-get install -y autocutsel
sudo apt install -y xrdp
sudo systemctl enable xrdp
sudo apt-get install -y gnome-core
sudo apt-get install -y gnome-panel
sudo apt-get install -y synaptic

touch ~/.Xresources

sudo adduser  --disabled-password --gecos "GUI User" $1
echo "$1:$2" | sudo chpasswd
sudo /usr/sbin/usermod -aG sudo $1
