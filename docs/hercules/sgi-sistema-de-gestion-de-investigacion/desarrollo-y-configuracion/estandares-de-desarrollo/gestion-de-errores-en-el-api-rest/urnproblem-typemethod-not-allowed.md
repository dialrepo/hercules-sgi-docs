# Hércules : urn:problem\-type:method\-not\-allowed



Este error se produce cuando el cliente utiliza un método HTTP conocido por el servidor pero no soportado para el recurso solicitado.



| Campo | Valor | Observaciones |
| --- | --- | --- |
| type | urn:problem\-type:method\-not\-allowed |  |
| title | | Fichero i18n | ProblemMessages.properties | | --- | --- | | Key | org.springframework.http.HttpStatus.METHOD\_NOT\_ALLOWED.message | | Ej:Method Not Allowed |
| status | 405 |  |
| detail | | Fichero i18n | ProblemMessages.properties | | --- | --- | | Key | org.springframework.web.HttpRequestMethodNotSupportedException.message | | Parámetros | | method | Nombre del método HTTP utilizado en la petición | | --- | --- | | | Ej:Method PATCH not supported |
| instance | urn:uuid:\<\<UUID\>\> | Ej:urn:uuid:123e4567\-e89b\-12d3\-a456\-556642440000 |
| supported | Lista de métodos HTTP soportados | OpcionalEj:\[GET, HEAD] |




