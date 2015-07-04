#!/bin/bash

if [ -z "${1}" ]; then
   version="latest"
else
   version="${1}"
fi

docker push docker.fenxibao.com/containersol/nodejs_app:"${version}"
