# Hércules : urn:problem\-type:unique



Este error se produce cuando el sistema recibe una anualidad de un presupuesto duplicada.



| Campo | Valor | Observaciones |
| --- | --- | --- |
| type | urn:problem\-type:unique |  |
| title | | Fichero i18n | ProblemMessages.properties | | --- | --- | | Key | org.springframework.http.HttpStatus.INTERNAL\_SERVER\_ERROR.message | | Ej:Internal Server Error |
| status | 500 |  |
| detail | | Fichero i18n | ProblemMessages.properties | | --- | --- | | Key | org.crue.hercules.sgi.csp.exceptions.ProyectoAnualidadAnioUniqueException.message | | Parámetros |  | | Ej:There is already an {entity} with the year '${validatedValue.anio}' |
| instance | urn:uuid:\<\<UUID\>\> | Ej:urn:uuid:123e4567\-e89b\-12d3\-a456\-556642440000 |




