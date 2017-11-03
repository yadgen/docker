#!/bin/bash

# 清除已有的
docker stop alpine
docker rm alpine
docker rmi yadgen/alpine 

# 重新生成
docker build -t yadgen/alpine ./