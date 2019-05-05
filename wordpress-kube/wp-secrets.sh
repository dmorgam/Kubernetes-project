#!/bin/sh

#Creación de secret via kubectl y literal, ya que mediante yaml no se configura correctamente

MYSQL_PASS=Auv83Mkr
kubectl create secret generic mysql-pass --from-literal=password=$MYSQL_PASS
