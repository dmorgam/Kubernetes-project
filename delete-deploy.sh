#!/bin/bash


# Borra los deployments y los volume claims


##### Deployments and services #####

# Wordpress

kubectl delete svc wordpress
kubectl delete svc wordpress-mysql

kubectl delete deployments.apps wordpress
kubectl delete deployments.apps wordpress-mysql

##### Volumes #######################

kubectl delete pvc volume-wordpress
kubectl delete pvc volume-wp-mysql

kubectl delete pvc volume-moodle
kubectl delete pvc volume-moodle-db

##### Secrets ######################

kubectl delete secrets  wp-mysql-pass
kubectl delete secrets  moodledb-pass

