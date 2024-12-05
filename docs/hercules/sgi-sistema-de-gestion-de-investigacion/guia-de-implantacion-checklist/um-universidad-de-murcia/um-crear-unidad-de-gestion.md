# Hércules : UM \- Crear unidad de gestión



Sirva como guía en la creación de nuevas unidades de gestión.

Pasos a seguir:

1\) Crear nuevo grupo en Keycloak: ADMINISTRADOR\-CSP\-XXX/GESTOR\-CSP\-XXX/VISOR\-CSP\-XXX

  


![](/attachments/857473189/857473193.png)

  


2\) Asignar los permisos pertinentes al nuevo grupo. Existen ciertos permisos que contienen al final el de identificador del grupo:

CSP\-ME\-E\_4       
CSP\-ME\-R\_4       
CSP\-SJUS\-V\_4   
CSP\-SOL\-B\_4   
CSP\-CON\-B\_4   
CSP\-PRO\-V\_4   
CSP\-EJEC\-V\_4   
CSP\-ME\-B\_4   
CSP\-ME\-C\_4   
CSP\-CON\-V\_4   
CSP\-EJEC\-E\_4       
CSP\-PRO\-R\_4       
CSP\-SJUS\-E\_4   
CSP\-CON\-C\_4   
CSP\-PRO\-B\_4   
CSP\-CON\-R\_4   
CSP\-CON\-E\_4   
CSP\-ME\-V\_4       
CSP\-PRO\-C\_4   
CSP\-PRO\-E\_4  
CSP\-SOL\-C\_4  
CSP\-SOL\-E\_4  
CSP\-SOL\-R\_4  
CSP\-SOL\-V\_4

Estos roles deben crearse nuevos para cada unidad. Tener en cuenta que el número final se corresponde al identificador de la tabla URS\_SGI.UNIDAD (el 4 por ejemplo es ARI)

  


3\) Modificar el group\-mapper, asignando el grupo creado (ADMINISTRADOR\-CSP\-XXX/GESTOR\-CSP\-XXX/VISOR\-CSP\-XXX) a los usuarios para los que el CAS devuelva el código de unidad correspondiente.

5\) Añadir los registros correspondientes en USR\_SGI.UNIDAD (secuencia UNIDAD\_SEQ) y CSP\_SGI.MODELO\_UNIDAD (secuencia MODELO\_UNIDAD\_SEQ)

4\) Comprobar que aparece la nueva unidad en las búsquedas:

  


![](/attachments/857473189/857473197.png)

  





