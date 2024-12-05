# Hércules : IU\-CSP\-0206\-007 \- Ver hito



## Formulario  Ver hito

Formulario para ver los detalles de un hito de convocatoria



| ***Vista de pantalla con popup de ver detalle de Hito SIN AVISO******Detalle de popup de ver detalle de Hito CON AVISO*** | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Fecha | Fecha \+ Hora | Campo "fecha"  de la tabla "hitos convocatoria".El campo se muestra en modo consulta. Expresado en formato fecha \+ hora. |
| Tipo hito | NombreTexto corto | Nombre del hito recuperado de la tabla "tipos hito convocatoria" a partir de la referencia en la tabla "hitos convocatoria".El campo se muestra en modo consulta. |
| Observaciones | Texto largo | Campo "observaciones" de la tabla "hitos convocatoria".El campo se muestra en modo consulta. |
| Generar aviso | Booleano | Campo "genera aviso"  de la tabla "hitos convocatoria". El campo se muestra en modo consulta. |
| ***Campos específicos del aviso*** | | |
| --- | --- | --- |
| Fecha y hora de envío | Fecha \+ Hora | Fecha y hora en la que se quiere programar el envío del comunicado.El campo se muestra en modo consulta. |
| Asunto | Texto | Asunto que tendrá el email de aviso.El campo se muestra en modo consulta. |
| Contenido del email | Texto largo | Contenido o cuerpo del email de aviso.El campo se muestra en modo consulta. |
| Añadir IPs solicitud | Booleano | Indicador de si se han añadido los IPs de las solicitudes asociadas a la convocatoria como destinatarios del email de aviso.Estos destinatarios no se mostrarán en el campo "Destinatarios".El campo se muestra en modo consulta. |
| Añadir IPs proyecto | Booleano | Indicador de si se han añadido los IPs de los proyectos asociados a las solicitudes de la convocatoria como destinatarios del email de aviso.Estos destinatarios no se mostrarán en el campo "Destinatarios".El campo se muestra en modo consulta. |
| Destinatarios | Componente a medida | Lista de destinatarios del email de aviso. No serán visibles por pantalla los destinatarios a los que se hubiese enviado el aviso al haber marcado los checks "Añadir IPs solicitud" y "Añadir IPs proyecto".El campo se muestra en modo consulta. |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Cancelar | Retorna al formulario de la convocatoria. |  |




