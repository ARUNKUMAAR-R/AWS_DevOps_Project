#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras enable ansible2 
sudo yum install ansible -y
ansible --version
