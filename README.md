
## Despliege de varios containers en kubernetes para mi proyecto de ASIR
  
  
Este script crea un volumen en kubernetes y varios volume claims,
además crea todos los secrets usados en el despliege.
  
+ setup-secrets-storage.sh 
  
Despues se ejecutan los scripts que lanzan los deployments, estan
divididos por servicios, wordpress, moodle, django etc...
  
+ wordpress-deploy.sh
  
  
## MicroK8s addons
(Para el despliegue en microk8s)
  
+ dns 
+ dashboard 
+ storage 
+ ingress
  
---
  
  
El orden de comandos kubectl es este:
  
Secrets & Volumes:
  
+ kubectl create -f permanent-storage.yml
+ kubectl create -f wordpress-kube/wp-secrets.yml
  
  
Deployments:
  
+ kubectl create -f wp-mysql.yml
+ kubectl create -f wp-deploy.yml
  
