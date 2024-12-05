# Hércules : CU\-PRC\-0000\-002 \- Resetear proceso de baremación



### Descripción

Se lanzará una tarea programada para comprobar si existe una proceso de baremación lanzado de una convocatoria y que no haya finalizado con éxito después de X horas de ejecución.

Las horas de ejecución será un campo configurable en la tabla "Configuración".

### Precondiciones

Convocatoria de baremación que cumple los siguientes requisitos:

* campo "activo" a "true"
* campo "anio" el año actual.
* campo "fecha inicio ejecución" es distinto de null
* campo "fecha fin ejecución" es null
* han pasado X horas desde la "fecha inicio ejecución"

  


Garantías de éxito (postcondiciones)

Se pondrá a null el campo "fecha inicio ejecución" de la tabla "Convocatoria baremación"

Se eliminarán los datos relativos al proceso de baremación que se hayan insertado de la convocatoria de baremación, es decir, los registros de las tablas:

* ProduccionCientifica: items que tengan en "convocatoriaBaremacionId" el identificador de la convocatoria que se va a resetear. Esta tabla y las tablas relacionadas con ella (borrado en cascada)
* PuntuacionGrupo: registros que tengan en "convocatoriaBaremacionId" el identificador de la convocatoria que se va a resetear. Esta tabla y las tablas relacionadas con ella (borrado en cascada)

  


### Escenario principal

1\.Comprobar si existe un proceso de baremación lanzado y que por algún motivo no ha acabado con éxito (campo "fecha fin ejecución" es null) y han pasado X horas desde su lanzamiento. Es decir existe una convocatoria de baremación que cumple los siguientes requisitos:

* campo "activo" a "true"
* campo "anio" el año actual.
* campo "fecha inicio ejecución" es distinto de null
* campo "fecha fin ejecución" es null
* han pasado X horas desde la "fecha inicio ejecución"

2\. En caso afirmativo se tendrá que:

* actualizar los campos "fecha inicio ejecución", "punto producción", "punto sexenio" y "punto costes indirectos" a null
* eliminar los datos relativos al proceso de baremación que se hayan insertado de la convocatoria de baremación, es decir, los registros de las tablas:
	+ ProduccionCientifica: items que tengan en "convocatoriaBaremacionId" el identificador de la convocatoria que se va a resetear. Esta tabla y las tablas relacionadas con ella (borrado en cascada):
		- ProduccionCientifica
		- CampoProduccionCientifica
		- ValorCampo
		- Proyecto
		- Acretitacion
		- IndiceImpacto
		- Autor
		- AutorGrupo
		- EstadoProduccionCientifica
		- PuntuacionBaremoItem
		- PuntuacionItemInvestigador
	+ PuntuacionGrupo: registros que tengan en "convocatoriaBaremacionId" el identificador de la convocatoria que se va a resetear. Esta tabla y las tablas relacionadas con ella (borrado en cascada):
		- PuntuacionGrupo
		- PuntuacionGrupoInvestigador




