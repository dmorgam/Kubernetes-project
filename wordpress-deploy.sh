#!/bin/bash

#---- Deploy Mysql -------

kubectl create -f wordpress-kube/wp-mysql.yml


#---- Deploy Wordpress --

kubectl create -f wordpress-kube/wp-deploy.yml

#---- NodePort ---------

kubectl expose service wordpress --type=NodePort --name=wordpress-nodeport
