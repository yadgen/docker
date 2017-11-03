#!/bin/bash

# 清除已有的
docker stop redis
docker rm redis
docker rmi yadgen/redis

docker build -t yadgen/redis ./