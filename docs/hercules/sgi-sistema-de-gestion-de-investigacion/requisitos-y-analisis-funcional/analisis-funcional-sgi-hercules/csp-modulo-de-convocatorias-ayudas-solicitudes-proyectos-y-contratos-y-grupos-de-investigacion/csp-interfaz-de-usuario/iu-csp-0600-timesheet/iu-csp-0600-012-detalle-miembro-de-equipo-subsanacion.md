# Hércules : IU\-CSP\-0600\-012 \- Detalle \- Miembro de equipo \- Subsanación



## Formulario Timesheet \- Detalle

Formulario que muestra el timesheet para un  mes al  ACT\-CSP\-001\-Investigador titular del mismo. Para que el ACT\-CSP\-001\-Investigador titular del timesheet pueda modificar las horas del mismo, el timesheet deberá figurar en estado "Abierto" o "Subsanación"

El estado Subsanación será indicado por cualquiera de los ACT\-CSP\-001\-Investigador con rol principal de los proyectos incluidos en el timesheet. Es decir, en este estado el TS podrá tener la validación del responsable de proyecto para algunos de los proyectos y otros pueden requerir correcciones.



|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Detalle de timesheet | | | |
| Periodo | | Texto corto | Mes y año del periodo de registro de horas de dedicación. Modo lectura. |
| Estado | | SelectorTexto cortoObligatorio | Del estado "Subsanación" ACT\- CSP\-001\-Investigador (propietario del timesheet) podrá pasar el Timesheet a estado "Validado IM"Mientras el Timesheet esté en estado Subsanación, ACT\- CSP\-001\-Investigador (propietario del timesheet) podrá modificar las horas de dedicación de aquellos proyectos que no hayan sido validados por ACT\- CSP\-001\-Investigador responsable.El ACT\- CSP\-001\-Investigador (propietario del timesheet) pasará el estado a "Validado IM", lo que desencadenará de nuevo el ciclo de validación para el/los proyectos en subsanación. Una vez marcado el estado "ValidadoIM" ACT\- CSP\-001\-Investigador no podrá modificar el timesheet. |
| Validado IP | | BooleanSolo lecturaObligatorio | Indica si las horas registradas sobre el proyecto han sido validadas por el ACT\- CSP\-001\-Investigador responsable o si, por el contrario, presentan alguna anomalía que debe ser subsanada |
| Comentario IP | | IconoOpcional | Mostrará el detalle del comentario indicado por el ACT\- CSP\-001\-Investigador responsable para la corrección |
| Título proyecto | | TextoObligatorio | Título de cada proyecto que forma parte del timesheet |
| Paquete | | TextoOpcional | Nombre de cada paquete de trabajo en los que puede descomponerse cada proyecto |
| Actividad común | | TextoOpcional | Nombre de otras actividades comunes que forman parte del timesheeet |
| Días | | Numérico entero | Para cada paquete de trabajo, de cada proyecto, se mostrarán las columnas correspondientes a los días del mes del periodo de timesheet que permitirán la introducción de la dedicación diaria. Solo podrán ser modificadas las horas de aquellos proyectos que no dispongan de la validación por parte del ACT\- CSP\-001\-Investigador responsable |
| Comentario | | Icono de acciónOpcional |  |



| Acciones | Descripción | Descripción |
| --- | --- | --- |
| Ver comentario IP | Permite ver el comentario aportado por el responsable de proyecto para la subsanación de las horas del proyecto | Muestra el comentario aportado por el ACT\- CSP\-001\-Investigador responsable, en modo lectura[IU\-CSP\-0500\-011 \- Timesheet \- Detalle \- Miembro de equipo \- Subsanación \- Comentario IP](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0600-timesheet/iu-csp-0600-013-detalle-miembro-de-equipo-subsanacion-comentario-ip.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0600-timesheet/iu-csp-0600-013-detalle-miembro-de-equipo-subsanacion-comentario-ip.md") |
| Añadir comentario | Permite a ACT\-CSP\-001\-Investigador añadir un comentario destinado al ACT\-CSP\-001\-Investigador con rol principal del proyecto | Muestra la pantalla para añadir o ver el comentario asociado al timesheet. Solo estará habilitado para aquellos proyectos que no dispongan de la validación por parte del ACT\- CSP\-001\-Investigador responsable, es decir, aquellos cuyas horas puedan ser modificadas. Muestra[IU\-CSP\-0500\-009 \- Timesheet \- Detalle \- Miembro de equipo \- Edición inicial \- Comentario](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0600-timesheet/iu-csp-0600-011-detalle-miembro-de-equipo-edicion-inicial-comentario.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0600-timesheet/iu-csp-0600-011-detalle-miembro-de-equipo-edicion-inicial-comentario.md") |

### Botones generales a la pantalla



| Acciones | Descripción | Descripción CU |
| --- | --- | --- |
| Guardar | Guarda el timesheet con la información introducida en el formulario.Al guardar un timesheet se guarda la información de todos los apartados de definición del timesheet. | Se actualizará el TS de acuerdo a los valores introducidos en los campos días.Si el estado ha sido modificado a "ValidadoIM" se generará un  [AVI \- Módulo de Avisos / Alertas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md"). |
| Cancelar | Retorna al listado de timesheet sin salvar los posibles cambios.Al cancelar un timesheet se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |

### Acciones

  
  
  
  
  
  





