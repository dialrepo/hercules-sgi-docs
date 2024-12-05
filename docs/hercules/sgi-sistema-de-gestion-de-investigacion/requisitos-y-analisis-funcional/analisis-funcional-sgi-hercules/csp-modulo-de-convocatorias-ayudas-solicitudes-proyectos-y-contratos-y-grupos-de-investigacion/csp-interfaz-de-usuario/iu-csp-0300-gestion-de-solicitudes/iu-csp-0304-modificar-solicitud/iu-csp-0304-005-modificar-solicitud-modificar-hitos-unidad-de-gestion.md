# Hércules : IU\-CSP\-0304\-005 \- Modificar Solicitud \- Modificar Hitos \- Unidad de gestión



## Formulario Modificar Solicitud \- Modificar Hitos \- Unidades de gestión

Formulario que permite indicar todos los hitos de interés asociados a la solicitud.

Únicamente disponible si la solicitud tiene una convocatoria del SGI asociada. En caso de que la solicitud sea de una convocatoria externa al SGI no existirá la gestión de Hitos y no se mostrará dicha opción del menú.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Tipo hito | Texto corto | Tipos de hito de solicitud que estén vinculados con carácter activo al modelo de ejecución al que se ha asociado la convocatoria vinculada a la solicitud. |
| Fecha | Fecha \+ Hora | Fecha en la que se ha producido el hito.Expresada en formato fecha \+ hora. |
| Comentario | Texto largo | Observaciones sobre el hito |
| Aviso | BooleanoValores: Sí, No | Indica si el hito tiene un aviso configurado. |
| Modificar | Icono de acción | Acción "Modificar" |
| Eliminar | Icono de acción | Acción "Eliminar" |
| Añadir hito | Icono de acción | Acción "Añadir hito" |
| Mensaje informativo | Texto largo | Este mensaje solo se mostrará si la solicitud cumple las dos condiciones siguientes:* Es una solicitud de RRHH (campo "formulario solicitud" de la tabla "solicitud" toma valor "rrhh") * La solicitud se encuentra en estado borrador (campo "estado" de la tabla "solicitud").  Se mostrará con los estilos de aviso informativo el siguiente mensaje "Para que la solicitud pueda ser validad por su tutor/a debe cambiar el estado de la misma a "Solicitada"". |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar | Muestra la pantalla de modificación del hito seleccionado del listado de hitos. | Se resuelve con la pantalla [IU\-CSP\-0302\-017 \- Añadir\-modificar hito a solicitud](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0302-017-anadir-modificar-hito-a-solicitud.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0302-017-anadir-modificar-hito-a-solicitud.md"). | CSP\-SOL\-ECSP\-SOL\-E\_UO |
| Eliminar | Elimina el hito de la solicitud. | Elimina el registro de la tabla "Solicitud Hito".Si el hito tuviese asociado un aviso y/o una tarea programada, ambas cosas se deberán eliminar también, invocando a los métodos correspondientes del API de los módulos de comunicados [CSP \- Comunicados](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados") y de tareas programadas [SGI \- TP](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-tp/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-tp/index.md") respectivamente. | CSP\-SOL\-ECSP\-SOL\-E\_UO |
| Añadir hito | Muestra la pantalla "Añadir hito". | Muestra la pantalla [IU\-CSP\-0302\-017 \- Añadir\-modificar hito a solicitud](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0302-017-anadir-modificar-hito-a-solicitud.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0302-017-anadir-modificar-hito-a-solicitud.md"). | CSP\-SOL\-ECSP\-SOL\-E\_UO |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea la Solicitud con la información introducida en el formulario.Al guardar una solicitud se guardar la información de todas las pestañas de la pantalla. | Ver precondiciones en [CU\-CSP\-1100\-001 Modificar solicitud \- Guardar](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1100-gestion-de-solicitudes/cu-csp-1100-001-modificar-solicitud-guardar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1100-gestion-de-solicitudes/cu-csp-1100-001-modificar-solicitud-guardar.md").Se validará que no existan dos hitos para el mismo Tipo de hito para la misma fecha y hora. Podría darse el caso de que el mismo Tipo de hito se repita en la solicitud, pero sin coincidir exactamente en fecha y hora.Al guardar los cambios además habrá que tener en cuenta los comunicados y tareas programadas asociados que se deben generar/eliminar/modificar en función de los cambios realizados según se describe en el apartado [Comunicados](#IUCSP0304005ModificarSolicitudModificarHitosUnidaddegestión-comunicados "#IUCSP0304005ModificarSolicitudModificarHitosUnidaddegestión-comunicados") y en las acciones "Eliminar" de esta pantalla de listado y "Aceptar" del popup [IU\-CSP\-0302\-017 \- Añadir\-modificar hito a solicitud](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0302-017-anadir-modificar-hito-a-solicitud.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0302-017-anadir-modificar-hito-a-solicitud.md"). | CSP\-SOL\-ECSP\-SOL\-E\_UO |
| Cancelar | Retorna al listado de Solicitudes sin salvar los posibles cambios.Al cancelar una solicitud se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Comunicados

En el caso de que se marque el check "Generar aviso" de algún hito que previamente no lo tuviese marcado, se desmarque dicho check de algún hito que sí lo tuviese previamente marcado o que se modifiquen los datos del propio aviso, será necesario dar de alta, de baja o modificar respectivamente, los datos del comunicado y/o de la tarea programada, que se hubiesen generado con motivo del aviso asociado a dicho hito, en los módulos de comunicados [COM \- Módulo de Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md") y de tareas programadas [SGI \- TP](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-tp/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-tp/index.md") respectivamente.  


La descripción detallada para la generación de este tipo de comunicado se encuentra en el apartado **Hitos de solicitudes**dentro de [CSP \- Comunicados](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados") y el flujo general de operativa de este tipo de comunicados en [CU\-COM\-0020 \- Generar comunicado programado](https://confluence.um.es/confluence/display/HERCULES/CU-COM-0020+-+Generar+comunicado+programado "https://confluence.um.es/confluence/display/HERCULES/CU-COM-0020+-+Generar+comunicado+programado").

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




