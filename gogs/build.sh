#!/bin/bash

# 清除已有的
docker stop gogs
docker rm gogs
docker rmi yadgen/gogs

# 重新生成
docker build -t yadgen/gogs ./