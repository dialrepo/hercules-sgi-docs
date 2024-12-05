# Hércules : IU\-CSP\-0560\-001\- Periodos justificación



## Formulario Ejecución económica \- Periodos justificación

Formulario que muestra los datos introducidos en el "[Calendario de justificaciones](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-020-modificar-proyecto-configuracion-economica/iu-csp-0406-029-modificar-proyecto-configuracion-economica-calendario-justificacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-020-modificar-proyecto-configuracion-economica/iu-csp-0406-029-modificar-proyecto-configuracion-economica-calendario-justificacion.md")".

En una pantalla de solo consulta, se muestran los periodo registrados en la parte de configuración económica del proyecto.



|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Listado de calendario de justificación económica del proyecto (registros de la tabla "ProyectoPeriodoJustificacion") | | | |
| Número período | | SecuenciaNumérico entero genérico | Número secuencial interno al proyecto/contrato que asignará directamente el sistema en función de la ordenación de las fechas de los periodos. No existirán dos periodos con el mismo número |
| Fecha inicio | | Fecha | Fecha inicio y fecha fin definen el periodo de justificación |
| Fecha fin | | Fecha | Fecha inicio y fecha fin definen el periodo de justificación |
| Fecha inicio presentación | | Fecha | Periodo de entrega de la justificación limitado por una fecha de inicio y una fecha de fin y marcará el periodo en el que debe de ser remitida la documentación de justificación a la entidad correspondiente |
| Fecha fin presentación | | Fecha |
| Tipo | | Texto corto | Tipo de periodo, será un dato informativo que indique la naturaleza del periodo de justificación. Los valores disponibles serán "periódico" y "final". Con el valor "periódico" se representará de manera genérica a cualquier periodicidad que pueda exigir cada proyecto particular (anual, trimestral, etc.)Tomará los valores "Periódico"/"Final" |
| Observaciones | | Texto largo | Campo de texto libre para dejar recogida cualquier información que ser considere relevante |
| Ver | | Icono de acción | Acción "Ver" |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Ver | Produce un cambio de contexto al periodo de justificación seleccionado del listado de periodos | Muestra la pantalla [IU\-CSP\-0404\-013\-001 \- Ejecución económica \- Justificaciones \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0560-periodos-de-justificacion/iu-csp-0560-002-periodo-justificacion-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0560-periodos-de-justificacion/iu-csp-0560-002-periodo-justificacion-datos-generales.md") |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Guardar | Guarda la Ejecución económica con la información introducida en el formulario.Al guardar una ejecución económica se guarda la información de todos los apartados de definición del proyecto. |  |
| Cancelar | Retorna al listado de Ejecuciones económicas sin salvar los posibles cambios.Al cancelar una ejecución económica se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |

### Acciones

  
  
  
  
  
  





