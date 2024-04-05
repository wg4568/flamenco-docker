#! /bin/bash

cd /tmp
wget https://flamenco.blender.org/downloads/flamenco-3.4-linux-amd64.tar.gz
tar -xzf flamenco-3.4-linux-amd64.tar.gz
mv flamenco-3.4-linux-amd64 /opt/flamenco
chmod +x /opt/flamenco/flamenco-manager
chmod +x /opt/flamenco/flamenco-worker
chmod +x /opt/flamenco/tools/*
rm flamenco-3.4-linux-amd64.tar.gz
cd -