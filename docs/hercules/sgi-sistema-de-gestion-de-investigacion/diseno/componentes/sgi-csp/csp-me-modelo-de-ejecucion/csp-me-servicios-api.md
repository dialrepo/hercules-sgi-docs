# Hércules : CSP\-ME \- Servicios API















  


### ModeloEjecucion



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /modeloejecuciones | ModeloEjecucion |  | CSP\-ME\-C | Crea ModeloEjecucion |
| GET | /modeloejecuciones | q \+ s | Lista\[ModeloEjecucion] | CSP\-ME\-V | Busca / Lista ModeloEjecucion (sólo devuelve los activos) |
| GET | /modeloejecuciones/todos | q \+ s | Lista\[ModeloEjecucion] | CSP\-ME\-V | Busca / Lista ModeloEjecucion (devuelve todos) |
| GET | /modeloejecuciones/{id} |  | ModeloEjecucion | CSP\-ME\-V | Retorna el detalle de ModeloEjecucion |
| PUT | /modeloejecuciones/{id} | ModeloEjecucion |  | CSP\-ME\-E | Modifica ModeloEjecucion |
| PATCH | /modeloejecuciones/{id}/desactivar |  | ModeloEjecucion |  | Desactiva ModeloEjecucion |
| PATCH | /modeloejecuciones/{id}/reactivar |  | ModeloEjecucion |  | Reactiva ModeloEjecucion |
| Listar \- Subentidades | | | | | |
| GET | /modeloejecuciones/{id}/modelotipofases | q \+ s | Lista\[ModeloTipoFase] | CSP\-ME\-V | Listado de ModeloTipoFase (sólo devuelve los activos) |
| GET | /modeloejecuciones/{id}/modelotipofases/convocatoria | q \+ s | Lista\[ModeloTipoFase] | CSP\-ME\-V | Listado de ModeloTipoFase activos de convocatoria del ModeloEjecucion (sólo devuelve los activos) |
| GET | /modeloejecuciones/{id}/modelotipofases/proyecto | q \+ s | Lista\[ModeloTipoFase] | CSP\-ME\-V | Listado de ModeloTipoFase activos de proyecto del ModeloEjecucion (sólo devuelve los activos) |
| GET | /modeloejecuciones/{id}/modelotipodocumentos | q \+ s | Lista\[ModeloTipoDocumento] | CSP\-ME\-V | Listado de ModeloTipoDocumento del ModeloEjecucion (sólo devuelve los activos) |
| GET | /modeloejecuciones/{id}/modelotipoenlaces | q \+ s | Lista\[ModeloTipoEnlace] | CSP\-ME\-V | Listado de ModeloTipoEnlace del ModeloEjecucion (sólo devuelve los activos) |
| GET | /modeloejecuciones/{id}/modelotipofinalidades | q \+ s | Lista\[ModeloTipoFinalidad] | CSP\-ME\-V | Listado de ModeloTipoFinalidad del ModeloEjecucion (sólo devuelve los activos) |
| GET | /modeloejecuciones/{id}/modelotipohitos | q \+ s | Lista\[ModeloTipoHito] | CSP\-ME\-V | Listado de ModeloHItoModelo del ModeloEjecucion (sólo devuelve los activos) |
| GET | /modeloejecuciones/{id}/modelotipohitos/convocatoria | q \+ s | Lista\[ModeloTipoHito] | CSP\-ME\-V | Listado de ModeloHItoModelo activos de convocatoria del ModeloEjecucion (sólo devuelve los activos) |
| GET | /modeloejecuciones/{id}/modelotipohitos/solicitud | q \+ s | Lista\[ModeloTipoHito] | CSP\-ME\-V | Listado ModeloTipoHito activos de solicitud del ModeloEjecucion (sólo devuelve los activos) |
| GET | /modeloejecuciones/{id}/modelotipohitos/proyecto | q \+ s | Lista\[ModeloTipoHito] | CSP\-ME\-V | Listado de ModeloTipoHito activos de proyecto del ModeloEjecucion (sólo devuelve los activos) |
| GET | /modeloejecuciones/{id}/modelounidades | q \+ s | Lista\[ModeloUnidadGestion] | CSP\-ME\-V | Listado de ModeloUnidadGestion del ModeloEjecucion (sólo devuelve los activos) |

