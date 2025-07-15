#!/bin/bash
sudo apt update -y
sudo apt install ruby-full -y
sudo apt install wget -y
cd /home/ubuntu 
# wget https://bucket-name.s3.region-identifier.amazonaws.com/latest/install
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
systemctl status codedeploy-agent