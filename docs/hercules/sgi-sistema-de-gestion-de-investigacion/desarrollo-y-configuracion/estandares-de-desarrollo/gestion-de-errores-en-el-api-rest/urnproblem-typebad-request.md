# Hércules : urn:problem\-type:bad\-request



Este error se produce cuando el sistema recibe una petición incorrecta y no existe un error más especifico como, por ejemplo, urn:problem\-type:missing\-request\-parameter



| Campo | Valor | Observaciones |
| --- | --- | --- |
| type | urn:problem\-type:bad\-request |  |
| title | | Fichero i18n | ProblemMessages.properties | | --- | --- | | Key | org.springframework.http.HttpStatus.BAD\_REQUEST.message | | Ej:Bad Request |
| status | 400 |  |
| detail | El mensaje concreto dependerá del parámetro y el tipo de problema. | En la mayoría de los casos este mensaje de detalle no estará internacionalizadoEj:Missing matrix variable 'v1' for method parameter of type String |
| instance | urn:uuid:\<\<UUID\>\> | Ej:urn:uuid:123e4567\-e89b\-12d3\-a456\-556642440000 |




