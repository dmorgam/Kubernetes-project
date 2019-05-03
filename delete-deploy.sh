#!/bin/bash


# Borra los deployments y los volume claims


##### Deployments and services #####



##### Volumes #######################

kubectl delete pvc wp-pv-claim
kubectl delete pvc wpmysql-pv-claim
kubectl delete pv volume-1


##### Secrets ######################

kubectl delete secrets  mysql-pass

