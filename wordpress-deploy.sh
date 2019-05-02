#!/bin/bash

#---- Deploy Mysql -------

kubectl create -f wp-mysql.yml


#---- Deploy Wordpress --

kubectl create -f wp-deploy.yml
