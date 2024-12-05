# Hércules : IU\-CSP\-0406\-011\-004\-001 \- Modificar proyecto \- Socio \- Periodo de justificación \- Datos generales



## Formulario Modificar proyecto \- Socio \- Periodo de justificación \- Datos generales

Formulario que permitirá añadir/modificar un periodo de justificación para el un socio del proyecto.



|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Periodo de justificación de un socio del proyecto | | | |
| Número de periodo | | SecuenciaNumérico entero genérico | Número secuencial dentro del proyecto que asignará directamente el sistema en función de la ordenación de la fecha de inicio.Se corresponde con el campo "num. periodo" de la tabla "proyecto socio periodo justificación". |
| Periodo a justificar | Fecha inicio | FechaObligatorio | Fecha inicial del periodo a justificar.Se corresponde con el campo "fecha inicio" de la tabla "proyecto socio periodo justificación". |
| Fecha fin | FechaObligatorio | Fecha final del periodo a justificar.Se corresponde con el campo "fecha fin" de la tabla "proyecto socio periodo justificación". |
| Periodo de presentación exigido al socio | Fecha y hora de inicio | Fecha \+ hora | Fecha y hora de de inicio del plazo de presentación de la justificación a la Universidad por parte del socio.La hora de la fecha de inicio tomará por defecto el valor 00:00:00 pero podrá ser modificada. En caso de que no se indique el valor de la hora se tomará el valor por defecto 00:00:00\.Se corresponde con el campo "fecha inicio presentación" de la tabla "proyecto socio periodo justificación". |
| Fecha y hora de fin | Fecha \+ hora | Fecha de fin del plazo de presentación de la justificación a la Universidad por parte del socio.La hora de la fecha de fin tomará por defecto el valor 23:59:59 pero podrá ser modificada. En caso de que no se indique el valor de la hora se tomará el valor por defecto 23:59:59\.Se corresponde con el campo "fecha fin presentación" de la tabla "proyecto socio periodo justificación". |
| Observaciones | | Texto largoOpcional | Campo abierto que permite introducir cualquier observación sobre el periodo de justificación del socio.Se corresponde con el campo "observaciones" de la tabla "proyecto socio periodo justificación". |
| Documentación recibida | | BooleanoOpcional | Indica si la Universidad ha recibido la documentación de justificación por parte del socio.Se corresponde con el campo "doc. recibida" de la tabla "proyecto socio periodo justificación". |
| Fecha recepción | | Fecha \+ HoraOpcional | Fecha en la que ha sido recepcionada la documentación de justificación. Expresada en formato fecha \+ hora. La hora se cargará por defecto a las 00:00:00Se mostrará solo si se ha indicado en el campo anterior que ha sido recibida la documentación.Se corresponde con el campo "fecha recepción" de la tabla "proyecto socio periodo justificación". |
| Importe justificado | | EconómicoOpcional | Permite recoger el importe total de la justificación correspondiente al socio.Se corresponde con el campo "importe justificado" de la tabla "proyecto socio periodo justificación". |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
|  |  |  |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Añade/modifica el periodo de justificación para el socio, teniendo en cuenta todos los apartados de definición del socio. | El número de periodo se calculará de forma secuencial y ordenada de acuerdo a la fecha de inicio, de forma que se recalcule a medida que se realicen inserciones, modificaciones o borrados.Se comprobará que no se solapen rangos de fecha inicio \- fecha fin. Para ello:* Para cualquier periodo fecha fin ha de ser mayor que fecha inicio * No pueden existir solapamientos de fechas * La fecha de inicio y fin tiene que estar dentro del rango de fecha inicio y fin del proyecto.  Sobre las fechas de inicio y fin de presentación:* Fecha de fin de presentación de un nuevo periodo ha de ser mayor que fecha de inicio de su mismo periodo * No se limitará que las fechas de inicio y fin de presentación de diferentes periodos se solapen o coincidan  Las fecha de inicio y fin de presentación del periodo de presentación exigido al socio, será utilizada por los módulos de tareas programadas y de comunicados para generar un aviso en el módulo de comunicados según lo descrito en [CSP \- Comunicados](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados").Como resultado final, se inserta/modifica el registro correspondiente sobre la tabla "proyecto socio periodo justificación". | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al listado de periodos de justificación sin salvar los posibles cambios.Al cancelar un periodo de justificación se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |




