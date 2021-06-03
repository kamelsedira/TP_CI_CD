#!/usr/bin/env bash

sudo apt update
sudo apt upgrade 

sudo apt remove -y python
# install python3
sudo apt-get install python3 python3-dev python3-pip -q -y
sudo mv /usr/bin/python3 /usr/bin/python