# Hércules : urn:problem\-type:no\-related\-entities



Este error se produce cuando se intenta realizar una acción sobre una lista de entidades supuestamente relacionadas con otra entidad y no existe tal relación para alguna de ellas.



| Campo | Valor | Observaciones |
| --- | --- | --- |
| type | urn:problem\-type:no\-related\-entities |  |
| title | | Fichero i18n | ProblemMessages.properties | | --- | --- | | Key | org.springframework.http.HttpStatus.BAD\_REQUEST.message | | Ej:Bad Request |
| status | 400 |  |
| detail | | Fichero i18n | ProblemMessages.properties | | --- | --- | | Key | org.crue.hercules.sgi.csp.exceptions.NoRelatedEntitiesException.message | | Parámetros | | entity | | Fichero i18n | messages.properties | | --- | --- | | Key | FQN de la entidad \+ ".message" | | | --- | --- | --- | --- | --- | --- | | related | | Fichero i18n | messages.properties | | --- | --- | | Key | FQN de la entidad \+ ".message" | | | | Ej:Not all provided Professional Category are related with Principal Researcher Requirement |
| instance | urn:uuid:\<\<UUID\>\> | Ej:urn:uuid:123e4567\-e89b\-12d3\-a456\-556642440000 |




