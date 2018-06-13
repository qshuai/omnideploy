#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

sudo add-apt-repository "deb [arch=amd64] https://mirrors.ustc.edu.cn/docker-ce/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get update
sudo apt-get install -y docker-ce
