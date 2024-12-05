# Hércules : IU\-CSP\-0600\-016 \- Detalle \- Principal \- Validación



## Formulario Timesheet \- Detalle

Formulario que muestra el timesheet de un miembro de equipo para un mes al  ACT\-CSP\-001\-Investigador responsable del proyecto. El timesheet se encontrará en estado "Validado IM" y el ACT\-CSP\-001\-Investigador responsable solo podrá validar los proyectos para los que es reponsable, añadiendo un comentario en caso de marcarlos como subsanación.



|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Detalle de timesheet | | | |
| Investigador | | TextoSolo lectura | Nombre y apellidos del titular del timesheet. Modo lectura |
| Periodo | | Texto cortoSolo lectura | Mes y año del timesheet. Modo lectura. |
| Estado | | Texto cortoSolo lectura | Cuando un ACT\-CSP\-001\-INVESTIGADOR con rol principal recibe los TS de un miembro del equipo de proyecto el estado será "Validado IM". La validación o subsanación será realizada a nivel de proyecto. |
| Selector de proyecto | | Boolean | Check, para permitir seleccionar el proyecto. El check solo estará disponible sobre los proyectos del timesheet para los que ACT\-CSP\-001\-Investigador actúe con rol principal en el periodo al que se corresponde el TS. Se podrá marcar simultáneamente uno o más proyectos. Sobre los proyectos marcados actuarán los campos "Nuevo estado" y " Comentario para subsanación" |
| Título proyecto | | TextoObligatorioSolo lectura | Título de cada proyecto que forma parte del timesheet |
| Paquete | | TextoOpcionalSolo lectura | Nombre de cada paquete de trabajo en los que puede descomponerse cada proyecto |
| Actividad común | | TextoOpcionalSolo lectura | Nombre de otras actividades comunes que forman parte del timesheeet |
| Días | | Numérico enteroSolo lectura | Para cada paquete de trabajo, de cada proyecto, se mostrarán las columnas correspondientes a los días del mes del periodo de timesheet que permitirán la introducción de la dedicación diaria. No serán editables por parte de ACT\-CSP\-001\-Investigador con rol principal que solamente podrá aportar los comentarios requeridos para la subsanación, siendo el ACT\-CSP\-001\-Investigador titular del timesheet el que realice las correcciones sobre la imputación diaria. |
| Comentario | | Icono de acciónOpcionalSolo lectura |  |
| Nuevo estado | | SelectorTextoObligatorio | El ACT\-CSP\-001\-Investigador con rol principal podrá marcar los proyectos del TS en los que actúa como responsable a estado* Validado IP * Subsanación  En caso de marcar Subsanación se permitirá incluir un comentario en el campo "comentario para subsanación" El nuevo estado generará un [AVI \- Módulo de Avisos / Alertas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md")Se aplicará el mismo estado a todos los proyectos seleccionados. En caso de precisar distintos estados para diferentes proyectos se deberá realizar el Guardar en diferentes iteraciones para cada uno de los proyectos. |
| Comentario para subsanación | | TextoOpcional | Se mostrará en caso que el estado seleccionado en "Nuevo estado" sea "subsanación" |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Ver comentario |  | Muestra ventana modal con el contenido del comentario. |

### Botones generales a la pantalla



| Acciones | Descripción | Descripción CU |
| --- | --- | --- |
| Guardar | Guarda el timesheet con la información introducida en el formulario.Al guardar un timesheet se guarda la información de todos los apartados de definición del timesheet. | Se actualizará el estado del proyecto sobre el timesheet a estado "Validado IP" o "Subsanación", generando un  [AVI \- Módulo de Avisos / Alertas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md") hacia el ACT\-CSP\-001\-Investigador titular del timesheet.Se comprobará que se haya seleccionado uno de los dos estados, sin que por defecto esté preseleccionado ninguno de ellos. El estado seleccionado y el comentario (en caso que aplique) se asociarán a todos los proyectos para los que se hubiese marcado el selector. En caso de requerir diferentes estados sobre diferentes proyectos, el  ACT\-CSP\-001\-Investigador responsable debe realizar dos acciones de guardado sobre este formulario. |
| Cancelar | Retorna al listado de timesheet sin salvar los posibles cambios.Al cancelar un timesheet se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |

### Acciones

  
  
  
  
  
  





