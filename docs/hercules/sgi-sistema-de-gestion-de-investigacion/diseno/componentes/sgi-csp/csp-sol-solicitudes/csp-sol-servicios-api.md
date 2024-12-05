# Hércules : CSP\-SOL \- Servicios API







  


### Solicitud



|  | Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- | --- |
|  | POST | /solicitudes | Solicitud |  | CSP\-SOL\-C | Crea Solicitud |
|  | PUT | /solicitudes/{id} | Solicitud |  | CSP\-SOL\-E | Modifica Solicitud |
|  | PATCH | /solicitudes/{id}/desactivar |  | Solicitud | CSP\-SOL\-B | Desactiva Solicitud |
|  | PATCH | /solicitudes/{id}/reactivar |  | Solicitud | CSP\-SOL\-E | Reactiva Solicitud |
| (error) | HEAD | /solicitudes/{id} |  | HTTP 200 / HTTP 204 | CSP\-SOL\-V | Comprueba la existencia de la solicitud con el id indicado |
|  | GET | /solicitudes/{id} |  | Solicitud | CSP\-SOL\-V | Detalle de Solicitud |
|  | GET | /solicitudes | q\+s | Lista\[Solicitud] | CSP\-SOL\-V | Listado de Solicitud (sólo devuelve los activos y que estén asociadas a a las unidades de gestión a las que esté vinculado el usuario) |
|  | GET | /solicitudes/todos | q\+s | Lista\[Solicitud] | CSP\-SOL\-V | Listado de Solicitud (devuelve todos que estén asociadas a a las unidades de gestión a las que esté vinculado el usuario) |
|  | PATCH | /solicitudes/{id}/presentar |  |  |  | Cambio de estado de "Borrador" a "Presentada". |
|  | PATCH | /solicitudes/{id}/admitir\-provisionalmente |  |  |  | Cambio de estado de "Presentada" a "Admitida provisionalmente". |
|  | PATCH | /solicitudes/{id}/admitir\-definitivamente |  |  |  | Cambio de estado de "Admitida provisionalmente" a "Admitida definitivamente". |
|  | PATCH | /solicitudes/{id}/conceder\-provisionalmente |  |  |  | Cambio de estado de "Admitida definitivamente" a "Concedida provisional". |
|  | PATCH | /solicitudes/{id}/conceder |  |  |  | Cambio de estado de "Concedida provisional" o "Alegada concesión" a "Concedida". |
|  | PATCH | /solicitudes/{id}/exlcluir\-provisionalmente |  |  |  | Cambio de estado de "Presentada" a "Excluir provisionalmente". |
|  | PATCH | /solicitudes/{id}/alegar\-admision |  |  |  | Cambio de estado de "Excluida provisional" a "Alegada admisión". |
|  | PATCH | /solicitudes/{id}/exlcluir |  |  |  | Cambio de estado de "Alegada admisión" a "Excluida". |
|  | PATCH | /solicitudes/{id}/denegar\-provisionalmente |  |  |  | Cambio de estado de "Admitida definitiva" a "Denegada provisional". |
|  | PATCH | /solicitudes/{id}/alegar\-concesion |  |  |  | Cambio de estado de "Denegada provisional" a "Alegada concesión". |
|  | PATCH | /solicitudes/{id}/denegar |  |  |  | Cambio de estado de "Alegada concesión" a "Denegada". |
|  | PATCH | /solicitudes/{id}/desistir |  |  |  | Cambio de estado de "Presentada", "Admitida provisional", "Excluida provisional",  "Admitida definitiva", "Denegada provisional" o "Concedida provisional" a "Desistida". |
|  | HEAD | /convocatorias/{id}/modificable |  | HTTP 200 →Si cumple las condiciones para que la solicitud se cambie de estado "Borrador" a "Presentada".HTTP 204 →No cumple las condiciones para que la solicitud se cambie de estado "Borrador" a "Presentada". |  | Comprueba si la solicitud puede cambiar de estado "Borrador" a "Presentada". |
|  | | | | | | |
|  | GET | /solicitudes/{id}/solicitudmodalidades | q\+s | Lista\[SolicitudModalidad] | CSP\-SOL\-C, CSP\-SOL\-E | Listado de SolicitudModalidad de la Solicitud |
|  | GET | /solicitudes/{id}/solicitudhitos |  | Listado\[SolicitudHito] | CSP\-SOL\-C, CSP\-SOL\-E | Listado de SolicitudHito de la Solicitud |
|  | GET | /solicitudes/{id}/solicituddocumentos |  | Listado\[SolicitudDocumento] | CSP\-SOL\-C, CSP\-SOL\-E | Listado de SolicitudDocumento de la Solicitud |
|  | GET | /solicitudes/{id}/estadosolicitudes |  | Listado\[EstadoSolicitud] | CSP\-SOL\-C, CSP\-SOL\-E | Listado de EstadoSolicitud de la Solicitud |
|  | GET | /solicitudes/{id}/solicitudproyectodatos |  | SolicitudProyectoDatos | CSP\-SOL\-C, CSP\-SOL\-E | SolicitudProyectoDatos de la Solicitud |
|  | GET | /solicitudes/{id}/solicitudproyectoequipo | q\+s | Listado\[SolicitudProyectoEquipo] |  | Listado de SolicitudProyectoEquipo dela Solicitud |
|  | GET | /solicitudes/{id}/solicitudproyectodatos |  | HTTP 200 / HTTP 204 | CSP\-SOL\-C, CSP\-SOL\-E | Comprueba la existencia de la solicitud datos proyecto  con el id de solicitud indicado |
|  | GET | /solicitudes/{id}/solicitudproyectoentidadfinanciadoraajenas |  | Listado\[SolicitudProyectoEntidadFinanciadoraAjena] | CSP\-SOL\-C, CSP\-SOL\-E | Listado de SolicitudProyectoEntidadFinanciadoraAjena de la Solicitud |
|  | GET | /solicitudes/{id}/solicitudproyectopresupuestos |  | Listado\[SolicitudProyectoPresupuesto] | CSP\-SOL\-C, CSP\-SOL\-E | Listado de SolicitudProyectoPresupuesto de la Solicitud |

