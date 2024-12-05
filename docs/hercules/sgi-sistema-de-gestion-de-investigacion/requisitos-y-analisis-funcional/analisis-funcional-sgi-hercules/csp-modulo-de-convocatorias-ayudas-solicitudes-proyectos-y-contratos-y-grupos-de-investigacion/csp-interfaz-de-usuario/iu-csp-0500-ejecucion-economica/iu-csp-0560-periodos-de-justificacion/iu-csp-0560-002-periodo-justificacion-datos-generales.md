# Hércules : IU\-CSP\-0560\-002 \- Periodo justificación \- Datos generales



## Formulario Ejecución económica \- Justificaciones \- Datos generales

Formulario que muestra los datos introducidos en el "[Calendario de justificaciones](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-020-modificar-proyecto-configuracion-economica/iu-csp-0406-029-modificar-proyecto-configuracion-economica-calendario-justificacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-020-modificar-proyecto-configuracion-economica/iu-csp-0406-029-modificar-proyecto-configuracion-economica-calendario-justificacion.md")". Se mostrarán a modo de resumen para tenerlos accesibles mientras se gestiona la justificación.



|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Datos generales de la justificación del periodo (se obtienen de la tabla "ProyectoPeriodoJustificacion") | | | |
| Estado | | SelectorTexto cortoObligatorio | El cambio de estado será siempre manual.Los estados por los que puede pasar una justificación serán:* Pendiente: Es el estado inicial, en el que se crea el periodo de justificación cuando es añadido en el "Calendario de justificaciones"  de "Configuración económica". * Elaboración: Los ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador podrán poner el periodo de justificación en este estado, para indicar que se está trabajando sobre él. * Entregada: Estado para indicar que el periodo de justificación ha sido remitido a la entidad gestora del proyecto. * Subsanación:  Estado para indicar que la entidad gestora ha remitido alguna indicación sobre la justificación. * Cerrada: Estado para indicar que la entidad gestora ya ha aceptado la justificación y ésta pasa a estar cerrada, sin que se pueda ya modificar ninguno de sus datos.  El estado "Entregada" junto con el periodo de entrega de la justificación (fecha fin), supondrá la creación de un aviso a través del módulo [AVI \- Módulo de Avisos / Alertas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md"), de forma que, si no se registra el estado antes de la fecha fin, se notificará el aviso correspondiente. Este aviso será un refuerzo al ya generado a partir de la fecha de inicio del periodo de justificación (identificado en el apartado "Configuración económica" \- "Calendario de justificación"). |
| Comentario | | Texto largoOpcional | Comentario asociado al cambio de estado |
| Número período | | SecuenciaNumérico entero genérico | Número secuencial interno al proyecto/contrato que asignará directamente el sistema en función de la ordenación de los meses de los periodos. No existirán dos periodos con el mismo número |
| Tipo de periodo | | Texto corto | Tipo de periodo, será un dato informativo que indique la naturaleza del periodo de justificación. Los valores disponibles serán "periódico" y "final". Con el valor "periódico" se representará de manera genérica a cualquier periodicidad que pueda exigir cada proyecto particular (anual, trimestral, etc.)Tomará los valores "Periódico"/"Final" |
| Periodo a justificar | Desde el mes | Numérico entero genérico | Mes inicial y mes final definen el periodo de justificación. Serán relativos a la fecha de inicio del proyecto |
| Hasta el mes | Numérico entero genérico |
| Fechas de inicio y fin del periodo | Fecha de inicio | Fecha | El sistema calculará automáticamente la fecha de inicio del periodo a partir de la fecha de inicio del proyecto y del mes indicado para el periodo en el campo "Desde el mes" |
| Fecha de fin | Fecha | El sistema calculará automáticamente la fecha de fin del periodo a partir de la fecha de inicio del proyecto y del mes indicado para el periodo en el campo "Hasta el mes" |
| Periodo de presentación de justificación | Fecha inicio presentación | Fecha \+ Hora | Periodo de entrega de la justificación limitado por una fecha y hora de inicio y una fecha y hora de fin. Marcará el periodo en el que debe de ser remitida la documentación de justificación a la entidad correspondiente |
| Fecha fin presentación | Fecha \+ Hora |
| Observaciones | | Texto largo | Campo de texto libre para dejar recogida cualquier información que ser considere relevante |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
|  |  |  |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Guardar | Guarda la justificación del periodo con la información introducida en el formulario.Al guardar una justificación del periodo se guarda la información de todos los apartados de definición del proyecto. |  |
| Cancelar | Retorna al listado de Justificaciones sin salvar los posibles cambios.Al cancelar una justificación del periodo se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |

### Acciones

  
  
  
  
  
  





