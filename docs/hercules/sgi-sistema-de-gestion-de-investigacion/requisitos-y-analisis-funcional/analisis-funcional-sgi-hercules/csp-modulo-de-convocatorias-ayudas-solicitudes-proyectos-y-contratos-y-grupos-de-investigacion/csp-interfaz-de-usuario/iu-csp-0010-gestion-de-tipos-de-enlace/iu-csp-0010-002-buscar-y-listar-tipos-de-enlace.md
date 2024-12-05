# Hércules : IU\-CSP\-0010\-002 Buscar y listar tipos de enlace



## Formulario Buscar y listar tipos de enlace

Formulario de búsqueda y listado de tipos de enlace



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Búsqueda de tipos de enlace | | |
| Nombre | Texto cortoNo obligatorio | Nombre identificativo del tipo de enlace. |
| Activo | SelectorValores: sí, no, vacío | Por defecto marcado a "sí", para que la búsqueda se realice sobre los tipos de enlace activos. Se podrá dejar vacío para que la búsqueda devuelva todos los valores tanto los activos como los no activos. |
| Buscar | Botón | Acción buscar |
| Tabla de resultados. Listado de tipos de enlaces | | |
| Nombre | Texto corto | Nombre identificativo del tipo de enlace. Se incluirá ordenación de la tabla de resultados por esta columna. |
| Descripción | Texto | Descripción del tipo de enlace.Se incluirá ordenación de la tabla de resultados por esta columna. |
| Activo | Booleano: sí, no | Valor que indica si el registro está activo o no.Se incluirá ordenación de la tabla de resultados por esta columna. |
| Modificar | Icono de acción | Acción modificar. Solo estará disponible para los elementos activos (campo "activo" a "true"). |
| Eliminar | Icono de acción | Acción eliminar. Solo estará disponible para los elementos activos (campo "activo" a "true"). |
| Reactivar | Icono de acción | Acción reactivar. Solo estará disponible para los elementos inactivos (campo "activo" a false). |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar | Se aplica la búsqueda a partir de los filtros introducidos. | Por defecto el filtro "Activo" estará seleccionado con el valor "Sí" por lo que se mostrarán solo los elementos con el campo "activo "\= "true", salvo que se aplique filtro específico sobre este campo.Realizará la búsqueda sobre la tabla de tipos de enlace a partir de los filtros indicados en los campos:* Nombre * Activo  Si no se especifica ningún valor sobre ninguno de los campos, se devolverán todos los registros de la tabla tipo de enlace.[CU\-CSP\-0007\-001 \- Buscar y listar tipos de enlaces](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0007-gestion-de-tipos-de-enlace/cu-csp-0007-001-buscar-y-listar-tipos-de-enlaces.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0007-gestion-de-tipos-de-enlace/cu-csp-0007-001-buscar-y-listar-tipos-de-enlaces.md") | CSP\-TENL\-VCSP\-TENL\-ECSP\-TENL\-BCSP\-TENL\-R |
| Modificar | Mostrará la pantalla de modificación del tipo de enlace. | Esta acción solo estará disponible si el elemento tiene el campo campo "activo" a "true"Se muestra la pantalla [IU\-CSP\-0010\-003 Modificar tipo de enlace](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0010-gestion-de-tipos-de-enlace/iu-csp-0010-003-modificar-tipo-de-enlace.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0010-gestion-de-tipos-de-enlace/iu-csp-0010-003-modificar-tipo-de-enlace.md")[CU\-CSP\-0007\-003 \- Modificar tipo de enlace](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0007-gestion-de-tipos-de-enlace/cu-csp-0007-003-modificar-tipo-de-enlace.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0007-gestion-de-tipos-de-enlace/cu-csp-0007-003-modificar-tipo-de-enlace.md") | CSP\-TENL\-E |
| Eliminar | Eliminación (desactivación) del tipo de enlace | Esta acción solo estará disponible si el elemento tiene el campo "activo" a "true"Se mostrará el mensaje de confirmación para que el usuario verifique la acción. Si la confirmación es positiva, el tipo de enlace se modificará poniendo el campo "activo" a "false". El tipo de enlace dejará de mostrarse en los desplegables para añadir nuevos enlaces en las convocatorias/proyectos.[CU\-CSP\-0007\-004 \- Eliminar tipo de enlace](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0007-gestion-de-tipos-de-enlace/cu-csp-0007-004-eliminar-tipo-de-enlace.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0007-gestion-de-tipos-de-enlace/cu-csp-0007-004-eliminar-tipo-de-enlace.md") | CSP\-TENL\-B |
| Reactivar | Reactivación del tipo de enlace | Esta acción solo estará disponible si el elemento tiene el campo "activo" a "false". Se mostrará un mensaje de confirmación para que el usuario verifique la acción. Si la confirmación es positiva, antes de realizar la reactivación se deberá comprobar que no exista un tipo de enlace activo con el mismo nombre, en este caso se mostrará un mensaje de error informando que el elemento no puede ser reactivado dada la existencia de un tipo de enlace activo con el mismo nombre. Si se cumple la comprobación de unicidad, el tipo de enlace se modificará poniendo el campo "activo" a "true". El tipo de enlace volverá de mostrarse en los desplegables para añadir nuevos enlaces en las convocatorias/proyectos. | CSP\-TENL\-R |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir |  | Se mostrará el formulario de creación de un nuevo tipo de enlace [IU\-CSP\-0010\-001 Crear tipo de enlace](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0010-gestion-de-tipos-de-enlace/iu-csp-0010-001-crear-tipo-de-enlace.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0010-gestion-de-tipos-de-enlace/iu-csp-0010-001-crear-tipo-de-enlace.md")[CU\-CSP\-0007\-002 \- Crear tipo de enlace](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0007-gestion-de-tipos-de-enlace/cu-csp-0007-002-crear-tipo-de-enlace.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0007-gestion-de-tipos-de-enlace/cu-csp-0007-002-crear-tipo-de-enlace.md") | CSP\-TENL\-C |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




