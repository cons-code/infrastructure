#!/bin/bash

#Enter: notebook
docker pull c000llc/docker:ML

#Enter: port, mount, aforementioned
docker run --detatch -rrm -p 5253:8888 \ 
	-- name ML \
	-- mount type=bind, source=/Users/c.000llc/Development,target=/home/jovyan/ work \
	-e JUPYTER_TOKEN='#Whiteeagles5253jtdc###' \
	c000llc/docker:ML
