# Hércules : IU\-CSP\-0095\-001 \- Crear listado de áreas temáticas \- Datos generales



## Formulario Crear listado de áreas temáticas \- Datos generales

Formulario de creación de un listado de área temática. El grupo de áreas temáticas tendrá una estructura posterior de árbol.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de áreas temáticas \- Datos generales | | |
| Nombre del listado de áreas temáticas | Texto cortoObligatorio | Nombre identificativo del grupo o listado de áreas temáticas. Deberá ser un nombre único en la tabla "Área temática" entre aquellos elementos con campo "activo" a "true" y con "padre" a "null" |
| Descripción | Texto largoOpcional | Campo de texto abierto para incluir la descripción del listado de área temáticas. No será obligatorio. |



| Acciones | Descripción | Enlace CU. | Permiso |
| --- | --- | --- | --- |
| Guardar | Inserta un nuevo elemento sobre la tabla "Areatematica". | Se debe verificar la unicidad del campo Nombre entre todos los registros activos de la tabla "Área temática" y con "padre" a nullEl elemento se crea siempre activo, campo "Activo" a true.[CU\-CSP\-0060\-002 \- Crear listado de áreas temáticas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0060-gestion-de-areas-tematicas/cu-csp-0060-002-crear-listado-de-areas-tematicas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0060-gestion-de-areas-tematicas/cu-csp-0060-002-crear-listado-de-areas-tematicas.md") | CSP\-AREA\-C |
| Cancelar | No se realiza ninguna operación en base de datos | Se retorna a la página de listado de áreas temáticas [IU\-CSP\-0095\-003 \- Buscar y listar listados de áreas temáticas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0095-gestion-de-areas-tematicas/iu-csp-0095-003-buscar-y-listar-listados-de-areas-tematicas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0095-gestion-de-areas-tematicas/iu-csp-0095-003-buscar-y-listar-listados-de-areas-tematicas.md") |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




