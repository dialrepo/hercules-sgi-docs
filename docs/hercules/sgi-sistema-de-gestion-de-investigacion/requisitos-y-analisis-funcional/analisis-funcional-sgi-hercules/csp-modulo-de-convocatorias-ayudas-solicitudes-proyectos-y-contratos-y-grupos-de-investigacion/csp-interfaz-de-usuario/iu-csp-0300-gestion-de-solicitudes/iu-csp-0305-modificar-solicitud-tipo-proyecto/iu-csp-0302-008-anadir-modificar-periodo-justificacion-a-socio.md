# Hércules : IU\-CSP\-0302\-008 \- Añadir\-modificar periodo justificación a socio



## Formulario Añadir/modificar periodo justificación a socio

Formulario que permite añadir o modificar un periodo de justificación a un socio durante el proceso de creación o modificación de una solicitud de proyecto.



|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Nombre del socio | | Texto | Nombre de la Empresa que participará como socio colaborador en el proyecto propuesto en la solicitud.  Se recuperará a través de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") |
| Número de periodo | | SecuenciaNumérico entero genérico | Número secuencial dentro de la solicitud que asignará directamente el sistema en función de la ordenación de la fecha de inicio |
| Periodo a justificar | Desde el mes | Numérico entero genéricoObligatorio | Periodo a justificar por parte del socio colaborador.Mes inicial del periodo a justificar. Será relativo a la duración del proyecto que derive de la solicitud |
| Hasta el mes | Numérico entero genéricoObligatorio | Periodo a justificar por parte del socio colaborador.Mes final del periodo a justificar. Será relativo a la duración de proyecto que derive de la solicitud |
| Periodo de presentación de la justificación | Fecha de inicio | Fecha \+ HoraOpcional | Fecha de inicio del plazo de presentación de la justificación a la Universidad por parte del socio colaborador. Expresada en formato fecha y horaLa hora de la fecha de inicio tomará por defecto el valor 00:00:00\. El usuario podrá modificar este valor.Se seleccionará a partir de un componente de Calendario que permitirá marcar el día y hora de inicio del plazo. |
| Fecha de fin | Fecha \+ HoraOpcional | Fecha de fin del plazo de presentación de la justificación a la Universidad por parte del socio colaborador. Expresada en formato fecha y horaLa hora de la fecha de fin tomará por defecto el valor 23:59:59\. El usuario podrá modificar este valor.Se seleccionará a partir de un componente de Calendario que permitirá marcar el día y hora de fina del plazo. |
| Observaciones | | Texto largoOpcional | Campo abierto que permite introducir cualquier observación sobre el periodo de justificación |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Añadir/Aceptar | El botón se mostrará como:* Añadir, cuando se acceda al formulario para añadir un nuevo periodo de justificación al socio. * Aceptar, cuando se acceda al formulario para modificar los datos de un periodo de justificación del socio ya creado.  Añade o modifica el periodo de justificación al/del socio colaborador, tabla "Solicitud Proyecto Periodo Justificación" | El número de periodo se calculará de forma secuencial y ordenada de acuerdo al mes inicial, de forma que que se recalcule a medida que se realicen inserciones, modificaciones o borrados.Se comprobará que no se solapen rangos de mes inicial \- mes final. Para ello:* El número de mes (inicial o final) de cualquier periodo será único * Para cualquier periodo mes final ha de ser mayor o igual que mes inicial * No pueden existir solapamientos de meses, si existe un periodo del mes 5 al 10, se puede crear otro periodo del mes 1 al 4\. Habrá que reordenar los distintos periodos cada vez que se añade un nuevo periodo o se modifica uno. * El mes inicial o final de cualquier periodo no podrán superar nunca la duración en meses indicada en datos generales de la solicitud, siempre que este campo estuviese informado. En caso de no estar informado no se aplicaría esta comprobación. * El primer periodo siempre comenzará en el mes 1 * No pueden existir salto de meses entre periodos, ya que no se puede dar la situación de que queden días fuera desde el día de inicio del primer periodo hasta el día fin del último periodo.  Sobre las fechas de inicio y fin del periodo de solicitud de la justificación:* Fecha de fin de un nuevo periodo ha de ser mayor que fecha de inicio de su mismo periodo. * No se limitará que las fechas de inicio y fin de diferentes periodos se solapen o coincidan. |
| Cancelar | Retorna al formulario de solicitud, sin salvar los posibles cambios |  |

  
  
  
  
  
  





