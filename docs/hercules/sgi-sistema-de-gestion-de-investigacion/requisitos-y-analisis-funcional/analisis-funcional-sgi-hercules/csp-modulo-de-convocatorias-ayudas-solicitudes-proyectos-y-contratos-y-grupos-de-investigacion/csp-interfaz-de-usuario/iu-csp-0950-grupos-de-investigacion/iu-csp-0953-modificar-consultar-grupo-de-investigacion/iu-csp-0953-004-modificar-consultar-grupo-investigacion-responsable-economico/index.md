# Hércules : IU\-CSP\-0953\-004 \- Modificar\-consultar grupo investigación \- Responsable económico



## Formulario Modificar/consultar grupo investigación \- Responsable económico

Formulario de modificación de un grupo, apartado de "Responsable económico", que muestra el listado de las distintas personas que han sido o es el responsable económico del grupo. Los usuarios ACT\-CSP\-003\-Gestor y ACT\-CSP\-004\-Administrador podrán añadir nuevos responsables económicos, modificar o eliminar responsables económicos al grupo.

Si el usuario es un  ACT\-CSP\-005\-Visor se mostrará el listado pero sin poder realizar acciones sobre él.

Si el usuario es un ACT\-CSP\-001\-Investigador únicamente podrá consultar el grupo si es uno de los miembros del equipo o ha sido un miembro (existe en la tabla "grupo equipo") o  sea una persona autorizada (existe en la tabla "grupo persona autorizada" en la fecha actual) o es el responsable económico (existe en la tabla "grupo responsable económico" en la fecha actual). Se mostrará el listado pero sin poder realizar acciones sobre él.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Histórico de responsables económicos de un grupo de investigación,  extraídos de la tabla "grupo responsable económico". Un grupo de investigación sólo puede tener un único responsable económico en el mismo instante. | | |
| E\-mail | Texto | E\-mail del responsable económico de grupo, recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona"). En caso de tener mas de un e\-mail se mostrarán separados por coma.Se recupera a partir del campo "persona ref" de la tabla "grupo responsable económico" |
| Nombre | Texto corto | Nombre del responsable económico de grupo, recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona")Se recupera a partir del campo "persona ref" de la tabla "grupo responsable económico" |
| Apellidos | Texto corto | Apellidos del responsable económico de grupo, recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona")Se recupera a partir del campo "persona ref" de la tabla "grupo responsable económico" |
| Fecha inicio | Fecha | Fecha de inicio del responsable económicoSe recupera a partir del campo "fecha inicio" de la tabla "grupo responsable económico" |
| Fecha fin | Fecha | Fecha de fin del responsable económicoSe recupera a partir del campo "fecha fin" de la tabla "grupo responsable económico" |
| Modificar | Icono de acción | Acción "Modificar" |
| Eliminar | Icono de acción | Acción "Eliminar" |
| Añadir responsable económico | Icono de acción | Acción "Añadir responsable económico" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar | Muestra la pantalla de modificación del responsable económico seleccionado del listado de responsables económicos de grupo | Se resuelve con la pantalla [IU\-CSP\-0953\-005 \- Añadir\-modificar responsable económico](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-004-modificar-consultar-grupo-investigacion-responsable-economico/iu-csp-0953-005-anadir-modificar-responsable-economico.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-004-modificar-consultar-grupo-investigacion-responsable-economico/iu-csp-0953-005-anadir-modificar-responsable-economico.md") | CSP\-GIN\-E |
| Eliminar | Elimina el responsable económico de grupo | Elimina el registro del listado | CSP\-GIN\-E |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir responsable económico | Muestra la pantalla de Nuevo responsable económico de grupo | Muestra la pantalla [IU\-CSP\-0953\-005 \- Añadir\-modificar responsable económico](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-004-modificar-consultar-grupo-investigacion-responsable-economico/iu-csp-0953-005-anadir-modificar-responsable-economico.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-004-modificar-consultar-grupo-investigacion-responsable-economico/iu-csp-0953-005-anadir-modificar-responsable-economico.md") | CSP\-GIN\-E |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modificar el Grupo con la información introducida en el formulario.Al guardar un grupo se guarda la información de todos los apartados de definición del grupo (ver resto de pantallas para ver que se guarda en cada una, en esta pantalla se describe lo que hay que guardar en relación a los responsables económicos) | Se realizarán las creaciones, modificaciones o eliminaciones de los registros en la tabla "grupo responsable económico".En caso de nuevo o modificación de responsable económico habrá que comprobar lo indicado en la pantalla [IU\-CSP\-0953\-005 \- Añadir\-modificar responsable económico](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-004-modificar-consultar-grupo-investigacion-responsable-economico/iu-csp-0953-005-anadir-modificar-responsable-economico.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-004-modificar-consultar-grupo-investigacion-responsable-economico/iu-csp-0953-005-anadir-modificar-responsable-economico.md") | CSP\-GIN\-E |
| Cancelar | Retorna al listado de Grupos sin salvar los posibles cambios.Al cancelar un grupo se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




