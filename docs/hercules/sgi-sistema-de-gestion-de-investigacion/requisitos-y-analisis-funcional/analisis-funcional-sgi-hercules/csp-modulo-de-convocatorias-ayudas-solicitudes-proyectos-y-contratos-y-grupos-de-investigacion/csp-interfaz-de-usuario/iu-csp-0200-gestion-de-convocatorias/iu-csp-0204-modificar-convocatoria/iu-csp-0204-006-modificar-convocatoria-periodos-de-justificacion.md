# Hércules : IU\-CSP\-0204\-006 \- Modificar convocatoria \- Periodos de justificación



## Formulario Modificar convocatoria \- Periodos de justificación

### Formulario con el listado de Periodos justificación

**La modificación de los datos de una convocatoria se rige por lo establecido en las precondiciones de [CU\-CSP\-1000\-001 \- Modificar convocatoria](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria")**



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| **La modificación de los datos de una convocatoria se rige por lo establecido en las precondiciones de [CU\-CSP\-1000\-001 \- Modificar convocatoria](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria")** | | |
| Listado de periodos de justificación de la convocatoria | | |
| Núm. periodo | SecuenciaNumérico entero genérico | Número secuencial dentro de la convocatoria que asignará directamente el sistema en función de la ordenación de la fecha de inicio. |
| Mes inicial | Entero | Mes inicial y mes final definen el periodo a justificar. Serán relativos a la duración de los proyectos que deriven de la convocatoria |
| Mes final | Entero | Mes inicial y mes final definen el periodo a justificar. Serán relativos a la duración de los proyectos que deriven de la convocatoria |
| Fecha inicio presentación | Fecha \+ Hora | Fecha de inicio y fecha de fin definen el plazo de presentación de la justificación a la entidad correspondiente. Ambas están expresadas en formato de fecha y hora. |
| Fecha fin presentación | Fecha \+ Hora | Fecha de inicio y fecha de fin definen el plazo de presentación de la justificación a la entidad correspondiente. Ambas están expresadas en formato de fecha y hora. |
| Tipo | Texto corto | Tipo de la justificación. Se corresponde con el valor del enumerado "tipo justificación" recuperado a través del campo "tipo justificación" de la tabla "convocatoria periodo justificación". |
| Observaciones | Texto largo | Observaciones del periodo de justificación |
| Modificar | Icono de acción | Acción modificar |
| Eliminar | Icono de acción | Acción eliminar |

  
  




| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar | Muestra la pantalla de modificación del plazo seleccionado del listado de plazos de justificación de la convocatoria | Muestra la pantalla de abajo de "Modificar periodo de justificación".Ver restricciones en [CU\-CSP\-1000\-001 \- Modificar convocatoria](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria"). | CSP\-CON\-ECSP\-CON\-E\_UO |
| Eliminar | Elimina el plazo de justificación de la convocatoria | Elimina el registro de la tabla "Periodos justificación convocatoria".Ver restricciones en [CU\-CSP\-1000\-001 \- Modificar convocatoria](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria"). | CSP\-CON\-ECSP\-CON\-E\_UO |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir nuevo periodo de justificación | Muestra la pantalla Nuevo periodo de justificación | Muestra la pantalla [IU\-CSP\-202\-007 \- Añadir periodos justificación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-007-anadir-periodo-de-justificacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-007-anadir-periodo-de-justificacion.md").Ver restricciones en [CU\-CSP\-1000\-001 \- Modificar convocatoria](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria"). | CSP\-CON\-ECSP\-CON\-E\_UO |

### Formulario para modificar un periodo de justificación económica de una convocatoria



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| **La modificación de los datos de una convocatoria se rige por lo establecido en las precondiciones de [CU\-CSP\-1000\-001 \- Modificar convocatoria](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria")** | | |
| Numero de periodo | SecuenciaNumérico entero genérico Obligatorio | Número secuencial dentro de la convocatoria que asignará directamente el sistema en función de la ordenación de la fecha de inicio. Modo consulta. |
| Tipo | SelectorTexto cortoObligatorio | Tipo de la justificación. Se corresponde con el valor del enumerado "tipo justificación" recuperado del campo "tipo justificación" de la tabla "convocatoria periodo justificación". |
| Mes inicial | EnteroObligatorio | Mes inicial y mes final definen el rango del periodo de justificación económica. Son relativos a la duración total de los proyectos derivados de la convocatoria. |
| Mes final | EnteroObligatorio | Mes inicial y mes final definen el rango del periodo de justificación económica. Son relativos a la duración total de los proyectos derivados de la convocatoria. |
| Fecha inicio presentación | Fecha \+ HoraOpcional | Fecha de inicio del plazo de presentación, expresada en formato fecha y hora. La hora de la fecha de inicio tomará por defecto el valor 00:00:00\. El usuario podrá modificar este valor.Se seleccionará a partir de un componente de Calendario que permitirá marcar el día y  hora de inicio del plazo de presentación de la documentación de la justificación económica. |
| Fecha fin presentación | Fecha \+ HoraOpcional | Fecha de fin del plazo de presentación, expresada en formato fecha y hora. La hora de la fecha de fin tomará por defecto el valor 23:59:59\. El usuario podrá modificar este valor.Se seleccionará a partir de un componente de Calendario que permitirá marcar el día y  hora de fin del plazo de presentación de la documentación de la justificación económica. |
| Observaciones | Texto largoOpcional | Observaciones del plazo de justificación |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Aceptar | Actualiza el registro en base de datos | El número de periodo se calculará de forma secuencial y ordenada de acuerdo al mes inicial, de forma que que se recalcule a medida que se realicen inserciones, modificaciones o borrados.Solo deberá existir un periodo de justificación de tipo "final". No se permitirá la creación de nuevos periodos de justificación cuando ya exista un tipo "final".Se comprobará que no se solapen rangos de mes inicial \- mes final. Para ello:* El número de mes (inicial o final) de cualquier periodo será único * Para cualquier periodo mes final ha de ser mayor o igual que mes inicial * No pueden existir solapamientos de meses, si existe un periodo del mes 5 al 10, se puede crear otro periodo del mes 1 al 4\. Habrá que reordenar los distintos periodos cada vez que se añade un nuevo periodo o se modifica uno. * El mes inicial o final de cualquier periodo no podrán superar nunca la duración en meses indicada en datos generales de la convocatoria, siempre que este campo estuviese informado. En caso de no estar informado no se aplicaría esta comprobación. * El primer periodo siempre comenzará en el mes 1 * No pueden existir salto de meses entre periodos, ya que no se puede dar la situación de que queden días fuera desde el día de inicio del primer periodo hasta el día fin del último periodo.  Sobre las fechas de inicio y fin de presentación:* Fecha de fin de presentación de un nuevo periodo ha de ser mayor que fecha de inicio de su mismo periodo * No se limitará que las fechas de inicio y fin de presentación de diferentes periodos se solapen o coincidan  Ver restricciones en [CU\-CSP\-1000\-001 \- Modificar convocatoria](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1000-001+-+Modificar+convocatoria"). | CSP\-CON\-ECSP\-CON\-E\_UO |
| Cancelar | No realiza ninguna operación en base de datos | No se tendrán en cuenta los cambios indicados en el formulario y se volverá al listado de periodos de justificación de la convocatoria |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




