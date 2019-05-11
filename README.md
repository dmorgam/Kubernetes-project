
## Despliege de varios containers en kubernetes para mi proyecto de ASIR
  
El despliegue se hará sobre microk8s para la demostración.
  
Los directorios con los volume claims de microk8s están en esta ruta:
+ /var/snap/microk8s/common/default-storage/

  
Este script crea un volumen en kubernetes y varios volume claims,
además crea todos los secrets usados en el despliege.
  
+ setup-secrets-storage.sh 
  
Despues se ejecutan los scripts que lanzan los deployments, estan
divididos por servicios, wordpress, moodle, django etc...
  
+ wordpress-deploy.sh
+ moodle-deploy.sh
 
  
## MicroK8s addons
(Para el despliegue en microk8s)
  
+ dns 
+ storage 
+ registry   
  
Tambien es necesario instalar docker en local para construir la imágen.

## El orden de comandos kubectl es este:
  
Build Moodle Image:

+ sudo sh build-moodle-docker.sh

Secrets & Volumes:
  
+ kubectl create -f permanent-storage.yml
+ sh wordpress-kube/wp-secrets.sh
+ sh moodle-kube/moodle-secrets.sh  
  
Deployments:
  
+ kubectl create -f wordpress-kube/wp-mysql.yml
+ kubectl create -f wordpress-kube/wp-deploy.yml
+ kubectl create -f moodle-kube/moodle-db.yml
+ kubectl create -f moodle-kube/moodle-deploy.yml
  
