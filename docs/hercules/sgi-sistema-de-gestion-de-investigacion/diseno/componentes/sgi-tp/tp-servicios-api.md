# Hércules : TP \- Servicios API



### Config



| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| GET | /config/time\-zone |  | Ejemplo...Europe/Madrid | Devuelve una cadena con el identificador de TimeZone configurado en el módulo |
| GET | /config/locale |  | Ejemplo...es\_ES | Devuelve una cadena con el Locale según los valores antiguos del estándar ISO 639\.  Este Locale se utilizará para realizar las invocaciones al API REST de SGI. |

### SgiApiCronTask y SgiApiInstantTask



| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| POST | /sgiapitasks/cron | SgiApiCronTaskInputEjemplo...  ``` {     "description": "Prueba CRON",     "serviceType": "USR",     "relativeUrl": "/config/time-zone",     "httpMethod": "GET",     "cronExpression": "0/10 * * * * ?" } ``` | SgiApiCronTaskOutputEjemplo...  ``` {     "description": "Prueba CRON",     "serviceType": "USR",     "relativeUrl": "/config/time-zone",     "httpMethod": "GET",     "cronExpression": "0/10 * * * * ?",     "id": 7,     "disabled": false } ``` | Crea una tarea programada repetitiva de invocación a API REST de SGI |
| POST | /sgiapitasks/instant | SgiApiInstantTaskInputEjemplo...  ``` {     "description": "Prueba Instant",     "serviceType": "USR",     "relativeUrl": "/config/time-zone",     "httpMethod": "GET",     "instant": "2021-11-04T07:19:00Z" } ``` | SgiApiInstantTaskOutputEjemplo...  ``` {     "description": "Prueba Instant",     "serviceType": "USR",     "relativeUrl": "/config/time-zone",     "httpMethod": "GET",     "instant": "2021-11-04T07:19:00Z",     "id": 8,     "disabled": false } ``` | Crea una tarea programada para un instante determinado de invocación a API REST de SGI |
| PUT | /sgiapitasks/cron/{id} | SgiApiCronTaskInputEjemplo...  ``` {     "description": "Prueba CRON mod",     "serviceType": "USR",     "relativeUrl": "/config/time-zone",     "httpMethod": "GET",     "cronExpression": "0 0 0 * * ?" } ``` | SgiApiCronTaskOutputEjemplo...  ``` {     "description": "Prueba CRON mod",     "serviceType": "USR",     "relativeUrl": "/config/time-zone",     "httpMethod": "GET",     "cronExpression": "0 0 0 * * ?",     "id": 7,     "disabled": false } ``` | Actualiza una tarea programada repetitiva de invocación a API REST de SGI |
| PUT | /sgiapitasks/instant/{id} | SgiApiInstantTaskInputEjemplo...  ``` {     "description": "Prueba Instant mod",     "serviceType": "USR",     "relativeUrl": "/config/time-zone",     "httpMethod": "GET",     "instant": "2022-03-01T16:00:00Z" } ``` | SgiApiInstantTaskOutputEjemplo...  ``` {     "description": "Prueba Instant mod",     "serviceType": "USR",     "relativeUrl": "/config/time-zone",     "httpMethod": "GET",     "instant": "2022-03-01T16:00:00Z",     "id": 8,     "disabled": false } ``` | Actualiza una tarea programada para un instante determinado de invocación a API REST de SGI |
| DELETE | /sgiapitasks/{id} |  |  | Elimina una tarea programada (repetitiva o para un instante determinado) de invocación a API REST de SGI |
| GET | /sgiapitasks/{id} |  | SgiApiCronTaskOutput ó SgiApiInstantTaskOutput según el tipo de tareaEjemplo CRON...  ``` {     "description": "Paso a archivado por inactividad",     "serviceType": "ETI",     "relativeUrl": "/memorias/inactivo/archivar",     "httpMethod": "PATCH",     "cronExpression": "0 30 0 * * ?",     "id": 3,     "disabled": false } ```  Ejemplo Instant...  ``` {     "description": "Prueba Instant",     "serviceType": "USR",     "relativeUrl": "/config/time-zone",     "httpMethod": "GET",     "instant": "2021-11-04T07:19:00Z",     "id": 8,     "disabled": false } ``` | Recupera una tarea (repetitiva o para un instante determinado) de invocación a API REST de SGI |
| GET | /sgiapitasks | q \+ s | Lista\[SgiApiCronTaskOutput ó SgiApiInstantTaskOutput]Ejemplo...  ``` [     {         "description": "Paso a archivado por no presentar de nuevo el informe",         "serviceType": "ETI",         "relativeUrl": "/memorias/no-presentado/archivar",         "httpMethod": "PATCH",         "cronExpression": "0 15 0 * * ?",         "id": 2,         "disabled": false     },     {         "description": "Paso a archivado por inactividad",         "serviceType": "ETI",         "relativeUrl": "/memorias/inactivo/archivar",         "httpMethod": "PATCH",         "cronExpression": "0 30 0 * * ?",         "id": 3,         "disabled": false     },     {         "description": "Comunicado de inicio de período de presentación de justificación de gastos",         "serviceType": "CSP",         "relativeUrl": "/comunicados/inicio-presentacion-justificacion-gastos",         "httpMethod": "GET",         "cronExpression": "0/10 * * * * ?",         "id": 6,         "disabled": false     },     {         "description": "Prueba CRON",         "serviceType": "USR",         "relativeUrl": "/config/time-zone",         "httpMethod": "GET",         "instant": "2021-11-04T07:19:00Z",         "id": 7,         "disabled": false     },     {         "description": "Prueba CRON",         "serviceType": "USR",         "relativeUrl": "/config/time-zone",         "httpMethod": "GET",         "instant": "2022-03-01T16:00:00Z",         "id": 8,         "disabled": false     } ] ``` | Busca/Lista tareas programadas (repetitivas o para un instante determinado) de invocación a API REST de SGI |
| GET | /sgiapitasks/cron | q \+ s | Lista\[SgiApiCronTaskOutput]Ejemplo...  ``` [     {         "description": "Paso a archivado por no presentar de nuevo el informe",         "serviceType": "ETI",         "relativeUrl": "/memorias/no-presentado/archivar",         "httpMethod": "PATCH",         "cronExpression": "0 15 0 * * ?",         "id": 2,         "disabled": false     },     {         "description": "Paso a archivado por inactividad",         "serviceType": "ETI",         "relativeUrl": "/memorias/inactivo/archivar",         "httpMethod": "PATCH",         "cronExpression": "0 30 0 * * ?",         "id": 3,         "disabled": false     },     {         "description": "Comunicado de inicio de período de presentación de justificación de gastos",         "serviceType": "CSP",         "relativeUrl": "/comunicados/inicio-presentacion-justificacion-gastos",         "httpMethod": "GET",         "cronExpression": "0/10 * * * * ?",         "id": 6,         "disabled": false     } ] ``` | Busca/Lista tareas programadas repetitivas de invocación a API REST de SGI |
| GET | /sgiapitasks/instant | q \+ s | Lista\[SgiApiInstantTaskOutput]Ejemplo...  ``` [     {         "description": "Prueba CRON",         "serviceType": "USR",         "relativeUrl": "/config/time-zone",         "httpMethod": "GET",         "instant": "2021-11-04T07:19:00Z",         "id": 7,         "disabled": false     },     {         "description": "Prueba CRON",         "serviceType": "USR",         "relativeUrl": "/config/time-zone",         "httpMethod": "GET",         "instant": "2022-03-01T16:00:00Z",         "id": 8,         "disabled": false     } ] ``` | Busca/Lista tareas programadas para un instante determinado de invocación a API REST de SGI |

  


  