### SolicitudModalidad



|  | Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- | --- |
|  | POST | /solicitudmodalidades | SolicitudModalidad |  | CSP\-SOL\-C, CSP\-SOL\-E | Crea SolicitudModalidad |
|  | PUT | /solicitudmodalidades/{id} |  |  | CSP\-SOL\-C, CSP\-SOL\-E | Modifica SolicitudModalidad |
|  | DELETE | /solicitudmodalidades/{id} |  |  | CSP\-SOL\-C, CSP\-SOL\-E | Elimina SolicitudModalidad |
| (error) | HEAD | /solicitudmodalidades/{id} |  | HTTP 200 / HTTP 204 | CSP\-SOL\-C, CSP\-SOL\-E | Comprueba la existencia de la SolicitudModalidad con el id indicado |
|  | GET | /solicitudmodalidades/{id} |  | SolicitudModalidad | CSP\-SOL\-C, CSP\-SOL\-E | Detalle de SolicitudModalidad |

  


### SolicitudHito



|  | **Método** | **URL** | **Parámetros** | **Respuesta** | **Permisos** | **Descripción** |
| --- | --- | --- | --- | --- | --- | --- |
|  | POST | /solicitudhitos | SolicitudHito |  | CSP\-SHIT\-C | Crea SolicitudHito |
|  | PUT | /solicitudhitos/{id} | SolicitudHito |  | CSP\-SHIT\-E | Modifica SolicitudHito |
|  | DELETE | /solicitudhitos/{id} |  |  | CSP\-SHIT\-B | Elimina SolicitudHito |
|  | HEAD | /solicitudhitos/{id} |  | HTTP 200 / HTTP 204 | CSP\-SHIT\-V | Comprueba la existencia de la SolicitudHito con el id indicado |
|  | GET | /solicitudhitos/{id} |  | SolicitudHito | CSP\-SHIT\-V | Detalle de SolicitudHito |

### SolicitudDocumento



|  | **Método** | **URL** | **Parámetros** | **Respuesta** | **Permisos** | **Descripción** |
| --- | --- | --- | --- | --- | --- | --- |
|  | POST | /solicituddocumentos | SolicitudDocumento |  |  | Crea SolicitudDocumento |
|  | PUT | /solicituddocumentos/{id} | SolicitudDocumento |  |  | Modifica SolicitudDocumento |
|  | DELETE | /solicituddocumentos/{id} |  |  |  | Elimina SolicitudDocumento |
|  | HEAD | /solicituddocumentos/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia de la SolicitudDocumento con el id indicado |
|  | GET | /solicituddocumentos/{id} |  | SolicitudDocumento |  | Detalle de SolicitudDocumento |

  


### SolicitudProyectoDatos



|  | **Método** | **URL** | **Parámetros** | **Respuesta** | **Permisos** | **Descripción** |
| --- | --- | --- | --- | --- | --- | --- |
|  | POST | /solicitudproyectodatos | SolicitudProyectoDatos |  |  | Crea SolicitudProyectoDatos |
|  | PUT | /solicitudproyectodatos/{id} | SolicitudProyectoDatos |  |  | Modifica SolicitudProyectoDatos |
|  | DELETE | /solicitudproyectodatos/{id} |  |  |  | Elimina SolicitudProyectoDatos |
|  | HEAD | /solicitudproyectodatos/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia del SolicitudProyectoDatos con el id indicado |
|  | GET | /solicitudproyectodatos/{id} |  | SolicitudProyectoDatos |  | Detalle de SolicitudProyectoDatos |

