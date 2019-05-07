#!/bin/bash

#---- Deploy Mariadb ---------

kubectl create -f moodle-kube/moodle-db.yml


#---- Deploy Moodle ----------

kubectl create -f moodle-kube/moodle-deploy.yml


#---- Deploy load balancer ---

kubectl create -f moodle-kube/moodle-loadbalancer.yml
