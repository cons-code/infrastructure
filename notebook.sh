#!/bin/bash

#Enter: notebook
docker pull c000llc/docker:ML

#Enter: port, mount, aforementioned
docker run --detach --rm -p 5253:8888 \
	--name ML \
	--mount type=bind,source=/Users/amy/harpoon,target=/home/jovyan/work \
	-e JUPYTER_TOKEN='#Whiteeagles5253jtdc###' \
	c000llc/docker:ML
