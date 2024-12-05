# Hércules : CU\-CSP\-1200\-006 \- Modificar proyecto \- Cambiar estado



### Descripción

Cambio de estado de un proyecto

### Actores

#### Actor principal

ACT\-CSP\-003\-Gestor de las unidades de gestión UGI, OTRI u OPE.

ACP\-CSP\-004\-Administrador de las unidades de gestión UGI, OTRI u OPE.

#### Personal involucrado e intereses

ACT\-CSP\-001\-Investigador que requiere que sus proyectos estén en estado distinto al borrador para ver sus datos.

### Precondiciones

El usuario ACT\-CSP\-003\-Gestor, ACP\-CSP\-004\-Administrador se autentica a través del usuario de dominio corporativo y tiene asociada una Unidad de gestión para las que está habilitado el permiso de modificación de convocatoria.

No hay datos sin guardar en el proyecto.

### Garantías de éxito (postcondiciones)

Se realiza el cambio de estado.

### Escenario principal (flujo básico)

* El usuario accede al detalle de un proyecto y pulsa sobre el botón de cambio de estado
* En el caso de que el cambio de estado sea a **Concedido** realizar las siguientes validaciones/comprobaciones:
	+ Campos obligatorios de la pestaña de Ficha general del proyecto para pasar a este estado:
	
	
		- Finalidad
		- Ámbito geográfico
		- Confidencial
		- Proyecto coordinado
		- Coordinador externo (si Proyecto coordinado tiene valor Sí)
		- Paquetes de trabajo
	+ Si el proyecto procede de una solicitud (campo "solicitud" de la "proyecto" está informado) y tiene la solicitud el campo "formulario" con valor "Proyecto" se debe verificar en la pestaña Equipo:  
	
		- Que el solicitante de la solicitud (campo "solicitante" de la tabla "solicitud") pertenezca al equipo de proyecto (pudiendo ser el único miembro del mismo)
* En el caso de que el cambio de estado sea a **Renunciado o Rescindido** poner de manera automática la "fecha fin definitiva" del proyecto con la fecha actual. Si existen registros en la tabla "proyecto equipo":
	+ Si "fecha fin definitiva" estaba vacía (valor null en la tabla "proyecto") se actualizará el campo "fecha fin" de la tabla "proyecto equipo" para todos aquellos miembros cuya "fecha fin" actual coincida con la "fecha fin" del proyecto.
	+ Si "fecha fin definitiva" no estaba vacía (valor distinto a null en la tabla "proyecto"), se actualizará el campo "fecha fin" de la tabla "proyecto equipo" para todos aquellos miembros cuya "fecha fin" actual coincida con el valor original de la "fecha fin definitiva" del proyecto.

  





