# Hércules : CSP\-CON \- Servicios API











### TipoAmbitoGeografico



|  | Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- | --- |
|  | POST | /tipoambitogeograficos | TipoAmbitoGeografico |  | CSP\-TAMG\-C | Crea TipoAmbitoGeografico |
|  | PUT | /tipoambitogeograficos/{id} | TipoAmbitoGeografico |  | CSP\-TAMG\-E | Modifica TipoAmbitoGeografico |
|  | DELETE | /tipoambitogeograficos/{id} |  |  | CSP\-TAMG\-B | Desactiva TipoAmbitoGeografico |
| (error) | HEAD | /tipoambitogeograficos/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia de la TipoAmbitoGeografico con el id indicado |
|  | GET | /tipoambitogeograficos/{id} |  | TipoAmbitoGeografico | CSP\-TAMG\-V | Detalle de TipoAmbitoGeografico |
|  | GET | /tipoambitogeograficos | q\+s | Lista\[TipoAmbitoGeografico] | CSP\-TAMG\-V | Listado de TipoAmbitoGeografico (sólo devuelve los activos) |
|  | GET | /tipoambitogeograficos/todos | q\+s | Lista\[TipoAmbitoGeografico] | CSP\-TAMG\-V | Listado de TipoAmbitoGeografico (devuelve todos) |

### TipoOrigenFuenteFinanciacion



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| GET | /tipoorigenfuentefinanciaciones | q \+ s | Lista\[TipoOrigenFuenteFinanciacion] | CSP\-TFF\-ECSP\-TFF\-C | Listado de TipoOrigenFuenteFinanciacion (sólo devuelve los activos) |

### FuenteFinanciacion



|  | Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- | --- |
|  | POST | /fuentefinanciaciones | TipoFuenteFinanciacion |  | CSP\-TFF\-C | Crea TipoFuenteFinanciacion |
|  | PUT | /fuentefinanciaciones/{id} | TipoFuenteFinanciacion |  | CSP\-TFF\-E | Modifica TipoFuenteFinanciacion |
|  | PATCH | /fuentefinanciaciones/{id}/desactivar |  |  | CSP\-TFF\-B | Desactiva TipoFuenteFinanciacion |
|  | PATCH | /fuentefinanciaciones/{id}/reactivar |  |  |  | Reactiva TipoFuenteFinanciacion |
| (error) | HEAD | /fuentefinanciaciones/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia de la TipoFuenteFinanciacion con el id indicado |
|  | GET | /fuentefinanciaciones/{id} |  | TipoFuenteFinanciacion | CSP\-TFF\-V | Detalle de TipoFuenteFinanciacion |
|  | GET | /fuentefinanciaciones | q\+s | Lista\[TipoFuenteFinanciacion] | CSP\-TFF\-V | Listado de TipoFuenteFinanciacion (sólo devuelve los activos) |
|  | GET | /fuentefinanciaciones/todos | q\+s | Lista\[TipoFuenteFinanciacion] | CSP\-TFF\-V | Listado de TipoFuenteFinanciacion (devuelve todos) |

### TipoFinanciacion



|  | Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- | --- |
|  | POST | /tipofinanciaciones | TipoFinanciacion |  | CSP\-TFINAN\-C | Crea TipoFinanciacion |
|  | PUT | /tipofinanciaciones/{id} | TipoFinanciacion |  | CSP\-TFINAN\-E | Modifica TipoFinanciacion |
|  | PATCH | /tipofinanciaciones/{id}/desactivar |  |  | CSP\-TFINAN\-B | Desactiva TipoFinanciacion |
|  | PATCH | /tipofinanciaciones/{id}/reactivar |  |  |  | Reactiva TipoFinanciacion |
| (error) | HEAD | /tipofinanciaciones/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia de la TipoFinanciacion con el id indicado |
|  | GET | /tipofinanciaciones/{id} |  | TipoFinanciacion | CSP\-TFINAN\-V | Detalle de TipoFinanciacion |
|  | GET | /tipofinanciaciones |  |  | CSP\-TFINAN\-V | Listado de TipoFinanciacion (sólo devuelve los activos) |
|  | GET | /tipofinanciaciones/todos |  |  | CSP\-TFINAN\-V | Listado de TipoFinanciacion (devuelve todos) |

