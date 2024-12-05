# Hércules : PII \- Servicios \- API



### Invenciones



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /invenciones | Invencion | Invencion | PII\-INV\-C | Crea una invención |
| GET | /invenciones | q \+ s | Lista\[Invencion] | PII\-INV\-V, PII\-INV\-C, PII\-INV\-E | Busca/Lista invención (sólo devuelve los activos) |
| GET | /invenciones/todos | q \+ s | Lista\[Invencion] | PII\-INV\-V, PII\-INV\-C, PII\-INV\-E | Busca/Lista invención (devuelve todos) |
| PUT | /invenciones/{id} | Invencion | Invencion | PII\-INV\-E | Modifica una invención |
| GET | /invenciones/{id} |  | Invencion | PII\-INV\-V, PII\-INV\-C, PII\-INV\-E | Detalle de invención |
| HEAD | /invenciones/{id} |  | HTTP 200 / HTTP 204 | PII\-INV\-V, PII\-INV\-E | Comprueba la existencia de la invención con el id indicado |
| GET | /invenciones/produccioncientifica/{anioInicio}/{anioFin}/{universidadId} |  | Lista\[InvencionDto] | CSP\-PRO\-PRC\-V, SCOPE\_sgi\-pii | Lista de invenciones para la baremación |
| Subentidades |  |  |  |  |  |
| GET | /invenciones/{id}/sectoresaplicacion |  | InvencionSectorAplicacion | PII\-INV\-E, PII\-INV\-V, PII\-INV\-C | Listado de InvencionSectorAplicacion de la invención |
| PATCH | /invenciones/{id}/sectoresaplicacion | Lista\[InvencionSectorAplicacion] | Lista\[InvencionSectorAplicacion] | PII\-INV\-E, PII\-INV\-C | Elimina los SectorAplicacion asociados a la invención con el id indicado y asocia los SectorAplicacion indicados a la invención. |
| GET | /invenciones/{id}/invenciondocumentos |  | Lista\[InvencionDocumentoOutput] | PII\-INV\-E, PII\-INV\-V | Listado de los documentos asociados a una invención |
| GET | /invenciones/{id}/gastos |  | Lista\[InvencionGasto] | PII\-INV\-E, PII\-INV\-V | Listado de los gastos asociados a una invención |
| GET | /invenciones/{id}/palabrasclave |  | Lista\[InvencionPalabraClaveOutput] | PII\-INV\-E, PII\-INV\-V | Listado de palabras clave asociadas a una invención |

### Sectores de Aplicación



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /sectoresaplicacion | SectorAplicacion | SectorAplicacion | PII\-SEA\-C | Crea un SectorAplicacion |
| GET | /sectoresaplicacion | q \+ s | Lista\[SectorAplicacion] | PII\-SEA\-V, PII\-SEA\-C, PII\-SEA\-E, PII\-SEA\-B, PII\-SEA\-R, PII\-INV\-V, PII\-INV\-C, PII\-INV\-E | Busca/Lista SectorAplicacion (sólo devuelve los activos) |
| GET | /sectoresaplicacion/todos | q \+ s | Lista\[SectorAplicacion] | PII\-SEA\-V, PII\-SEA\-C, PII\-SEA\-E, PII\-SEA\-B, PII\-SEA\-R | Busca/Lista SectorAplicacion (devuelve todos) |
| PUT | /sectoresaplicacion/{id} | SectorAplicacion | SectorAplicacion | PII\-SEA\-E | Modifica un SectorAplicacion |
| GET | /sectoresaplicacion/{id} |  | SectorAplicacion | PII\-SEA\-V, PII\-SEA\-C, PII\-SEA\-E, PII\-SEA\-B, PII\-SEA\-R | Detalle de SectorAplicacion |
| PATCH | /sectoresaplicacion/{id}/activar |  | SectorAplicacion | PII\-SEA\-R | Activa un SectorAplicacion |
| PATCH | /sectoresaplicacion/{id}/desactivar |  | SectorAplicacion | PII\-SEA\-B | Desactiva un SectorAplicacion |

  


### Tramos de Reparto



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /tramosreparto | TramoReparto | TramoReparto | PII\-TRE\-C | Crea un TramoReparto |
| GET | /tramosreparto | q \+ s | Lista\[TramoReparto] | PII\-TRE\-V, PII\-TRE\-C, PII\-TRE\-E, PII\-TRE\-B, PII\-TRE\-R | Busca/Lista TramoReparto (sólo devuelve los activos) |
| GET | /tramosreparto/todos | q \+ s | Lista\[TramoReparto] | PII\-TRE\-V, PII\-TRE\-C, PII\-TRE\-E, PII\-TRE\-B, PII\-TRE\-R | Busca/Lista TramoReparto (devuelve todos) |
| PUT | /tramosreparto/{id} | TramoReparto | TramoReparto | PII\-TRE\-E | Modifica un TramoReparto |
| GET | /tramosreparto/{id} |  | TramoReparto | PII\-TRE\-V, PII\-TRE\-C, PII\-TRE\-E, PII\-TRE\-B, PII\-TRE\-R | Detalle de TramoReparto |
| PATCH | /tramosreparto/{id}/activar |  | TramoReparto | PII\-TRE\-R | Activa un TramoReparto |
| PATCH | /tramosreparto/{id}/desactivar |  | TramoReparto | PII\-TRE\-B | Desactiva un TramoReparto |

  


