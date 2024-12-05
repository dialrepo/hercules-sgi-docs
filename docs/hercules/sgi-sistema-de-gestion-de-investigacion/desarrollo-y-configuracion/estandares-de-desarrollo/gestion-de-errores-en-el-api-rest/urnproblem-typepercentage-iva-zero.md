# Hércules : urn:problem\-type:percentage\-iva\-zero



Este error se produce cuando el sistema recibe una petición con un tipo de parámetro incorrecto.



| Campo | Valor | Observaciones |
| --- | --- | --- |
| type | urn:problem\-type:percentage\-iva\-zero |  |
| title | | Fichero i18n | ProblemMessages.properties | | --- | --- | | Key | org.springframework.http.HttpStatus.INTERNAL\_SERVER\_ERROR.message | | Ej:Internal Server Error |
| status | 500 |  |
| detail | | Fichero i18n | ProblemMessages.properties | | --- | --- | | Key | org.crue.hercules.sgi.csp.exceptions.ProyectoIVAException.message | | Parámetros |  | | Ej:The VAT percentage cannot be equal to 0 with linked SGE projects. |
| instance | urn:uuid:\<\<UUID\>\> | Ej:urn:uuid:123e4567\-e89b\-12d3\-a456\-556642440000 |
| name | Nombre de la propiedad cuyo tipo es incorrecto | Ej:Iva |
| detail | Si el proyecto ya está vinculado a un proyecto SGE (existen registros en la tabla "proyecto \- proyecto SGE") no se permiten IVAs que pasen de tomar un valor mayor que 0 a tomar valor igual a 0\. |  |