### TipoRegimenConcurrencia



|  | Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- | --- |
|  | POST | /tiporegimenconcurrencias | TipoRegimenConcurrencia |  | CSP\-TRCON\-C | Crea TipoRegimenConcurrencia |
|  | PUT | /tiporegimenconcurrencias/{id} | TipoRegimenConcurrencia |  | CSP\-TRCON\-E | Modifica TipoRegimenConcurrencia |
|  | DELETE | /tiporegimenconcurrencias/{id} |  |  | CSP\-TRCON\-B | Desactiva TipoRegimenConcurrencia |
| (error) | HEAD | /tiporegimenconcurrencias/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia de la TipoRegimenConcurrencia con el id indicado |
|  | GET | /tiporegimenconcurrencias/{id} |  | TipoRegimenConcurrencia | CSP\-TRCON\-V | Detalle de TipoRegimenConcurrencia |
|  | GET | /tiporegimenconcurrencias | q\+s | Lista\[TipoRegimenConcurrencia] | CSP\-TRCON\-V | Listado de TipoRegimenConcurrencia (sólo devuelve los activos) |
|  | GET | /tiporegimenconcurrencias/todos | q\+s | Lista\[TipoRegimenConcurrencia] | CSP\-TRCON\-V | Listado de TipoRegimenConcurrencia (devuelve todos) |

### ConvocatoriaEntidadGestora



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /convocatoriaentidadgestoras | ConvocatoriaEntidadGestora |  | CSP\-CENTGES\-C | Crea ConvocatoriaEntidadGestora |
| PUT | /convocatoriaentidadgestoras/{id} | ConvocatoriaEntidadGestora |  | CSP\-CENTGES\-E | Modifica ConvocatoriaEntidadGestora |
| DELETE | /convocatoriaentidadgestoras/{id} |  |  | CSP\-CENTGES\-B | Elimina ConvocatoriaEntidadGestora |

### ConceptoGasto



|  | Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- | --- |
|  | POST | /conceptogastos | ConceptoGasto |  | CSP\-CONGAS\-C | Crea ConceptoGasto |
|  | PUT | /conceptogastos/{id} | ConceptoGasto |  | CSP\-CONGAS\-E | Modifica ConceptoGasto |
|  | PATCH | /conceptogastos/{id}/desactivar |  |  | CSP\-CONGAS\-B | Desactiva ConceptoGasto |
|  | PATCH | /conceptogastos/{id}/reactivar |  |  |  | Reactiva ConceptoGasto |
| (error) | HEAD | /conceptogastos/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia de la ConceptoGasto con el id indicado |
|  | GET | /conceptogastos/{id} |  | ConceptoGasto | CSP\-CONGAS\-V | Detalle de ConceptoGasto |
|  | GET | /conceptogastos | q\+s | Lista\[ConceptoGasto] | CSP\-CONGAS\-V | Listado de ConceptoGasto (sólo devuelve los activos) |
|  | GET | /conceptogastos/todos | q\+s | Lista\[ConceptoGasto] | CSP\-CONGAS\-V | Listado de ConceptoGasto (devuelve todos) |

### Programa



|  | Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- | --- |
|  | POST | /programas | Programa |  | CSP\-PROG\-C | Crea Programa (un programa que no tiene padre se considera un Plan) |
|  | PUT | /programas/{id} | Programa |  | CSP\-PROG\-E | Modifica Programa |
|  | PATCH | /programas/{id}/desactivar |  |  | CSP\-PROG\-B | Desactiva Programa |
|  | PATCH | /programas/{id}/reactivar |  |  |  | Reactiva Programa |
| (error) | HEAD | /programas/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia de la Programa con el id indicado |
|  | GET | /programas/{id} |  | Programa | CSP\-PROG\-V | Detalle de Programa |
|  | GET | /programas | q\+s | Lista\[Programa] | CSP\-PROG\-V | Listado de Programa (sólo devuelve los activos) |
|  | | | | | | |
|  | GET | /programas/plan | q\+s | Lista\[Programa] | CSP\-PROG\-V | Listado de Programas cuyo padre es null (son los Planes) (sólo devuelve los activos) |
|  | GET | /programas/plan/todos | q\+s | Lista\[Programa] | CSP\-PROG\-V | Listado de Programas cuyo padre es null (son los Planes) (devuelve todos) |
|  | GET | /programas/{id}/hijos |  | Lista\[Programa] | CSP\-PROG\-V | Listado de Programas hijos directos del Programa cuyo id se indica (sólo devuelve los activos) |

