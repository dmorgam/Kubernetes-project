
## Despliege de varios containers en kubernetes para mi proyecto de ASIR
  
El despliege se hará sobre microk8s para la demostración.
  
Los directorios con los volume claims de microk8s están en esta ruta:
+ /var/snap/microk8s/common/default-storage/

Teniendo todo el directorio y subdirectorios con permisos suficientes,
en pruebas con microk8s con 777 de permisos.
  
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
   
  
## El orden de comandos kubectl es este:
  
Secrets & Volumes:
  
+ kubectl create -f permanent-storage.yml
+ sh wordpress-kube/wp-secrets.sh
  
  
Deployments:
  
+ kubectl create -f wp-mysql.yml
+ kubectl create -f wp-deploy.yml
  
