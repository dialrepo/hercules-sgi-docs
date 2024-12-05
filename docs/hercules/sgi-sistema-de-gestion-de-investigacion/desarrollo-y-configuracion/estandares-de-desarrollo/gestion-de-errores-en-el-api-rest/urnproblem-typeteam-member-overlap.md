# Hércules : urn:problem\-type:team\-member\-overlap



Este error se produce cuando el usuario intenta registrar un miembro del equipo en periodos solapados.



| Campo | Valor | Observaciones |
| --- | --- | --- |
| type | urn:problem\-type:team\-member\-overlap |  |
| title | | Fichero i18n | ProblemMessages.properties | | --- | --- | | Key | org.springframework.http.HttpStatus.INTERNAL\_SERVER\_ERROR.message | | Ej:Internal Server Error |
| status | 500 |  |
| detail | | Fichero i18n | ProblemMessages.properties | | --- | --- | | Key | org.crue.hercules.sgi.csp.exceptions.MiembroSolicitudProyectoEquipoOverlapRangeException.message | | Parámetros | | entity | | Fichero i18n | messages.properties | | --- | --- | | Key | org.crue.hercules.sgi.csp.model.SolicitudProyectoEquipo.message | | | --- | --- | --- | --- | --- | --- | | | Ej:`The {entity} has members with overlapped periods` |
| instance | urn:uuid:\<\<UUID\>\> | Ej:urn:uuid:123e4567\-e89b\-12d3\-a456\-556642440000 |




