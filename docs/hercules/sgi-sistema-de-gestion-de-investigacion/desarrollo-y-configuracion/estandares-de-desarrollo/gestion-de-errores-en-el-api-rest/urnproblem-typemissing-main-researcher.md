# Hércules : urn:problem\-type:missing\-main\-researcher



Este error se produce cuando el usuario intenta registrar uno o más miembro sin que estos inlcuyan al solicitante del equipo.



| Campo | Valor | Observaciones |
| --- | --- | --- |
| type | urn:problem\-type:missing\-main\-researcher |  |
| title | | Fichero i18n | ProblemMessages.properties | | --- | --- | | Key | org.springframework.http.HttpStatus.INTERNAL\_SERVER\_ERROR.message | | Ej:Internal Server Error |
| status | 500 |  |
| detail | | Fichero i18n | ProblemMessages.properties | | --- | --- | | Key | org.crue.hercules.sgi.csp.exceptions.MiembroSolicitudMissmatchSolicitudProyectoIdException.message | | Parámetros | | entity | | Fichero i18n | messages.properties | | --- | --- | | Key | org.crue.hercules.sgi.csp.model.SolicitudProyectoEquipo.message | | | --- | --- | --- | --- | --- | --- | | | Ej:`The applicant of the request must be part of the {entity}` |
| instance | urn:uuid:\<\<UUID\>\> | Ej:urn:uuid:123e4567\-e89b\-12d3\-a456\-556642440000 |




