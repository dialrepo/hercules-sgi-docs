# Hércules : IU\-CSP\-202\-007 \- Añadir periodo de justificación



## Formulario Añadir periodo de justificación

Pantalla que muestra un formulario, que permite crear un nuevo periodo de justificación económica de una convocatoria.

Los plazos se añaden desde la pestaña de "Periodos justificación" de la convocatoria [IU\-CSP\-0201\-006 \- Crear convocatoria \- Periodos justificación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-006-crear-convocatoria-periodos-justificacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-006-crear-convocatoria-periodos-justificacion.md").



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Numero de periodo | SecuenciaNumérico entero genéricoObligatorio | Número secuencial dentro de la convocatoria que asignará directamente el sistema en función de la ordenación de la fecha de inicio. Modo consulta. |
| Tipo | SelectorTextoObligatorio | Tipo de justificación:* Periódica * Final  Se corresponde con el campo "tipoJustificación" basado en el enumerado con los valores indicados ("periódica", "final") |
| Mes inicial | EnteroObligatorio | Mes inicial y mes final definen el periodo de justificación. Serán relativos a la duración total de los proyectos derivados de la convocatoria. |
| Mes final | EnteroObligatorio | Mes inicial y mes final definen el periodo de justificación. Serán relativos a la duración total de los proyectos derivados de la convocatoria. |
| Fecha inicio presentación | Fecha \+ HoraOpcional | Fecha de inicio del plazo de presentación, expresada en formato fecha y hora. La hora de la fecha de inicio tomará por defecto el valor 00:00:00\. El usuario podrá modificar este valor.Se seleccionará a partir de un componente de Calendario que permitirá marcar el día y  hora de inicio del plazo de presentación de la documentación de la justificación económica. |
| Fecha fin presentación | Fecha \+ HoraOpcional | Fecha de fin del plazo de presentación, expresada en formato fecha y hora. La hora de la fecha de fin tomará por defecto el valor 23:59:50\. El usuario podrá modificar este valor.Se seleccionará a partir de un componente de Calendario que permitirá marcar el día y  hora de fin del plazo de presentación de la documentación de la justificación económica. |
| Observaciones | Texto lagoOpcional | Observaciones del plazo de justificación |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Añadir | Añade el periodo de justificación | El número de periodo se calculará de forma secuencial y ordenada de acuerdo al mes inicial, de forma que que se recalcule a medida que se realicen inserciones, modificaciones o borrados.Solo deberá existir un periodo de justificación de tipo "final". No se permitirá la creación de nuevos periodos de justificación cuando ya exista un tipo "final".Se comprobará que no se solapen rangos de mes inicial \- mes final. Para ello:* El número de mes (inicial o final) de cualquier periodo será único * Para cualquier periodo mes final ha de ser mayor que mes inicial * No pueden existir solapamientos de meses, si existe un periodo del mes 5 al 10, se puede crear otro periodo del mes 1 al 4\. Habrá que reordenar los distintos periodos cada vez que se añade un nuevo periodo o se modifica uno. * El mes inicial o final de cualquier periodo no podrán superar nunca la duración en meses indicada en datos generales de la convocatoria, siempre que este campo estuviese informado. En caso de no estar informado no se aplicaría esta comprobación.  Sobre las fechas de inicio y fin de presentación:* Fecha de fin de presentación de un nuevo periodo ha de ser mayor que fecha de inicio de su mismo periodo * No se limitará que las fechas de inicio y fin de presentación de diferentes periodos se solapen o coincidan |
| Cancelar | Retorna al formulario de la convocatoria, sin salvar los posibles cambios. |  |




