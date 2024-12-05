# Hércules : CU\-CSP\-1200\-007 \- Ver ejecución económica \- Investigador (rol principal)



### Descripción

Acceso al detalle de la ejecución económica de un proyecto económico en modo solo lectura.

Los ACP\-CSP\-001\-Investigador sólo podrán acceder en modo lectura a los datos de los proyectos de los que forma parte del equipo o ha formado parte (y su rol tenga a "true" el flag "rol principal"). A partir del proyecto económico se podrá saber con que proyecto del SGI se relaciona (tabla "ProyectoIdentificadorSGE" ) y a partir de éste sacar su equipo (tabla "ProyectoEquipo")

### Actores

#### Actor principal

El ACT\-CSP\-001\-Investigador y su rol tenga a "true" el flag "rol principal"

#### Personal involucrado e intereses

ACT\-CSP\-001\-Investigador que requiere que sus proyectos estén actualizados para su correcto seguimiento.

### Precondiciones

ACP\-CSP\-001\-Investigador se autentica a través del usuario de dominio corporativo. El proyecto cumple los siguientes requisitos:

* Proyecto activo (campo "activo" a "true") (tabla "Proyecto")
* Estado actual del proyecto que no sea "Borrador"
* ACT\-CSP\-001\-Investigador debe pertenecer al equipo de proyecto (tabla "ProyectoEquipo")
* El rol del ACT\-CSP\-001\-Investigador tiene a "true" el flag "rol principal"  (tabla "RolProyecto")
* El proyecto esta relacionado con el proyecto económico (tabla "ProyectoIdentificadorSGE")

  


### Garantías de éxito (postcondiciones)

Se muestra el detalle del proyecto económico.

### Escenario principal (flujo básico)

* El usuario pulsa el botón  Ver asociado al proyecto económico, desde el listado de proyectos económicos.
* Se carga el detalle del proyecto económico, mostrando los siguientes apartados:


	+ Listado de proyectos
	+ Ejecución presupuestaria:
		- Anualidades
		- Gastos
		- Ingresos
	+ Detalle de operaciones
		- Gastos
		- Ingresos
		- Modificaciones
	+ Facturas y justificaciones
		- Facturas y gastos
		- Viajes y dietas
		- Personal contratado
	+ Facturas emitidas




