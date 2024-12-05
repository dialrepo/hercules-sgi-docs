# Hércules : IU\-CSP\-0060\-003 \- Añadir programa al plan de investigación



## Formulario Añadir programa al plan de investigación

Formulario para crear el árbol de programas de un plan de investigación. 



| Vista del formulario cuando el plan de investigación aún no tiene ningún programa creado. | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Creación del primer programa de un plan de investigación | | |
| Nombre del programa | TextoObligatorio | Nombre identificativo del programa. Será obligatorio y se comprobará su unicidad dentro de los elementos activos de un mismo plan. Siendo plan el elemento raíz del árbol de programas. Es decir, dentro de un mismo árbol de programas no podrán existir dos elementos activos con el mismo nombre. |
| Descripción | TextoOpcional | Descripción del programa |

  


  




| Vista del formulario cuando el plan ya dispone de un primer programa. Se construye el árbol del plan, sin limitaciones de niveles y sin especificación del nombre del nivel. | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Creación de cualquier nivel del árbol de programas del plan de investigación. Se debe seleccionar previamente el elemento del árbol del que se desea que "dependa" el nuevo elemento a crear. | | |
| Nombre | TextoObligatorio | Nombre identificativo del programa, subprograma, modalidad, submodalidad, etc. No se distinguirá el nombre de acuerdo al nivel, lo que permitirá disponer de una estructura abierta para la creación de los diferentes planes de investigación.El nombre será un campo obligatorio y se comprobará su unicidad dentro del plan. Siendo plan el elemento raíz del árbol de programas. Es decir, dentro de un mismo árbol de programas no podrán existir dos elementos activos con el mismo nombre. |
| Descripción | TextoOpcional | Descripción del programa, subprograma, modalidad, submodalidad, etc. No es un campo obligatorio. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Inserta un nuevo elemento sobre la tabla "Programa" vinculado al "Plan de investigación" de procedencia. | Se debe verificar la unicidad del campo Nombre entre todos los registros activos de la tabla "Programa" pertenecientes al  plan (siendo plan el elemento raíz del árbol de programas). Es decir, dentro de un mismo árbol de programas no podrán existir dos elementos activos con el mismo nombre, pero sí podrán existir dos elementos activos con el mismo nombre en diferentes árboles de programa (diferentes planes).El elemento se crea siempre activo, campo "Activo" a true.[CU\-CSP\-0050\-003 \- Añadir programa al plan de investigación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0050-gestion-de-planes-de-investigacion/cu-csp-0050-003-anadir-programa-al-plan-de-investigacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0050-gestion-de-planes-de-investigacion/cu-csp-0050-003-anadir-programa-al-plan-de-investigacion.md") | CSP\-PRG\-CCSP\-PRG\-E |
| Cancelar | No realiza ninguna operación en base de datos | Se mantiene en la pantalla de creación del árbol de programas |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




