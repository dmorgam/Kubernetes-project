#!/bin/sh

#Creación de secret via kubectl y literal, ya que mediante yaml no se configura correctamente

DB_PASS=Auv83Mkr
kubectl create secret generic moodledb-pass --from-literal=password=$DB_PASS
