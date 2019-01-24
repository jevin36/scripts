#!/bin/bash
docker_version="18.09.1"

# uninstall older versions
sudo apt-get -y remove docker docker-ce docker-engine docker.io containerd runc

sudo apt-get -y update
sudo apt-get -y install \
apt-transport-https \
ca-certificates \
curl \
gnupg2 \
software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) \
stable"

sudo apt-get -y update

version_string=$(apt-cache madison docker-ce | grep ${docker_version} | head -n 1 | cut -d ' ' -f 4)
if [ -z "$version_string" ];then
  logger -s "Docker Version [$docker_version] not available"
  exit 1;
fi
echo "Found docker-ce version [$version_string]"

sudo apt-get -y install docker-ce=$version_string
