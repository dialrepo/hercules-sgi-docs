# Hércules : IU\-CSP\-0095\-003 \- Buscar y listar listados de áreas temáticas



## Formulario Buscar y listar listados de áreas temáticas

Formulario de búsqueda  y listado de grupos de de áreas temáticas

* Un elemento inactivo (activo \= No) no tendrá disponibles las acciones "modificar" ni "eliminar".  La única acción permitida sobre un elemento con el campo "activo" a "false" será la acción "reactivar". Una vez reactivado el elemento ya podrá ser modificado.
* En la modificación de un elemento no se puede modificar el campo activo, es solo modo consulta. La modificación del campo activo solo será posible realizarla de manera implícita a las acciones "eliminar" y "reactivar".



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Búsqueda de áreas temáticas | | |
| Nombre del listado de áreas temáticas | TextoOpcional | Nombre identificativo del listado de áreas temáticas. |
| Activo | SelectorBooleanoValores: Sí, No, VacíoOpcional | **Este filtro solo estará disponible para ACT\-CSP\-004\-Administrador.** Por defecto marcado a "sí" para que la búsqueda se realice sobre los listados de áreas activos. Se podrá dejar vacío para que la búsqueda devuelva todos los valores tanto los activos como los no activos.ACT\-CSP\-003\-Gestor no tendrá este campo disponible para filtrar, accediendo solamente a los elementos con campo "activo" a "true"**.** |
| Buscar | Botón | Acción buscar |
| Listado de grupo de áreas temáticas | | |
| Nombre del listado de áreas | Texto corto | Nombre del listado o grupo de áreas temáticas. |
| Descripción | Texto largo | Descripción del listado de áreas |
| Activo | Boolean | **Este campo solo se mostrará para ACT\-CSP\-004\-Administrador**Valor del campo Activo del listado de áreas |
| Acción modificar | Icono de acción | Acción modificar |
| Acción eliminar | Icono de acción | Acción eliminar |
| Acción reactivar | Icono de reactivar | **Acción solo disponible para ACT\-CSP\-004\-Administrador**Acción reactivar |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar | Aplica los filtros de búsqueda para mostrar los grupos de áreas temáticas. | Realizará la búsqueda sobre la tabla "Área temática", sobre aquellos elementos con "padre" a null, a partir de los filtros indicados en los campos:* Nombre * Activo  Si no se especifica ningún valor sobre ninguno de los campos, se devolverán todos los registros de la tabla.El ACT\-CSP\-004\-Administrador podrá visualizar todas las áreas temáticas (incluidas las inactivas) y el ACT\-CSP\-003\-Gestor únicamente las áreas temáticas activas.[CU\-CSP\-0060\-001 \- Buscar y listar listados de áreas temáticas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0060-gestion-de-areas-tematicas/cu-csp-0060-001-buscar-y-listar-listados-de-areas-tematicas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0060-gestion-de-areas-tematicas/cu-csp-0060-001-buscar-y-listar-listados-de-areas-tematicas.md") | CSP\-AREA\-VCSP\-AREA\-ECSP\-AREA\-BCSP\-AREA\-R |
| Modificar | Modificación del grupo de áreas seleccionado | Esta acción solo estará disponible sobre aquellos elementos con campo "activo" a "true"Muestra la ventana de modificación de un listado de áreas [IU\-CSP\-0095\-005 \- Modificar listado de áreas temáticas \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0095-gestion-de-areas-tematicas/iu-csp-0095-005-modificar-listado-de-areas-tematicas-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0095-gestion-de-areas-tematicas/iu-csp-0095-005-modificar-listado-de-areas-tematicas-datos-generales.md")[CU\-CSP\-0060\-004 \- Modificar listado de áreas temáticas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0060-gestion-de-areas-tematicas/cu-csp-0060-004-modificar-listado-de-areas-tematicas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0060-gestion-de-areas-tematicas/cu-csp-0060-004-modificar-listado-de-areas-tematicas.md") | CSP\-AREA\-E |
| Eliminar | Eliminación del grupo de áreas seleccionado. | Esta acción solo estará disponible sobre aquellos elementos con campo "activo" a "true"Modifica el grupo de áreas seleccionado para poner su campo Activo \= "no" (activo\=false). Previamente se mostrará un mensaje de confirmación al usuario.[CU\-CSP\-0060\-006 \- Eliminar Listado de áreas temática](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0060-gestion-de-areas-tematicas/cu-csp-0060-006-eliminar-listado-de-areas-tematica.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0060-gestion-de-areas-tematicas/cu-csp-0060-006-eliminar-listado-de-areas-tematica.md") | CSP\-AREA\-B |
| Reactivar | Reactivación del grupo de áreas seleccionado. | Esta acción solo estará disponible para ACT\-CSP\-004\-AdministradorEsta acción solo estará disponible sobre aquellos elementos con campo "activo" a "false"Se mostrará el mensaje de confirmación para que el usuario verifique la acción. Si la confirmación es positiva, se comprobará que no exista un elemento con el mismo valor sobre el campo "nombre" y con el campo "activo" a "true", entre los elementos raíz de la tabla "área temática" (campo "padre" a "null"). Si se diera el caso, se mostrará un mensaje de error indicando que no se puede reactivar el elemento al existir ya un elemento activo con mismo nombre. En caso contrario, se modificará el registro poniendo en campo "activo" a "true". | CSP\-AREA\-R |
| Añadir listado de áreas temáticas |  | Muestra la ventana de creación de un listado de áreas temáticas [IU\-CSP\-0095\-001 \- Crear listado de áreas temáticas \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0095-gestion-de-areas-tematicas/iu-csp-0095-001-crear-listado-de-areas-tematicas-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0095-gestion-de-areas-tematicas/iu-csp-0095-001-crear-listado-de-areas-tematicas-datos-generales.md")[CU\-CSP\-0060\-002 \- Crear listado de áreas temáticas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0060-gestion-de-areas-tematicas/cu-csp-0060-002-crear-listado-de-areas-tematicas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0060-gestion-de-areas-tematicas/cu-csp-0060-002-crear-listado-de-areas-tematicas.md") | CSP\-AREA\-C |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




