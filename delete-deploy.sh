#!/bin/bash


# Borra los deployments y los volume claims


##### Deployments and services #####

# Wordpress

kubectl delete svc wordpress
kubectl delete svc wordpress-mysql

kubectl delete deployments.apps wordpress
kubectl delete deployments.apps wordpress-mysql

##### Volumes #######################

kubectl delete pvc wp-pv-claim
kubectl delete pvc wpmysql-pv-claim
kubectl delete pv volume-1


##### Secrets ######################

kubectl delete secrets  mysql-pass

