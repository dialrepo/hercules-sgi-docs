# Hércules : Seguridad ESB



Actualmente las peticiones realizadas al esb se harán enviando un token de acceso en la cabecera de **authentication**, aunque se seguirá trabando en la seguridad para realizar una comunicación máquina a máquina y no mediante usuario/contraseña sino a través de un secret.

##### Seguridad con usuario/contraseña

Se utiliza OAuth 2 sobre el protocolo OpenID Connect (OIDC).

En [http://sgi.ic.corp.treelogic.com/auth/realms/sgi/.well\-known/openid\-configuration](http://sgi.ic.corp.treelogic.com/auth/realms/sgi/.well-known/openid-configuration "http://sgi.ic.corp.treelogic.com/auth/realms/sgi/.well-known/openid-configuration") se pueden consultar los endpoint disponibles de OIDC.

Mediante **POST** a [http://sgi.ic.corp.treelogic.com/auth/realms/sgi/protocol/openid\-connect/token](http://sgi.ic.corp.treelogic.com/auth/realms/sgi/protocol/openid-connect/token "http://sgi.ic.corp.treelogic.com/auth/realms/sgi/protocol/openid-connect/token") se obtiene el token de acceso y el de refresco. Por defecto el token de acceso solo es válido 5 minutos, y el de refresco 30 minutos. Este mismo enpdoint permite refrescar los tokens. El content\-type de la petición ha de ser **application/x\-www\-form\-urlencoded** 

Para la obtención de los tokens se incluirán los siguientes campos:



| client\_id | front | Identifica al cliente, por ahora el mismo que la web pero cambiará más adelante |
| --- | --- | --- |
| username | visor\-csp | Usuario de la autenticación, en el futuro ya no será necesario |
| password | visor\-csp | Password del usuario, en el futuro ya no será necesario. |
| grant\_type | password | Tipo de autenticación, más adelante cambiará. |

Para el refresco de los tokens se incluirán los siguientes campos:



| client\_id | front | Identifica al cliente, por ahora el mismo que la web pero cambiará más adelante |
| --- | --- | --- |
| grant\_type | refresh\_token | Tipo de autenticación. |
| refresh\_token |  | Se enviará el token de refresco que se disponga en ese momento. |

  


  





