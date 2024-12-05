# Hércules : API



El sistema contará con una API REST desde la que se podrán controlar todas y cada unas de sus funcionalidades, facilitando así la construcción de cualquier cuadro de mando ya que su desarrollo estará totalmente desacoplado de la Interfaz de usuario. Dicha API se desarrollará en Python como una aplicación web mediante el framework **Flask**y se introducirán blueprints que se construirán mediante la librería flask\-restful, para una fácil organización de los endpoints y métodos de la aplicación web. También se proporcionará un **Swagger**que facilitará la legibilidad de la documentación realizada.



| Método | Url | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| GET | `/api/orchestrator/statistics/maindashboard` |  | Datos estadísticos del sistema | Devuelve los datos estadísticos del sistema para rellenar un dashboard. |
| GET | `/api/orchestrator/robots` |  | Lista\[Robot] | Obtiene la lista de robots que hay en el sistema. |
| GET | `/api/orchestrator/robots/problems` |  | Lista\[Problem] | Obtiene todos los problemas de ejecución que ha habido. |
| GET | `/api/orchestrator/robots/{robotId}` | robotId: identificador del robot | Robot | Obtiene la información de un robot. |
| GET | `/api/orchestrator/robots/{robotId}/problems` | robotId: identificador del robot | Lista\[Problem] | Obtiene la lista de problemas de ejecución que ha tenido un robot. |
| GET | `/api/orchestrator/robots/{robotId}/logs` | robotId: identificador del robot | Lista\[Log] | Obtiene la lista de logs de todos los procesos que ha ejecutado un robot. |
| GET | `/api/orchestrator/process/` |  | Lista\[Proceso] | Obtiene la lista de procesos que se pueden llevar a cabo en ese instante dependiendo de los robots que estén conectados. |
| GET | `/api/orchestrator/process/{id}` | id: identificador del proceso | Proceso | Obtiene la información completa del proceso. |
| GET | `/api/orchestrator/process/{id}/form` | id: identificador del proceso | JSON | Devuelve una especificación para realizar un formulario dinámico en una interfaz. |
| GET | `/api/orchestrator/schedules/` |  | Lista\[Schedule] | Obtiene la lista de planificaciones que hay en el orquestador. |
| GET | `/api/orchestrator/schedules/{id}` | id: identificador de la planificación (schedule) | Schedule | Obtiene un schedule indicado por un identificador. |
| PATCH | `/api/orchestrator/schedules/{id}` | id: identificador de la planificación (schedule)JSON | Control para saber si se ha editado la planificación | Edición de schedule. |
| DELETE | `/api/orchestrator/schedules/{id}` | id: identificador de la planificación (schedule) | Control para saber que se ha borrado correctamente | Eliminación de schedule. |
| POST | `/api/orchestrator/schedules/execute` | JSON | Control para saber que se ha creado correctamente | Crea una planificación de proceso, con este endpoint se ejecutarán los procesos. |
| GET | `/api/orchestrator/schedules/{id}/logs` | id: identificador de la planificación (schedule) | Lista\[Log] | Obtiene todos los logs que ha producido una planificación de proceso. |
| GET | `/api/orchestrator/robots/{robotId}/schedules/{scheduleId}` | robotId: identificador del robotscheduleId: identificador de la planificación | Lista\[Schedule] | Obtiene la lista de planificaciones (schedules) que tiene un robot. |
| GET | `/api/orchestrator/logs` |  | Lista\[Log] | Obtiene todos los reportes de ejecución de todos los procesos que se han ejecutado. |
| GET | `/api/orchestrator/logs/{id}` | id: identificador del log | Log | Obtiene el reporte de ejecución de un proceso. |
| GET | `/api/orchestrator/reload` |  |  | Refresca el sistema. |
| GET | `/api/orchestrator/restart` |  |  | Reinicia el sistema. |
| GET | `/api/orchestrator/files` |  | Lista\[Files] | Obtiene una lista de ficheros que hay en los CDNs con su respectiva URL. |
| GET | `/api/orchestrator/files/`{id} |  | File | Obtiene la información de un fichero que se encuentra en algún CDN. |
| POST | `/api/orchestrator/files` | File |  | Proporciona una URL del CDN para subir un fichero. |




