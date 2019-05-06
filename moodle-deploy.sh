#!/bin/bash

#---- Deploy Mariadb -------

kubectl create -f moodle-kube/moodle-db.yml


#---- Deploy Moodle --

kubectl create -f moodle-kube/moodle-deploy.yml
