#!/bin/sh

#--- Build local image and push to mickrok8s local ------

cd moodle-kube/
docker build -t moodle_image:local .
docker save moodle_image > /tmp/moodle_image.tar
microk8s.ctr -n k8s.io image import /tmp/moodle_image.tar
cd ..
