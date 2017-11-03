#!/bin/bash

# 清除已有的
docker stop php
docker rm php
docker rmi yadgen/php 

# 重新生成
docker build -t yadgen/php ./