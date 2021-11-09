#!/bin/bash


export TAG=${1:-"pyapp"}

if [ "$(docker ps -aq)" ]; then
    docker stop $(docker ps -aq)
    docker rm $(docker ps -aq)
fi

docker run --restart always -p 80:8005 -e PORT=8005 -d $TAG