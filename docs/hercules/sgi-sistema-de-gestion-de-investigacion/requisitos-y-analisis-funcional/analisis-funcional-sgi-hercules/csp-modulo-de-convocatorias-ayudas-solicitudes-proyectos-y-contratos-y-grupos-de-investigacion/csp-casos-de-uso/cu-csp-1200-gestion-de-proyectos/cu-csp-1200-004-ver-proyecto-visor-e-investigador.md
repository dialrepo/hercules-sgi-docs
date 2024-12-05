# Hércules : CU\-CSP\-1200\-004 \- Ver proyecto \- Visor e Investigador



### Descripción

Acceso al detalle de un proyecto en modo solo lectura.

Los ACT\-CSP\-005\-Visor solo podrán acceder en modo lectura a los datos de los proyectos de las unidades de gestión a las que estén vinculados.

Los ACP\-CSP\-001\-Investigador sólo podrán acceder en modo lectura a los datos de los proyectos de los que forma parte del equipo o ha formado parte (y su rol no tenga a "true" el flag "rol principal" y no es el responsable económico actual (no existe en la tabla "ProyectoResponsableEconomico" o si existe tiene un rango de fechas que no incluye la fecha actual)  


### Actores

#### Actor principal

ACT\-CSP\-005\-Visor de las unidades de gestión UGI, OTRI u OPE.

ACP\-CSP\-001\-Investigador

#### Personal involucrado e intereses

### Precondiciones

ACP\-CSP\-001\-Investigador se autentica a través del usuario de dominio corporativo. El proyecto cumple los siguientes requisitos:

* Proyecto activo (campo "activo" a "true")
* Estado actual del proyecto no es "Borrador"
* ACT\-CSP\-001\-Investigador debe pertenecer al equipo de proyecto
* El rol del ACT\-CSP\-001\-Investigador no tiene a "true" el flag "rol principal" y no es el responsable económico actual (no existe en la tabla "ProyectoResponsableEconomico" o si existe tiene un rango de fechas que no incluye la fecha actual)

ACP\-CSP\-005\-Visor se autentica a través del usuario de dominio corporativo. Solamente tiene permisos de lectura sobre la Unidad de gestión a la que pertenece el proyecto.

### Garantías de éxito (postcondiciones)

Se muestra el detalle del proyecto.

### Escenario principal (flujo básico)

1. El usuario pulsa el botón  Ver asociado al proyecto, desde el listado de proyectos.
2. Se carga el detalle del proyecto, mostrando los siguientes apartados:
* Datos generales \- Ficha del proyecto.
* Datos generales \- Contexto del proyecto.
* Datos generales \- Áreas conocimiento.
* Datos generales \- Clasificaciones.
* Entidades \- Entidad gestora.
* Entidades \- Entidades convocantes.
* Entidades \- Entidades financiadoras.
* Equipo.
* Socios. Solo al listado, sin acceso a su vista de detalle.
* Seguimiento científico. Solo al listado de periodos, sin acceso a su detalle.
* Prórrogas. Solo al listado, sin acceso a su detalle.
* Documentos. Mostrando aquellos que estén marcados con el flag "Visible al equipo de investigación". No podrá adjuntar nuevos documentos.
* Paquetes de trabajo.
* Configuración económica \- Consulta de presupuesto.
* Configuración económica \- Calendario de facturación. Solo el listado.
* Configuración económica \- Calendario de justificación. Solo el listado.

3\. El usuario pulsa el botón Cancelar. Se retorna al listado de proyectos.

  





