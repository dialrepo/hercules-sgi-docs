# Hércules : IU\-CSP\-0953\-008 \- Modificar\-consultar línea investigación \- Miembros adscritos



## Formulario Modificar/consultar línea investigación \- Miembros adscritos

Formulario de modificación/consulta de una línea de investigación vinculada a un grupo, apartado de "Miembros adscritos", que muestra el listado de miembros del equipo de grupo vinculados a la línea de investigación. Los usuarios ACT\-CSP\-003\-Gestor y ACT\-CSP\-004\-Administrador podrán añadir nuevos miembros, modificar o eliminar miembros adscritos a la línea de investigación.

Si el usuario es un  ACT\-CSP\-005\-Visor se mostrará el listado pero sin poder realizar acciones sobre él.

Si el usuario es un ACT\-CSP\-001\-Investigador únicamente podrá consultar el grupo si es uno de los miembros del equipo o ha sido un miembro (existe en la tabla "grupo equipo") o  sea una persona autorizada (existe en la tabla "grupo persona autorizada" en la fecha actual) o es el responsable económico (existe en la tabla "grupo responsable económico" en la fecha actual). Se mostrará el listado pero sin poder realizar acciones sobre él.

  




|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de miembros adscritos a la línea de investigación, extraídos de la tabla "grupo línea investigador". | | |
| E\-mail | Texto | E\-mail del miembro del equipo del grupo vinculado a la línea de investigación, recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona"). En caso de tener una lista de email se obtendrá el que tenga el flag de "principal".Se recupera a partir del campo "persona ref" de la tabla "grupo línea investigador" |
| Nombre | Texto corto | Nombre del miembro del equipo de grupo, recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona").Se recupera a partir del campo "persona ref" de la tabla "grupo línea investigador" |
| Apellidos | Texto corto | Apellidos del miembro del equipo de grupo, recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona").Se recupera a partir del campo "persona ref" de la tabla "grupo línea investigador" |
| Fecha inicio | Fecha | Fecha de inicio del miembro del equipo adscrito a la línea de investigación.Campo "fecha inicio" de la tabla "grupo línea investigador" |
| Fecha fin | Fecha | Fecha de fin del miembro del equipo adscrito a la línea de investigación.Campo "fecha fin" de la tabla "grupo línea investigador" |
| Modificar | Icono de acción | Acción "Modificar" |
| Eliminar | Icono de acción | Acción "Eliminar" |
| Añadir miembro adscrito | Icono de acción | Acción "Añadir miembro adscrito" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar | Muestra la pantalla de modificación del miembro seleccionado del listado de miembros adscritos a la línea de investigación | Se resuelve con la pantalla [IU\-CSP\-0953\-009 \- Añadir\-modificar miembro adscrito](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-006-modificar-consultar-grupo-investigacion-linea-investigacion/iu-csp-0953-008-modificar-consultar-linea-investigacion-miembros-adscritos/iu-csp-0953-009-anadir-modificar-miembro-adscrito.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-006-modificar-consultar-grupo-investigacion-linea-investigacion/iu-csp-0953-008-modificar-consultar-linea-investigacion-miembros-adscritos/iu-csp-0953-009-anadir-modificar-miembro-adscrito.md") | CSP\-GIN\-E |
| Eliminar | Elimina la relación del miembro con la línea de investigación | Elimina el registro del listado | CSP\-GIN\-E |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir miembro adscrito | Muestra la pantalla de Nuevo miembro adscrito a la línea | Muestra la pantalla [IU\-CSP\-0953\-009 \- Añadir\-modificar miembro adscrito](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-006-modificar-consultar-grupo-investigacion-linea-investigacion/iu-csp-0953-008-modificar-consultar-linea-investigacion-miembros-adscritos/iu-csp-0953-009-anadir-modificar-miembro-adscrito.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-006-modificar-consultar-grupo-investigacion-linea-investigacion/iu-csp-0953-008-modificar-consultar-linea-investigacion-miembros-adscritos/iu-csp-0953-009-anadir-modificar-miembro-adscrito.md") | CSP\-GIN\-E |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modificar la Línea de investigación con la información introducida en el formulario.Al guardar una línea de investigación se guarda la información de todos los apartados de definición de la línea (ver resto de pantallas para ver que se guarda en cada una, en esta pantalla se describe lo que hay que guardar en relación a los miembros adscritos) | Se realizarán las creaciones, modificaciones o eliminaciones de los registros en la tabla "grupo línea investigador".En caso de nuevo o modificación de miembro habrá que comprobar lo indicado en la pantalla [IU\-CSP\-0953\-009 \- Añadir\-modificar miembro adscrito](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-006-modificar-consultar-grupo-investigacion-linea-investigacion/iu-csp-0953-008-modificar-consultar-linea-investigacion-miembros-adscritos/iu-csp-0953-009-anadir-modificar-miembro-adscrito.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-006-modificar-consultar-grupo-investigacion-linea-investigacion/iu-csp-0953-008-modificar-consultar-linea-investigacion-miembros-adscritos/iu-csp-0953-009-anadir-modificar-miembro-adscrito.md") | CSP\-GIN\-E |
| Cancelar | Retorna al listado de Líneas de investigación sin salvar los posibles cambios.Al cancelar una línea se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




