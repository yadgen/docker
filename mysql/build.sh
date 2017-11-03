#!/bin/bash

# 清除已有的
docker stop mysql
docker rm mysql
docker rmi yadgen/mysql

# 重新生成
docker build -t yadgen/mysql ./