### AreaTematica



|  | Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- | --- |
|  | POST | /areatematicas | AreaTematica |  | CSP\-AREA\-C | Crea AreaTematica (un area temática que no tiene padre se considera una Grupo de Areas Temáticas) |
|  | PUT | /areatematicas/{id} | AreaTematica |  | CSP\-AREA\-E | Modifica AreaTematica |
|  | PATCH | /areatematicas/{id}/desactivar |  |  | CSP\-AREA\-B | Desactiva AreaTematica |
|  | PATCH | /areatematicas/{id}/reactivar |  |  |  | Reactiva AreaTematica |
| (error) | HEAD | /areatematicas/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia de la AreaTematica con el id indicado |
|  | GET | /areatematicas/{id} |  | AreaTematica | CSP\-AREA\-V | Detalle de AreaTematica |
|  | GET | /areatematicas | q\+s | Lista\[AreaTematica] | CSP\-AREA\-V | Listado de AreaTematica  (sólo devuelve los activos) |
|  | | | | | | |
|  | GET | /areatematicas/grupo | q\+s | Lista\[AreaTematica] | CSP\-AREA\-V | Listado de AreaTematica cuyo padre es null (son los Grupos de Areas Temáticas) (solo devuelve los activos) |
|  | GET | /areatematicas/grupo/todos | q\+s | Lista\[AreaTematica] | CSP\-AREA\-V | Listado de AreaTematica cuyo padre es null (son los Grupos de Areas Temáticas) (devuelve todos) |
|  | GET | /areatematicas/{id}/hijos |  | Lista\[AreaTematica] | CSP\-AREA\-V | Listado de AreaTematica hijos directos del AreaTematica cuyo id se indica (sólo devuelve los activos) |

### ConvocatoriaAreaTematica



|  | Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- | --- |
|  | POST | /convocatoriaareatematicas | ConvocatoriaAreaTematica |  | CSP\-CATEM\-C | Crea ConvocatoriaAreaTematica |
|  | PUT | /convocatoriaareatematicas/{id} | ConvocatoriaAreaTematica |  | CSP\-CATEM\-E | Modifica ConvocatoriaAreaTematica |
|  | DELETE | /convocatoriaareatematicas/{id} |  |  | CSP\-CATEM\-B | Elimina ConvocatoriaAreaTematica |
| (error) | HEAD | /convocatoriaareatematicas/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia de la ConvocatoriaAreaTematica con el id indicado |
|  | GET | /convocatoriaareatematicas/{id} |  | ConvocatoriaAreaTematica | CSP\-CATEM\-V | Detalle de ConvocatoriaAreaTematica |

  


### ConvocatoriaEntidadConvocante



|  | Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- | --- |
|  | POST | /convocatoriaentidadconvocantes | ConvocatoriaEntidadConvocante |  | CSP\-CECON\-C | Crea ConvocatoriaEntidadConvocante |
|  | PUT | /convocatoriaentidadconvocantes/{id} | ConvocatoriaEntidadConvocante |  | CSP\-CECON\-E | Modifica ConvocatoriaEntidadConvocante |
|  | DELETE | /convocatoriaentidadconvocantes/{id} |  |  | CSP\-CECON\-B | Elimina ConvocatoriaEntidadConvocante |
| (error) | HEAD | /convocatoriaentidadconvocantes/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia de la ConvocatoriaEntidadConvocante con el id indicado |
|  | GET | /convocatoriaentidadconvocantes/{id} |  | ConvocatoriaEntidadConvocante | CSP\-CECON\-V | Detalle de ConvocatoriaEntidadConvocante |

### ConvocatoriaEntidadFinanciadora



