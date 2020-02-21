#!/bin/bash
REGISTRY=$1
if [ -z ${REGISTRY} ];then
    echo "Please specify a registry to query! e.g. show-images.sh docker-hub:500"
    exit -1
fi


curl -X GET https://${REGISTRY}/v2/_catalog
