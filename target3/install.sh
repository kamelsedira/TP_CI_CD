#!/bin/bash

##jouter les hostnames
echo 192.168.1.10 master >> /etc/hosts
echo 192.168.1.11 client1 >> /etc/hosts
echo 192.168.1.12 client2 >> /etc/hosts
echo 192.168.1.13 client3 >> /etc/hosts

sudo apt-get update
sudo apt-get -y install open-iscsi
sudo apt-get -y install lvm2


#=============Installation Python ========================
# remove python2
sudo apt update
sudo apt upgrade 
sudo apt remove -y python
# install python3
sudo apt-get install python3 python3-dev python3-pip -q -y
sleep 20
sudo mv /usr/bin/python3 /usr/bin/python
sudo apt-get -y install python3-pip