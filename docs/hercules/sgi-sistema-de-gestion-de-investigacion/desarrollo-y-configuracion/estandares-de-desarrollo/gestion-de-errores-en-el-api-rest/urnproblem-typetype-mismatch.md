# Hércules : urn:problem\-type:type\-mismatch



Este error se produce cuando el sistema recibe una petición con un tipo de parámetro incorrecto.



| Campo | Valor | Observaciones |
| --- | --- | --- |
| type | urn:problem\-type:type\-mismatch |  |
| title | | Fichero i18n | ProblemMessages.properties | | --- | --- | | Key | org.springframework.http.HttpStatus.BAD\_REQUEST.message | | Ej:Bad Request |
| status | 400 |  |
| detail | | Fichero i18n | ProblemMessages.properties | | --- | --- | | Key | org.springframework.web.bind.MissingServletRequestParameterException.message | | Parámetros | | propertyName | Nombre de la propiedad cuyo tipo es incorrecto | | --- | --- | | propertyType | Tipo esperado de la propiedad | | | Ej:Type mismatch for id property of type Long |
| instance | urn:uuid:\<\<UUID\>\> | Ej:urn:uuid:123e4567\-e89b\-12d3\-a456\-556642440000 |
| propertyName | Nombre de la propiedad cuyo tipo es incorrecto | Ej:id |
| propertyType | Tipo esperado de la propiedad | Ej:Long |




