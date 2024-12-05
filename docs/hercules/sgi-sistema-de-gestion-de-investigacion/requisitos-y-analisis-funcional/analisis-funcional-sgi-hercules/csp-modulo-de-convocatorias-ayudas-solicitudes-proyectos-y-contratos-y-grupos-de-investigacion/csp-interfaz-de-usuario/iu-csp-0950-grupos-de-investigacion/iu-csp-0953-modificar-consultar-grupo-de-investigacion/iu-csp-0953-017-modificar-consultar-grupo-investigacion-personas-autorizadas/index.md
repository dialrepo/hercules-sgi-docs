# Hércules : IU\-CSP\-0953\-017 \- Modificar\-consultar grupo investigación \- Personas autorizadas



## Formulario Modificar/consultar grupo investigación \- Personas autorizadas

Formulario de modificación de un grupo, apartado de "Personas autorizadas", que muestra el listado de las distintas personas que han sido o es persona autorizada del grupo. Los usuarios ACT\-CSP\-003\-Gestor y ACT\-CSP\-004\-Administrador podrán añadir nuevas personas autorizadas, modificar o eliminar personas autorizadas al grupo.

Si el usuario es un  ACT\-CSP\-005\-Visor se mostrará el listado pero sin poder realizar acciones sobre él.

Si el usuario es un ACT\-CSP\-001\-Investigador únicamente podrá consultar el grupo si es uno de los miembros del equipo o ha sido un miembro (existe en la tabla "grupo equipo") o  sea una persona autorizada (existe en la tabla "grupo persona autorizada" en la fecha actual) o es el responsable económico (existe en la tabla "grupo responsable económico" en la fecha actual). Se mostrará el listado pero sin poder realizar acciones sobre él.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Histórico de personas autorizadas de un grupo de investigación,  extraídos de la tabla "grupo persona autorizada". Un grupo de investigación sólo puede tener una única persona autorizada en el mismo instante. | | |
| E\-mail | Texto | E\-mail de la persona autorizada de grupo, recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona"). En caso de tener mas de un e\-mail se mostrarán separados por coma.Se recupera a partir del campo "persona ref" de la tabla "grupo persona autorizada" |
| Nombre | Texto corto | Nombre de la persona autorizada de grupo, recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona")Se recupera a partir del campo "persona ref" de la tabla "grupo persona autorizada" |
| Apellidos | Texto corto | Apellidos de la persona autorizada de grupo, recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona")Se recupera a partir del campo "persona ref" de la tabla "grupo persona autorizada" |
| Fecha inicio | Fecha | Fecha de inicio de la persona autorizadaSe recupera a partir del campo "fecha inicio" de la tabla "grupo persona autorizada" |
| Fecha fin | Fecha | Fecha de fin de la persona autorizadaSe recupera a partir del campo "fecha fin" de la tabla "grupo persona autorizada" |
| Modificar | Icono de acción | Acción "Modificar" |
| Eliminar | Icono de acción | Acción "Eliminar" |
| Añadir persona autorizada | Icono de acción | Acción "Añadir persona autorizada" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar | Muestra la pantalla de modificación de la persona autorizada seleccionada del listado de personas autorizadas de grupo | Se resuelve con la pantalla [IU\-CSP\-0953\-018 \- Añadir\-modificar persona autorizada](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-017-modificar-consultar-grupo-investigacion-personas-autorizadas/iu-csp-0953-018-anadir-modificar-persona-autorizada.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-017-modificar-consultar-grupo-investigacion-personas-autorizadas/iu-csp-0953-018-anadir-modificar-persona-autorizada.md") | CSP\-GIN\-E |
| Eliminar | Elimina la persona autorizada de grupo | Elimina el registro del listado | CSP\-GIN\-E |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir persona autorizada | Muestra la pantalla de Nueva persona autorizada de grupo | Muestra la pantalla [IU\-CSP\-0953\-018 \- Añadir\-modificar persona autorizada](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-017-modificar-consultar-grupo-investigacion-personas-autorizadas/iu-csp-0953-018-anadir-modificar-persona-autorizada.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-017-modificar-consultar-grupo-investigacion-personas-autorizadas/iu-csp-0953-018-anadir-modificar-persona-autorizada.md") | CSP\-GIN\-E |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modificar el Grupo con la información introducida en el formulario.Al guardar un grupo se guarda la información de todos los apartados de definición del grupo (ver resto de pantallas para ver que se guarda en cada una, en esta pantalla se describe lo que hay que guardar en relación a las personas autorizadas) | Se realizarán las creaciones, modificaciones o eliminaciones de los registros en la tabla "grupo persona autorizada".En caso de nuevo o modificación de una persona autorizada habrá que comprobar lo indicado en la pantalla [IU\-CSP\-0953\-018 \- Añadir\-modificar persona autorizada](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-017-modificar-consultar-grupo-investigacion-personas-autorizadas/iu-csp-0953-018-anadir-modificar-persona-autorizada.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-017-modificar-consultar-grupo-investigacion-personas-autorizadas/iu-csp-0953-018-anadir-modificar-persona-autorizada.md") | CSP\-GIN\-E |
| Cancelar | Retorna al listado de Grupos sin salvar los posibles cambios.Al cancelar un grupo se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