|  | Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- | --- |
|  | POST | /convocatoriaentidadfinanciadoras | ConvocatoriaEntidadFinanciadora |  | CSP\-CEFIN\-C | Crea ConvocatoriaEntidadFinanciadora |
|  | PUT | /convocatoriaentidadfinanciadoras/{id} | ConvocatoriaEntidadFinanciadora |  | CSP\-CEFIN\-E | Modifica ConvocatoriaEntidadFinanciadora |
|  | DELETE | /convocatoriaentidadfinanciadoras/{id} |  |  | CSP\-CEFIN\-B | Elimina ConvocatoriaEntidadFinanciadora |
| (error) | HEAD | /convocatoriaentidadfinanciadoras/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia de la ConvocatoriaEntidadFinanciadora con el id indicado |
|  | GET | /convocatoriaentidadfinanciadoras/{id} |  | ConvocatoriaEntidadFinanciadora | CSP\-CEFIN\-V | Detalle de ConvocatoriaEntidadFinanciadora |

### ConvocatoriaEnlace



|  | Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- | --- |
|  | POST | /convocatoriaenlaces | ConvocatoriaEnlace |  | CSP\-CENL\-C | Crea ConvocatoriaEnlace |
|  | PUT | /convocatoriaenlaces/{id} | ConvocatoriaEnlace |  | CSP\-CENL\-E | Modifica ConvocatoriaEnlace |
|  | DELETE | /convocatoriaenlaces/{id} |  |  | CSP\-CENL\-B | Elimina ConvocatoriaEnlace |
| (error) | HEAD | /convocatoriaenlaces/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia de la ConvocatoriaEnlace con el id indicado |
|  | GET | /convocatoriaenlaces/{id} |  | ConvocatoriaEnlace | CSP\-CENL\-V | Detalle de ConvocatoriaEnlace |

### ConvocatoriaFase



|  | Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- | --- |
|  | POST | /convocatoriafases | ConvocatoriaFase |  | CSP\-CFAS\-C | Crea ConvocatoriaFase |
|  | PUT | /convocatoriafases/{id} | ConvocatoriaFase |  | CSP\-CFAS\-E | Modifica ConvocatoriaFase |
|  | DELETE | /convocatoriafases/{id} |  |  | CSP\-CFAS\-B | Elimina ConvocatoriaFase |
| (error) | HEAD | /convocatoriafases/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia de la ConvocatoriaFase con el id indicado |
|  | GET | /convocatoriafases/{id} |  | ConvocatoriaFase | CSP\-CFAS\-V | Detalle de ConvocatoriaFase |

### ConvocatoriaPeriodoJustificacion



|  | Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- | --- |
|  | PATCH | /convocatoriaperiodojustificaciones/{idConvocatoria} | Lista\[ConvocatoriaPeriodoJustificacion] |  | CSP\-CPJUS\-E | Actualiza la lista de ConvocatoriaPeriodoJustificacion de la Convocatoria con la lista pasada como parámetro (crea, actualiza y/o elimina según corresponda). |
| (error) | HEAD | /convocatoriaperiodojustificaciones/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia de la ConvocatoriaPeriodoJustificacion con el id indicado |
|  | GET | /convocatoriaperiodojustificaciones/{id} |  | ConvocatoriaPeriodoJustificacion | CSP\-CPJUS\-V | Detalle de ConvocatoriaPeriodoJustificacion |

### ConvocatoriaPeriodoSeguimientoCientifico



|  | Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- | --- |
|  | PATCH | /convocatoriaperiodoseguimientocientificos/{idConvocatoria} | Lista\[ConvocatoriaPeriodoSeguimientoCientifico] |  | CSP\-CPSCI\-E | Actualiza la lista de ConvocatoriaPeriodoSeguimientoCientifico de la Convocatoria con la lista pasada como parámetro (crea, actualiza y/o elimina según corresponda). |
| (error) | HEAD | /convocatoriaperiodoseguimientocientificos/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia de la ConvocatoriaPeriodoSeguimientoCientifico con el id indicado |
|  | GET | /convocatoriaperiodoseguimientocientificos/{id} |  | ConvocatoriaPeriodoSeguimientoCientifico | CSP\-CPSCI\-V | Detalle de ConvocatoriaPeriodoSeguimientoCientifico |

### ConvocatoriaHito



