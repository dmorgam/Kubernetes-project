#!/bin/bash


# Borra los deployments y los volume claims


##### Deployments and services #####

# Services

kubectl delete svc wordpress
kubectl delete svc wordpress-mysql
kubectl delete svc moodle-mariadb
kubectl delete svc moodle

# Deployments

kubectl delete deployments.apps wordpress
kubectl delete deployments.apps wordpress-mysql
kubectl delete deployments.apps moodle
kubectl delete deployments.apps moodle-mariadb

##### Volumes #######################

kubectl delete pvc volume-wordpress
kubectl delete pvc volume-wp-mysql

kubectl delete pvc volume-moodle
kubectl delete pvc volume-moodle-db

##### Secrets ######################

kubectl delete secrets  wp-mysql-pass
kubectl delete secrets  moodledb-pass

