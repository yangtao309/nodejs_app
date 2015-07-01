#!/bin/bash

if [ -z "${1}" ]; then
   version="latest"
else
   version="${1}"
fi

docker push 192.168.59.103:5000/containersol/nodejs_app:"${version}"
