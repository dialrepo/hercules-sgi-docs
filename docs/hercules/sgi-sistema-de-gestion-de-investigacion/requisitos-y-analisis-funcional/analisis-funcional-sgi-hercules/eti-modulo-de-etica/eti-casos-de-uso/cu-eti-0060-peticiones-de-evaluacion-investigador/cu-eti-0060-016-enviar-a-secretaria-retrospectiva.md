# Hércules : CU\-ETI\-0060\-016 \- Enviar a secretaría retrospectiva



 Únicamente el solicitante de la petición de evaluación del proyecto podrá enviar a secretaría la retrospectiva.

  


### Descripción

Formularios de Búsqueda de peticiones de evaluación

### Actores

#### Actor principal

ACT\-ETI\-002\-Investigador

ACT\-ETI\-003\-Solicitante

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de  menú Mis peticiones de evaluación y seleccionado una petición del listado para su edición.

Sólo se muestran las peticiones de evaluación dadas de alta en el sistema y que la persona creadora de la misma sea la persona que se está logando en el sistema

Ésta acción únicamente se muestra cuando la memoria es de tipo CEEA, requiere retrospectiva y el estado de la misma tiene el valor "Completada".

  


### Garantías de éxito (postcondiciones)

En enviar a secretaría la retrospectiva se tienen que hacer las siguientes funcionalidades:

* Cambiar el estado de la retrospectiva a "En secretaría"
* Se crea un un fichero en formato pdf con los datos del formulario y es subido al repositorio documental y el sistema guarda en informes el identificador del documento.

### Escenario principal (flujo básico)

1. Se presenta la pantalla Mis peticiones de evaluación con el listado de todas las peticiones de evaluación dadas de alta en el sistema y que la persona creadora de la misma sea la persona que se está logando en el sistema.
2. Se selecciona la petición de evaluación.
3. Se presenta la pantalla de edición de la petición de evaluación.
4. El usuario va a la pestaña de Memorias.
5. El usuario selecciona la acción de Enviar a secretaria retrospectiva en una memoria es de tipo CEEA, requiere retrospectiva y el estado de la misma tiene el valor "Completada".
6. El sistema hace todos los cambios que tienen que hacer (los comentados en las postcondiciones)
7. El usuario es informado del resultado positivo de la acción.
8. Se mantienen en la pantalla de listado de memoria.




