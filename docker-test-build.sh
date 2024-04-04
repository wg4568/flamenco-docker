#! /bin/bash

./docker-test-clean.sh
sudo docker build -t flamenco-test .
sudo docker run -d -p 8080:8080 --name flamenco-test flamenco-test