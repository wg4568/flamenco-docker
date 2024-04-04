#! /bin/bash

sudo docker rm flamenco-test --force
sudo docker image rm flamenco-test --force
sudo docker build -t flamenco-test .
sudo docker run -d -p 8080:8080 --name flamenco-test flamenco-test