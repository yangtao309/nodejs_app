#!/bin/bash
if [ -z "${1}" ]; then
   version="latest"
   marathon="192.168.59.103"
else
   version="${1}"
   #marathon=${MARATHON_PORT_8080_TCP_ADDR}
   marathon="192.168.59.103"
fi

curl -X DELETE -H "Content-Type: application/json" http://${marathon}:8090/v2/apps/app 
sleep 1
#curl -X POST -H "Content-Type: application/json" http://localhost:8090/v2/apps -d@app_marathon.json

cp -f app_marathon.json app_marathon.json.tmp
sed -i "s/latest/${version}/g" app_marathon.json.tmp


curl -X POST -H "Content-Type: application/json" http://${marathon}:8090/v2/apps -d@app_marathon.json.tmp
