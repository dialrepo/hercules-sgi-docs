# Hércules : IU\-CSP\-0304\-004 \- Modificar Solicitud \- Ver Histórico de estados



## Formulario Modificar Solicitud \- Ver Histórico de estados

Formulario que permite consultar el listado de estados por los que ha pasado la solicitud. Cada vez que se modifica el estado de la solicitud se añadirá a la tabla de "Estado Solicitud" el estado y la fecha del estado se corresponderá siempre con la fecha en la que se realiza la acción de "Guardar". El apartado histórico de estados comenzará a estar disponible una vez que tiene el primer cambio de estado, es decir, cuando la solicitud pasa de estado "Borrador" a estado "Presentada" (la fecha habrá sido almacenada de forma automática por el sistema en el momento en que se guarda la solicitud por primera vez). 



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| La información se presenta en modo solo lectura. El listado de estados de una solicitud se obtiene de la tabla "estado solicitud". La tabla se mostrará por defecto ordenada del estado más reciente al más antiguo. | | |
| Estado | Texto corto | Estado de la solicitud. Nombre del estado extraído de la tabla "tipo estado solicitud" a partir de la referencia de la tabla "estado solicitud". Los estados son definidos en [Tipos de estados de la solicitud](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Solicitudes#CSP-Solicitudes-#tipo_estado_solicitudTiposdeestadodesolicitud "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Solicitudes#CSP-Solicitudes-#tipo_estado_solicitudTiposdeestadodesolicitud") |
| Fecha de estado | Fecha \+ Hora | Fecha en la que la solicitud pasó a dicho estado, recuperada de la tabla "estado solicitud".Expresado en formato fecha \+ hora. |
| Comentario | Texto | Comentario añadido cuando se produce el cambio de estado, recuperado de la tabla "estado solicitud". No todos los cambios de estado llevan asociado un comentario. |
|  | | |
| Mensaje informativo | Texto largo | Este mensaje solo se mostrará si la solicitud cumple las dos condiciones siguientes:* Es una solicitud de RRHH (campo "formulario solicitud" de la tabla "solicitud" toma valor "rrhh") * La solicitud se encuentra en estado borrador (campo "estado" de la tabla "solicitud").  Se mostrará con los estilos de aviso informativo el siguiente mensaje "Para que la solicitud pueda ser validad por su tutor/a debe cambiar el estado de la misma a "Solicitada"". |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| No existen acciones particulares en esta pantalla |  | La información de la tabla y de todo el apartado se presenta en modo solo lectura. |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Guardar | Al guardar una solicitud se guardar la información de todos los apartados de definición de la solicitud. | No existen acciones particulares asociadas a este apartado de la entidad Solicitud, puesto que la información se presenta en modo solo lectura.[CU\-CSP\-1100\-001 Modificar solicitud \- Guardar](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1100-gestion-de-solicitudes/cu-csp-1100-001-modificar-solicitud-guardar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1100-gestion-de-solicitudes/cu-csp-1100-001-modificar-solicitud-guardar.md") |
| Cancelar | No se aplican los cambios que hubieran sido introducidos sobre la solicitud. | Se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. Se mostrarán las advertencias correspondientes sobre los apartados modificados.Se retorna al listado de solicitudes, a la pantalla correspondiente en función del usuario:[IU\-CSP\-0303\-002\- Búsqueda y listado de solicitudes \- Unidades de gestión](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0303-busqueda-y-listado-de-solicitudes/iu-csp-0303-002-busqueda-simple-y-listado-de-solicitudes-unidades-de-gestion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0303-busqueda-y-listado-de-solicitudes/iu-csp-0303-002-busqueda-simple-y-listado-de-solicitudes-unidades-de-gestion.md")[IU\-CSP\-0303\-001\- Búsqueda y listado de solicitudes \- Investigador](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0303-busqueda-y-listado-de-solicitudes/iu-csp-0303-001-busqueda-y-listado-de-solicitudes-investigador.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0303-busqueda-y-listado-de-solicitudes/iu-csp-0303-001-busqueda-y-listado-de-solicitudes-investigador.md") |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




