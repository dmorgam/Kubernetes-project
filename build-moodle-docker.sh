#!/bin/sh

#--- Build local image and push to mickrok8s local ------

cd moodle-kube/
docker build -t localhost:32000/moodle_image:local .
cd ..
