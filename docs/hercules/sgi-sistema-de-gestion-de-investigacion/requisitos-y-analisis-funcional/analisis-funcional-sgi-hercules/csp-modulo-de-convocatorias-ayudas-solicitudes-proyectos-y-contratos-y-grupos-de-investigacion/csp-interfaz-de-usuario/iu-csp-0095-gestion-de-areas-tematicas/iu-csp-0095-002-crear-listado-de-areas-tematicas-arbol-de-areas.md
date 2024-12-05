# Hércules : IU\-CSP\-0095\-002 \- Crear listado de áreas temáticas \- Árbol de áreas



## Formulario Crear listado de áreas temáticas \- Árbol de áreas

Formulario de creación de un listado de área temática. El grupo de áreas temáticas tendrá una estructura posterior de árbol.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de áreas temáticas \- Árbol de áreas \- En el momento inicial de la creación del listado de áreas, el árbol estará vacío. | | |



| Acciones | Descripción | Enlace CU | Permisos |
| --- | --- | --- | --- |
| Añadir área temática | Crea un nuevo elemento en el árbol de áreas temáticas | Muestra la pantalla [IU\-CSP\-0095\-004 \- Añadir área al listado de áreas temáticas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0095-gestion-de-areas-tematicas/iu-csp-0095-004-anadir-area-al-listado-de-areas-tematicas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0095-gestion-de-areas-tematicas/iu-csp-0095-004-anadir-area-al-listado-de-areas-tematicas.md") | CSP\-AREA\-C |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Inserta un nuevo elemento sobre la tabla "Áreas Temáticas" vinculado al listado de áreas concreto. | Se debe verificar la unicidad de los campos "Abreviatura" y "Nombre" entre todos los registros activos de la tabla "Áreas temáticas", para el listado/grupo de áreas concreto. Puede existir otra área temática con el campo "activo" a true con el mismo nombre pero perteneciente a otro listado/grupo de área temáticas. Los listados de áreas temáticas serán los elementos raíz de los diferentes árboles de áreas temáticas, es decir, aquellos elementos de la tabla "área temática" con campo "padre" a null.Todos los elementos se crean siempre activo, campo "Activo" a true.A nivel de mapeo interno el campo "abreviatura" del formulario se correspondes el campo "nombre" de la tabla de "Área temática" y el campo "nombre" del formulario se corresponde con el campo "descripción" de la tabla de "Área temática"[CU\-CSP\-0060\-002 \- Crear listado de áreas temáticas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0060-gestion-de-areas-tematicas/cu-csp-0060-002-crear-listado-de-areas-tematicas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0060-gestion-de-areas-tematicas/cu-csp-0060-002-crear-listado-de-areas-tematicas.md") | CSP\-AREA\-C |
| Cancelar | No realiza ninguna operación en base de datos | Se retorna a la página de listado de áreas temáticas [IU\-CSP\-0095\-003 \- Buscar y listar listados de áreas temáticas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0095-gestion-de-areas-tematicas/iu-csp-0095-003-buscar-y-listar-listados-de-areas-tematicas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0095-gestion-de-areas-tematicas/iu-csp-0095-003-buscar-y-listar-listados-de-areas-tematicas.md") |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




