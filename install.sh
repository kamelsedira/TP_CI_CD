#!/bin/bash

##jouter les hostnames
echo 192.168.1.10 master >> /etc/hosts
echo 192.168.1.11 client1 >> /etc/hosts
echo 192.168.1.12 client2 >> /etc/hosts
echo 192.168.1.13 client2 >> /etc/hosts

sudo apt-get update
sudo apt-get -y install open-iscsi
sudo apt-get -y install lvm2

## java for jenkins
sudo apt -y update
sudo apt -y install ca-certificates
sudo apt -y install openjdk-11-jdk
sudo apt -y install openjdk-11-jdk
#installer gnup
sudo apt -y install gnupg

## Jenkins
sudo wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
/etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get -y install jenkins
#
#start du service jenkins
sudo service jenkins start

################Installation Ansible############
sudo apt update
sudo apt -y install ansible
ansible --version

#########Installation Git#######################
sudo apt-get -y install git
sleep 20

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

#####################Récupération mdp Jenkins#####################"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword