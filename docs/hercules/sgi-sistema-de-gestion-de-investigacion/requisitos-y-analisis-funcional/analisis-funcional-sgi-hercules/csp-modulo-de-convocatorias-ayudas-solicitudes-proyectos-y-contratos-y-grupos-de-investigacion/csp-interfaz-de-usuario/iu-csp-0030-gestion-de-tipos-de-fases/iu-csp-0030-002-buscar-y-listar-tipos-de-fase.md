# Hércules : IU\-CSP\-0030\-002 Buscar y listar tipos de fase



## Formulario Buscar y listar tipos de fase

Formulario de búsqueda y listado de tipos de fase



|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Búsqueda de tipo fase | | | |
| Nombre | | Texto cortoOpcional | Nombre identificativo del tipo de fase. |
| Activo | | SelectorValores: sí, no, vacío | Por defecto marcado a "sí", para que la búsqueda se realice sobre los tipos de fase activos. Se podrá dejar vacío para que la búsqueda devuelva todos los valores tanto los activos como los no activos. |
| Buscar | | Botón | Acción Buscar. |
| Tabla de resultados. Listado de tipos de fase | | | |
| Nombre | | Texto corto | Nombre identificativo del tipo de enlace.Se incluirá ordenación de la tabla de resultados por esta columna. |
| Descripción | | Texto | Descripción del tipo de enlace.Se incluirá ordenación de la tabla de resultados por esta columna. |
| Activo | | Booleano: sí, no | Valor que indica si el registro está activo o no.Se incluirá ordenación de la tabla de resultados por esta columna. |
| Modificar | | Icono de acción | Acción modificar |
| Eliminar | | Icono de acción | Acción el eliminar |
| Reactivar | | Icono de acción | Acción reactivar |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar | Realiza la búsqueda y muestra el listado de resultados | Por defecto se mostrarán los elementos activos, es decir, aquellos que tengan el campo "activo" \= "true", salvo que se especifique un valor concreto para este filtro.Realizará la búsqueda sobre la tabla de tipos de fase a partir de los filtros indicados en los campos:* Nombre * Activo  Si no se especifica ningún valor sobre ninguno de los campos, se devolverán todos los registros de la tabla tipos de fase.[CU\-CSP\-0005\-001 \- Buscar y listar tipos de fase](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0005-gestion-de-tipos-de-fase/cu-csp-0005-001-buscar-y-listar-tipos-de-fase.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0005-gestion-de-tipos-de-fase/cu-csp-0005-001-buscar-y-listar-tipos-de-fase.md") | CSP\-TFASE\-VCSP\-TFASE\-ECSP\-TFASE\-BCSP\-TFASE\-R |
| Modificar | Modificación del tipo de fase | La acción solo estará disponible para aquellos elementos que tengan el campo "activo" a "true".Se mostrará el formulario de modificación del tipo de fase. [IU\-CSP\-0030\-003 Modificar tipo de fase](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0030-gestion-de-tipos-de-fases/iu-csp-0030-003-modificar-tipo-de-fase.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0030-gestion-de-tipos-de-fases/iu-csp-0030-003-modificar-tipo-de-fase.md")[CU\-CSP\-0005\-003 \- Modificar tipo de fase](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0005-gestion-de-tipos-de-fase/cu-csp-0005-003-modificar-tipo-de-fase.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0005-gestion-de-tipos-de-fase/cu-csp-0005-003-modificar-tipo-de-fase.md") | CSP\-TFASE\-E |
| Eliminar | Eliminación/desactivación del tipo de fase | La acción solo estará disponible para aquellos elementos que tengan el campo "activo" a "true".Se mostrará el mensaje de confirmación para que el usuario verifique la acción. Si la confirmación es positiva, el tipo de fase se modificará poniendo el campo Activo a "false". El tipo de fase dejará de mostrarse en los desplegables para añadir nuevos enlaces en las convocatorias/proyectos.[CU\-CSP\-0005\-004 \- Eliminar tipo de fase](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0005-gestion-de-tipos-de-fase/cu-csp-0005-004-eliminar-tipo-de-fase.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0005-gestion-de-tipos-de-fase/cu-csp-0005-004-eliminar-tipo-de-fase.md") | CSP\-TFASE\-B |
| Reactivar | Activación del tipo de fase | La acción solo estará disponible para aquellos elementos que tengan el campo "Activo" a "false".Se mostrará un mensaje de confirmación para que el usuario verifique la acción. Si la confirmación es positiva, antes de realizar la reactivación se deberá comprobar que no exista un tipo de fase activo con el mismo nombre. En caso de existir, se mostrará un mensaje de error informando que el elemento no puede ser reactivado dada la existencia de un tipo de fase activo con el mismo nombre. Si la validación de unicidad se cumple, el tipo de fase se modificará poniendo el campo "activo" a "true". El tipo de fase volverá a estar disponible. | CSP\-TFASE\-R |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir | Creación de un nuevo tipo de fase | [CU\-CSP\-0005\-002 \- Crear tipo de fase](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0005-gestion-de-tipos-de-fase/cu-csp-0005-002-crear-tipo-de-fase.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0005-gestion-de-tipos-de-fase/cu-csp-0005-002-crear-tipo-de-fase.md")Se mostrará el formulario de creación de un nuevo tipo de fase [IU\-CSP\-0030\-001 Crear tipo de fase](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0030-gestion-de-tipos-de-fases/iu-csp-0030-001-crear-tipo-de-fase.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0030-gestion-de-tipos-de-fases/iu-csp-0030-001-crear-tipo-de-fase.md") | CSP\-TFASE\-C |

  


### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




