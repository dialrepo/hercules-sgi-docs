# Hércules : CU\-CSP\-1000\-003 \- Ver convocatoria



### Descripción

Acceso al detalle de una convocatoria en modo solo lectura. 

### Actores

#### Actor principal

 ACP\-CSP\-001\-Investigador será el actor principal.

También los ACT\-CSP\-005\-Visor  de las unidades de gestión UGI, OTRI u OPE.

#### Personal involucrado e intereses

ACT\-CSP\-001\-Investigador que  precisan que las convocatorias estén registradas para poder presentar solicitudes sobre las mismas.

  


### Precondiciones

ACP\-CSP\-001\-Investigador se autentica a través del usuario de dominio corporativo. La convocatoria está en estado "Registrada" y tiene habilitado en configuración de solicitud el flag "tramitar sgi" a "true".

ACP\-CSP\-005\-Visor se autentica a través del usuario de dominio corporativo. Solamente tiene permisos de lectura sobre la Unidad de gestión a la que pertenece la convocatoria. 

  


Garantías de éxito (postcondiciones)

Se muestra el detalle de la convocatoria.

### Escenario principal

1\. El usuario pulsa el botón  Ver asociado a la convocatoria, desde el listado de convocatorias.

2\. Se carga el detalle de la convocatoria, mostrando los siguientes apartados. 

* Datos generales. Todos los campos se mostrarán en modo lectura.
* Entidades convocantes. Todos los campos se mostrarán en modo lectura. No se permitirá añadir una nueva entidad convocante. Sobre la tabla del listado de entidades de convocantes solo estará disponible la acción Ver. Desde este botón se mostrará el detalle del registro en modo solo lectura.
* Entidades financiadoras.  Todos los campos se mostrarán en modo lectura. No se permitirá añadir una nueva entidad financiadora. Sobre la tabla del listado de entidades de financiadoras solo estará disponible la acción Ver. Desde este botón se mostrará el detalle del registro en modo solo lectura.
* Enlaces. Todos los campos se mostrarán en modo lectura. No se permitirá añadir nuevos enlaces. Sobre la tabla del listado de enlaces solo estará disponible la acción Ver. Desde este botón se mostrará el detalle del registro en modo solo lectura.
* Fases. Todos los campos se mostrarán en modo lectura. No se permitirá añadir una nueva fase. Sobre la tabla del listado de fases de la convocatoria solo estará disponible la acción Ver. Desde este botón se mostrará el detalle del registro en modo solo lectura.
* Periodos de justificación. Todos los campos se mostrarán en modo lectura. No se permitirá añadir un nuevo periodo. Sobre la tabla del listado de periodos de justificación de la convocatoria solo estará disponible la acción Ver. Desde este botón se mostrará el detalle del registro en modo solo lectura.
* Seguimiento científico. Todos los campos se mostrarán en modo lectura. No se permitirá añadir un nuevo periodo. Sobre la tabla del listado de seguimiento científico de la convocatoria solo estará disponible la acción Ver. Desde este botón se mostrará el detalle del registro en modo solo lectura.
* Documentos. Se mostrará el árbol de documentos a partir de la información registrada en "ConvocatoriaDocumeto", mostrando solo aquellos que  tengan el campo "público" a true. Toda la información se mostrará en modo de solo lectura. La única acción permitida será descarga del documento.
* Requisitos IP. Todos los campos se mostrarán en modo lectura.
* Requisitos Equipo. Todos los campos se mostrarán en modo lectura.
* Elegibilidad.  Todos los campos se mostrarán en modo lectura. Las tablas de listados solo tendrán disponible la acción Ver. Desde este botón se mostrará el detalle correspondiente, en modo solo lectura. No se permitirá añadir nuevos conceptos de gasto, ni modificar la información relativa al concepto de gasto que representa los costes indirectos.

3\. El usuario pulsa el botón Cancelar. Se retorna al listado de convocatorias.

  


### 

  





