#!/usr/bin/env bash
echo "Provisioning"

sed "s/us.archive.ubuntu.com/mirror.nus.edu.sg/" < /etc/apt/sources.list > s1.list
sed "s/security.ubuntu.com/mirror.nus.edu.sg/" < s1.list > sources.list
mv sources.list /etc/apt

apt-get update
apt-get install -y python-software-properties
add-apt-repository ppa:git-core/ppa
apt-get update
apt-get install -y git
