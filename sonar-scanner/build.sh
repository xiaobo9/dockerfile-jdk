#! /bin/bash

IMAGE="registry.xiaobo9.com:5000/sonarqube/sonar-scanner:alpine-node"

#docker build --no-cache -t ${IMAGE} .
docker build -t ${IMAGE} .
docker push ${IMAGE}
