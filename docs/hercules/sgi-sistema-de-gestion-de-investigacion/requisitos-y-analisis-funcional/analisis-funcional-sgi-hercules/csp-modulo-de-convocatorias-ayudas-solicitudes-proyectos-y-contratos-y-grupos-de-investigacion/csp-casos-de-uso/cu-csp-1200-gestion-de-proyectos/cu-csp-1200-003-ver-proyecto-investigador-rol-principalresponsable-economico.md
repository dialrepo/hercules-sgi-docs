# Hércules : CU\-CSP\-1200\-003 \- Ver proyecto \- Investigador (rol principal/responsable económico)



### Descripción

Acceso al detalle de un proyecto en modo solo lectura.

Los ACP\-CSP\-001\-Investigador sólo podrán acceder en modo lectura a los datos de los proyectos de los que forma parte del equipo o ha formado parte (y su rol tenga a "true" el flag "rol principal") o sea el responsable económico actual (exista en la tabla "ProyectoResponsableEconomico" en un rango de fechas que incluya la fecha actual)

### Actores

#### Actor principal

El ACT\-CSP\-001\-Investigador y su rol tenga a "true" el flag "rol principal" o sea el responsable económico actual (exista en la tabla "ProyectoResponsableEconomico" en un rango de fechas que incluya la fecha actual)

#### Personal involucrado e intereses

ACT\-CSP\-001\-Investigador que requiere que sus proyectos estén actualizados para su correcto seguimiento.

### Precondiciones

ACP\-CSP\-001\-Investigador se autentica a través del usuario de dominio corporativo. El proyecto cumple los siguientes requisitos:

* Proyecto activo (campo "activo" a "true")
* Estado actual del proyecto que no sea "Borrador"
* Una o las dos de las siguientes situaciones:
	+ ACT\-CSP\-001\-Investigador debe pertenecer al equipo de proyecto y el rol del ACT\-CSP\-001\-Investigador tiene a "true" el flag "rol principal"
	+ ACT\-CSP\-001\-Investigador tiene que ser el responsable económico actual (exista en la tabla "ProyectoResponsableEconomico" en un rango de fechas que incluya la fecha actual)

  


### Garantías de éxito (postcondiciones)

Se muestra el detalle del proyecto.

### Escenario principal (flujo básico)

* El usuario pulsa el botón  Ver asociado al proyecto, desde el listado de proyectos.
* Se carga el detalle del proyecto, mostrando los siguientes apartados:


	+ Datos generales \- Ficha del proyecto
	+ Datos generales \- Contexto del proyecto
	+ Datos generales \- Áreas conocimiento
	+ Datos generales \- Clasificaciones
	+ Entidades \- Entidad gestora
	+ Entidades \- Entidades convocantes
	+ Entidades \- Entidades financiadoras
	+ Equipo
	+ Socios. Con acceso a su detalle:  
	
		- Datos generales
		- Equipo
		- Periodos de pago
		- Periodos de justificación
	+ Seguimiento científico. Listado de periodos, con acceso a su detalle:
		- Datos generales
		- Documentación.
	+ Prórrogas. Listado de prórrogas con acceso a su detalle:
		- Datos generales
		- Documentación
	+ Documentos. Mostrando aquellos que estén marcados con el flag "Visible al equipo de investigación". No podrá adjuntar nuevos documentos.
	+ Paquetes de trabajo.
	+ Configuración económica \- Identificador SGE
	+ Configuración económica \- Elegibilidad
	+ Configuración económica \- Partidas presupuestarias
	+ Configuración económica \- Presupuesto. Listado de anualidades y detalle por anualidad:  
	
		- Datos generales
		- Gastos
		- Ingresos
		- Resumen
	+ Configuración económica \- Agrupación de gastos
	+ Configuración económica \- Consulta de presupuesto
	+ Configuración económica \- Calendario de facturación. A parte del listado, puede validar/rechazar los items que estén en estado "Notificada IP"
	+ Configuración económica \- Calendario de justificación. Con acceso al detalle de Ejecución económica

  


  
  
  





