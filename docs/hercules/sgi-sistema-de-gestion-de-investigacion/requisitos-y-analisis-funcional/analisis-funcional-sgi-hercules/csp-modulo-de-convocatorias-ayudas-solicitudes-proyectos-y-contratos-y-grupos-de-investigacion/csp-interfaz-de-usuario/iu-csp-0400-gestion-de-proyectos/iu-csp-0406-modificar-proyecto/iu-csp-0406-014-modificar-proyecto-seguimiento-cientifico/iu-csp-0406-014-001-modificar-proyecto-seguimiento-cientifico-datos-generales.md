# Hércules : IU\-CSP\-0406\-014\-001 \- Modificar proyecto \- Seguimiento científico \- Datos generales



## Formulario Modificar proyecto \- Seguimiento científico \- Datos generales

Formulario que permite añadir un periodo de seguimiento científico durante el proceso de creación o modificación de un proyecto.



| **Periodo seguimiento (cuando no existe registro de convocatoria relacionada, el campo "convocatoriaPeriodoSeguimientoId" es null)****Periodo seguimiento (****resto de casos)**En el caso de que el registro no exista en el Proyecto y si en la Convocatoria, todos los datos del proyecto estarán en modo no editable hasta que se pulse el botón de "Aplicar al proyecto" que se inicializarán los datos del proyecto con los valores de la convocatoria y se pondrán todos los campos editables por si desea modificarlos.Cuando el registro existe en el proyecto, todos los campos serán editables. | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Formulario para añadir/modificar un periodo de seguimiento científico a un proyecto (tabla "proyecto periodo seguimiento") | | | |
| Número de periodo | | Numérico entero genéricoObligatorio | Número secuencial dentro de la convocatoria que asignará directamente el sistema en función de la ordenación de la fecha de inicio. Modo consulta. |
| Tipo de seguimiento | | SelectorTexto cortoObligatorio | Tipo del periodo de seguimiento. Se mostrará en un selector cargado con los valores del enumerado "Tipo seguimiento".El valor seleccionado se almacenará sobre el campo "tipo seguimiento".Es un campo obligatorio |
| Periodo de seguimiento científico | Fecha inicio | FechaObligatorio | Fecha inicial del  periodo de seguimiento científico. Se corresponde con el campo "fecha inicio". |
| Fecha fin | FechaObligatorio | Fecha final del  periodo de seguimiento científico. Se corresponde con el campo "fecha fin". |
| Plazo de presentación | Fecha de inicio | Fecha \+ Hora | Fecha de inicio del plazo de presentación de la documentación asociado al periodo de seguimiento científico, expresada en formato fecha y hora. La hora de la fecha de inicio tomará por defecto el valor 00:00:00\. El usuario podrá modificar este valor.Se seleccionará a partir de un componente de Calendario que permitirá marcar el día y hora de inicio.Se corresponde con el campo "fecha inicio presentación". |
| Fecha de fin | Fecha \+ Hora | Fecha de fin del plazo de presentación de la documentación asociado al periodo de seguimiento científico, expresada en formato fecha y hora. La hora de la fecha de inicio tomará por defecto el valor 23:59:59\. El usuario podrá modificar este valor.Se seleccionará a partir de un componente de Calendario que permitirá marcar el día y hora de fin.Se corresponde con el campo "fecha fin presentación". |
| Observaciones | | Texto largo | Texto libre para introducir observaciones del periodo de seguimiento científico. Se corresponde con el campo "observaciones" |
| Datos del periodo de seguimiento de la convocatoria (tabla "convocatoria periodo seguimiento") | | | |
| Número de periodo | | Numérico entero genéricoModo consulta | Número secuencial dentro de la convocatoria que asignará directamente el sistema en función de la ordenación de la fecha de inicio.Campo "numPeriodo"  de la tabla "convocatoria periodo seguimiento" |
| Tipo de seguimiento | | SelectorModo consulta | Campo "tipoJustificacion"  de la tabla "convocatoria periodo seguimiento" |
| Periodo de seguimiento científico | Fecha inicio | FechaModo consulta | Se obtiene a partir de la "fecha de inicio" de la tabla "proyecto" y el campo "mesInicial" de la tabla "convocatoria periodo seguimiento". |
| Fecha fin | FechaModo consulta | Se obtiene a partir de la "fecha de inicio" de la tabla "proyecto" y el campo "mesFinal" de la tabla "convocatoria periodo seguimiento". |
| Plazo de presentación | Fecha de inicio | Fecha \+ HoraModo consulta | Campo "fechaInicioPresentacion"  de la tabla "convocatoria periodo seguimiento" |
| Fecha de fin | Fecha \+ HoraModo consulta | Campo "fechaFinPresentacion"  de la tabla "convocatoria periodo seguimiento" |
| Observaciones | | Texto largoModo consulta | Campo "observaciones"  de la tabla "convocatoria periodo seguimiento" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Aplicar al proyecto | Copia los datos de la convocatoria al formulario del proyecto | Se copiaran  los datos de la convocatoria al propio formulario del periodo de seguimiento del proyecto (datos generales). En caso de que el formulario ya tuviera unos datos informados se macharán con los de la convocatoria. | CSP\-PRO\-ECSP\-PRO\-E\_UO |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea el periodo de seguimiento científico del proyecto con la información introducida en el formulario.Al guardar un periodo de seguimiento científico se guardar la información de todos los apartados de definición del periodo. | El número de periodo se calculará de forma secuencial y ordenada de acuerdo al mes inicial, de forma que que se recalcule a medida que se realicen inserciones, modificaciones o borradosSe comprobará que solo exista un periodo de tipo "final". No se permitirá la creación de nuevos periodos cuando ya exista un tipo "final".Se comprobará que no se solapen rangos de fecha inicio \- fecha fin del periodo de seguimiento. Para ello:* Para cualquier periodo fecha fin ha de ser mayor que fecha inicio * No pueden existir solapamientos de fechas * La fecha de inicio y fin tiene que estar dentro del rango de fecha inicio y fin del proyecto.  Sobre las fechas de inicio y fin de presentación:* Fecha de fin de presentación de un nuevo periodo ha de ser mayor que fecha de inicio de su mismo periodo * No se limitará que las fechas de inicio y fin de presentación de diferentes periodos se solapen o coincidan  La fecha de inicio presentación será utilizada por los módulos de tareas programadas y de comunicados para generar un aviso en el módulo de comunicados según lo descrito en [CSP \- Comunicados](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados").Para los periodos que se copien de la convocatoria se almacenará el campo "idConvocatoriaPeriodoSeguimiento" con el identificador del periodo en la convocatoria, para los nuevos periodos creados en el proyecto se pondrá dicho campo a null. | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al listado de Proyecto sin salvar los posibles cambios.Al cancelar un periodo de seguimiento científico se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |




