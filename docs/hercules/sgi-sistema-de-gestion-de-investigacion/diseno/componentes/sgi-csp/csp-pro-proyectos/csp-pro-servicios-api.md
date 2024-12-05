# Hércules : CSP\-PRO \- Servicios API



### Proyecto



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /proyectos | Proyecto |  | CSP\-PRO\-C | Crea Proyecto |
| PUT | /proyectos/{id} | Proyecto |  | CSP\-PRO\-E | Modifica Proyecto |
| PATCH | /proyectos/{id}/desactivar |  | Proyecto | CSP\-PRO\-B | Desactiva Proyecto |
| PATCH | /proyectos/{id}/reactivar |  | Proyecto | CSP\-PRO\-E | Reactiva Proyecto |
| HEAD | /proyectos/{id} |  | HTTP 200 / HTTP 204 | CSP\-PRO\-V | Comprueba la existencia del proyecto con el id indicado |
| GET | /proyectos/{id}/modeloejecucion |  | ModeloEjecucion | CSP\-PRO\-V | ModeloEjecucion asignado al Proyecto |
| GET | /proyectos/{id} |  | Proyecto | CSP\-PRO\-V | Detalle de Proyecto |
| GET | /proyectos | q\+s | Lista\[Proyecto] | CSP\-PRO\-V | Listado de Proyecto (sólo devuelve los activos y que estén asociadas a a las unidades de gestión a las que esté vinculado el usuario) |
| GET | /proyectos/investigador | q\+s | Lista\[Proyecto] | CSP\-PRO\-INV\-VR | Listado de Proyecto (sólo devuelve los activos, que no estén en estado borrador, en los que el usuario logueado forme parte del equipo y que estén asociadas a a las unidades de gestión a las que esté vinculado el usuario) |
| GET | /proyectos/todos | q\+s | Lista\[Proyecto] | CSP\-PRO\-V | Listado de Proyecto (devuelve todos que estén asociadas a a las unidades de gestión a las que esté vinculado el usuario) |
|  |  |  |  |  |  |
| GET | /proyectos/{id}/areasconocimento |  | Lista\[AreaConocimiento] |  | Listado de áreas de conocimiento de un Proyecto. |
|  |  |  |  |  |  |
| GET | /proyectos/{id}/proyectoentidadfinanciadoras | q\+s | Listado\[ProyectoEntidadFinanciadora] |  | Listado ProyectoEntidadFinanciadora de un proyecto |
|  |  |  |  |  |  |
| GET | /proyectos/{id}/proyectoentidadgestoras |  | Listado\[ProyectoEntidadGestora] |  | Listado ProyectoEntidadGestora de un proyecto |
| GET | /proyectos/{id}/proyectofases |  | Listado\[ProyectoFase] | CSP\-TFAS\-V | Listado ProyectoFase de un proyecto |
| GET | /proyectos/{id}/proyectohitos |  | Listado\[ProyectoHito] | CSP\-THIT\-V | Listado ProyectoHito de un proyecto |
| GET | /proyectos/{id}/estadoproyectos |  | Listado\[EstadoProyecto] |  | Listado histórico estados |
|  |  |  |  |  |  |
| GET | /proyectos/{id}/proyectopaquetetrabajos |  | Listado\[ProyectoPaqueteTrabajo] |  | Listado ProyectoPaqueteTrabajo de un proyecto |
| GET | /proyectos/{id}/proyectoprorrogas |  | Listado\[ProyectoProrroga] |  | Listado ProyectoProrroga de un proyecto |
| GET | /proyectos/{id}/proyectoperiodoseguimientos |  | Listado\[ProyectoPeriodoSeguimiento] |  | Listado ProyectoPeriodoSeguimiento de un proyecto |
|  |  |  |  |  |  |
| GET | /proyectos/{id}/entidadconvocantes | * id: identificador del Proyecto | Listado\[ProyectoEntidadConvocanteDto] |  | Listado ProyectoEntidadConvocanteDto de un Proyecto |
| POST | /proyectos/{id}/entidadconvocantes | * id: identificador del Proyecto * ProyectoEntidadConvocanteDto |  | CSP\-PRO\-C | Crea nuevo ProyectoEntidadConvocante |
| GET | /proyectos/{id}/entidadconvocantes/{entidadConvocanteId} | * id: identificador del Proyecto * entidadConvocanteId: identificador del ProyectoEntidadConvocanteDto | ProyectoEntidadConvocante | CSP\-PRO\-CCSP\-PRO\-E | Devuelve el ProyectoEntidadConvocanteDto con el entidadConvocanteId indicado |
| PATCH | /proyectos/{id}/entidadconvocantes/{entidadConvocanteId}/programa | * id: identificador del Proyecto * entidadConvocanteId: identificador del ProyectoEntidadConvocanteDto * Programa (debe tener establecido su id) | ProyectoEntidadConvocante | CSP\-PRO\-E | Actualiza el Programa del ProyectoEntidadConvocante con el entidadConvocanteId indicado |
| DELETE | /proyectos/{id}/entidadconvocantes/{entidadConvocanteId} | * id: identificador del Proyecto * entidadConvocanteId: identificador del ProyectoEntidadConvocanteDto |  | CSP\-PRO\-E | Borra el ProyectoEntidadConvocante con entidadConvocanteId indicado |

### ProyectoEntidadFinanciadora



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /proyectoentidadfinanciadoras | ProyectoEntidadFinanciadora | ProyectoEntidadFinanciadora |  | Crea ProyectoEntidadFinanciadora |
| PUT | /proyectoentidadfinanciadoras/{id} | ProyectoEntidadFinanciadora | ProyectoEntidadFinanciadora |  | Modifica ProyectoEntidadGestora |
| DELETE | /proyectoentidadfinanciadoras/{id} |  |  |  | Elimina ProyectoEntidadGestora |
| GET | /proyectoentidadfinanciadoras/{id} | ProyectoEntidadFinanciadora | ProyectoEntidadFinanciadora |  |  |

### ProyectoEntidadGestora



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /proyectoentidadgestoras | ProyectoEntidadGestora |  |  | Crea ProyectoEntidadGestora |
| PUT | /proyectoentidadgestoras | ProyectoEntidadGestora |  |  | Modifica ProyectoEntidadGestora |
| DELETE | /proyectoentidadgestoras/{id} |  |  |  | Elimina ProyectoEntidadGestora |

### ProyectoFase



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /proyectofases | ProyectoFase |  | CSP\-TFAS\-C | Crea ProyectoFase |
| PUT | /proyectofases/{id} | ProyectoFase |  | CSP\-TFAS\-E | Modifica ProyectoFase |
| DELETE | /proyectofases/{id} |  |  | CSP\-TFAS\-B | Elimina ProyectoFase |
| HEAD | /proyectofases/{id} |  | HTTP 200 / HTTP 204 | CSP\-TFAS\-V | Comprueba la existencia de ProyectoFase con el id indicado |
| GET | /proyectofases/{id} |  | ConvocatoriaFase | CSP\-TFAS\-V | Detalle de ProyectoFase |

  


### ProyectoHito



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /proyectohitos | ProyectoHito |  | CSP\-THIT\-C | Crea ProyectoHito |
| PUT | /proyectohitos/{id} | ProyectoHito |  | CSP\-THIT\-E | Modifica ProyectoHito |
| DELETE | /proyectohitos/{id} |  |  | CSP\-THIT\-B | Elimina ProyectoHito |
| HEAD | /proyectohitos/{id} |  | HTTP 200 / HTTP 204 | CSP\-THIT\-V | Comprueba la existencia de la ProyectoHito con el id indicado |
| GET | /proyectohitos/{id} |  | ProyectoHito | CSP\-THIT\-V | Detalle de ProyectoHito |

  


### ProyectoPaqueteTrabajo



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /proyectopaquetetrabajos | ProyectoPaqueteTrabajo |  |  | Crea ProyectoPaqueteTrabajo |
| PUT | /proyectopaquetetrabajos/{id} | ProyectoPaqueteTrabajo |  |  | Modifica ProyectoPaqueteTrabajo |
| DELETE | /proyectopaquetetrabajos/{id} |  |  |  | Elimina ProyectoPaqueteTrabajo |
| HEAD | /proyectopaquetetrabajos/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia de la ProyectoPaqueteTrabajo con el id indicado |
| GET | /proyectopaquetetrabajos/{id} |  | ProyectoPaqueteTrabajo |  | Detalle de ProyectoPaqueteTrabajo |

  


### ProyectoProrroga



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /proyectoprorrogas | ProyectoProrroga |  |  | Crea ProyectoProrroga |
| PUT | /proyectoprorrogas/{id} | ProyectoProrroga |  |  | Modifica ProyectoProrroga |
| DELETE | /proyectoprorrogas/{id} |  |  |  | Elimina ProyectoProrroga |
| HEAD | /proyectoprorrogas/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia de la ProyectoProrroga con el id indicado |
| GET | /proyectoprorrogas/{id} |  | ProyectoProrroga |  | Detalle de ProyectoProrroga |
|  |  |  |  |  |  |
| GET | /proyectoprorrogas/{id}/prorrogadocumentos |  | Listado\[ProrrogaDocumento] |  | Listado ProrrogaDocumento de un ProyectoProrroga |

### ProrrogaDocumento



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /prorrogadocumentos | ProrrogaDocumento |  |  | Crea ProrrogaDocumento |
| PUT | /prorrogadocumentos/{id} | ProrrogaDocumento |  |  | Modifica ProrrogaDocumento |
| DELETE | /prorrogadocumentos/{id} |  |  |  | Elimina ProrrogaDocumento |
| HEAD | /prorrogadocumentos/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia de la ProrrogaDocumento con el id indicado |
| GET | /prorrogadocumentos/{id} |  | ProrrogaDocumento |  | Detalle de ProrrogaDocumento |

