#!/bin/bash



#---- Setup Storage ------

kubectl create -f permanent-storage.yml


#---- Setup Secrets ------

kubectl create -f wordpress-kube/wp-secrets.yml


