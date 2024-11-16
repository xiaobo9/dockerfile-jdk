#! /bin/bash

version=8-jre8-alpine
docker build -t registry.xiaobo9.com:5000/xiaobo9/tomcat:$version .
docker push registry.xiaobo9.com:5000/xiaobo9/tomcat:$version