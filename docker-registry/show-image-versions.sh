#!/bin/bash
REGISTRY=$1
IMAGE=$2
if [ -z ${REGISTRY} ] or [ -z ${IMAGE} ];then
    echo "Please specify a registry to query! e.g. show-image-version.sh docker-hub:500 ubuntu"
    exit -1
fi

curl -X GET https://${REGISTRY}/v2/${IMAGE}/tags/list
