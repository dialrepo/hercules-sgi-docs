# Hércules : IU\-CSP\-0406\-012 \- Modificar proyecto \- Fases



## Formulario Modificar proyecto \- Fases

Formulario que permite indicar diferentes fases del proyecto, teniendo en cuenta que los periodos de justificación y de seguimiento científico tendrán sus propios apartados.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de fases y plazos de un proyecto | | |
| Fecha y hora de inicio | Fecha \+ hora | Fecha y hora de inicio de la fase definida para el proyecto. Expresada en formato de fecha y hora. |
| Fecha y hora de fin | Fecha \+ hora | Fecha y hora de fin de la fase definida para el proyecto. Expresada en formato de fecha y hora. |
| Tipo de fase | Texto corto | Los tipos de fase disponibles serán los configurados sobre el modelo de ejecución al que se haya asociado al proyecto. |
| Observaciones | Texto largo | Observaciones sobre la fase. |
| Aviso | Booleano | Indicará si se ha activado la creación de un aviso para la fase.Campo "aviso" del registro de la tabla "fases proyecto". |
| Modificar | Icono de acción | Acción "Modificar". |
| Eliminar | Icono de acción | Acción "Eliminar". |
| Añadir fase | Icono de acción | Acción "Añadir fase". |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar | Muestra la pantalla de modificación de la fase seleccionada del listado de fase de proyecto. | Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578").Se resuelve con la pantalla [IU\-CSP\-0402\-009 \- Añadir\-modificar fase](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-009-anadir-modificar-fase-a-proyecto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-009-anadir-modificar-fase-a-proyecto.md"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Eliminar | Elimina la fase del proyecto. | Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578").Elimina el registro de la tabla "fases proyecto".Si la fase tuviese asociados avisos y/o tareas programadas, se deberán eliminar también, invocando para todo ello a los métodos correspondientes del API de los módulos de comunicados [CSP \- Comunicados](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados") y de tareas programadas [SGI \- TP](https://confluence.um.es/confluence/display/HERCULES/SGI+-+TP "https://confluence.um.es/confluence/display/HERCULES/SGI+-+TP") respectivamente. | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir fase | Muestra la pantalla Nueva fase de proyecto. | Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578").Se resuelve con la pantalla [IU\-CSP\-0402\-009 \- Añadir\-modificar fase a proyecto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-009-anadir-modificar-fase-a-proyecto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-009-anadir-modificar-fase-a-proyecto.md"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modifica el Proyecto con la información introducida en el formulario.Al guardar un proyecto se guardar la información de todos los apartados de definición del proyecto. | Ver restricciones de modificación en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578").Se validará que no existan dos fases para el mismo Tipo de fase para un rango de fechas solapado. Podría darse el caso que el mismo Tipo de fase se repita en el proyecto, pero sin solapar los rangos de fecha marcados por la fecha de inicio y fecha de fin de cada fase.No se aplicará ninguna validación de solapamiento entre los rangos de fechas que apliquen sobre distintos Tipos de fase.Todas las validaciones realizadas sobre las fechas se harán considerando las horas de ambas.Al guardar los cambios además habrá que tener en cuenta los comunicados y tareas programadas asociados que se deben generar/eliminar/modificar en función de los cambios realizados según se describe en el apartado [Comunicados](#IUCSP0406012ModificarproyectoFases-comunicados "#IUCSP0406012ModificarproyectoFases-comunicados") y en las acciones "Eliminar" de este listado de fases y "Aceptar" del popup [IU\-CSP\-0402\-009 \- Añadir\-modificar fase a proyecto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-009-anadir-modificar-fase-a-proyecto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-009-anadir-modificar-fase-a-proyecto.md"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al listado de Proyectos sin salvar los posibles cambios.Al cancelar el guardado de un proyecto, se descarta la información nueva y/o modificada de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Comunicados

En el caso de que se marque el check "Generar aviso" de alguna fase que previamente no lo tuviese marcado, se desmarque dicho check de alguna fase que sí lo tuviese previamente marcado o que se modifiquen los datos del propio aviso, será necesario dar de alta, de baja o modificar respectivamente, los datos del comunicado y/o de la tarea programada, que se hubiesen generado con motivo del aviso asociado a dicho hito, en los módulos de comunicados [COM \- Módulo de Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md") y de tareas programadas [SGI \- TP](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-tp/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-tp/index.md") respectivamente.  


Lo mismo ocurrirá para el caso de que se marque/desmarque el check "Generar segundo aviso" o se modifiquen los datos de dicho aviso.

La descripción detallada para la generación de este tipo de comunicado se encuentra en el apartado **Fases de proyectos**dentro de [CSP \- Comunicados](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados") y el flujo general de operativa de este tipo de comunicados en [CU\-COM\-0020 \- Generar comunicado programado](https://confluence.um.es/confluence/display/HERCULES/CU-COM-0020+-+Generar+comunicado+programado "https://confluence.um.es/confluence/display/HERCULES/CU-COM-0020+-+Generar+comunicado+programado").

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