### ProyectoSocio



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /proyectosocios | ProyectoSocio |  |  | Crea ProyectoSocio |
| PUT | /proyectosocios/{id} | ProyectoSocio |  |  | Modifica ProyectoSocio |
| DELETE | /proyectosocios/{id} |  |  |  | Elimina ProyectoSocio |
| HEAD | /proyectosocios/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia de la ProyectoSocio con el id indicado |
| GET | /proyectosocios/{id} |  | ProyectoSocio |  | Detalle de ProyectoSocio |
| GET | /proyectosocios/{id}/proyectosocioequipos | q\+s | Listado\[ProyectoSocioEquipo] |  | Listado ProyectoSocioEquipo de un ProyectoSocio |
| GET | /proyectosocios/{id}/proyectosocioperiodopagos | q\+s | Listado\[ProyectoSocioPeriodoPago] |  | Listado ProyectoSocioPeriodoPago de un ProyectoSocio |

  


### ProyectoSocioEquipo



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| PATCH | /proyectosocioequipos/{id} | idProyectoSocio\+List\[ProyectoSocioEquipo] |  |  | Modifica, crea o elimina el listado de  ProyectoSocioEquipo de un ProyectoSocio |
| HEAD | /proyectosocioequipos/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia de la ProyectoSocioEquipo con el id indicado |
| GET | /proyectosocioequipos/{id} |  | ProyectoSocioEquipo |  | Detalle de ProyectoSocioEquipo |

  


### ProyectoSocioPeriodoPago



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| PATCH | /proyectosocioperiodopagos/{id} | idProyectoSocio\+List\[ProyectoSocioPeriodoPago] |  |  | Modifica, crea o elimina el listado de  ProyectoSocioPeriodoPago de un ProyectoSocio |
| HEAD | /proyectosocioperiodopagos/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia de la ProyectoSocioPeriodoPago con el id indicado |
| GET | /proyectosocioperiodopagos/{id} |  | ProyectoSocioPeriodoPago |  | Detalle de ProyectoSocioPeriodoPago |

  


### ProyectoPeriodoSeguimiento



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /proyectoperiodoseguimientos | ProyectoPeriodoSeguimiento |  |  | Crea ProyectoPeriodoSeguimiento |
| PUT | /proyectoperiodoseguimientos/{id} | ProyectoPeriodoSeguimiento |  |  | Modifica ProyectoPeriodoSeguimiento |
| DELETE | /proyectoperiodoseguimientos/{id} |  |  |  | Elimina ProyectoPeriodoSeguimiento |
| HEAD | /proyectoperiodoseguimientos/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia de la ProyectoPeriodoSeguimiento con el id indicado |
| GET | /proyectoperiodoseguimientos/{id} |  | ProyectoPeriodoSeguimiento |  | Detalle de ProyectoPeriodoSeguimiento |

  


### ProyectoSocioPeriodoJustificacion



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| PATCH | /proyectosocioperiodojustificacion/{id} | idProyectoSocio\+List\[ProyectoSocioPeriodoJustificacion] |  |  | Modifica, crea o elimina el listado de  ProyectoSocioPeriodoJustificacion de un ProyectoSocio |
| GET | /proyectosocioperiodojustificacion/{id} |  | ProyectoSocioPeriodoJustificacion |  | Detalle de ProyectoSocioPeriodoJustificacion |
| GET | /proyectosocioperiodojustificacion/{id}/socioperiodojustificaciondocumentos | q\+s | Listado\[SocioPeriodoJustificacionDocumento] |  | Listado SocioPeriodoJustificacionDocumento de un ProyectoSocioPeriodoJustificacion |

### SocioPeriodoJustificacionDocumento



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| PATCH | /socioperiodojustificaciondocumentos/{id} | proyectoSocioPeriodoJustificacionId\+List\[SocioPeriodoJustificacionDocumento] |  |  | Modifica, crea o elimina el listado de  SocioPeriodoJustificacionDocumento de un ProyectoSocioPeriodoJustificacion |
| GET | /socioperiodojustificaciondocumentos/{id} |  | SocioPeriodoJustificacionDocumento |  | Detalle de SocioPeriodoJustificacionDocumento |

### Integración CVN



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| GET | /proyectos/modificados\-ids | q\+sLa query estará formada por:* fechaModificacion | Lista\[Long] | CSP\-PRO\-V | Listado de Identificadores de Proyecto que han sido modificados (tanto la entidad Proyecto como todas sus entidades relacionadas: ProyectoEquipo, ContextoProyecto, ProyectoEntidadGestora, ProyectoEntidadConvocante y ProyectoEntidadFinanciadora) que tengan el campo "activo" a "true" y el campo "confidencial" a "false"Se devolverán aquellos identificadores de  proyecto que tengan en las siguientes entidades la fecha de creación o la fecha de moficicación igual o mayor a la pasada por parámetro:* Proyecto * ProyectoEquipo * ContextoProyecto * ProyectoEntidadGestora * ProyectoEntidadConvocante * ProyectoEntidadFinanciadora |
| GET | /proyectos/{id}/notificacionesproyectos |  | Lista\[NotificacionProyectoExternoCVN] |  | Listado de notificaciones de proyectos exterons del CVN asociados a un Proyecto del SGI |




