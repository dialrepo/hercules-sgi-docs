# Hércules : IU\-CSP\-0600\-017 \- Detalle \- Unidad Gestión \- Validado IM



## Formulario Timesheet \- Detalle

Formulario que muestra el timesheet de un miembro de equipo para un mes al  ACT\-CSP\-003\-Gestor de la Unidad de gestión responsable del proyecto. El timesheet se encontrará en estado "Validado IM" y el ACT\-CSP\-003\-Gestor podrá revisarlo de forma íntegra (no por proyecto) añadiendo un comentario en caso de marcarlos como subsanación. Este flujo, de Validado IM  a Unidad de gestión (sin pasar por el rol IP), solo estará habilitado en caso que en la configuración de implantación se indique que no existe validación por parte de IP de proyecto (ACT\-CSP\-001\-Investigador con rol principal).



|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Detalle de timesheet | | | |
| Investigador | | TextoSolo lectura | Nombre y apellidos del titular del timesheet. Modo lectura.Los datos se recuperarán a través del requisito de integración[REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md"). |
| Periodo | | Texto cortoSolo lectura | Mes y año del timesheet. Modo lectura. |
| Estado | | Texto cortoSolo lectura | Un ACT\-CSP\-003\-Gestor solo recibirá el timesheet desde estado "Validado IM" en el caso que la configuración de implantación del SGI establezca que no existe validación de timesheet por parte de IP.En estas circunstancias el estado actual del timesheet será "Validado IM" y desde aquí, ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador podrán pasarlo a uno de los estados:* Validado Unidad * Subsanación  El cambio de estado supondrá la generación de un aviso en [AVI \- Módulo de Avisos / Alertas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md") |
| Comentario | | TextoOpcional | El campo comentario se activará en el caso de que el estado elegido sera "Subsanación" y permitirá al ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador indicar el comentario de corrección destinado al ACT\-CSP\-001\-Investigador titular del timesheet. |
| Título proyecto | | TextoObligatorioSolo lectura | Título de cada proyecto que forma parte del timesheet |
| Paquete | | TextoOpcionalSolo lectura | Nombre de cada paquete de trabajo en los que puede descomponerse cada proyecto |
| Actividad común | | TextoOpcionalSolo lectura | Nombre de otras actividades comunes que forman parte del timesheeet |
| Días | | Numérico enteroSolo lectura | Para cada paquete de trabajo, de cada proyecto, se mostrarán las columnas correspondientes a los días del mes del periodo de timesheet conteniendo la dedicación diaria expresada en horas. |
| Comentario | | Icono de acciónOpcionalSolo lectura |  |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Ver comentario |  | Muestra ventana modal con el contenido del comentario indicado por ACT\-CSP\-001\-Investigador |

### Botones generales a la pantalla



| Acciones | Descripción | Descripción CU |
| --- | --- | --- |
| Guardar | Guarda el timesheet con la información introducida en el formulario.Al guardar un timesheet se guarda la información de todos los apartados de definición del timesheet. | Se actualizará el estado del proyecto sobre el timesheet a estado "Validado Unidad" o "Subsanación", generando un  [AVI \- Módulo de Avisos / Alertas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md") hacia el ACT\-CSP\-001\-Investigador titular del timesheet.Se comprobará que se haya seleccionado uno de los dos estados, sin que por defecto esté preseleccionado ninguno de ellos. |
| Cancelar | Retorna al listado de timesheet sin salvar los posibles cambios. |  |

### Acciones

  
  





