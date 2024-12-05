# Hércules : IU\-CSP\-0402\-025 \- Añadir periodo de justificación



## Formulario Añadir periodo de justificación

Formulario que permite añadir un periodo de justificación al calendario de justificaciones durante de la creación o modificación de un proyecto.



| **Periodo justificación (cuando no existe registro de convocatoria relacionada, el campo "convocatoria periodo justificación Id" es null)****Periodo justificación (****resto de casos)**En el caso de que el registro no exista en el Proyecto y sí en la Convocatoria, todos los datos del proyecto estarán en modo no editable hasta que se pulse el botón de "Aplicar al proyecto" que se inicializarán los datos del proyecto con los valores de la convocatoria y se pondrán todos los campos editables por si desea modificarlos.Cuando el registro existe en el proyecto, todos los campos serán editables. | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Número de período | | SecuenciaNumérico entero genéricoObligatorio | Número secuencial interno al proyecto/contrato que asignará directamente el sistema en función de la ordenación de la fecha de inicio del periodo. No existirán dos periodos con el mismo número |
| Tipo de período | | SelectorTexto cortoObligatorio | Tipo de periodo, será un dato informativo que indique la naturaleza del periodo de justificación. Los valores disponibles serán "periódico" y "final". Con el valor "periódico" se representará de manera genérica a cualquier periodicidad que pueda exigir cada proyecto particular (anual, trimestral, etc.)Tomará los valores "Periódico"/"Final" |
| Fecha de inicio y fin del periodo | Fecha inicio periodo | FechaObligatorio | Fecha de inicio del periodo de justificación.La fecha de inicio del periodo debe ser mayor o igual a la fecha de inicio del proyecto (campo "fecha inicio" de la tabla "proyecto").Serán las que se utilice para verificar la posibilidad de incluir o no un gasto en la justificación. |
| Fecha fin periodo | FechaObligatorio | Fecha fin del periodo de justificación.La fecha de fin del periodo debe ser menor o igual a la fecha de fin definitiva del proyecto (campo "fecha fin definitiva" de la tabla "proyecto") o menor igual que la fecha de fin (campo "fecha fin definitiva" de la tabla "proyecto") cuando fecha fin definitiva no esté informada.Si fecha fin definitiva del proyecto está informada: fecha fin periodo debe ser menor o igual a la fecha fin definitiva del proyecto.Si fecha fin definitiva de proyecto no está informada: fecha fin periodo debe ser menor o igual a la  fecha fin del proyecto.Serán las que se utilice para verificar la posibilidad de incluir o no un gasto en la justificación. |
| Periodo de presentación de la justificación | Fecha inicio presentación | Fecha \+ Hora | El periodo de entrega de la justificación estará limitado por una fecha y hora de inicio y una fecha y hora de fin. Marcará el periodo en el que debe de ser remitida la documentación de justificación a la entidad correspondiente.La hora de la fecha de inicio tomará por defecto el valor 00:00:00\.  La  hora de la fecha de fin tomará por defecto el valor 23:59:59\. El usuario podrá modificar ambos valores.Se seleccionarán a partir de un componente de Calendario que permitirá marcar el día y  hora. |
| Fecha fin presentación | Fecha \+ Hora |
| Observaciones | | Texto largo | Campo de texto libre para  dejar recogida cualquier información que ser considere relevante |
| Datos del periodo de justificación de la convocatoria (tabla "convocatoria periodo justificación") | | | |
| Número de periodo | | SecuenciaModo consulta | Campo "num periodo" de la tabla "convocatoria periodo justificación" |
| Tipo de periodo | | SelectorModo consulta | Campo "tipo justificación" de la tabla "convocatoria periodo justificación" |
| Fecha de inicio y fin del periodo | Fecha inicio periodo | FechaModo consulta | Se obtiene a partir de la "fecha de inicio" de la tabla "proyecto" y el campo "mes inicial" de la tabla "convocatoria periodo justificación". |
| Fecha fin periodo | FechaModo consulta | Se obtiene a partir de la "fecha de inicio" de la tabla "proyecto" y el campo "mes final" de la tabla "convocatoria periodo justificación". |
| Periodo de presentación de la justificación | Fecha inicio presentación | Fecha \+ HoraModo consulta | Campo "fecha inicio presentación" de la tabla "convocatoria periodo justificación". |
| Fecha fin presentación | Fecha \+ HoraModo consulta | Campo "fecha fin presentación" de la tabla "convocatoria periodo justificación" |
| Observaciones | | Texto largoModo consulta | Campo "observaciones" de la tabla "convocatoria periodo justificación" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Aplicar al proyecto | Copia los datos de la convocatoria al formulario del proyecto | Se copiaran  los datos de la convocatoria al propio formulario del periodo de justificación. En caso de que el formulario ya tuviera unos datos informados se macharán con los de la convocatoria. | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Añadir/Aceptar | Añade el periodo de justificación al calendario del proyecto | El número de periodo se calculará de forma secuencial y ordenada de acuerdo a la fecha de inicio del periodo, de forma que que se recalcule a medida que se realicen inserciones, modificaciones o borrados.Solo deberá existir un periodo de justificación de tipo "final". No se permitirá la creación de nuevos periodos de justificación cuando ya exista un tipo "final".Se comprobará que no se solapen rangos de fecha inicio periodo \- fecha fin periodo. Para ello:* Para cualquier periodo fecha fin ha de ser mayor que fecha inicio * No pueden existir solapamientos de fechas * El rango de fecha inicio y fin tiene que estar dentro del rango de fecha inicio y fin del proyecto  Sobre las fechas de inicio y fin de presentación:* Fecha de fin de presentación de un nuevo periodo ha de ser mayor que fecha de inicio de su mismo periodo * No se limitará que las fechas de inicio y fin de presentación de diferentes periodos se solapen o coincidan  Se comprobará que el rango del periodo esté dentro de la duración del proyecto. Para ello:* Fecha inicio periodo debe ser mayor o igual que la fecha de inicio del proyecto (campo "fecha inicio" de la tabla "proyecto"). * Si fecha fin definitiva del proyecto (campo "fecha fin definitiva" de la tabla "proyecto") está informada: 	+ Fecha fin periodo debe ser menor o igual que fecha fin definitiva 	+ Si no 		- Fecha fin periodo debe ser menor o igual que fecha fin proyecto (campo "fecha fin" tabla "proyecto")  La fecha de inicio presentación será utilizada por los módulos de tareas programadas y de comunicados para generar un aviso en el módulo de comunicados según lo descrito en [CSP \- Comunicados](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados").Al crear un periodo de justificación se le pondrá en el estado "Pendiente"Para los periodos que se copien de la convocatoria se almacenará el campo "id convocatoria periodo justificación" con el identificador del periodo en la convocatoria, para los nuevos periodos creados en el proyecto se pondrá dicho campo a null. | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al formulario de proyecto, sin salvar los posibles cambios |  |  |