### ModeloTipoFase



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /modelotipofases | ModeloTipoFase |  | CSP\-ME\-C, CSP\-ME\-E | Añade ModeloTipoFase al ModeloEjecucion |
| PUT | /modelotipofases/{id} | ModeloTipoFase |  | CSP\-ME\-C, CSP\-ME\-E | Modifica ModeloTipoFase de ModeloEjecucion |
| DELETE | /modelotipofases/{id} |  |  | CSP\-ME\-C, CSP\-ME\-E | Elimina ModeloTipoFase de ModeloEjecucion |
| GET | /modelotipofases/{id} |  | ModeloTipoFase | CSP\-ME\-C, CSP\-ME\-E | Detalle de ModeloTipoFase de ModeloEjecucion |

### ModeloTipoDocumento



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /modelotipodocumentos | ModeloTipoDocumento |  | CSP\-ME\-C, CSP\-ME\-E | Añade ModeloTipoDocumento en ModeloEjecucion |
| DELETE | /modelotipodocumentos/{id} |  |  | CSP\-ME\-C, CSP\-ME\-E | Elimina ModeloTipoDocumento de ModeloEjecucion |
| GET | /modelotipodocumentos/{id} |  | ModeloTipoDocumento | CSP\-ME\-C, CSP\-ME\-E | Detalle de ModeloTipoDocumento de ModeloEjecucion |

### ModeloTipoEnlace



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /modelotipoenlaces | ModeloTipoEnlace |  | CSP\-ME\-C, CSP\-ME\-E | Añade ModeloTipoEnlace en ModeloEjecucion |
| DELETE | /modelotipoenlaces/{id} |  |  | CSP\-ME\-C, CSP\-ME\-E | Elimina ModeloTipoEnlace de ModeloEjecucion |
| GET | /modelotipoenlaces/{id} |  | ModeloTipoEnlace | CSP\-ME\-C, CSP\-ME\-E | Detalle de ModeloTipoEnlace de ModeloEjecucion |

### ModeloTipoFinalidad



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /modelotipofinalidades | ModeloTipoFinalidades |  | CSP\-ME\-C, CSP\-ME\-E | Añade ModeloTipoFinalidades en ModeloEjecucion |
| DELETE | /modelotipofinalidades/{id} |  |  | CSP\-ME\-C, CSP\-ME\-E | Elimina ModeloTipoFinalidades de ModeloEjecucion |
| GET | /modelotipofinalidades/{id} |  | ModeloTipoEnlace | CSP\-ME\-C, CSP\-ME\-E | Detalle de ModeloTipoFinalidades de ModeloEjecucion |

### ModeloTipoHito



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /modelotipohito | ModeloTipoHito |  | CSP\-ME\-C, CSP\-ME\-E | Añade ModeloTipoHito en ModeloEjecucion |
| PUT | /modelotipohito/{id} | ModeloTipoHito |  | CSP\-ME\-C, CSP\-ME\-E | Modifica ModeloTipoHito de ModeloEjecucion |
| DELETE | /modelotipohito/{id} |  |  | CSP\-ME\-C, CSP\-ME\-E | Elimina ModeloTipoHito de ModeloEjecucion |
| GET | /modelotipohito/{id} |  | ModeloTipoHito | CSP\-ME\-C, CSP\-ME\-E | Detalle de ModeloTipoHito de ModeloEjecucion |

### TipoFase



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /tipofases | TipoFase |  | CSP\-TFAS\-C | Crea TipoFase |
| GET | /tipofases | q \+ s | Lista\[TipoFase] | CSP\-TFAS\-V | Busca / Lista TipoFase (sólo devuelve los activos) |
| GET | /tipofases/todos | q \+ s | Lista\[TipoFase] | CSP\-TFAS\-V | Busca / Lista TipoFase (devuelve todos) |
| GET | /tipofases/{id} |  | TipoFase | CSP\-TFAS\-V | Retorna el detalle de TipoFase |
| PUT | /tipofases/{id} | TipoFase |  | CSP\-TFAS\-E | Modifica TipoFase |
| PATCH | /tipofases/{id}/desactivar |  | TipoFase |  | Desactiva TipoFase |
| PATCH | /tipofases/{id}/reactivar |  | TipoFase |  | Reactiva TipoFase |

### TipoEnlace



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /tipoenlaces | TipoEnlace |  | CSP\-TENL\-C | Crea TipoEnlace |
| GET | /tipoenlaces | q \+ s | Lista\[TipoEnlace] | CSP\-TENL\-V | Busca / Lista TipoEnlace  (sólo devuelve los activos) |
| GET | /tipoenlaces/todos | q \+ s | Lista\[TipoEnlace] | CSP\-TENL\-V | Busca / Lista TipoEnlace (devuelve todos) |
| GET | /tipoenlaces/{id} |  | TipoEnlace | CSP\-TENL\-V | Retorna el detalle de TipoEnlace |
| PUT | /tipoenlaces/{id} | TipoEnlace |  | CSP\-TENL\-E | Modifica TipoEnlace |
| PATCH | /tipoenlaces/{id}/desactivar |  | TipoEnlace |  | Desactiva TipoEnlace |
| PATCH | /tipoenlaces/{id}/reactivar |  | TipoEnlace |  | Reactiva TipoEnlace |

