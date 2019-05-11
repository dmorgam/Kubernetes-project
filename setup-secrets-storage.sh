#!/bin/bash



#---- Setup Storage ------

kubectl create -f permanent-storage.yml


#---- Setup Secrets ------

sh wordpress-kube/wp-secrets.sh
sh moodle-kube/moodle-secrets.sh
