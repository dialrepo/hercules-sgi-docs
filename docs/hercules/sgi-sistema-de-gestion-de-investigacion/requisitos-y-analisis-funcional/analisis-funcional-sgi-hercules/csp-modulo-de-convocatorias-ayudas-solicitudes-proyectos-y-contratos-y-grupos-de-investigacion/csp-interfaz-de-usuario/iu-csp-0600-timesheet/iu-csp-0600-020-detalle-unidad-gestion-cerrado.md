# Hércules : IU\-CSP\-0600\-020 \- Detalle \- Unidad Gestión \- Cerrado



## Formulario Timesheet \- Detalle

Formulario que muestra el timesheet de un miembro de equipo para un mes al  ACT\-CSP\-003\-Gestor de la Unidad de gestión responsable del proyecto, una vez que éste se encuentra en estado "Cerrado". 



|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Detalle de timesheet | | | |
| Investigador | | TextoSolo lectura | Nombre y apellidos del titular del timesheet. Modo lectura.Los datos se recuperarán a través del requisito de integración [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md"). |
| Periodo | | Texto cortoSolo lectura | Mes y año del timesheet. Modo lectura. |
| Estado | | Texto cortoSolo lectura | Si el timesheet se encuentra en estado "Cerrado", no podrá ser introducida ninguna modificación. |
| Título proyecto | | TextoObligatorioSolo lectura | Título de cada proyecto que forma parte del timesheet. |
| Paquete | | TextoOpcionalSolo lectura | Nombre de cada paquete de trabajo en los que puede descomponerse cada proyecto. |
| Actividad común | | TextoOpcionalSolo lectura | Nombre de otras actividades comunes que forman parte del timesheeet. |
| Días | | Numérico enteroSolo lectura | Para cada paquete de trabajo, de cada proyecto, se mostrarán las columnas correspondientes a los días del mes del periodo de timesheet conteniendo la dedicación diaria expresada en horas. |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
|  |  |  |

### Botones generales a la pantalla



| Acciones | Descripción | Descripción CU |
| --- | --- | --- |
| Guardar | Opción deshabilitada | No podrán ser introducidas modificaciones sobre un timesheet en estado cerrado |
| Cancelar | Retorna al listado de timesheet sin salvar los posibles cambios. |  |

### Acciones