### TipoDocumento



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /tipodocumentos | TipoDocumento |  | CSP\-TDOC\-C | Crea TipoDocumento |
| GET | /tipodocumentos |  | Lista\[TipoDocumento] | CSP\-TDOC\-V | Busca / Lista TipoDocumento  (sólo devuelve los activos) |
| GET | /tipodocumentos/todos |  | Lista\[TipoDocumento] | CSP\-TDOC\-V | Busca / Lista TipoDocumento  (devuelve todos) |
| GET | /tipodocumentos/{id} |  | TipoDocumento | CSP\-TDOC\-V | Retorna el detalle de TipoDocumento |
| PUT | /tipodocumentos/{id} | TipoDocumento |  | CSP\-TDOC\-E | Modifica TipoDocumento |
| PATCH | /tipodocumentos/{id}/desactivar |  | TipoDocumento |  | Desactiva TipoDocumento |
| PATCH | /tipodocumentos/{id}/reactivar |  | TipoDocumento |  | Reactiva TipoDocumento |

### TipoFinalidad



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /tipofinalidades | TipoFinalidad |  | CSP\-TFIN\-C | Crea TipoFinalidad |
| GET | /tipofinalidades |  | Lista\[TipoFinalidad] | CSP\-TFIN\-V | Busca / Lista TipoFinalidad  (sólo devuelve los activos) |
| GET | /tipofinalidades/todos |  | Lista\[TipoFinalidad] | CSP\-TFIN\-V | Busca / Lista TipoFinalidad (devuelve todos) |
| GET | /tipofinalidades/{id} |  | TipoFinalidad | CSP\-TFIN\-V | Retorna el detalle de TipoFinalidad |
| PUT | /tipofinalidades/{id} | TipoFinalidad |  | CSP\-TFIN\-E | Modifica TipoFinalidad |
| PATCH | /tipofinalidades/{id}/desactivar |  | TipoFinalidad |  | Desactiva TipoFinalidad |
| PATCH | /tipofinalidades/{id}/reactivar |  | TipoFinalidad |  | Reactiva TipoFinalidad |

  


### TipoHito



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /tipohitos | TipoHito |  | CSP\-THIT\-C | Crea TipoHito |
| GET | /tipohitos |  | Lista\[TipoHito] | CSP\-THIT\-V | Busca / Lista TipoHito   (sólo devuelve los activos) |
| GET | /tipohitos/todos |  | Lista\[TipoHito] | CSP\-THIT\-V | Busca / Lista TipoHito (devuelve todos) |
| GET | /tipohitos/{id} |  | TipoHito | CSP\-THIT\-V | Retorna el detalle de TipoHito |
| PUT | /tipohitos/{id} | TipoHito |  | CSP\-THIT\-E | Modifica TipoHito |
| PATCH | /tipohitos/{id}/desactivar |  | TipoHito |  | Desactiva TipoHito |
| PATCH | /tipohitos/{id}/reactivar |  | TipoHito |  | Reactiva TipoHito |

### ModeloUnidad



| **Método** | **URL** | **Parámetros** | **Respuesta** | **Permisos** | **Descripción** |
| --- | --- | --- | --- | --- | --- |
| POST | /modelounidades | ModeloUnidad |  | CSP\-MU\-C, CSP\-MU\-E | Añade ModeloUnidad al ModeloEjecucion |
| GET | /modelounidades | q \+ s | Lista\[ModeloUnidad] | CSP\-MU\-C, CSP\-MU\-E | Busca / Lista ModeloUnidad (sólo devuelve los activos) |
| GET | /modelounidades/todos | q \+ s | Lista\[ModeloUnidad] | CSP\-MU\-C, CSP\-MU\-E | Busca / Lista ModeloUnidad (devuelve todos) |
| DELETE | /modelounidades/{id} |  |  | CSP\-MU\-C, CSP\-MU\-E | Elimina ModeloUnidad de ModeloEjecucion |
| GET | /modelounidades/{id} |  | ModeloUnidad | CSP\-MU\-C, CSP\-MU\-E | Detalle de ModeloUnidad de ModeloEjecucion |




