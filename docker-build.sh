#! /bin/bash

sudo docker image rm flamenco --force
sudo docker build -t flamenco .