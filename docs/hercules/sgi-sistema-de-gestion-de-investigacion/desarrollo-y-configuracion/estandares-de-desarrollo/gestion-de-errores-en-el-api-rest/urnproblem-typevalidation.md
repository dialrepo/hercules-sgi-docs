# Hércules : urn:problem\-type:validation



Este error se produce cuando el sistema recibe una petición cuyo contenido no cumple las reglas de validación del negocio.



| Campo | Valor | Observaciones |
| --- | --- | --- |
| type | urn:problem\-type:validation |  |
| title | | Fichero i18n | ProblemMessages.properties | | --- | --- | | Key | org.springframework.http.HttpStatus.BAD\_REQUEST.message | | Ej:Bad Request |
| status | 400 |  |
| detail | | Fichero i18n | ProblemMessages.properties | | --- | --- | | Key | org.springframework.validation.BindingResult.message | | Ej:Validation failed |
| instance | urn:uuid:\<\<UUID\>\> | Ej:urn:uuid:123e4567\-e89b\-12d3\-a456\-556642440000 |
| errors | Lista de errores.  Cada será del tipo:  | field | Nombre del campo cuya validación ha fallado | | --- | --- | | error | Mensaje de error específico.  El mensaje concreto dependerá del campo y el tipo de problema.  | Fichero i18n | ValidationMessages.properties | | --- | --- | | Key | Variable, en función de la validación.  Normalmente FQN del validador \+ ".message" | | Parámetros | Variables en función de la validación. | | | Ej:  ``` [   {     "field":"nombre",     "error":"must not be empty"   },   {     "field":"tipoAmbitoGeograficoId",     "error":"must not be null"   },   {     "field":"tipoOrigenFuenteFinanciacionId",     "error":"must not be null"   } ] ``` |




