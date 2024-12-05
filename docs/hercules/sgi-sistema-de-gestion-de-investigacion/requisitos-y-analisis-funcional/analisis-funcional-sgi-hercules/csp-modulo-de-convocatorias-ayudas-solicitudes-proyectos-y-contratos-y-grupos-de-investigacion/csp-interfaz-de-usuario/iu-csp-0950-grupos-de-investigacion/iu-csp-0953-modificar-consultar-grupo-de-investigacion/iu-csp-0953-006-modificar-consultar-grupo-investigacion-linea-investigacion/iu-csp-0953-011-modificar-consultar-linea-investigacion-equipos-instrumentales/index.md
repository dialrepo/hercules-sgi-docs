# Hércules : IU\-CSP\-0953\-011 \- Modificar\-consultar línea investigación \- Equipos instrumentales



## Formulario Modificar/consultar línea investigación \- Equipos instrumentales

Formulario de modificación/consulta de una línea de investigación vinculada a un grupo, apartado de "Equipos instrumentales", que muestra el listado de equipos instrumentales asociados a una línea de investigación. Los usuarios ACT\-CSP\-003\-Gestor y ACT\-CSP\-004\-Administrador podrán añadir nuevos o eliminar equipos instrumentales a la línea de investigación.

Si el usuario es un  ACT\-CSP\-005\-Visor se mostrará el listado pero sin poder realizar acciones sobre él.

Si el usuario es un ACT\-CSP\-001\-Investigador únicamente podrá consultar el grupo si es uno de los miembros del equipo o ha sido un miembro (existe en la tabla "grupo equipo") o  sea una persona autorizada (existe en la tabla "grupo persona autorizada" en la fecha actual) o es el responsable económico (existe en la tabla "grupo responsable económico" en la fecha actual). Se mostrará el listado pero sin poder realizar acciones sobre él.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de equipos instrumentales vinculados a una línea de investigación, extraídas de la tabla "grupo línea equipo instrumental". Una línea de investigación podrá estar asociada a más de un equipo instrumental. | | |
| Nº registro | Texto corto | Número de registro del equipo instrumental.Campo "num registro" de la tabla "grupo equipo instrumental", recuperado a partir del campo "equipo instrumental" de la tabla "grupo línea equipo instrumental" |
| Nombre | Texto | Nombre del equipo instrumental.Campo "nombre" de la tabla "grupo equipo instrumental", recuperado a partir del campo "equipo instrumental" de la tabla "grupo línea equipo instrumental" |
| Descripción | Texto largo | Descripción del equipo instrumental.Campo "descripción" de la tabla "grupo equipo instrumental", recuperado a partir del campo "equipo instrumental" de la tabla "grupo línea equipo instrumental" |
| Eliminar | Icono de acción | Acción "Eliminar" |
| Añadir equipo instrumental | Icono de acción | Acción "Añadir equipo instrumental" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Eliminar | Elimina la relación del equipo instrumental con la línea de investigación | Elimina el registro del listado | CSP\-GIN\-E |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir equipo instrumental | Muestra la pantalla de Nuevo equipo instrumental dela línea | Muestra la pantalla [IU\-CSP\-0953\-012 \- Añadir equipo instrumental](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-006-modificar-consultar-grupo-investigacion-linea-investigacion/iu-csp-0953-011-modificar-consultar-linea-investigacion-equipos-instrumentales/iu-csp-0953-012-anadir-equipo-instrumental.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-006-modificar-consultar-grupo-investigacion-linea-investigacion/iu-csp-0953-011-modificar-consultar-linea-investigacion-equipos-instrumentales/iu-csp-0953-012-anadir-equipo-instrumental.md") | CSP\-GIN\-E |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modificar la Línea de investigación con la información introducida en el formulario.Al guardar una línea de investigación se guarda la información de todos los apartados de definición de la línea (ver resto de pantallas para ver que se guarda en cada una, en esta pantalla se describe lo que hay que guardar en relación a los equipos instrumentales vinculados a la línea) | Se realizarán las creaciones o eliminaciones de los registros en la tabla "grupo línea equipo instrumental". | CSP\-GIN\-E |
| Cancelar | Retorna al listado de Líneas de investigación sin salvar los posibles cambios.Al cancelar una línea se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




