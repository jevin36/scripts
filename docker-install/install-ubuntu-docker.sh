#!/bin/bash
sudo apt update
sudo apt -y upgrade
sudo apt install -y docker.io
systemctl start docker
systemctl enable docker
systemctl status docker
docker --version
