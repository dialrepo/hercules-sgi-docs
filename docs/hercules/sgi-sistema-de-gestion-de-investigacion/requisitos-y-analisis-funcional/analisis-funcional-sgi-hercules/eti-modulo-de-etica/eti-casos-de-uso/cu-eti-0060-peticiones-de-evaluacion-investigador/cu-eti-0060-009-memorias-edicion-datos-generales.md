# Hércules : CU\-ETI\-0060\-009 \- Memorias \- Edición datos generales



### Descripción

Formulario para modificar los datos generales de una memoria de una petición de evaluación.

### Actores

#### Actor principal

ACT\-ETI\-002\-Investigador

ACT\-ETI\-003\-Solicitante

ACT\-ETI\-006\-Responsable memoria

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de menú Mis peticiones de evaluación y seleccionado una petición del listado para su edición.

Sólo se muestran las peticiones de evaluación dadas de alta en el sistema y que la persona creadora de la misma sea la persona que se está logando en el sistema o bien este como responsable de la memoria de la petición de evaluación.

La petición de evaluación tiene una memoria en uno de estos estados:

* En elaboración
* Completada
* Favorable Pendiente de Modificaciones Mínimas
* Pendiente de correcciones

### Garantías de éxito (postcondiciones)

Los datos generales de la memoria son modificados en el sistema.

### Escenario principal (flujo básico)

1. Se presenta la pantalla Mis peticiones de evaluación con el listado de todas las peticiones de evaluación dadas de alta en el sistema y que la persona creadora de la misma sea la persona que se está logando en el sistema o bien esté como responsable de la memoria de la petición de evaluación.
2. Se selecciona la petición de evaluación.
3. Se presenta la pantalla de edición de la petición de evaluación.
4. El usuario va a la pestaña de Memorias.
5. El usuario selecciona del listado una memoria en uno de los estados:
	* En elaboración
	* Completada
	* Favorable Pendiente de Modificaciones Mínimas
	* Pendiente de correcciones
	* No procede evaluar
6. El usuario en la pantalla de Edición datos generales de memoria modifica el título.
7. El usuario selecciona la acción Guardar Memoria.
8. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
9. Se guardan los datos modificados en el sistema.
10. El usuario es informado del resultado positivo de la acción.
11. Se mantienen en la pantalla de edición de datos generales de la memoria

### Extensiones (flujos alternativos) \- Error durante el guardado

1. Si se ha producido algún error de validación.
2. El usuario modifica la información necesaria para realizar de forma correcta la modificación de la memoria
3. El usuario selecciona la acción Guardar.
4. El usuario es informado del resultado positivo de la acción.
5. Se mantienen en la pantalla de edición de datos generales de la memoria




