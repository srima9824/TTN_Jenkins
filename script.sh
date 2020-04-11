#!/bin/bash

IMAGE_LIST=$(docker images | grep -v latest | awk {'print $1'}|sed -n 2,'$p')
docker rmi -f $IMAGE_LIST
