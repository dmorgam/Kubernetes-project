#!/bin/bash

#---- Build Docker Image for Moodle ----

cd moodle-kube/
docker build -t moodle_image:local .
cd ..

#---- Deploy Mariadb -------------------

kubectl create -f moodle-kube/moodle-db.yml


#---- Deploy Moodle --------------------

kubectl create -f moodle-kube/moodle-deploy.yml

#---- Node Port ------------------------

kubectl expose service moodle --type=NodePort --name=moodle-nodeport
