#!/bin/bash
if [ $1 == "start" ]; then
docker run --name cloud9 -d -p 81:80 -v `pwd`:/workspace/ kdelfour/cloud9-docker
exit 0
fi
if [ $1 == "stop" ]; then
docker rm -f cloud9
exit 0
fi
echo "Usage: httpd [start|stop]"
