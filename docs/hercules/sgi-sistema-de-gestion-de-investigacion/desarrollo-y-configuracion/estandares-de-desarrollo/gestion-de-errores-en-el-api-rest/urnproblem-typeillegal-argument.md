# Hércules : urn:problem\-type:illegal\-argument



Este error se produce cuando el sistema recibe una petición con parámetros incorrectos.



| Campo | Valor | Observaciones |
| --- | --- | --- |
| type | urn:problem\-type:illegal\-argument |  |
| title | | Fichero i18n | ProblemMessages.properties | | --- | --- | | Key | org.springframework.http.HttpStatus.BAD\_REQUEST.message | | Ej:Bad Request |
| status | 400 |  |
| detail | El mensaje concreto dependerá del parámetro y el tipo de problema.  | Fichero i18n | ProblemMessages.properties | | --- | --- | | Key | org.springframework.util.Assert.isNull.message | | Parámetros | | entity | | Fichero i18n | messages.properties | | --- | --- | | Key | FQN de la entidad \+ ".message" | | | --- | --- | --- | --- | --- | --- | | field | | Fichero i18n | messages.properties | | --- | --- | | Key | Nombre del campo | | |    | Fichero i18n | ProblemMessages.properties | | --- | --- | | Key | org.springframework.util.Assert.notNull.message | | Parámetros | | entity | | Fichero i18n | messages.properties | | --- | --- | | Key | FQN de la entidad \+ ".message" | | | --- | --- | --- | --- | --- | --- | | field | | Fichero i18n | messages.properties | | --- | --- | | Key | Nombre del campo | | | | Ej:The Identifier from Financial Source must be nullEj:The Identifier from Financial Source can't be null |
| instance | urn:uuid:\<\<UUID\>\> | Ej:urn:uuid:123e4567\-e89b\-12d3\-a456\-556642440000 |




