# Hércules : IU\-CSP\-0580\-008\-001 \- Requerimiento \- Datos generales



## Formulario Requerimiento \- Datos generales

Formulario de creación de requerimiento. Apartado Datos generales



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Proyecto SGI | SelectorTextoObligatorio | Desplegable que muestra el listado con los títulos de los proyectos SGI vinculados al proyecto SGE del que se está realizando el seguimiento de justificación. Los proyectos SGI vinculados al proyecto SGE se deben de obtener de la tabla "proyecto proyecto SGE". A partir de la referencia establecida por el campo "proyecto" sobre la tabla "proyecto", se extraerá el campo "título" a mostrar en el desplegable. Si el proyecto SGE está vinculado a un único proyecto SGI éste se precargará en el desplegable de forma que la persona usuario no deba seleccionar su valor.Es un campo obligatorio.A partir del valor seleccionado se obtendrá el campo "proyecto proyecto SGE" a almacenar en la tabla "requerimiento justificación". |
| ID Justificación | SelectorTextoOpcional | Desplegable que muestra todos los identificadores de justificación vinculados al proyecto SGE del que se está realizando el seguimiento de justificación.  Si el requerimiento se vincula a un ID justificación será indicativo de que el seguimiento de la justificación para el proyecto SGI se realizará por anualidades (se mostrará el apartado "estado actual seguimiento justificación por proyecto SGI y anualidad" en [IU\-CSP\-0580\-001 \- Resumen](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-001-resumen.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-001-resumen.md")).Se deben obtener todos los identificadores de justificación del proyecto SGI al que se asocia el requerimiento en el campo previo "proyecto SGI". Se obtendrán todos los periodos de justificación de la tabla "proyecto periodo justificación" (modelo lógico "proyecto \- configuración económica"). El identificador de justificación se obtiene del campo "justificación ref".Es un campo opcional.A partir del valor seleccionado se obtendrá el campo "proyecto periodo justificación" de la tabla "requerimiento justificación". |
| Número requerimiento | Numérico entero genéricoObligatorioSolo lectura | Es un campo calculado. Se debe de implementar como un secuencial que se asigne al requerimiento en función del campo "fecha notificación". El secuencial aplicará dentro de un mismo  proyecto SGI comenzando en 1\.Los proyectos SGI vinculados al proyecto SGE se deben de obtener de la tabla "proyecto proyecto SGE". Para cada proyecto SGI se debe de asignar un número de requerimiento único según se vayan añadiendo/modificando requerimientos (tabla "requerimiento justificación"). La asignación de este número se realizará en base al campo fecha notificación del requerimiento (campo "fecha notificación" tabla "requerimiento justificación"), de forma que el requerimiento de fecha más antigua tome el número de requerimiento 1 y el de fecha más reciente el número de requerimiento mayor.El valor calculado se almacenará en el campo "número requerimiento" a almacenar en la tabla "requerimiento justificación". |
| Tipo requerimiento | SelectorTextoObligatorio | Es un desplegable que permite seleccionar el tipo de requerimiento.El listado de valores posibles será:* Requerimiento documental * Resolución requerimiento documental * Requerimiento subsanación * Acuerdo de inicio de procedimiento de reintegro * Resolución del procedimiento de reintegro * Informe de cierre * Resolución de recurso  El desplegable mostrará el campo "nombre" de todos los elementos de la tabla "tipo requerimiento" con el flag "activo" a "true".Es un campo obligatorio.El valor seleccionado se corresponderá con el campo "tipo requerimiento" de la tabla "requerimiento justificación". |
| Requerimiento previo | SelectorTextoOpcional | Es un desplegable que mostrará el listado de requerimientos previamente añadidos al seguimiento de justificación del mismo proyecto SGI. Con este campo se permite enlazar el requerimiento con su predecesor. Ejemplo: enlazar le acuerdo de inicio de procedimiento de reintegro con el requerimiento de subsanación que lo precede.Se mostrará una cadena concatenando el número de requerimiento y el tipo de requerimiento con el carácter "\-".Los requerimientos a mostrar se obtendrán de la tabla "requerimiento justificación". Será el campo "proyecto proyecto SGE" de esta tabla el que determine el listado de requerimientos a mostrar. El campo "proyecto proyecto SGE" será el identificador de la tabla "proyecto proyecto SGE" para el registro correspondiente al par "proyecto SGI", seleccionado en el desplegable "proyecto SGI" de este formulario y  el "proyecto SGE", a través del que se ha accedido a la opción "Seguimiento de justificación". Para todos los requerimientos se obtendrá su campo "número de requerimiento" y el nombre del tipo de requerimiento. Ambos valores se concatenarán con el carácter "\-". El listado de valores así compuesto se mostrará en el desplegable "requerimiento previo".A partir del valor seleccionado se obtendrá el campo "requerimiento previo" de la tabla "requerimiento justificación". |
| Fecha notificación | Fecha (sin hora) | Fecha de la notificación indicada en el requerimiento. Se mostrará la fecha sin hora.Se corresponde con el campo "fecha notificación" de la tabla "requerimiento justificación". |
| Fin plazo alegación | Fecha \+ Hora | Fecha en la que finaliza el periodo de alegación del requerimiento. Se mostrará fecha y hora.Se corresponde con el campo "fecha fin alegación" de la tabla "requerimiento justificación. |
| Importe total aceptado | EconómicoOpcional | Importe aceptado de acuerdo a la información remitida en el requerimiento.Se corresponde con el campo "importe aceptado" de la tabla "requerimiento justificación. |
| Importe aceptado: costes directos | EconómicoOpcional | Importe aceptado correspondiente a costes directos de acuerdo a la información remitida en el requerimiento.Se corresponde con el campo "importe aceptado CD" de la tabla "requerimiento justificación. |
| Importe aceptado: costes indirectos | EconómicoOpcional | Importe aceptado correspondiente a costes indirectos de acuerdo a la información remitida en el requerimiento.Se corresponde con el campo "importe aceptado CI" de la tabla "requerimiento justificación. |
| Importe total rechazado | EconómicoOpcional | Importe rechazado de acuerdo a la información remitida en el requerimiento.Se corresponde con el campo "importe rechazado" de la tabla "requerimiento justificación. |
| Importe rechazado: costes directos | EconómicoOpcional | Importe rechazado correspondiente a costes directos de acuerdo a la información remitida en el requerimiento.Se corresponde con el campo "importe rechazado CD" de la tabla "requerimiento justificación. |
| Importe rechazado: costes indirectos | EconómicoOpcional | Importe rechazado correspondiente a costes indirectos de acuerdo a la información remitida en el requerimiento.Se corresponde con el campo "importe rechazado CI" de la tabla "requerimiento justificación. |
| Importe total a reintegrar | EconómicoOpcional | Importe a reintegrar notificado en el requerimiento.Se corresponde con el campo "importe reintegrar" de la tabla "requerimiento justificación. |
| Importe a reintegrar: costes directos | EconómicoOpcional | Importe a reintegrar notificado en el requerimiento correspondiente a gastos vinculados costes directos.Se corresponde con el campo "importe reintegrar CD" de la tabla "requerimiento justificación. |
| Importe a reintegrar: costes indirectos | EconómicoOpcional | Importe a reintegrar notificado en el requerimiento correspondiente a gastos vinculados costes indirectos.Se corresponde con el campo "importe reintegrar CI" de la tabla "requerimiento justificación. |
| Intereses a reintegrar | EconómicoOpcional | Importe a reintegrar notificado en el requerimiento correspondiente a los intereses generados por el importe concedido.Se corresponde con el campo "intereses a reintegrar" de la tabla "requerimiento justificación. |
| Observaciones | Texto largoOpcional | Cualquier observación que interese dejar registrada sobre el requerimiento.Se corresponde con el campo "observaciones" de la tabla "requerimiento justificación. |
| Subvención justificada | EconómicoOpcional | Importe incluido en la notificación del informe de cierre que recoge el importe que finalmente fue aceptado en la justificación.Se corresponde con el campo "subvención justificada" de la tabla "requerimiento justificación. |
| Defecto de la subvención | EconómicoOpcional | Importe incluido en la notificación del informe de cierre que recoge el importe que finalmente no fue aceptado en la justificación.Se corresponde con el campo "defecto subvención" de la tabla "requerimiento justificación. |
| Anticipo justificado | EconómicoOpcional | Importe incluido en la notificación del informe de cierre que recoge el importe finalmente aceptado en la justificación correspondiente al anticipo recibido en la subvención (en caso de que se hubiese recibido este anticipo).Se corresponde con el campo "anticipo justificado" de la tabla "requerimiento justificación. |
| Defecto del anticipo | EconómicoOpcional | Importe incluido en la notificación del informe de cierre que recoge el importe que finalmente no fue aceptado en la justificación correspondiente al anticipo recibido en la subvención (en caso de que se hubiese recibido este anticipo).Se corresponde con el campo "defecto anticipo" de la tabla "requerimiento justificación. |
| Recurso estimado | Desplegable (Sí/No)Booleano | Resolución del recurso presentado en caso que éste se  hubiera dado.Se corresponde con el campo "recurso estimado" de la tabla "requerimiento justificación. |
| Incidencias en documentación. Listado de incidencias en documentación (tabla "incidencia documentación requerimiento") | | |
| Documento de justificación | Texto | Nombre del documento sobre el que se notifica una incidencia en el requerimiento.Se corresponde con el campo "nombre documento" de la tabla "incidencia documentación requerimiento" |
| Incidencia/motivo de rechazo | Texto largo | Descripción de la incidencia notificada en el requerimiento sobre el documento.Se corresponde con el campo "incidencia" de la tabla "incidencia documentación requerimiento" |
| Modificar | Icono de acción | Acción "modificar" |
| Eliminar | Icono de acción | Acción "eliminar" |
| Añadir incidencia | Botón | Acción "añadir incidencia" |



| Acciones | Descripción | Enlace CU. | Permiso |
| --- | --- | --- | --- |
| Incidencias en documentación | | | |
| Modificar | Permite modificar los datos de una incidencia de documentación que hubiera sido añadida previamente al requerimiento. | Muestra el formulario [IU\-CSP\-0580\-008\-005 \- Añadir\-modificar incidencia documentación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-009-modificar-requerimiento/iu-csp-0580-009-005-anadir-modificar-incidencia-documentacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-009-modificar-requerimiento/iu-csp-0580-009-005-anadir-modificar-incidencia-documentacion.md") que permite añadir una incidencia de documentación al requerimiento. | CSP\-SJUS\-ECSP\-SJUS\-E\_UO |
| Eliminar | Permite eliminar la incidencia de documentación, previamente añadida al requerimiento. | El resultado final de esta acción supondrá que la incidencia en documentación desaparece del listado mostrado en el formulario y que no se cree el registro correspondiente en la tabla "incidencia documentación requerimiento". | CSP\-SJUS\-ECSP\-SJUS\-E\_UO |
| Añadir incidencia | Permite crear una nueva incidencia de documentación en el requerimiento. | Muestra el formulario [IU\-CSP\-0580\-008\-005 \- Añadir\-modificar incidencia documentación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-009-modificar-requerimiento/iu-csp-0580-009-005-anadir-modificar-incidencia-documentacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-009-modificar-requerimiento/iu-csp-0580-009-005-anadir-modificar-incidencia-documentacion.md") que permite modificar los datos de una incidencia de documentación existente. | CSP\-SJUS\-ECSP\-SJUS\-E\_UO |

  


### Botones generales de la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar requerimiento | Se almacenan los cambio introducidos en cualquiera de las pestañas | Se realiza la inserción correspondiente sobre la tabla "requerimiento justificación".Se realizan las inserciones de los registros correspondientes  sobre la tabla "incidencia documentación requerimiento".Tras realizar la operación de guardado se retorna al formulario de gestión de requerimiento en modo edición [IU\-CSP\-0580\-009\-001 \- Modificar requerimiento \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-009-modificar-requerimiento/iu-csp-0580-009-001-modificar-requerimiento-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-009-modificar-requerimiento/iu-csp-0580-009-001-modificar-requerimiento-datos-generales.md") | CSP\-SJUS\-ECSP\-SJUS\-E\_UO |
| Cancelar | Se descartan los cambios introducidos en cualquiera de las entidades de las tablas de esta ventana. | No se realiza ningún cambio sobre ninguna entidad.Se vuelve al listado de requerimientos [IU\-CSP\-0580\-006 \- Listado de requerimientos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-006-listado-de-requerimientos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-006-listado-de-requerimientos.md") |  |

  


### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso

  
  
  
  