### SolicitudProyectoSocio



|  | **Método** | **URL** | **Parámetros** | **Respuesta** | **Permisos** | **Descripción** |
| --- | --- | --- | --- | --- | --- | --- |
|  | POST | /solicitudproyectosocio | SolicitudProyectoSocio |  | CSP\-SHIT\-C | Crea SolicitudProyectoSocio |
|  | PUT | /solicitudproyectosocio/{id} | SolicitudProyectoSocio |  | CSP\-SHIT\-E | Modifica SolicitudProyectoSocio |
|  | DELETE | /solicitudproyectosocio/{id} |  |  | CSP\-SHIT\-B | Elimina SolicitudProyectoSocio |
|  | HEAD | /solicitudproyectosocio/{id} |  | HTTP 200 / HTTP 204 | CSP\-SHIT\-V | Comprueba la existencia de la SolicitudProyectoSocio con el id indicado |
|  | GET | /solicitudproyectosocio/{id} |  | SolicitudProyectoSocio | CSP\-SHIT\-V | Detalle de SolicitudProyectoSocio |
|  | GET | /solicitudes/{id}/solicitudproyectoequiposocio | q\+s | Listado\[SolicitudProyectoEquipoSocio] |  | Listado de SolicitudProyectoEquipoSocio dela SolicitudProyectoSocio |
|  | GET | /solicitudes/{id}/solicitudproyectoperiodopago | q\+s | Listado\[SolicitudProyectoPeriodoPago] |  | Listado de SolicitudProyectoPeriodoPago dela SolicitudProyectoSocio |

### SolicitudProyectoEquipo



|  | **Método** | **URL** | **Parámetros** | **Respuesta** | **Permisos** | **Descripción** |
| --- | --- | --- | --- | --- | --- | --- |
|  | POST | /solicitudproyectoequipo | SolicitudProyectoEquipo |  | CSP\-SHIT\-C | Crea SolicitudProyectoEquipo |
|  | PUT | /solicitudproyectoequipo/{id} | SolicitudProyectoEquipo |  | CSP\-SHIT\-E | Modifica SolicitudProyectoEquipo |
|  | DELETE | /solicitudproyectoequipo/{id} |  |  | CSP\-SHIT\-B | Elimina SolicitudProyectoEquipo |
|  | HEAD | /solicitudproyectoequipo/{id} |  | HTTP 200 / HTTP 204 | CSP\-SHIT\-V | Comprueba la existencia de la SolicitudProyectoEquipo con el id indicado |
|  | GET | /solicitudproyectoequipo/{id} |  | SolicitudProyectoEquipo | CSP\-SHIT\-V | Detalle de SolicitudProyectoEquipo |

### SolicitudProyectoEquipoSocio



|  | **Método** | **URL** | **Parámetros** | **Respuesta** | **Permisos** | **Descripción** |
| --- | --- | --- | --- | --- | --- | --- |
|  | POST | /solicitudproyectoequiposocio | SolicitudProyectoEquipoSocio |  |  | Crea SolicitudProyectoEquipoSocio |
|  | PUT | /solicitudproyectoequiposocio/{id} | SolicitudProyectoEquipoSocio |  |  | Modifica SolicitudProyectoEquipoSocio |
|  | DELETE | /solicitudproyectoequiposocio/{id} |  |  |  | Elimina SolicitudProyectoEquipoSocio |
|  | HEAD | /solicitudproyectoequiposocio/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia del SolicitudProyectoEquipoSocio con el id indicado |
|  | GET | /solicitudproyectoequiposocio/{id} |  | SolicitudProyectoEquipoSocio |  | Detalle de SolicitudProyectoEquipoSocio |

### SolicitudProyectoPeriodoPago



|  | **Método** | **URL** | **Parámetros** | **Respuesta** | **Permisos** | **Descripción** |
| --- | --- | --- | --- | --- | --- | --- |
|  | POST | /solicitudproyectoperiodopago | SolicitudProyectoPeriodoPago |  |  | Crea SolicitudProyectoPeriodoPago |
|  | PUT | /solicitudproyectoperiodopago/{id} | SolicitudProyectoPeriodoPago |  |  | Modifica SolicitudProyectoPeriodoPago |
|  | DELETE | /solicitudproyectoperiodopago/{id} |  |  |  | Elimina SolicitudProyectoPeriodoPago |
|  | HEAD | /solicitudproyectoperiodopago/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia del SolicitudProyectoPeriodoPago con el id indicado |
|  | GET | /solicitudproyectoperiodopago/{id} |  | SolicitudProyectoPeriodoPago |  | Detalle de SolicitudProyectoPeriodoPago |

