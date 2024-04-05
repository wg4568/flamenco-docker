#! /bin/bash

mkdir -p /tmp/extract
wget https://flamenco.blender.org/downloads/$1.tar.gz -O /tmp/flamenco.tar.gz
tar -xzf /tmp/flamenco.tar.gz -C /tmp/extract

mv /tmp/extract/* /opt/flamenco
chmod +x /opt/flamenco/flamenco-manager
chmod +x /opt/flamenco/flamenco-worker
chmod +x /opt/flamenco/tools/*

rm /tmp/flamenco.tar.gz
rm -rf /tmp/extract