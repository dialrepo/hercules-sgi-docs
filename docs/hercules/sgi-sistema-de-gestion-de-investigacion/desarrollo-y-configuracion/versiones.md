# Hércules : Versiones



**Versión:**0\.1\.0

**Fecha:** 

**Cambios:** A continuación se adjunta excel que contiene una exportación de los jiras que se han resuelto e incorporado a la nueva versión

[/attachments/740524052/20230418Despliegue.xlsx?version=1&modificationDate=1685086034000&api=v2 "/confluence/download/attachments/740524052/20230418Despliegue.xlsx?version=1&modificationDate=1685086034000&api=v2"](/attachments/740524052/20230418Despliegue.xlsx?version=1&modificationDate=1685086034000&api=v2 "/confluence/download/attachments/740524052/20230418Despliegue.xlsx?version=1&modificationDate=1685086034000&api=v2")

**Instrucciones para la actualización:**

Para actualizar la versión actual instalada (0\.0\.13\) a la última versión disponible, es necesario realizar los siguientes cambios en el fichero de configuración:

Reemplazar las ocurrencias de “tag: 0\.0\.13” por “tag: 0\.1\.0”.  
Reemplazar el “tag: 0\.1\.0” por “tag: 0\.2\.0” para los siguientes servicios.  
sgi\-webapp  
sgi\-usr\-service  
sgi\-eti\-service  
sgi\-csp\-service  
sgi\-rep\-service  
sgi\-cnf\-service  
sgi\-keycloak  
sgi\-esb  
Añadir en la configuración del ingress de sgi\-esb dentro de annotations la siguiente configuración:  
· [nginx.ingress.kubernetes.io/proxy\-read\-timeout](http://nginx.ingress.kubernetes.io/proxy-read-timeout "http://nginx.ingress.kubernetes.io/proxy-read-timeout"): "180" \#Default timeout 60s, needed for sge slow endpoints   
Añadir en la configuración del ingress de sgi\-cnf\-service dentro de annotations la siguiente configuración:  
· [nginx.ingress.kubernetes.io/proxy\-body\-size](http://nginx.ingress.kubernetes.io/proxy-body-size "http://nginx.ingress.kubernetes.io/proxy-body-size"): "10m" \#Default size is 1M  
Añadir dentro de extraEnvVariables de sgi\-cnf\-service la siguiente variable:  
· extraEnvVariables:  
· \- name: SGI\_RESOURCES\-CACHE\-MAX\-AGE  
· value: "60"  
Una vez modificada la versión de despliegue, podemos proceder a la actualización de la aplicación ejecutando el siguiente comando (sustituir \<namespace\> con el nombre del namespace de Kubernetes correspondiente):

helm repo update  
helm upgrade sgi treelogic\_helm\_nexus\_repo/sgi\-umbrella \-\-timeout 10m0s \-\-wait \-\-wait\-for\-jobs \-\-install \-\-namespace \<namespace\> \-\-version 0\.1\.46 \-f ./values.sgi\-dev\-um.yaml

Adicionalmente para esta versión es necesario realizar los siguientes cambios desde la página de administración del keycloak.

En el menú Clients editar el client con id rep\-service y seleccionar dentro de la pestaña Client Scopes el scope sgi\-cnf en el selector Available Client Scopes de Optional Client Scopes y añadirlo pulsando en Add selected para que pase a Assigned Optional Client Scopes.  
En el menú Roles hacer click sobre el botón Add Role de la tabla de roles y crear un nuevo rol con el Role Name ADM\-CNF\-E.  
En el menú Groups hacer click sobre el botón New y crear un nuevo grupo con el nombre ADMINISTRADOR\-SGI, después en la pestaña Role Mappings seleccionar el rol ADM\-CNF\-E creado antes entre los disponibles en Available Roles y hacer click en Add selected.  
Finalmente, en el menú Users añadir los usuarios administrador\-sgi y super respectivamente.  
El proceso para crear los usuarios es el siguiente:

Hacer click en Add userPoner en Username administrador\-sgi y super  
Añadir en la pestaña Attributes los atributos:  
investigador: con value false en ambos casos  
userRefId: identificador de la entidad persona del SGP asociada a cada usuario  
Introducir la contraseña del usuario en la pestaña Credentials, y poner Temporary en off  
Dentro de la pestaña Groups seleccionar en Available Groups los grupos de permisos para cada usuario.  
administrador\-sgi: ADMINISTRADOR\-SGI  
super: ADMINISTRADOR\-CSP, ADMINISTRADOR\-ETICA, ADMINISTRADOR\-PII, ADMINISTRADOR\-SGI, GESTOR\-CSP, GESTOR\-EER, GESTOR\-ETICA, GESTOR\-PII, GESTOR\-PRC, INVESTIGADOR

Las particularidades del despliegue en lo que se refiere al keycloak están detallados en los cambios de la versión del servicio asociado, en concreto aquí:

[https://github.com/HerculesCRUE/SGI/blob/main/sgi\-auth/changelog/v0\_2\_0\.md](https://urldefense.com/v3/__https://github.com/HerculesCRUE/SGI/blob/main/sgi-auth/changelog/v0_2_0.md__;!!D9dNQwwGXtA!TuhrYe-U_asWXJ6wbryJVBwqxe1s492Kg72jLJiFcW1JQlAaGKDLMuJ1Qc7LOcuQCqFHK7a1cR9Gg1yBVgGsMA$ "https://urldefense.com/v3/__https://github.com/HerculesCRUE/SGI/blob/main/sgi-auth/changelog/v0_2_0.md__;!!D9dNQwwGXtA!TuhrYe-U_asWXJ6wbryJVBwqxe1s492Kg72jLJiFcW1JQlAaGKDLMuJ1Qc7LOcuQCqFHK7a1cR9Gg1yBVgGsMA$")

 




