#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras install docker -y
sudo service docker start
sudo usermod -a -G docker ec2-user

DOCKER_USERNAME="nasimstg"
DOCKER_PASSWORD="MfCZi35gUwh-%ff"

echo $DOCKER_PASSWORD | docker login -u $DOCKER_USERNAME --password-stdin
docker pull nasimstg/devop:latest