# Hércules : IU\-CSP\-0206\-004 \- Ver fase



## Formulario Ver fase

Formulario para ver los detalles de una fases de una convocatoria.



| ***Vista de pantalla con popup de ver detalle de Fase SIN AVISO******Detalle de popup de ver detalle de Fase CON AVISO******Detalle de popup de ver detalle de Fase CON AVISO*** | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Tipo de fase | Texto corto | Tipo de fases del modelo de ejecución.El campo se muestra en modo consulta. |
| Fecha de inicio | Fecha \+ Hora | Fecha de inicio de la fase, expresada en formato fecha y hora. Para las fases que requieren una fecha concreta, la fecha de inicio y fecha fin tomarán el mismo valor.El campo se muestra en modo consulta. |
| Fecha de fin | Fecha \+ Hora | Fecha de fin de la fase, expresada en formato fecha y hora. Para las fases que requieren una fecha concreta, la fecha de inicio y fecha fin tomarán el mismo valor. El campo se muestra en modo consulta. |
| Observaciones | Texto largo | Observaciones de la fase.El campo se muestra en modo consulta. |
| Generar aviso | Booleano | Indicará que se ha enviado un aviso para la fase.El campo se muestra en modo consulta. |
| ***Campos específicos de avisos.*** ***Se podrán configurar hasta 2 avisos, teniendo cada uno de ellos los mismos campos, pero que se pueden adaptar por parte del usuario para uno u otro de manera que puedan tener fecha, asunto, contenido y destinatarios diferentes.******La presentación de los campos del Primer Aviso y Segundo Aviso será en forma de "pestañas", habiendo una pestaña por aviso,con la operativa habitual de este tipo de componente.*****En la modificación, si la fecha y hora para el envío del aviso (primero o segundo, según el caso) ya ha pasado, todos los campos a continuación se mostrarán en modo de solo consulta.** | | |
| ***Campos específicos del primer aviso.*** **La obligatoriedad de estos campos aplicará en el momento que el check "Generar aviso" esté marcado.** | | |
| Generar segundo aviso | Booleano | Indicará que se ha enviado un segundo aviso para la fase.Si en el check "Generar aviso" se ha marcado, aparecerá visible por pantalla. En otro caso, no aparecerá.El campo se muestra en modo consulta. |
| ***Campos comunes al primer y segundo aviso.*****Los dos avisos tendrán exactamente los mismos campos pero el usuario podría indicar valores distintos para cada uno de ellos según el aviso sea el primero o el segundo, esto es, a nivel del SGI, serán campos diferentes.** | | |
| Fecha y hora de envío | Fecha \+ HoraObligatorio | Fecha y hora en la que el usuario programó el envío del comunicado.El campo se muestra en modo consulta. |
| Asunto | TextoObligatorio | Asunto del email de aviso.El campo se muestra en modo consulta. |
| Contenido del email | Texto largoObligatorio | Contenido o cuerpo del email de aviso.El campo se muestra en modo consulta. |
| Destinatarios | Componente a medidaObligatorio | Lista de destinatarios del email de aviso. No serán visibles por pantalla los destinatarios a los que se hubiese enviado el aviso al haber marcado los checks "Añadir IPs solicitud" y "Añadir IPs proyecto".El campo se muestra en modo consulta. |
| Añadir IPs solicitud | Booleano | Indicador de si se han añadido los IPs de las solicitudes asociadas a la convocatoria como destinatarios del email de aviso.Estos destinatarios no se mostrarán en el campo "Destinatarios".El campo se muestra en modo consulta. |
| Añadir IPs proyecto | Booleano | Indicador de si se han añadido los IPs de los proyectos asociados a las solicitudes de la convocatoria como destinatarios del email de aviso.Estos destinatarios no se mostrarán en el campo "Destinatarios".El campo se muestra en modo consulta. |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Cancelar | Retorna al formulario de la convocatoria. |  |




