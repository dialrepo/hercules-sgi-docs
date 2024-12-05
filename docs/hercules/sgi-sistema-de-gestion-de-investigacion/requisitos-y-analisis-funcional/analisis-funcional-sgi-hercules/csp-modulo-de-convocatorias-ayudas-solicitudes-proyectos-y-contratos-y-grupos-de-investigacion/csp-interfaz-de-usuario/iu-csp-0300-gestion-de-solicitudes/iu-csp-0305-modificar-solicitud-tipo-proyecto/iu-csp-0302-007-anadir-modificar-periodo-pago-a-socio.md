# Hércules : IU\-CSP\-0302\-007 \- Añadir\-modificar periodo pago a socio



## Formulario Añadir/modificar periodo pago a socio

Formulario que permite añadir o modificar un periodo de pago al socio durante el proceso de creación o modificación de una solicitud de proyecto.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Nombre del socio | Texto | Nombre de la Empresa que participará como socio colaborador en el proyecto propuesto en la solicitud. Se recuperará el nombre de la empresa a partir de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") |
| Número de periodo | SecuenciaNumérico entero genérico | Número secuencial dentro de la solicitud que asignará directamente el sistema en función de la ordenación del mes |
| Mes previsto de realización del pago | Numérico entero genéricoObligatorio | Mes previsto de pago al socio colaborador por parte de la Universidad. Será relativo a la duración de los proyectos que deriven de la solicitud |
| Importe | EconómicoOpcional | Importe previsto de pago al socio colaborador por parte de la Universidad |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Añadir/Aceptar | El botón se mostrará como:* Añadir, cuando se acceda al formulario desde la opción de añadir un nuevo periodo de pago * Aceptar, cuando se acceda al formulario desde la opción de modificación de un periodo de pago ya añadido  Se añade o modifica el periodo de pago al socio colaborador, tabla "Solicitud Proyecto Periodo Pago" | El mes no podrá ser superior a la duración del proyecto indicada en el campo Duración en la pestaña de Datos proyecto (en caso de estar informado) |
| Cancelar | Retorna al formulario de solicitud, sin salvar los posibles cambios |  |




