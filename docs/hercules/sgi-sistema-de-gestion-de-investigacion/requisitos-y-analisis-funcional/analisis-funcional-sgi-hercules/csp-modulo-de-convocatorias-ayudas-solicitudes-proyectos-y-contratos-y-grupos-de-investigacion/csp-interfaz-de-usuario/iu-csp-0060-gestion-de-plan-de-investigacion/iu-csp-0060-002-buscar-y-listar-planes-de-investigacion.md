# Hércules : IU\-CSP\-0060\-002 \- Buscar y listar planes de investigación



## Formulario Buscar y listar planes de investigación

Formulario de búsqueda y listado de planes de investigación.

* Un elemento inactivo (activo \= No) no se puede Editar ni Eliminar.  Cuando un elemento no está activo, la única acción disponible será "Reactivar". Esta acción permitirá poner el campo activo \= true y así ya poder modificarlo.
* En la edición de un elemento no se puede modificar el campo activo, es solo modo consulta.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Buscador de planes de financiación | | |
| Nombre del plan | TextoOpcional | Nombre identificativo del plan de investigación. |
| Activo | Selector. Valores: sí, no, vacíoOpcional | **Este filtro sólo estará disponible para usuarios ACT\-CSP\-004\-Administrador. ACT\-CSP\-003\-Gestor no tendrán disponible este filtro, de modo que solamente tendrá acceso a los elementos activos.** Por defecto marcado a "sí" para que la búsqueda se realice sobre los planes de investigación activos. Se podrá dejar vacío para que la búsqueda devuelva todos los valores tanto los activos como los no activos. |
| Buscar | Botón | Acción buscar |
| Listado de planes de financiación | | |
| Nombre del plan | Texto | Nombre del plan de investigación.Se incluirá ordenación de la tabla de resultados por esta columna. |
| Descripción | Texto | Descripción del plan de investigación.Se incluirá ordenación de la tabla de resultados por esta columna. |
| Activo | Booleano | **Campo disponibles solamente para ACT\-CSP\-004\-Administrador**Valor que indica si el registro está activo o no.Se incluirá ordenación de la tabla de resultados por esta columna. |
| Modificar | Icono de acción | Acción modificar |
| Eliminar | Icono de acción | Acción eliminar |
| Acción reactivar | Icono de reactivar | Acción reactivarSólo disponible para **ACT\-CSP\-004\-Administrador, cuando el elemento tenga el indicador activo a false** |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar | Aplica los filtros de búsqueda para mostrar el listado de planes de investigación. | Realizará la búsqueda sobre los Plan a partir de los filtros indicados en los campos:* Nombre * Activo  Si no se especifica ningún valor sobre ninguno de los campos, se devolverán todos los registros[CU\-CSP\-0050\-001 \- Buscar y listar planes de investigación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0050-gestion-de-planes-de-investigacion/cu-csp-0050-001-buscar-y-listar-planes-de-investigacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0050-gestion-de-planes-de-investigacion/cu-csp-0050-001-buscar-y-listar-planes-de-investigacion.md") | CSP\-PRG\-VCSP\-PRG\-ECSP\-PRG\-BCSP\-PRG\-R |
| Modificar | Modificación del registro al que está vinculado el botón de modificar. | Acción disponible para para ACT\-CSP\-004\-Administrador y ACT\-CSP\-003\-GestorSólo estará disponible si el registro tiene el indicador "activo" a true.Se mostrará el formulario de modificación del modelo de ejecución [IU\-CSP\-0060\-004 \- Modificar plan de investigación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0060-gestion-de-plan-de-investigacion/iu-csp-0060-004-modificar-plan-de-investigacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0060-gestion-de-plan-de-investigacion/iu-csp-0060-004-modificar-plan-de-investigacion.md")[CU\-CSP\-0050\-004 \- Modificar plan de investigación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0050-gestion-de-planes-de-investigacion/cu-csp-0050-004-modificar-plan-de-investigacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0050-gestion-de-planes-de-investigacion/cu-csp-0050-004-modificar-plan-de-investigacion.md") | CSP\-PRG\-E |
| Eliminar | Elimina el registro al que está vinculado el botón modificar. | Acción disponible para ACT\-CSP\-004\-Administrador y ACT\-CSP\-003\-GestorLa acción solo estará disponible para aquellos elementos que tenga el campo "activo" a "true"Se mostrará el mensaje de confirmación para que el usuario verifique la acción. Si la confirmación es positiva, el plan de investigación se modificará poniendo el campo Activo a "false". El plan de investigación y todos sus programas dejarán de mostrarse en los desplegables para crear o modificar convocatorias/proyectos.[CU\-CSP\-0050\-006 \- Eliminar plan de investigación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0050-gestion-de-planes-de-investigacion/cu-csp-0050-006-eliminar-plan-de-investigacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0050-gestion-de-planes-de-investigacion/cu-csp-0050-006-eliminar-plan-de-investigacion.md") | CSP\-PRG\-B |
| Reactivar | Vuelve a activar el registro. | ****La acción solo estará disponible para ACT\-CSP\-004\-Administrador********Esta acción solo estará disponible para aquellos elementos que tengan el campo "activo" a "false"****Se mostrará el mensaje de confirmación para que el usuario verifique la acción. Si la confirmación es positiva, se realizará la comprobación de unicidad por el campo "nombre" entre los registros activos de la tabla "programa" que sean nodo raíz de un árbol de programas. En caso de que exista un nombre entre los planes activos con el nombre del registro que se esta intentando reactivar, se mostrará un mensaje indicando que no se puede reactivar dado que ya existe otro plan activo con el mismo nombre. "El elemento no puede ser reactivado, ya existe un plan de investigación con el mismo nombre". Si la validación de unicidad se cumple, se modificará el registro poniendo su campo "activo" a "true". | CSP\-PRG\-R |
| Paginación | Componente estándar de paginación sobre la tabla del listado de resultados |  |  |
| Añadir plan de investigación | Crea un nuevo plan de investigación. | Disponible para ACT\-CSP\-004\-Administrador y ACT\-CSP\-003\-GestorMuestra la pantalla [IU\-CSP\-0060\-001 \- Crear plan de investigación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0060-gestion-de-plan-de-investigacion/iu-csp-0060-001-crear-plan-de-investigacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0060-gestion-de-plan-de-investigacion/iu-csp-0060-001-crear-plan-de-investigacion.md")[CU\-CSP\-0050\-002 \- Crear plan de investigación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0050-gestion-de-planes-de-investigacion/cu-csp-0050-002-crear-plan-de-investigacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0050-gestion-de-planes-de-investigacion/cu-csp-0050-002-crear-plan-de-investigacion.md") | CSP\-PRG\-C |

  


### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




