#!/usr/bin/env bash

curl -fsSL get.docker.com -o get-docker.sh
sudo sh get-docker.sh --mirror Aliyun
rm get-docker.sh
