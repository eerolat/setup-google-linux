#!/bin/bash

echo '==== This script will enable Graphical User Interface'
echo '==== on your Linux Server on Google ===='
echo '==== and creates a user account that you can use'
echo '==== with Remote Desktop Connection.'
echo '===='

if [ ! $# = 3 ]; then
  echo "Usage: $0 [-ud] gui_username gui_password"
  exit
fi

linux="$1"
username="$2"
password="$3"

if [ $linux = "-u" ] ; then
  echo '==== Your Linux: Ubuntu'
elif [ $linux = "-d" ] ; then
  echo '==== Your Linux: Debian'
else
  echo "Usage: $0 [-ud] gui_username gui_password"
  echo "Please use -u for Ubuntu, -d for Debian."
  exit
fi

echo '==== GUI username: ' $2
echo '==== GUI password: ' $3
echo ''

if [ $linux = "-u" ] ; then
  echo 'Now configuring your Ubuntu.'

  sh installubuntugui.sh $username $password
elif [ $linux = "-d" ] ; then
  echo 'Now configuring your Debian.'
  sh installdebiangui.sh $username $password
else
  echo 'Error. Can not start configuring your Linux.'
fi

