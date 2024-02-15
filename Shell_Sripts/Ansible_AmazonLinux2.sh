#!/bin/bash
## Author : ARUNKUMAAR R
## Description : Bash script to install Ansible
## Date : 15/02/24
## Language : SHELL SCRIPT

sudo yum update -y
sudo amazon-linux-extras enable ansible2 
sudo yum install ansible -y
ansible --version