### SolicitudProyectoEntidadFinanciadoraAjena



|  | **Método** | **URL** | **Parámetros** | **Respuesta** | **Permisos** | **Descripción** |
| --- | --- | --- | --- | --- | --- | --- |
|  | POST | /solicitudproyectoentidadfinanciadoraajenas | SolicitudProyectoEntidadFinanciadoraAjena |  |  | Crea SolicitudProyectoEntidadFinanciadoraAjena |
|  | PUT | /solicitudproyectoentidadfinanciadoraajenas/{id} | SolicitudProyectoEntidadFinanciadoraAjena |  |  | Modifica SolicitudProyectoEntidadFinanciadoraAjena |
|  | DELETE | /solicitudproyectoentidadfinanciadoraajenas/{id} |  |  |  | Elimina SolicitudProyectoEntidadFinanciadoraAjena |
|  | GET | /solicitudproyectoentidadfinanciadoraajenas/{id} |  | SolicitudProyectoEntidadFinanciadoraAjena |  | Detalle de SolicitudProyectoEntidadFinanciadoraAjena |

### SolicitudProyectoPresupuesto



|  | **Método** | **URL** | **Parámetros** | **Respuesta** | **Permisos** | **Descripción** |
| --- | --- | --- | --- | --- | --- | --- |
|  | POST | /solicitudproyectopresupuestos | SolicitudProyectoPresupuesto |  |  | Crea SolicitudProyectoPresupuesto |
|  | PUT | /solicitudproyectopresupuestos/{id} | SolicitudProyectoPresupuesto |  |  | Modifica SolicitudProyectoPresupuesto |
|  | DELETE | /solicitudproyectopresupuestos/{id} |  |  |  | Elimina SolicitudProyectoPresupuesto |
|  | HEAD | /solicitudproyectopresupuestos/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia del SolicitudProyectoPresupuesto con el id indicado |
|  | GET | /solicitudproyectopresupuestos/{id} |  | SolicitudProyectoPresupuesto |  | Detalle de SolicitudProyectoPresupuesto |

### RolProyecto



|  | Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- | --- |
|  | POST | /rolproyectos | RolProyecto |  | CSP\_RPRO\_C | Crea RolProyecto |
|  | PUT | /rolproyectos/{id} | RolProyecto |  | CSP\_RPRO\_E | Modifica RolProyecto |
|  | PATCH | /rolproyectos/{id}/desactivar |  |  | CSP\-RPRO\-B | Desactiva RolProyecto |
|  | PATCH | /rolproyectos/{id}/reactivar |  |  | CSP\-RPRO\-E | Reactiva RolProyecto |
|  | HEAD | /rolproyectos/{id} |  | HTTP 200 / HTTP 204 | CSP\_RPRO\_V | Comprueba la existencia de la RolProyecto con el id indicado |
|  | GET | /rolproyectos/{id} |  | RolProyecto | CSP\_RPRO\_V | Detalle de RolProyecto |
|  | GET | /rolproyectos | q\+s | Lista\[RolProyecto] | CSP\-RPRO\-V | Listado de RolProyecto (sólo devuelve los activos) |
|  | GET | /rolproyectos/todos | q\+s | Lista\[RolProyecto] | CSP\-RPRO\-V | Listado de RolProyecto (devuelve todos) |
|  | GET | /rolproyectos/{id}/colectivos | RolProyecto | Lista\[String] | CSP\-RPRO\-V | Listado de los colectivosRef del RolProyecto |

### RolSocio



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /rolsocios | RolSocio |  | CSP\_RSOC\_C | Crea RolSocio |
| PUT | /rolsocios/{id} | RolSocio |  | CSP\_RSOC\_E | Modifica RolSocio |
| PATCH | /rolsocios/{id}/desactivar |  |  | CSP\-RSOC\-B | Desactiva RolSocio |
| PATCH | /rolsocios/{id}/reactivar |  |  | CSP\-RSOC\-E | Reactiva RolSocio |
| HEAD | /rolsocios/{id} |  | HTTP 200 / HTTP 204 | CSP\_RSOC\_V | Comprueba la existencia de la RolSocio con el id indicado |
| GET | /rolsocios/{id} |  | RolSocio | CSP\_RSOC\_V | Detalle de RolSocio |
| GET | /rolsocios | q\+s | Lista\[RolSocio] | CSP\-RSOC\-V | Listado de RolSocio (sólo devuelve los activos) |
| GET | /rolsocios/todos | q\+s | Lista\[RolSocio] | CSP\-RSOC\-V | Listado de RolSocio (devuelve todos) |




