# Graphical User Interface for Linux server on Google Cloud Platform

This bash script installs automatically a graphical user interface on your Linux server on Google Cloud Platform. This Notebook is based on the article posted on LinkedIn https://www.linkedin.com/pulse/how-set-up-linux-desktop-google-cloud-platform-tuomas-eerola/ 

## Getting Started

You can run this script

1. As a Startup Script in Google Compute Engine when launching a new Linux VM; or
2. In the SSH console window in Google Compute Engine. 

## Option 1 - Run as a Startup Script

*Go to your Google Cloud Console. https://console.cloud.google.com

*Go to Compute Engine > VM Instances.

*Select "Create Instance".

*Select a boot disk (this script supports Debian or Linux).

*Expand "Management, security, disks, networking, sole tenancy"

*On "Startup script" field, type (replace "myusername" and "mypassword" with your preferred user credentials)

i. For Debian
```
   wget https://github.com/eerolat/setup-google-linux/raw/master/install.sh
   sh install.sh -d myusername mypassword
```
ii. For Ubuntu
```
   wget https://github.com/eerolat/setup-google-linux/raw/master/install.sh
   sh install.sh -u myusername mypassword
```
*Click "Create" button.

*Wait for your Linux VM to start.

*Open a Remote Desktop Connection to your new Linux VM. The IP address of your VM instance is shown in the "VM Instances" view. Log in using your GUI username and password.

## Option 2 - Run in the SSH Console Window

*We assume that you have created an instance using a Linux boot disk (this script supports Debian or Linux).

*Go to your Google Cloud Console. https://console.cloud.google.com

*Go to Compute Engine > VM Instances.

*Click the "SSH" button next to your VM instance to open a SSH Console Window. 

*In the console window, type (replace "myusername" and "mypassword" with your preferred user credentials)

i. On Debian
```
   wget https://github.com/eerolat/setup-google-linux/raw/master/install.sh
   sh install.sh -d myusername mypassword
```
ii. On Ubuntu
```
   wget https://github.com/eerolat/setup-google-linux/raw/master/install.sh
   sh install.sh -u myusername mypassword
```
*Wait for the script to finish.

*Open a Remote Desktop Connection to your new Linux VM. The IP address of your VM instance is shown in the "VM Instances" view. Log in using your GUI username and password.

## Authors

* **Tuomas Eerola** - *Initial work* - [GitHub](https://github.com/eerolat)