### Tipos de Procedimiento



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /tiposprocedimiento | TipoProcedimientoInput | TipoProcedimientoOutput | PII\-TPR\-C | Crea un registro de tipo TipoProcedimiento |
| GET | /tiposprocedimiento | q \+ s | Lista\[TipoProcedimientoOutput] | PII\-TPR\-V, PII\-TPR\-C, PII\-TPR\-E, PII\-TPR\-B, PII\-TPR\-R, PII\-INV\-V, PII\-INV\-C, PII\-INV\-E | Busca/Lista TipoProcedimiento (sólo devuelve los activos) |
| GET | /tiposprocedimiento/todos | q \+ s | Lista\[TipoProcedimientoOutput] | 'PII\-TPR\-V', 'PII\-TPR\-C', 'PII\-TPR\-E', 'PII\-TPR\-B', 'PII\-TPR\-R' | Busca/Lista TipoProcedimiento (devuelve todos) |
| PUT | /tiposprocedimiento/{id} | TipoProcedimientoInput | TipoProcedimientoOutput | PII\-TPR\-E, | Modifica un TipoProcedimiento |
| GET | /tiposprocedimiento/{id} |  | TipoProcedimientoOutput | 'PII\-TPR\-V', 'PII\-TPR\-C', 'PII\-TPR\-E', 'PII\-TPR\-B', 'PII\-TPR\-R' | Detalle de TipoProcedimiento |
| PATCH | /tiposprocedimiento/{id}/activar |  | TipoProcedimientoOutput | PII\-TPR\-R | Activa un TipoProcedimiento |
| PATCH | /tiposprocedimiento/{id}/desactivar |  | TipoProcedimientoOutput | PII\-TPR\-B | Desactiva un TipoProcedimiento |

### Vías de Protección



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /viasproteccion | ViaProteccionInput | ViaProteccionOutput | PII\-VPR\-C | Crea un registro de tipo ViaProteccion |
| GET | /viasproteccion/todos | q \+ s | Lista\[ViaProteccionOutput] | 'PII\-VPR\-V', 'PII\-VPR\-C', 'PII\-VPR\-E', 'PII\-VPR\-B', 'PII\-VPR\-R' | Busca/Lista ViaProteccion (devuelve todos) |
| PUT | /viasproteccion/{id} | ViaProteccionInput | ViaProteccionOutput | PII\-VPR\-E, | Modifica una ViaProteccion |
| PATCH | /viasproteccion/{id}/activar |  | ViaProteccionOutput | PII\-VPR\-R | Activa una ViaProteccion |
| PATCH | /viasproteccion/{id}/desactivar |  | ViaProteccionOutput | PII\-VPR\-B | Desactiva una ViaProteccion |

### Invención Documento



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /invenciondocumentos | InvencionDocumentoInput | InvencionDocumentoOutput | PII\-INV\-C, PII\-INV\-E | Crea un registro de tipo InvencionDocumento |
| PUT | /invenciondocumentos/{id} | InvencionDocumentoInput | InvencionDocumentoOutput | PII\-INV\-E, | Modifica un registro de tipo InvencionDocumento |
| DELETE | /invenciondocumentos/{id} |  | InvencionDocumentoOutput | PII\-INV\-C, PII\-INV\-E | Borra un objeto de tipo InvencionDocumento |

### Solicitudes de Protección



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /solicitudesproteccion | SolicitudProteccionInput | SolicitudProteccionOutput | PII\-INV\-E | Crea un registro de tipo SolicitudProteccion |
| PATCH | /solicitudesproteccion/{id}/activar |  | SolicitudProteccionOutput | PII\-INV\-E | Activa una SolicitudProteccion |
| PATCH | /solicitudesproteccion/{id}/desactivar |  | SolicitudProteccionOutput | PII\-INV\-E | Desactiva una SolicitudProteccion |

  


### Informe Patentabilidad



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /informespatentabilidad | InformePatentabilidadInput | InformePatentabilidadOutput | PII\-INV\-E | Crea un registro de tipo InformePatentabilidad |
| GET | /informespatentabilidad/{id} |  | InformePatentabilidadOutput | 'PII\-TPR\-V', 'PII\-TPR\-C', 'PII\-TPR\-E', 'PII\-TPR\-B' | Detalle de InformePatentabilidad |
| PUT | /informespatentabilidad/{id} | InformePatentabilidadInput | InformePatentabilidadOutput | PII\-INV\-E, | Modifica un registro de tipo InformePatentabilidad |
| DELETE | /informespatentabilidad/{id} |  | InformePatentabilidadOutput | PII\-INV\-E | Borra un objeto de tipo InformePatentabilidad |

