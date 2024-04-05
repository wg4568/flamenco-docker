#! /bin/bash

cd /tmp
wget https://flamenco.blender.org/downloads/flamenco-3.4-linux-amd64.tar.gz
tar -xzf flamenco-3.4-linux-amd64.tar.gz
mv flamenco-3.4-linux-amd64 /app/flamenco
chmod +x /app/flamenco/flamenco-manager
chmod +x /app/flamenco/tools/*
mkdir -p /app/flamenco/scripts/
rm flamenco-3.4-linux-amd64.tar.gz
cd -