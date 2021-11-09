#!/bin/bash


if [ $# != 2 ]; then
    echo "You need 2 arguements for this script"
    exit 2
fi

export DEST=$1
export TAG=$2

cd $DEST
echo "Building $TAG"
docker build -t $TAG -f Dockerfile .