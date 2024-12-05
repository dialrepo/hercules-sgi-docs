# Hércules : urn:problem\-type:not\-acceptable



Este error se produce cuando el servidor no puede producir una respuesta de los tipos que el cliente acepta.



| Campo | Valor | Observaciones |
| --- | --- | --- |
| type | urn:problem\-type:not\-acceptable |  |
| title | | Fichero i18n | ProblemMessages.properties | | --- | --- | | Key | org.springframework.http.HttpStatus.METHOD\_NOT\_ALLOWED.message | | Ej:No Acceptable |
| status | 406 |  |
| detail | | Fichero i18n | ProblemMessages.properties | | --- | --- | | Key | org.springframework.web.HttpMediaTypeNotAcceptableException.message | | Parámetros | | mediaType | Nombre de los Media Type indicados como soportados en la petición | | --- | --- | | | Ej:Media type text/html, application/xhtml\+xml not supported |
| instance | urn:uuid:\<\<UUID\>\> | Ej:urn:uuid:123e4567\-e89b\-12d3\-a456\-556642440000 |
| supported | Lista de Media Type soportados | Ej:\[application/json] |




