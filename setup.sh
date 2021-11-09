#!/bin/bash

# puppet bolt vs puppetlabs
# agentless vs agent
# yaml-first vs puppet lang first


export BOLT_VERSION="focal" # ubuntu 20.04

wget "https://apt.puppet.com/puppet-tools-release-$BOLT_VERSION.deb"
sudo dpkg -i puppet-tools-release-*.deb
sudo apt-get update
sudo apt-get install puppet-bolt
rm puppet-tools-release-*.deb