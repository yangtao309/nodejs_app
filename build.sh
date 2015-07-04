#!/bin/bash

if [ -z "${1}" ]; then
   version="latest"
else
   version="${1}"
fi

docker build -t docker.fenxibao.com/containersol/nodejs_app:${version} .