|  | Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- | --- |
|  | POST | /convocatoriahitos | ConvocatoriaHito |  | CSP\-CHIT\-C | Crea ConvocatoriaHito |
|  | PUT | /convocatoriahitos/{id} | ConvocatoriaHito |  | CSP\-CHIT\-E | Modifica ConvocatoriaHito |
|  | DELETE | /convocatoriahitos/{id} |  |  | CSP\-CHIT\-B | Elimina ConvocatoriaHito |
| (error) | HEAD | /convocatoriahitos/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia de la ConvocatoriaHito con el id indicado |
|  | GET | /convocatoriahitos/{id} |  | ConvocatoriaHito | CSP\-CHIT\-V | Detalle de ConvocatoriaHito |

### ConvocatoriaDocumento



|  | Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- | --- |
|  | POST | /convocatoriadocumentos | ConvocatoriaDocumento |  |  | Crea ConvocatoriaDocumento |
|  | PUT | /convocatoriadocumentos/{id} | ConvocatoriaDocumento |  |  | Modifica ConvocatoriaDocumento |
|  | DELETE | /convocatoriadocumentos/{id} |  |  |  | Elimina ConvocatoriaDocumento |
| (error) | HEAD | /convocatoriadocumentos/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia de la ConvocatoriaDocumento con el id indicado |
|  | GET | /convocatoriadocumentos/{id} |  | ConvocatoriaDocumento |  | Detalle de ConvocatoriaDocumento |

### RequisitoIp



|  | Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- | --- |
|  | POST | /convocatoria\-requisitoips | RequisitoIp |  |  | Crea RequisitoIp |
|  | PUT | /convocatoria\-requisitoips/{id} | Convocatoria |  |  | Modifica RequisitoIp |
| (error) | HEAD | /convocatoria\-requisitoips/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia de la RequisitoIp con el id indicado |
|  | GET | /convocatoria\-requisitoips/{id} | Convocatoria | RequisitoIp |  | Detalle RequisitoIp |

### RequisitoEquipo



|  | Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- | --- |
|  | POST | /convocatoria\-requisitoequipos | RequisitoEquipo |  |  | Crea RequisitoEquipo |
|  | PUT | /convocatoria\-requisitoequipos/{id} | Convocatoria |  |  | Modifica RequisitoEquipo |
| (error) | HEAD | /convocatoria\-requisitoequipos/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia de la RequisitoEquipo con el id indicado |
|  | GET | /convocatoria\-requisitoequipos/{id} | Convocatoria | RequisitoEquipo |  | Detalle RequisitoEquipo |

### ConvocatoriaConceptoGasto



|  | Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- | --- |
|  | POST | /convocatoriaconceptogastos | ConvocatoriaConceptoGasto |  |  | Crea ConvocatoriaConceptoGasto |
|  | PUT | /convocatoriaconceptogastos/{id} | ConvocatoriaConceptoGasto |  |  | Modifica ConvocatoriaConceptoGasto |
|  | DELETE | /convocatoriaconceptogastos/{id} |  |  |  | Elimina ConvocatoriaConceptoGasto |
| (error) | HEAD | /convocatoriaconceptogastos/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia de la ConvocatoriaConceptoGasto con el id indicado |
|  | GET | /convocatoriaconceptogastos/{id} |  | ConvocatoriaConceptoGasto |  | Detalle de ConvocatoriaConceptoGasto |

### ConvocatoriaConceptoGastoCodigoEc



|  | Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- | --- |
|  | POST | /convocatoriaconceptogastocodigoecs | ConvocatoriaConceptoGastoCodigoEc |  |  | Crea ConvocatoriaConceptoGastoCodigoEc |
|  | PUT | /convocatoriaconceptogastocodigoecs/{id} | ConvocatoriaConceptoGastoCodigoEc |  |  | Modifica ConvocatoriaConceptoGastoCodigoEc |
|  | DELETE | /convocatoriaconceptogastocodigoecs/{id} |  |  |  | Elimina ConvocatoriaConceptoGastoCodigoEc |
| (error) | HEAD | /convocatoriaconceptogastocodigoecs/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia de la ConvocatoriaConceptoGastoCodigoEc con el id indicado |
|  | GET | /convocatoriaconceptogastocodigoecs/{id} |  | ConvocatoriaConceptoGastoCodigoEc |  | Detalle de ConvocatoriaConceptoGastoCodigoEc |

### DocumentoRequeridoSolicitud



