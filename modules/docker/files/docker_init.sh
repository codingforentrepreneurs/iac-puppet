#!/bin/bash

if ! [ -x "$(command -v docker)" ]; then
    echo "Docker not installed"
    curl https://get.docker.com -o /tmp/get-docker.sh
    sudo sh /tmp/get-docker.sh
fi