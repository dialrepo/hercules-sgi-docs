# Hércules : IU\-CSP\-0953\-006 \- Modificar\-consultar grupo investigación \- Línea investigación



## Formulario Modificar/consultar grupo investigación \- Línea investigación

Formulario de modificación de un grupo, apartado de "Líneas investigación", que muestra el listado de las líneas de investigación en las que trabaja el grupo. Los usuarios ACT\-CSP\-003\-Gestor y ACT\-CSP\-004\-Administrador podrán añadir nuevas líneas de investigación, modificar o eliminar líneas investigación del grupo.

Si el usuario es un  ACT\-CSP\-005\-Visor se mostrará el listado pero sin poder realizar acciones sobre él.

Si el usuario es un ACT\-CSP\-001\-Investigador únicamente podrá consultar el grupo si es uno de los miembros del equipo o ha sido un miembro (existe en la tabla "grupo equipo") o  sea una persona autorizada (existe en la tabla "grupo persona autorizada" en la fecha actual) o es el responsable económico (existe en la tabla "grupo responsable económico" en la fecha actual). Se mostrará el listado pero sin poder realizar las acciones de Modificar ni Eliminar, sólo podrá consultar la línea de investigación.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de líneas de investigación de un grupo, extraídas de la tabla "grupo línea investigación". Un grupo de investigación podrá estar asociado a más de una línea de investigación. | | |
| Nombre | Texto | Nombre de la línea de investigación que desarrolla el grupo |
| Fecha inicio | Fecha | Fecha de inicio de actuación de la línea de investigación en el grupo |
| Fecha fin | Fecha | Fecha de fin de de actuación de la línea de investigación en el grupo |
| Modificar | Icono de acción | Acción "Modificar" |
| Eliminar | Icono de acción | Acción "Eliminar" |
| Añadir línea investigación | Icono de acción | Acción "Añadir línea investigación" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar | Muestra la pantalla de modificación de la línea de investigación seleccionada del listado de líneas de investigación de grupo | Se realiza un cambio de contexto. Se resuelve con la pantalla [IU\-CSP\-0953\-007 \- Modificar\-consultar línea de investigación \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-006-modificar-consultar-grupo-investigacion-linea-investigacion/iu-csp-0953-007-modificar-consultar-linea-de-investigacion-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-006-modificar-consultar-grupo-investigacion-linea-investigacion/iu-csp-0953-007-modificar-consultar-linea-de-investigacion-datos-generales.md") | CSP\-GIN\-E |
| Ver | Muestra la pantalla de consulta de la línea de investigación seleccionada del listado de líneas de investigación de grupo | Se realiza un cambio de contexto. Se resuelve con la pantalla [IU\-CSP\-0953\-007 \- Modificar\-consultar línea de investigación \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-006-modificar-consultar-grupo-investigacion-linea-investigacion/iu-csp-0953-007-modificar-consultar-linea-de-investigacion-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-006-modificar-consultar-grupo-investigacion-linea-investigacion/iu-csp-0953-007-modificar-consultar-linea-de-investigacion-datos-generales.md") en modo consulta | CSP\-GIN\-VCSP\-GIN\-INV\-VR |
| Eliminar | Elimina la línea de investigación de grupo | Se elimina la relación de la línea de investigación con el grupo, pero no la línea de investigación de la tabla maestra de líneas de investigación.Si se confirma la acción de borrado, se realizará un borrado físico del registro en la tabla "grupo línea investigación". Se eliminarán en cascada los miembros adscritos, los equipos y las clasificaciones vinculadas a la línea de investigación (registros correspondientes de las tablas "grupo línea investigador", "grupo lineas clasificación" y "grupo linea equipo instrumental"). | CSP\-GIN\-E |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir línea  investigación | Muestra la pantalla de Nueva línea de investigación de grupo | Se realiza un cambio de contexto. Muestra la pantalla [IU\-CSP\-0953\-007 \- Modificar\-consultar línea de investigación \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-006-modificar-consultar-grupo-investigacion-linea-investigacion/iu-csp-0953-007-modificar-consultar-linea-de-investigacion-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-006-modificar-consultar-grupo-investigacion-linea-investigacion/iu-csp-0953-007-modificar-consultar-linea-de-investigacion-datos-generales.md") | CSP\-GIN\-E |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modificar el Grupo con la información introducida en el formulario.Al guardar un grupo se guarda la información de todos los apartados de definición del grupo (ver resto de pantallas para ver que se guarda en cada una, en esta pantalla se describe lo que hay que guardar en relación a las líneas de investigación) | En caso de eliminarse líneas de investigación se elimina la relación de la línea de investigación con el grupo, pero no la línea de investigación de la tabla maestra de líneas de investigación.Se realizará un borrado físico del registro en la tabla "grupo línea investigación". Se eliminarán en cascada los miembros adscritos, los equipos y las clasificaciones vinculadas a la línea de investigación (registros correspondientes de las tablas "grupo línea investigador", "grupo lineas clasificación" y "grupo linea equipo instrumental"). | CSP\-GIN\-E |
| Cancelar | Retorna al listado de Grupos sin salvar los posibles cambios.Al cancelar un grupo se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