|  | Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- | --- |
|  | POST | /documentorequiridosolicitudes | DocumentoRequeridoSolicitud |  |  | Crea DocumentoRequeridoSolicitud |
|  | PUT | /documentorequiridosolicitudes/{id} | DocumentoRequeridoSolicitud |  |  | Modifica DocumentoRequeridoSolicitud |
|  | DELETE | /documentorequiridosolicitudes/{id} |  |  |  | Elimina DocumentoRequeridoSolicitud |
| (error) | HEAD | /documentorequiridosolicitudes/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia de la DocumentoRequeridoSolicitud con el id indicado |
|  | GET | /documentorequiridosolicitudes/{id} |  | DocumentoRequeridoSolicitud |  | Detalle de DocumentoRequeridoSolicitud |

### ConfiguracionSolicitud



|  | Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- | --- |
|  | POST | /convocatoria\-configuracionsolicitudes | ConfiguracionSolicitud |  |  | Crea ConfiguracionSolicitud |
|  | PUT | /convocatoria\-configuracionsolicitudes/{id} | Convocatoria |  |  | Modifica ConfiguracionSolicitud |
| (error) | HEAD | /convocatoria\-configuracionsolicitudes/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia de la ConfiguracionSolicitud con el id indicado |
|  | GET | /convocatoria\-configuracionsolicitudes/{id} | Convocatoria | ConfiguracionSolicitud |  | Detalle ConfiguracionSolicitud |
|  | GET | /convocatoria\-configuracionsolicitudes/{id}/documentorequiridosolicitudes | Convocatoria | Listado\[DocumentoRequeridoSolicitud] |  | Listado DocumentoRequeridoSolicitud de una ConfiguracionSolicitud |

### Convocatoria