### Invención Inventores



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| GET | /invencion\-inventores/{id}/inventores | q \+ s | Lista\[InvencionInventorOutput] | PII\-INV\-V, PII\-INV\-C, PII\-INV\-E | Devuelve una lista paginada de objetos de tipo InvencionInventorOutpur asociados a una invención |

  


### Resultado Informe de Patentabilidad



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /resultadosinformepatentabilidad | ResultadoInformePatentabilidadInput | ResultadoInformePatentabilidadOutput | PII\-RIP\-C | Crea un registro de tipo ResultadoInformePatentabilidad |
| GET | /resultadosinformepatentabilidad | q \+ s | Lista\[ResultadoInformePatentabilidadOutput] | PII\-RIP\-V, PII\-RIP\-C, PII\-RIP\-E, PII\-RIP\-B, PII\-RIP\-R, PII\-INV\-V, PII\-INV\-E | Busca/Lista ResultadoInformePatentabilidad (devuelve solo activos) |
| GET | /resultadosinformepatentabilidad/todos | q \+ s | Lista\[ResultadoInformePatentabilidadOutput] | PII\-RIP\-V, PII\-RIP\-C, PII\-RIP\-E, PII\-RIP\-B, PII\-RIP\-R | Busca/Lista ResultadoInformePatentabilidad (devuelve todos) |
| GET | /resultadosinformepatentabilidad/{id} |  | ResultadoInformePatentabilidadOutput | PII\-TPR\-V, PII\-TPR\-C, PII\-TPR\-E'¡, PII\-TPR\-B,PII\-RIP\-R | Detalle de ResultadoInformePatentabilidad |
| PUT | /resultadosinformepatentabilidad/{id} | ResultadoInformePatentabilidadInput | ResultadoInformePatentabilidadOutput | PII\-RIP\-E, | Modifica un ResultadoInformePatentabilidad |
| PATCH | /resultadosinformepatentabilidad/{id}/activar |  | ResultadoInformePatentabilidadOutput | PII\-RIP\-R | Activa un ResultadoInformePatentabilidad |
| PATCH | /resultadosinformepatentabilidad/{id}/desactivar |  | ResultadoInformePatentabilidadOutput | PII\-RIP\-B | Desactiva un ResultadoInformePatentabilidad |

  


### Tipos de Protección



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /tiposproteccion | TipoProteccionInput | TipoProteccionOutput | PII\-TPR\-C | Crea un registro de tipo TipoProteccion |
| GET | /tiposproteccion | q \+ s | Lista\[TipoProteccionOutput] | PII\-TPR\-V, PII\-TPR\-C, PII\-TPR\-E, PII\-TPR\-B, PII\-TPR\-R, PII\-INV\-V, PII\-INV\-C, PII\-INV\-E | Busca/Lista TipoProteccion (devuelve solo activos) |
| GET | /tiposproteccion/todos | q \+ s | Lista\[TipoProteccionOutput] | PII\-TPR\-V, PII\-TPR\-C, PII\-TPR\-E, PII\-TPR\-B, PII\-TPR\-R | Busca/Lista TipoProteccion (devuelve todos) |
| GET | /tiposproteccion/{id}/subtipos | q \+ s | Lista\[TipoProteccionOutput] | PII\-TPR\-V, PII\-TPR\-C, PII\-TPR\-E, PII\-TPR\-B, PII\-TPR\-R, PII\-INV\-V, PII\-INV\-C, PII\-INV\-E | Devuelve una lista paginada de tipos de protección activos asociados a un tipo de protección cuyo id es el que se pasa en la url. |
| GET | /tiposproteccion/{id}/subtipos/todos | q \+ s | Lista\[TipoProteccionOutput] | PII\-TPR\-V, PII\-TPR\-C, PII\-TPR\-E, PII\-TPR\-B, PII\-TPR\-R, PII\-INV\-V, PII\-INV\-C, PII\-INV\-E | Devuelve una lista paginada de tipos de protección activos y no activos asociados a un tipo de protección cuyo id es el que se pasa en la url. |
| PUT | /tiposproteccion/{id} | TipoProteccionInput | TipoProteccionOutput | PII\-TPR\-E, | Modifica un TipoProteccion |
| PATCH | /tiposproteccion/{id}/activar |  | TipoProteccionOutput | PII\-TPR\-R | Activa un TipoProteccion |
| PATCH | /tiposproteccion/{id}/desactivar |  | TipoProteccionOutput | PII\-TPR\-B | Desactiva un TipoProteccion |

  


### Invención Gastos



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /invenciongastos | InvencionGasto | InvencionGasto | PII\-INV\-E | Crea un registro de tipo InvencionGasto |
| PUT | /invenciongastos/{id} | InvencionGasto | InvencionGasto | PII\-INV\-E | Modifica un registro de tipo InvencionGasto |




