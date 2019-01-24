#!/bin/bash
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
lsb_release -cs
add-apt-repository \
"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) \
stable"
apt-get update
#curl https://raw.githubusercontent.com/rancher/install-docker/master/18.09.1.sh | sh
apt-get install -y docker-ce
#sudo apt-get update
#sudo apt-get install -y docker-ce