FALTA AÑADIR VALIDACIÓN DE QUE NO EXISTAN SOLICITUDES ASOCIADAS O PROYECTOS (update y delete)



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /convocatorias | Convocatoria |  | CSP\-CONV\-C | Crea Convocatoria |
| PUT | /convocatorias/{id} | Convocatoria |  | CSP\-CONV\-E | Modifica Convocatoria |
| PATCH | /convocatorias/{id}/desactivar |  |  |  | Desactiva Convocatoria |
| PATCH | /convocatorias/{id}/reactivar |  |  |  | Reactiva Convocatoria |
| HEAD | /convocatorias/{id} |  | HTTP 200 / HTTP 204 |  | Comprueba la existencia de la Convocatoria con el id indicado |
| GET | /convocatorias/{id} |  | Convocatoria | CSP\-CONV\-V | Detalle de Convocatoria |
| GET | /convocatorias | q\+s | Lista\[Convocatoria] | CSP\-CONV\-V | Listado de Convocatoria (sólo devuelve los activos) |
| GET | /convocatorias/todos | q\+s | Lista\[Convocatoria] | CSP\-CONV\-V | Listado de Convocatoria (devuelve todos) |
| GET | /convocatorias/restringidos | q\+s | Lista\[Convocatoria] | CSP\-CONV\-V | Listado de Convocatoria (devuelve los activos restringidos por las unidades de gestión del usuario logueado) |
| GET | /convocatorias/todos/restringidos | q\+s | Lista\[Convocatoria] | CSP\-CONV\-V | Listado de Convocatoria (devuelve todos restringidos por las unidades de gestión del usuario logueado) |
| PATCH | /convocatorias/{id}/registrar |  |  |  | Registra la Convocatoria |
| HEAD | /convocatorias/{id}/vinculaciones |  | HTTP 200 → si la convocatoria tiene enlaces, fases, hitos o documentos vinculadosHTTP 204 → si la convocatoria no tiene enlaces, fases, hitos o documentos vinculados | CSP\-CONV\-V | Identificar si la convocatoria cuenta con enlaces, fases, hitos o documentos vinculados con el fin de permitir la edición de ciertos campos en los datos generales de la convocatoria. |
| HEAD | /convocatorias/{id}/modificable |  | HTTP 200 →Si tiene permisos (CSP\-CONV\-C o CSP\-CONV\-C\_\[unidadRef de laconvocatoria]) y la convocatoria no está registrada y si lo está no tiene Solicitudes o Proyectos por lo tanto SI es modificable.HTTP 204 →Si no tiene permisos (CSP\-CONV\-C o CSP\-CONV\-C\_\[unidadRef de laconvocatoria]) o la convocatoria está registrada y tiene Solicitudes o Proyectos. | CSP\-CONV\-V | Identificar si la convocatoria es modificable comprobando los permisos y si existen solicitudes o proyectos vinculados a la convocatoria con el fin de permitir la creación, modificación o eliminación de ciertas entidades relacionadas con la propia convocatoria. |
| GET | /convocatorias/{id}/unidadgestion |  | unidadGestionRef | CSP\-CONV\-V | UnidadGestionRef asignada a la Convocatoria |
| GET | /convocatorias/{id}/modeloejecucion |  | ModeloEjecucion | CSP\-CONV\-V | ModeloEjecucion asignado a la Convocatoria |
| HEAD | /convocatorias/{id}/registrable |  | HTTP 200 → si la convocatoria cumple las condiciones para pasar a estado registrada.HTTP 204 →si la convocatoria no cumple las condiciones para pasar a estado registrada. | CSP\-CONV\-V | Identificar si la convocatoria cumple las condiciones para poder pasar a estado registrada. |
|  | | | | | |
| GET | /convocatorias/{id}/convocatoriaentidadgestoras |  | Listado\[CovocatoriaEntidadGestora] |  | Listado CovocatoriaEntidadGestora de una convocatoria |
| GET | /convocatorias/{id}/convocatoriaareatematicas |  | Listado\[ConvocatoriaAreatematica] |  | Listado ConvocatoriaAreatematica de una convocatoria |
| GET | /convocatorias/{id}/convocatoriaentidadconvocantes |  | Listado\[ConvocatoriaEntidadConvocante] |  | Listado ConvocatoriaEntidadConvocante de una convocatoria |
| GET | /convocatorias/{id}/convocatoriaentidadfinanciadoras |  | Listado\[ConvocatoriaEntidadFinanciadora] |  | Listado ConvocatoriaEntidadFinanciadora de una convocatoria |
| GET | /convocatorias/{id}/convocatoriaenlaces |  | Listado\[ConvocatoriaEnlace] |  | Listado ConvocatoriaEnlace de una convocatoria |
| GET | /convocatorias/{id}/convocatoriafases |  | Listado\[ConvocatoriaFase] |  | Listado ConvocatoriaFase de una convocatori |
| GET | /convocatorias/{id}/convocatoriaperiodojustificaciones |  | Listado\[ConvocatoriaPeriodoJustificacion] |  | Listado ConvocatoriaPeriodoJustificacion de una convocatoria |
| GET | /convocatorias/{id}/convocatoriaperiodoseguimientocientificos |  | Listado\[ConvocatoriaPeriodoSeguimientoCientifico] |  | Listado ConvocatoriaPeriodoSeguimientoCientifico de una convocatoria |
| GET | /convocatorias/{id}/convocatoriahitos |  | Listado\[ConvocatoriaHito] |  | Listado ConvocatoriaHito de una convocatoria |
| GET | /convocatorias/{id}/convocatoriadocumentos |  | Listado\[ConvocatoriaDocumento] |  | Listado ConvocatoriaDocumento de una convocatoria |
| GET | /convocatorias/{id}/convocatoriagastos/permitidos |  | Listado\[ConvocatoriaGasto] |  | Listado ConvocatoriaGasto permitidos de una convocatoria |
| GET | /convocatorias/{id}/convocatoriagastos/nopermitidos |  | Listado\[ConvocatoriaGasto] |  | Listado ConvocatoriaGasto no permitidos de una convocatoria |
| GET | /convocatorias/{id}/convocatoriagastocodigoec/permitidos |  | Listado\[ConvocatoriaGastoCodigoEc] |  | Listado ConvocatoriaGastoCodigoEc permitidos de una convocatoria |
| GET | /convocatorias/{id}/convocatoriagastocodigoec/nopermitidos |  | Listado\[ConvocatoriaGastoCodigoEc] |  | Listado ConvocatoriaGastoCodigoEc no permitidos de una convocatoria |

  


**HEAD /convocatorias/{id}/vinculados** \-\-\> Devuevle **HTTP 200** si la convocatoria tiene **Enlaces**, **Plazos y fases**, **Hitos** o **Documentos** vinculados y **HTTP 204** si no tiene


