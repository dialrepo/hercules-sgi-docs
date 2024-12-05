# Hércules : CU\-ETI\-0060\-011 \- Memorias \- Edición documentación



### Descripción

Formulario para aportar la documentación a la memoria necesaria para la evaluación por parte del comité.

### Actores

#### Actor principal

ACT\-ETI\-002\-Investigador

ACT\-ETI\-003\-Solicitante

ACT\-ETI\-006\-Responsable memoria

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de menú Mis peticiones de evaluación y seleccionado una petición del listado para su edición.

Sólo se muestran las peticiones de evaluación dadas de alta en el sistema y que la persona creadora de la misma sea la persona que se está logando en el sistema o bien este como responsable de la memoria de la petición de evaluación.

La petición de evaluación tiene una memoria en uno de estos estados:

* En elaboración
* Completada
* Favorable Pendiente de Modificaciones Mínimas
* Pendiente de correcciones
* FIN DE EVALUACION
* COMPLETADA SEGUIMIENTO ANUAL
* FIN DE EVALUACION SEGUIMIENTO ANUAL
* COMPLETADA SEGUIMIENTO FINAL
* EN ACLARACION SEGUIMIENTO FINAL

### Garantías de éxito (postcondiciones)

Los documentos aportados como nuevos son añadidos al repositorio documental y almacenados sus identificadores en el sistema para poder visualizarlos y los documentos eliminados son borrados tanto del sistema como del repositorio documental.

### Escenario principal (flujo básico)

1. Se presenta la pantalla Mis peticiones de evaluación con el listado de todas las peticiones de evaluación dadas de alta en el sistema y que la persona creadora de la misma sea la persona que se está logando en el sistema o bien este como responsable de la memoria de la petición de evaluación.
2. Se selecciona la petición de evaluación.
3. Se presenta la pantalla de edición de la petición de evaluación.
4. El usuario va a la pestaña de Memorias.
5. El usuario selecciona del listado una memoria en uno de los estados:  

	* Completada
	* Favorable Pendiente de Modificaciones Mínimas
	* Pendiente de correcciones
	* No procede evaluar
6. Al usuario se le presenta la pantalla de Datos generales de la memoria.
7. El usuario selecciona la opción de menú Documentación.
8. El usuario selecciona la acción de Añadir documento y elige uno de los documentos que no tiene aportados y adjunta el fichero.
9. El usuario selecciona la acción Añadir.
10. Se muestra la pantalla con el listado de documentos y en el campo Aportado ahora muestra que sí esta aportado.
11. El usuario selecciona la acción Guardar Memoria.
12. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
13. Se sube el fichero en el repositorio documental y se guarda su identificador en el sistema.
14. El usuario es informado del resultado positivo de la acción.
15. Se mantienen en misma pantalla de edición.

### Extensiones (flujos alternativos) \- Error durante el guardado

1. En el punto 13 del flujo básico se produce algún error al intentar guardar el documento en el repositorio documental.
2. El usuario es informado del resultado negativo de la acción.
3. Se vuelve a poner el documento como no aportado para que lo intente en otra ocasión.
4. Se mantienen en misma pantalla de edición.




