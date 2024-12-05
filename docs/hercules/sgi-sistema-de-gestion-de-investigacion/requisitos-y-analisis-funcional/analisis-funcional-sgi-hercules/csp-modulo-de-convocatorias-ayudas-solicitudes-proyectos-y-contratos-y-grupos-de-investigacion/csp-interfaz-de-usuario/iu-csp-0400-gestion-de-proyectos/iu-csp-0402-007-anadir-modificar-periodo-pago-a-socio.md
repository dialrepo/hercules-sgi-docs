# Hércules : IU\-CSP\-0402\-007 \- Añadir\-modificar periodo pago a socio



## Formulario Añadir/modificar periodo pago a socio

Formulario que permitirá añadir, durante el proceso de creación o modificación de un proyecto, un periodo de pago a un socio del proyecto, o modificar los datos de un periodo existente.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario para añadir periodos a los socios del proyecto | | |
| Número de periodo | SecuenciaNumérico entero genérico | Número secuencial dentro del proyecto que asignará directamente el sistema en función de la ordenación de la fecha de inicio |
| Fecha prevista de realización del pago | FechaObligatorio | Fecha prevista de pago al socio colaborador por parte de la Universidad |
| Importe | EconómicoObligatorio | Importe a pagar al socio colaborador |
| Fecha de realización del pago | Fecha \+ HoraOpcional | Fecha en la que finalmente se ha realizado el pago al socio colaborador. Se dará cobertura a que pueda expresarse en formato fecha y hora, si bien la hora estará por defecto inicializada al valor 00:00:00\. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir/ Aceptar | El botón se muestra como:* Añadir, cuando se accede al formulario para añadir un nuevo periodo de pago. * Aceptar, cuando se accede al formulario para modificar los datos de un periodo de pago ya creado sobre el proyecto. | Añade /modificar el periodo de pago al socio del proyecto. Tabla "proyecto socio periodo pago"La fecha prevista de realización del pago será utilizada por los módulos de tareas programadas y de comunicados para generar un aviso en el módulo de comunicados según lo descrito en [CSP \- Comunicados](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al formulario del socio colaborador, sin salvar los posibles cambios |  |  |




