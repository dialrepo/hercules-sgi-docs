# Hércules : IU\-CSP\-0560\-008 \- Periodo justificación \- Horas timesheet



## Formulario Ejecución económica \- Periodo justificación \- Horas timesheet

Formulario que permite vincular los timesheet, registrados desde la sección CSP \- Timesheet, con el periodo de justificación. Por defecto el SGI incluirá en primera instancia los timesheet que dispongan de horas registradas para el proyecto y periodo con los que se corresponde el periodo de justificación. Adicionalmente podrán añadirse de forma manual otros timesheet, siempre que hubieran sido registrados en la sección CSP\-Timesheet. De la misma forma podrá eliminarse cualquiera de los timesheet incluidos por defecto.

Las hojas de firma de los timesheet asociadas al periodo de justificación serán añadidos al apartado Documentación, de forma que ya estén disponibles como parte de los documentos a recopilar para remitir a la entidad gestora.



|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Listado de horas de dedicación de la justificación periodo | | | |
| Estado del periodo de justificación | | Texto corto | Estado en que se encuentra el periodo de justificación. |
| Periodo timesheet | | Texto corto | Mes y año del periodo de registro de horas de dedicación. |
| Persona | | Texto corto | Nombre y apellidos de la persona vinculada al periodo de timesheet.Se recuperará a partir del requisito de integración [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md"). |
| NIF | | Texto corto | NIF de la persona vinculada al periodo de timesheet.Se recuperará a partir del requisito de integración [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md"). |
| Horas | | Numérico entero genérico | Número de horas de dedicación registradas para la persona y periodo indicados. |
| Importe | | Económico | El importe asociado a las  horas de timesheet será calculado en base al coste/hora de cada investigador y las horas imputadas en el timesheet al proyecto. En cada implantación se determinará si este coste/hora:* Será informado desde el sistema de RRHH con lo cual deberá ser un dato común para todos los proyectos. * Será un dato a calcular en el SGI. En este caso el cálculo del coste/hora se realizará por proyecto, considerando: 	+ Coste personal de acuerdo a la nómina. Que deberá ser informada por el SGRRHH ya desglosada en los conceptos de gasto de acuerdo a los que se desglosa el presupuesto (cada uno con su código económico). 	+ Horas productivas anuales. Las horas productivas estarán vinculadas al proyecto (Datos generales) de forma que se establezca para ellas una de las siguientes configuraciones: 		- Valor fijo. Que será introducido en los Datos generales del proyecto. Este valor podrá venir impuesto por la entidad financiadora o por la propia Universidad. Aplicará el mismo valor para todos los miembros del equipo, independientemente de su relación laboral con la Universidad. Se contemplará que pueda ser diferente por cada anualidad del proyecto. 		- Valor fijo dependiente de la relación laboral que cada investigador tenga establecida con la Universidad. Cada tipo de contrato deberá tener asociado un número de horas anual, este dato debe de venir informado desde el sistema de RRHH.  Se contemplará que pueda ser un valor diferente por cada anualidad del contrato. 		- Valor variable o real, de acuerdo a las horas imputadas en timesheet por el propio investigador, a las que se sumarán las horas de dedicación teóricas sobre aquellos proyectos/contrato en los que participe y no figuren en timesheet por tener en su configuración "requiere timesheet" a "no". |
| Motivo rechazo | | Texto corto | Motivo de rechazo del justificante. |
| Comentario rechazo | | Texto largo | Comentario sobre el motivo de rechazo. |
| Modificar | | Icono de acción | Acción "Modificar". |
| Eliminar | | Icono de acción | Acción "Eliminar". |
| Ver | | Icono de acción | Acción "Ver". |
| Añadir timesheet a la justificación | | Icono de acción | Acción "Añadir timesheet a la justificación". |
| Exportar | | Icono de acción | Acción "Exportar". |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Modificar | Muestra la pantalla de modificación de rechazo del gasto | Solo estará disponible si el periodo de justificación se encuentra en uno de los estados siguientes:* Entregada * Subsanación  Muestra una pantalla similar a la de rechazo de gastos, [IU\-CSP\-0405\-005 \- Rechazar gasto en justificación de ejecución económica en proyecto](https://confluence.um.es/confluence/pages/viewpage.action?pageId=91014627 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=91014627") |
| Eliminar | Elimina las horas de dedicación del periodo de justificación | Solo estará disponible si el periodo de justificación se encuentra en uno de los estados siguientes:* Entregada * Subsanación |
| Ver | Produce un cambio de contexto al detalle del Timesheet | Se resuelve con la pantalla [IU\-CSP\-0500\-008 \- Timesheet \- Detalle \- Comprensión general](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0600-timesheet/iu-csp-0600-008-timesheet-detalle-comprension-general.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0600-timesheet/iu-csp-0600-008-timesheet-detalle-comprension-general.md") |
| Añadir timesheet a la justificación | Muestra la pantalla para añadir nuevas horas de dedicación | Se podrán añadir o eliminar horas de timesheet al periodo de justificación mientras éste figure en los estados:* Pendiente * Elaboración * Subsanación  Muestra la pantalla [IU\-CSP\-0405\-008 \- Añadir timesheet a la justificación en ejecución económica de proyecto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0560-periodos-de-justificacion/iu-csp-0560-013-anadir-timesheet-a-periodo-de-justificacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0560-periodos-de-justificacion/iu-csp-0560-013-anadir-timesheet-a-periodo-de-justificacion.md") |
| Exportar | Exporta a .csv la información mostrada en la tabla de horas de dedicación del periodo de justificación |  |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Guardar | Guarda la justificación del periodo con la información introducida en el formulario.Al guardar una justificación del periodo se guarda la información de todos los apartados de definición del proyecto. |  |
| Cancelar | Retorna al listado de Justificaciones sin salvar los posibles cambios.Al cancelar una justificación del periodo se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |

### Acciones




