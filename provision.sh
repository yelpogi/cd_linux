#!/usr/bin/env bash
echo "Provisioning"

apt-get update
apt-get install -y python-software-properties
add-apt-repository ppa:git-core/ppa
apt-get update
apt-get install -y git
