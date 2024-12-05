# Hércules : CU\-CSP\-1200\-008 \- Ver ejecución económica \- Investigador (rol responsable económico)



### Descripción

Acceso al detalle de la ejecución económica de un proyecto económico en modo solo lectura.

Los ACP\-CSP\-001\-Investigador sólo podrán acceder en modo lectura a los datos de los proyectos de los que forma parte del equipo o ha formado parte (y su rol tenga a "true" el flag "rol responsable económico"). A partir del proyecto económico se podrá saber con que proyecto del SGI se relaciona (tabla "ProyectoIdentificadorSGE" ) y a partir de éste sacar su equipo (tabla "ProyectoEquipo")

### Actores

#### Actor principal

El ACT\-CSP\-001\-Investigador y su rol tenga a "true" el flag "rol responsable económico""

#### Personal involucrado e intereses

ACT\-CSP\-001\-Investigador que requiere que sus proyectos estén actualizados para su correcto seguimiento.

### Precondiciones

ACP\-CSP\-001\-Investigador se autentica a través del usuario de dominio corporativo. El proyecto cumple los siguientes requisitos:

* Proyecto activo (campo "activo" a "true") (tabla "Proyecto")
* Estado actual del proyecto que no sea "Borrador"
* ACT\-CSP\-001\-Investigador debe de ser el responsable económico del proyecto actual (exista en la tabla "ProyectoResponsableEconomico" en un rango de fechas que incluya la fecha actual)
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
	+ Validación de gastos: Listado y con acceso a:
		- Edición del gasto
		- Histórico de gastos
		- Detalle del gasto
	+ Periodos de justificación: Listado de periodos, con acceso a su detalle en modo consulta:
		- Datos generales
		- Histórico de estados
		- Documentación: solo visualización y descarga de documentos.
		- Facturas y justificaciones: Listado en modo consulta (sin poder añadir, editar ni eliminar)
		- Viajes y dietas: Listado en modo consulta (sin poder añadir, editar ni eliminar)
		- Personal contratado: Listado en modo consulta (sin poder añadir, editar ni eliminar)
		- Horas timesheet: Listado en modo consulta (sin poder añadir, editar ni eliminar)
	+ Facturas emitidas




