# Hércules : urn:problem\-type:missing\-request\-parameter



Este error se produce cuando el sistema recibe una petición a una URI en la que no se incluye el valor de un segmento necesario.



| Campo | Valor | Observaciones |
| --- | --- | --- |
| type | urn:problem\-type:missing\-request\-parameter |  |
| title | | Fichero i18n | ProblemMessages.properties | | --- | --- | | Key | org.springframework.http.HttpStatus.BAD\_REQUEST.message | | Ej:Bad Request |
| status | 400 |  |
| detail | | Fichero i18n | ProblemMessages.properties | | --- | --- | | Key | org.springframework.web.bind.MissingServletRequestParameterException.message | | Parámetros | | parameterName | Nombre del parámetro no presente | | --- | --- | | parameterType | Tipo del parámetro no presente | | | Ej:Missing id request param of type Long |
| instance | urn:uuid:\<\<UUID\>\> | Ej:urn:uuid:123e4567\-e89b\-12d3\-a456\-556642440000 |
| parameterName | Nombre del parámetro no presente | Ej:id |
| parameterType | Tipo del parámetro no presente | Ej:Long |




