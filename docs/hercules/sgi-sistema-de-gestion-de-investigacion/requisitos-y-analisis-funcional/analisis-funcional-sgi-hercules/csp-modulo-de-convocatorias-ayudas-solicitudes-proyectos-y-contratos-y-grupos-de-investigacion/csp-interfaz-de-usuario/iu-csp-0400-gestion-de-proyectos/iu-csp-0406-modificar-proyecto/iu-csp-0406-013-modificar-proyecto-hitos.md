# Hércules : IU\-CSP\-0406\-013 \- Modificar proyecto \- Hitos



## Formulario Modificar proyecto  \- Hitos

Formulario que permite indicar diferentes hitos del proyecto, acontecimientos pasados o futuros que se considere relevante dejar historificado en la información del proyecto/contrato.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de hitos del proyecto | | |
| Tipo de hito | Texto corto | Nombre recuperado de la tabla "tipos hito" a partir del identificador referenciado en la tabla "hitos proyecto". |
| Fecha | Fecha \+ Hora | Fecha en la que ocurre el hito. Expresada en formato fecha \+ hora. |
| Observaciones | Texto largo | Campo "observaciones" del registro de la tabla "hitos proyecto". |
| Aviso | Booleano | Indicará si se ha activado la creación de un aviso para el hito. |
| Modificar | Icono de acción | Acción "Modificar". |
| Eliminar | Icono de acción | Acción "Eliminar". |
| Añadir hito | Icono de acción | Acción "Añadir hito". |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar | Muestra la pantalla de modificación del hito seleccionado del listado de hitos de proyecto. | Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578").Se resuelve con la pantalla [IU\-CSP\-0402\-010 \- Añadir\-modificar hito a proyecto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-010-anadir-modificar-hito-a-proyecto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-010-anadir-modificar-hito-a-proyecto.md"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Eliminar | Elimina el hito del proyecto. | Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578").Si el hito tuviese asociado un aviso y/o una tarea programada, ambas cosas se deberán eliminar también, invocando a los métodos correspondientes del API de los módulos de comunicados [CSP \- Comunicados](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados") y de tareas programadas [SGI \- TP](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-tp/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-tp/index.md") respectivamente. | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir hito |  | Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578").Muestra la pantalla [IU\-CSP\-0402\-010 \- Añadir\-modificar hito a proyecto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-010-anadir-modificar-hito-a-proyecto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-010-anadir-modificar-hito-a-proyecto.md"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modifica el Proyecto con la información introducida en el formulario.Al guardar un proyecto se guardar la información de todos los apartados de definición del proyecto. | Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578").Se validará que no existan dos hitos para el mismo Tipo de hito para la misma fecha y hora. Podría darse el caso de que el mismo Tipo de hito se repita en el proyecto, pero sin coincidir exactamente en fecha y hora.Al guardar los cambios además habrá que tener en cuenta los comunicados y tareas programadas asociados que se deben generar/eliminar/modificar en función de los cambios realizados según se describe en el apartado [Comunicados](#IUCSP0406013ModificarproyectoHitos-comunicados "#IUCSP0406013ModificarproyectoHitos-comunicados") y en las acciones "Eliminar" de esta pantalla de listado y "Aceptar" del popup [IU\-CSP\-0402\-010 \- Añadir\-modificar hito a proyecto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-010-anadir-modificar-hito-a-proyecto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-010-anadir-modificar-hito-a-proyecto.md"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al listado de Proyectos sin salvar los posibles cambios.Al cancelar un proyecto se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Comunicados

En el caso de que se marque el check "Generar aviso" de algún hito que previamente no lo tuviese marcado, se desmarque dicho check de algún hito que sí lo tuviese previamente marcado o que se modifiquen los datos del propio aviso, será necesario dar de alta, de baja o modificar respectivamente, los datos del comunicado y/o de la tarea programada, que se hubiesen generado con motivo del aviso asociado a dicho hito, en los módulos de comunicados [COM \- Módulo de Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md") y de tareas programadas [SGI \- TP](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-tp/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-tp/index.md") respectivamente.  


La descripción detallada para la generación de este tipo de comunicado se encuentra en el apartado **Hitos de proyectos**dentro de [CSP \- Comunicados](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados") y el flujo general de operativa de este tipo de comunicados en [CU\-COM\-0020 \- Generar comunicado programado](https://confluence.um.es/confluence/display/HERCULES/CU-COM-0020+-+Generar+comunicado+programado "https://confluence.um.es/confluence/display/HERCULES/CU-COM-0020+-+Generar+comunicado+programado").

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




