# Hércules : IU\-CSP\-0580\-009\-003 \- Modificar requerimiento \- Respuesta\-Alegación



## Formulario Modificar requerimiento \- Respuesta/Alegación

Formulario de modificación de requerimiento. Apartado Respuesta/Alegación



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Título de la página variable en función del requerimiento. "Datos del requerimiento": nombre del requerimiento.  El nombre del requerimiento se obtendrá del campo "nombre" de la tabla "tipo requerimiento", para el registro referenciado por el campo "tipo requerimiento" de la tabla "requerimiento justificación" (o del valor seleccionado en el desplegable "tipo requerimiento" del formulario, cuando en éste se modifique el valor inicial del registro).Los datos de la respuesta a un requerimiento se almacenan en la tabla "alegación requerimiento". A través del campo "requerimiento justificación" se establece la relación con el requerimiento (tabla "requerimiento justificación"). | | |
| Número requerimiento | Numérico entero genéricoSolo lectura | Número del requerimiento  para el que se introducen los datos de la respuesta.Se mostrará el valor del campo "número requerimiento" de la tabla "requerimiento justificación" para el  requerimiento que se está modificando. Se mostrará en modo solo lectura. |
| Tipo requerimiento | TextoSolo lectura | Tipo del requerimiento para el que se introducen los datos de la respuesta.Se muestra el campo "nombre" de la tabla "tipo requerimiento" de acuerdo al campo "tipo requerimiento" de la tabla "requerimiento justificación" del requerimiento que se está modificando. Se mostrará |
| Fecha respuesta/alegación | FechaOpcional | Fecha en la que se remite la respuesta o alegación del requerimiento.Se corresponde con el campo "fecha alegación" de la tabla "alegación requerimiento". |
| Importe total alegado | EconómicoOpcional | Importe alegado que se comunica en la respuesta al requerimiento.Se corresponde con el campo "importe alegado" de la tabla "alegación requerimiento". |
| Importe alegado: costes directos | EconómicoOpcional | Importe alegado correspondiente a costes directos que se comunica en la respuesta al requerimiento.Se corresponde con el campo "importe alegado CD" de la tabla "alegación requerimiento". |
| Importe alegado: costes indirectos | EconómicoOpcional | Importe alegado correspondiente a costes indirectos que se comunica en la respuesta al requerimiento.Se corresponde con el campo "importe alegado CI" de la tabla "alegación requerimiento". |
| Importe total reintegrado | EconómicoOpcional | Importe que se ha reintegrado por no haber sido admitido en la justificación.Se corresponde con el campo "importe reintegrado" de la tabla "alegación requerimiento". |
| Importe reintegrado: costes directos | EconómicoOpcional | Importe que se ha reintegrado correspondiente a costes directos que se comunica en la respuesta al requerimiento.Se corresponde con el campo "importe reintegrado CD" de la tabla "alegación requerimiento". |
| Importe reintegrado: costes indirectos | EconómicoOpcional | Importe que se ha reintegrado correspondiente a costes indirectos que se comunica en la respuesta al requerimiento.Se corresponde con el campo "importe reintegrado CI" de la tabla "alegación requerimiento". |
| Intereses reintegrados | EconómicoOpcional | Importe que ha sido reintegrado correspondiente a los intereses generados por el importe no admitido en justificación.Se corresponde con el campo "intereses reintegrados" de la tabla "alegación requerimiento". |
| Fecha pago del reintegro | FechaOpcional | Fecha en la que se efectúa el pago del reintegro del importe no aceptado.Se corresponde con el campo "fecha reintegro" de la tabla "alegación requerimiento". |
| Justificante pago del reintegro | TextoOpcional | Identificador del justificante del reintegro realizado.Se corresponde con el campo "justificante reintegro" de la tabla "alegación requerimiento". |
| Observaciones | Texto largoOpcional | Cualquier observación que interese registrar referida a la respuesta/alegación presentada.Se corresponde con el campo "observaciones" de la tabla "alegación requerimiento". |
| Respuesta a las incidencias en documentación.  Listado de incidencias en documentación (tabla "incidencia documentación requerimiento") para el requerimiento en curso. | | |
| Documento | Texto | Nombre del documento sobre el que se notifica una incidencia en el requerimiento.Se corresponde con el campo "nombre documento" de la tabla "incidencia documentación requerimiento". |
| Incidencia/motivo de rechazo | Texto largo | Descripción de la incidencia notificada en el requerimiento sobre el documento.Se corresponde con el campo "incidencia" de la tabla "incidencia documentación requerimiento". |
| Alegación presentada | Texto largo | Descripción de la alegación presentada en la respuesta al requerimiento.Se corresponde con el campo "alegación" de la tabla "incidencia documentación requerimiento". |
| Modificar | Icono de acción | Acción "modificar" |
| Añadir incidencia | Botón | Acción "añadir incidencia" |



| Acciones | Descripción | Enlace CU. | Permiso |
| --- | --- | --- | --- |
| Respuesta a las incidencias en documentación. | | | |
| Modificar | Permite añadir o modificar la respuesta a la incidencia en documentación | Muestra el [IU\-CSP\-0580\-009\-006 \- Añadir\-modificar respuesta a incidencia documentación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-009-modificar-requerimiento/iu-csp-0580-009-006-anadir-modificar-respuesta-a-incidencia-documentacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-009-modificar-requerimiento/iu-csp-0580-009-006-anadir-modificar-respuesta-a-incidencia-documentacion.md") | CSP\-SJUS\-ECSP\-SJUS\-E\_UO |

  


### Botones generales de la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar requerimiento | Se almacenan los cambios introducidos en cualquiera de las pestañas del requerimiento. | Inserta o modifica el registro correspondiente sobre la tabla "alegación requerimiento".Modifica los registros correspondientes sobre la tabla "incidencia documentación requerimiento".Además se almacenará los cambios que correspondan al resto de apartados del requerimiento  (datos generales, gastos y documentos), puesto que la acción afecta a todos ellos.Tras realizar la operación de guardado se mantiene al usuario en esta página. | CSP\-SJUS\-ECSP\-SJUS\-E\_UO |
| Cancelar | Se descartan los cambios introducidos en cualquiera de las entidades de las tablas de esta ventana. | No se realiza ningún cambio sobre ninguna entidad.Se vuelve al listado de requerimientos [IU\-CSP\-0580\-006 \- Listado de requerimientos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-006-listado-de-requerimientos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0580-seguimiento-justificacion/iu-csp-0580-006-listado-de-requerimientos.md") |  |

  


### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso

  
  
  
  





