#!/bin/bash


if [ $# != 2 ]; then
    echo "You need 2 arguements for this script"
    exit 2
fi

export DEST=$1
export REPO=$2
export BRANCH=${3:-"main"}

mkdir -p $DEST
cd $DEST

if [ -d .git ]; then 
    git reset --hard && git pull origin $BRANCH
else 
    git clone $REPO .
fi
