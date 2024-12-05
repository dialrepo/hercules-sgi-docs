# Hércules : IU\-CSP\-0953\-013 \- Modificar\-consultar grupo investigación \- Equipos instrumentales



## Formulario Modificar/consultar grupo investigación \- Equipos instrumentales

Formulario de modificación/consulta de un grupo, apartado de "Equipos instrumentales", que muestra el listado equipos instrumentales del grupo. Los usuarios ACT\-CSP\-003\-Gestor y ACT\-CSP\-004\-Administrador podrán añadir nuevos equipos instrumentales, modificar o eliminar equipos instrumentales al grupo.

Si el usuario es un  ACT\-CSP\-005\-Visor se mostrará el listado pero sin poder realizar acciones sobre él.

Si el usuario es un ACT\-CSP\-001\-Investigador únicamente podrá consultar el grupo si es uno de los miembros del equipo o ha sido un miembro (existe en la tabla "grupo equipo") o  sea una persona autorizada (existe en la tabla "grupo persona autorizada" en la fecha actual) o es el responsable económico (existe en la tabla "grupo responsable económico" en la fecha actual). Se mostrará el listado pero sin poder realizar acciones sobre él.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de equipos instrumentales de un grupo de investigación, extraídos de la tabla "grupo equipo instrumental". | | |
| Nº registro | Texto corto | Número de registro del equipo instrumental.Campo "num registro" de la tabla "grupo equipo instrumental" |
| Nombre | Texto | Nombre del equipo instrumental.Campo "nombre" de la tabla "grupo equipo instrumental" |
| Descripción | Texto largo | Nombre del equipo instrumental.Campo "descripción" de la tabla "grupo equipo instrumental" |
| Modificar | Icono de acción | Acción "Modificar" |
| Eliminar | Icono de acción | Acción "Eliminar" |
| Añadir equipo instrumental | Icono de acción | Acción "Añadir equipo instrumental" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar | Muestra la pantalla de modificación del equipo instrumental seleccionado del listado de equipos instrumentales de grupo | Se resuelve con la pantalla [IU\-CSP\-0953\-014 \- Añadir\-modificar equipo instrumental](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-013-modificar-consultar-grupo-investigacion-equipos-instrumentales/iu-csp-0953-014-anadir-modificar-equipo-instrumental.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-013-modificar-consultar-grupo-investigacion-equipos-instrumentales/iu-csp-0953-014-anadir-modificar-equipo-instrumental.md") | CSP\-GIN\-E |
| Eliminar | Elimina el equipo instrumental del grupo | Elimina el registro del listado | CSP\-GIN\-E |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir equipo instrumental | Muestra la pantalla de Nuevo equipo instrumental de grupo | Muestra la pantalla [IU\-CSP\-0953\-014 \- Añadir\-modificar equipo instrumental](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-013-modificar-consultar-grupo-investigacion-equipos-instrumentales/iu-csp-0953-014-anadir-modificar-equipo-instrumental.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-013-modificar-consultar-grupo-investigacion-equipos-instrumentales/iu-csp-0953-014-anadir-modificar-equipo-instrumental.md") | CSP\-GIN\-E |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modificar el Grupo con la información introducida en el formulario.Al guardar un grupo se guarda la información de todos los apartados de definición del grupo (ver resto de pantallas para ver que se guarda en cada una, en esta pantalla se describe lo que hay que guardar en relación a los equipos instrumentales del equipo) | Se realizarán las creaciones, modificaciones o eliminaciones de los registros en la tabla "grupo equipo instrumental".En caso de nuevo o modificación de miembro habrá que comprobar lo indicado en la pantalla [IU\-CSP\-0953\-014 \- Añadir\-modificar equipo instrumental](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-013-modificar-consultar-grupo-investigacion-equipos-instrumentales/iu-csp-0953-014-anadir-modificar-equipo-instrumental.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-013-modificar-consultar-grupo-investigacion-equipos-instrumentales/iu-csp-0953-014-anadir-modificar-equipo-instrumental.md") | CSP\-GIN\-E |
| Cancelar | Retorna al listado de Grupos sin salvar los posibles cambios.Al cancelar un grupo se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




