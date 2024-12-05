# Hércules : IU\-CSP\-0953\-015 \- Modificar\-consultar grupo investigación \- Enlaces



## Formulario Modificar/consultar grupo investigación \- Enlaces

Formulario de modificación/consulta de un grupo, apartado de "Enlaces", que muestra el listado de enlaces del grupo. Los usuarios ACT\-CSP\-003\-Gestor y ACT\-CSP\-004\-Administrador podrán añadir nuevos enlaces o eliminar enlaces al grupo.

Si el usuario es un  ACT\-CSP\-005\-Visor se mostrará el listado pero sin poder realizar acciones sobre él.

Si el usuario es un ACT\-CSP\-001\-Investigador únicamente podrá consultar el grupo si es uno de los miembros del equipo o ha sido un miembro (existe en la tabla "grupo equipo") o  sea una persona autorizada (existe en la tabla "grupo persona autorizada" en la fecha actual) o es el responsable económico (existe en la tabla "grupo responsable económico" en la fecha actual). Se mostrará el listado pero sin poder realizar acciones sobre él.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de enlaces de un grupo de investigación, extraídos de la tabla "grupo enlace". | | |
| Enlace | Texto largo | Enlace a direcciones web.Campo "enlace" de la tabla "grupo enlace" |
| Eliminar | Icono de acción | Acción "Eliminar" |
| Añadir enlace | Icono de acción | Acción "Añadir enlace" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Eliminar | Elimina el enlace del grupo | Elimina el registro del listado | CSP\-GIN\-E |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir enlace | Muestra la pantalla de Nuevo enlace de grupo | Muestra la pantalla [IU\-CSP\-0953\-016 \- Añadir enlace](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-015-modificar-consultar-grupo-investigacion-enlaces/iu-csp-0953-016-anadir-enlace.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-015-modificar-consultar-grupo-investigacion-enlaces/iu-csp-0953-016-anadir-enlace.md") | CSP\-GIN\-E |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modificar el Grupo con la información introducida en el formulario.Al guardar un grupo se guarda la información de todos los apartados de definición del grupo (ver resto de pantallas para ver que se guarda en cada una, en esta pantalla se describe lo que hay que guardar en relación a los enlaces del equipo) | Se realizarán las creaciones o eliminaciones de los registros en la tabla "grupo enlace".En caso de nuevo enlace habrá que comprobar lo indicado en la pantalla [IU\-CSP\-0953\-016 \- Añadir enlace](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-015-modificar-consultar-grupo-investigacion-enlaces/iu-csp-0953-016-anadir-enlace.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-015-modificar-consultar-grupo-investigacion-enlaces/iu-csp-0953-016-anadir-enlace.md") | CSP\-GIN\-E |
| Cancelar | Retorna al listado de Grupos sin salvar los posibles cambios.Al cancelar un grupo se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




