#! /bin/bash

sudo docker rm flamenco-test --force
sudo docker image rm flamenco --force
sudo docker build -t flamenco .
sudo docker run -d -p 8080:8080 --name flamenco-test flamenco