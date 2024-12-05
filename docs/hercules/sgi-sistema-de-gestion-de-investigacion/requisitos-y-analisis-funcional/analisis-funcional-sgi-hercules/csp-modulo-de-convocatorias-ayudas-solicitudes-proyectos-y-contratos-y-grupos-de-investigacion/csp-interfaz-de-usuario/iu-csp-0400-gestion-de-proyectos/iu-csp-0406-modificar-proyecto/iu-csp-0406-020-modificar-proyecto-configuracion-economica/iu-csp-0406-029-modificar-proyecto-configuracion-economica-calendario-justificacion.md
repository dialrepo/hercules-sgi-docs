# Hércules : IU\-CSP\-0406\-029 \- Modificar proyecto \- Configuración económica \- Calendario justificación



## Formulario Modificar proyecto \- Configuración económica \- Calendario justificación

Formulario que permite introducir el calendario de justificación del proyecto. Si el proyecto se ha creado a partir de una solicitud concedida o se ha indicado la convocatoria de origen, se cargará el calendario que se hubiera recogido en la misma. Los meses inicial y final de la convocatoria se traducirán a fecha inicio y fecha fin a partir de la fecha de inicio del proyecto.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de calendario de justificación económica del proyecto: recuperados de la tabla "proyecto periodo justificación" (filas sin icono o con el icono naranja) y "convocatoria periodo justificación" (filas con el icono rojo) | | |
|  | Icono de ayuda con tooltip | Se dibujará el icono de ayuda de color naranja en las siguientes situaciones:1. Datos del periodo de justificación del proyecto no coinciden con los datos del periodo de justificación de la convocatoria ( los campos del registro de la tabla "proyecto periodo justificación" no son iguales al registro de la tabla de la convocatoria "convocatoria periodo justificación"): El texto del tootip en este caso será "La configuración del periodo de justificación tiene diferencias respecto a la convocatoria. Pulse el botón Editar para revisar sus datos." 2. El periodo de justificación se ha creado en el proyecto directamente (el identificador del registro de la convocatoria es null en la tabla "proyecto periodo justificación"): El texto del tooltip en este caso será: "Este periodo de justificación no está incluido en la configuración de la convocatoria."  Se dibujará el icono de ayuda de color rojo en la siguiente situación:  3 . El periodo de justificación no existe en el proyecto (registro no existe en la tabla "proyecto periodo justificación")  pero sí en la convocatoria (registro en la tabla "convocatoria periodo justificación"), bien porque se ha eliminado en el proyecto o porque se ha creado nuevo en la convocatoria una vez creado el proyecto: El texto del tootip en este caso será "Este periodo de justificación está incluido en la configuración de la convocatoria pero no en el proyecto. Pulse el botón Editar si desea añadirlo al proyecto." |
| Número periodo | SecuenciaNumérico entero genérico | Número secuencial interno al proyecto/contrato que asignará directamente el sistema en función de la ordenación de las fechas de los periodos. No existirán dos periodos con el mismo número |
| Fecha inicio periodo | Fecha | Fecha inicio y fecha fin definen el periodo de justificación |
| Fecha fin periodo | Fecha | Fecha inicio y fecha fin definen el periodo de justificación |
| Fecha inicio  presentación | Fecha \+ Hora | Periodo de presentación de la justificación limitado por una fecha y hora de inicio y una fecha y hora de fin. Marcará el periodo en el que debe de ser remitida la documentación de justificación a la entidad correspondiente |
| Fecha fin presentación | Fecha \+ Hora |
| Tipo | Texto corto | Tipo de periodo, será un dato informativo que indique la naturaleza del periodo de justificación. Los valores disponibles serán "periódico" y "final". Con el valor "periódico" se representará de manera genérica a cualquier periodicidad que pueda exigir cada proyecto particular (anual, trimestral, etc.)Tomará los valores "Periódico"/"Final" |
| Observaciones | Texto largo | Campo de texto libre para dejar recogida cualquier información que ser considere relevante |
| Modificar | Icono de acción | Acción "Modificar" |
| Eliminar | Icono de acción | Acción "Eliminar" |
| Ver | Icono de acción | Acción "Ver" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar | Muestra la pantalla de modificación del periodo de justificación seleccionado del listado de periodos | Se resuelve con la pantalla [IU\-CSP\-0402\-025 \- Añadir periodo de justificación a configuración económica de proyecto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-025-anadir-periodo-de-justificacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-025-anadir-periodo-de-justificacion.md")Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Eliminar | Elimina el periodo de justificación del calendario de justificación del proyecto | Sólo estará disponible si se cumplen las tres condiciones siguientes:* El periodo pertenece al proyecto, es decir, existe en la tabla "proyecto periodo justificación" (y no es un periodo que se esté mostrando en el listado por pertenecer a la convocatoria sin haber sido aplicado al proyecto y que, por tanto, se estaría mostrando con el icono de advertencia color rojo) * El periodo de justificación no tiene requerimientos asociados (tabla "requerimiento justificación" del modelo lógico "ejecución económica")  Si el periodo de ejecución tiene requerimientos asociados (existe al menos un registro en tabla "requerimiento justificación" del modelo lógico "ejecución económica" asociado al periodo de justificación), se mostrará un icono informativo, en lugar del icono de la acción eliminar. Al pasar el ratón por encima del icono se mostrará un tooltip "No se puede eliminar el periodo de justificación ya que tiene que requerimientos asociados en el apartado seguimiento de justificación. Debe eliminar previamente los requerimientos".Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Añadir nuevo período de justificación |  | Muestra la pantalla [IU\-CSP\-0402\-025 \- Añadir periodo de justificación a configuración económica de proyecto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-025-anadir-periodo-de-justificacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-025-anadir-periodo-de-justificacion.md").Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modifica el Proyecto con la información introducida en el formulario.Al guardar un proyecto se guardará la información de todos los apartados de definición del proyecto. | Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578") | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al listado de Proyectos sin salvar los posibles cambios.Al cancelar un proyecto se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Comunicados

Se enviarán avisos/comunicados relativos al inicio de los períodos de justificación que serán gestionados externamente a esta gestión por parte del módulo de tareas programadas y del de comunicados (o envío de emails).

La descripción detallada para la generación de este tipo de comunicado se encuentra en el apartado **Proyectos \- Calendario de justificación** dentro de [CSP \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/index.md") y el flujo general de operativa de este tipo de comunicados en [CU\-COM\-0020 \- Generar comunicado programado](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/com-casos-de-uso/cu-com-0020-generar-comunicado-programado.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/com-casos-de-uso/cu-com-0020-generar-comunicado-programado.md").

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




