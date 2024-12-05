# Hércules : CU\-ETI\-0060\-012 \- Memorias \- Documentación \- Aportar documento



### Descripción

Formulario para adjuntar un documento obligatorio a una memoria.

### Actores

#### Actor principal

ACT\-ETI\-002\-Investigador

ACT\-ETI\-003\-Solicitante

ACT\-ETI\-006\-Responsable memoria

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de  menú Mis peticiones de evaluación y seleccionado una petición del listado para su edición.

Sólo se muestran las peticiones de evaluación dadas de alta en el sistema y que la persona creadora de la misma sea la persona que se está logando en el sistema o bien este como responsable de la memoria de la petición de evaluación.

La petición de evaluación tiene una memoria en uno de estos estados:

* Completada
* Favorable Pendiente de Modificaciones Mínimas
* Pendiente de correcciones

### Garantías de éxito (postcondiciones)

Se actualiza en el listado de documentos de la memoria el campo "Aportado" a "Sí".

### Escenario principal (flujo básico)

1. Se presenta la pantalla Mis peticiones de evaluación con el listado de todas las peticiones de evaluación dadas de alta en el sistema y que la persona creadora de la misma sea la persona que se está logando en el sistema o bien este como responsable de la memoria de la petición de evaluación.
2. Se selecciona la petición de evaluación.
3. Se presenta la pantalla de edición de la petición de evaluación.
4. El usuario va a la pestaña de Memorias.
5. El usuario selecciona del listado una memoria en uno de los estados:  

	* Completada
	* Favorable Pendiente de Modificaciones Mínimas
	* Pendiente de correcciones
6. Al usuario se le presenta la pantalla de Datos generales de la memoria.
7. El usuario selecciona la opción de menú Documentación.
8. El usuario selecciona la acción de Añadir documento
9. El usuario selecciona un documento del desplegable de documentos necesarios a aportar y que no están todavía aportados
10. Lo adjunta a través del botón Examinar.
11. El usuario selecciona la acción Añadir.
12. Se muestra la pantalla con el listado de documentos y en el campo Aportado ahora muestra que sí esta aportado.




