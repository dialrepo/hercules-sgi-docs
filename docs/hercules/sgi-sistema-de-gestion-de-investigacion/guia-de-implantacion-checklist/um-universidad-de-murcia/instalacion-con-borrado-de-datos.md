# Hércules : Instalación con borrado de datos



**Opción 1**

En caso de querer realizar una instalación de la aplicación reiniciando los datos (con borrado de datos), se ha de ejecutar el script "**cleanSchema.sql**" **ANTES** de realizar la actualización, y **POR CADA ESQUEMA QUE SE QUIERA LIMPIAR**. 

[/attachments/597853284/cleanSchema.sql?version=1&modificationDate=1664355290000&api=v2 "/confluence/download/attachments/597853284/cleanSchema.sql?version=1&modificationDate=1664355290000&api=v2"](/attachments/597853284/cleanSchema.sql?version=1&modificationDate=1664355290000&api=v2 "/confluence/download/attachments/597853284/cleanSchema.sql?version=1&modificationDate=1664355290000&api=v2")

Eliminará **TODOS** los **OBJETOS** del esquema (secuencias, tablas, **vistas**, **procedimientos almacenados**, etc...). Con lo cual, **por seguridad**, **se recomienda ejecutarlo utilizando las credenciales del propietario del esquema**.

Tener en cuenta que si dentro del esquema existieran secuencias, tablas, vistas, procedimientos almacenados, etc ... que no sean propios de la instalación del SGI habría que volver a crearlos tras la instalación.

El SGI ofrece la posibilidad de realizar una carga inicial de valores de prueba. Para ello hay que configurar en el archivo values.yaml del despliegue el siguiente valor:


> spring:  
>     ...  
>     liquibaseContexts: dev

  


El parámetro **liquibaseContexts** puede tener los valores dev o pro. Con el valor dev los datos de ejemplo serán cargados en el despliegue de la aplicación.

  


**Opción 2**

1\.\- Borrar todo menos ética y el modulo de keycloak.

2\-,. Hacer un despliegue con el parámetro dev del values. Eso carga todos los datos de configuración, modelos de ejecución, etc... y algunos datos de solicitudes, convocatorias y proyectos de pruebas.

3\.\- Para borrar solo los datos de pruebas de Convocatorias, Solicitudes y Proyectos, antes de lanzar los scrips de migración hay que hacer un delete on cascade de esas 3 tablas (Convocatorias, Solicitudes y Proyectos).

4\.\- Lanzar la migración

5\.\- Recrear las vistas de goliath.

  





