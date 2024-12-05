# Hércules : IU\-CSP\-0095\-004 \- Añadir área al listado de áreas temáticas



## Formulario Añadir área al listado de áreas temáticas

Formulario para crear el árbol de áreas temáticas de un listado de áreas concreto. Cuando el listado aún no tiene ningún área se mostrará:



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Creación del primer elemento de un listado de áreas temáticas | | |
| Abreviatura del área temática | Texto corto. AbreviaturaObligatorio | Abreviatura identificativa del área. Será obligatorio y se comprobará su unicidad dentro del listado de áreas temáticas (entre los registros activos). Los listados de áreas temáticas serán aquellos elementos de la tabla "área temática" con campo "padre" a null. No podrán existir dos áreas temáticas con la misma "abreviatura" y campo "activo" a "true" dentro del mismo árbol de áreas temáticas.El campo "abreviatura" se corresponde con el campo "nombre" de la tabla de "Área temática" |
| Nombre del área temática | Texto cortoOpcional | Nombre del área temática. Será obligatorio y se comprobará su unicidad dentro del listado de áreas temáticas (entre los registros activos). Los listados de áreas temáticas serán aquellos elementos de la tabla "área temática" con campo "padre" a null. No podrán existir dos áreas temáticas con el mismo "nombre de área temática" y campo "activo" a "true" dentro del mismo árbol de áreas temáticas. El campo "Nombre del área temática" se corresponde con el campo "descripción" de la tabla de "Área temática" |

  


Creación de áreas/subáreas una vez que el árbol ya dispone de un primer ítem creado. Se construye el árbol del áreas, sin limitaciones de niveles y sin especificación del nombre del nivel. 



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Creación de cualquier nivel del árbol de programas del plan de investigación | | |
| Abreviatura del área temática | Texto corto. Abreviatura.Obligatorio | Abreviatura identificativa del área, subárea. No se distinguirá el nombre de acuerdo al nivel, lo que permitirá disponer de una estructura abierta para la creación de los diferentes listados de áreas temáticas.La abreviatura será un campo obligatorio y se comprobará su unicidad dentro del listado (entre los registros activos). Los listados de áreas temáticas serán aquellos elementos de la tabla "área temática" con campo "padre" a null. No podrán existir dos áreas temáticas con la misma "abreviatura" y campo "activo" a "true" dentro del mismo árbol de áreas temáticas.El campo "abreviatura" se corresponde con el campo "nombre" de la tabla de "Área temática" |
| Nombre del área temática | Texto cortoObligatorio | Nombre identificativo del área, subárea. No se distinguirá el nombre de acuerdo al nivel, lo que permitirá disponer de una estructura abierta para la creación de los diferentes listados de áreas temáticas.Será obligatorio y se comprobará su unicidad dentro del listado de áreas temáticas (entre los registros activos). Los listados de áreas temáticas serán aquellos elementos de la tabla "área temática" con campo "padre" a null. No podrán existir dos áreas temáticas con el mismo "nombre de área temática" y campo "activo" a "true" dentro del mismo árbol de áreas temáticas.El campo "Nombre del área temática" se corresponde con el campo "descripción" de la tabla de "Área temática" |
| Ítem padre | TextoOpcionalSelección del elemento a través de un componente gráfico de árbol | Define la jerarquía dentro del árbol de áreas temáticas del elemento que está siendo creado.Puede dejarse vacío, lo que supondrá que el elemento que se crea ocupa el primer nivel en el árbol del listado (bajo la raíz), es decir, es un área.El ítem padre debe poder seleccionarse a través de la propia estructura de árbol que ya esté disponible sobre el listado de áreas, en base a los elementos que se hayan ido creando. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Inserta un nuevo elemento sobre la tabla "áreas temáticas" vinculado al "Listado de áreas" de procedencia. | Se debe verificar la unicidad de los campos Abreviatura y Nombre sobre la tabla "Áreas temáticas", para un "Listado de áreas" determinado, entre los registros activos.Los listados de áreas temáticas serán aquellos elementos de la tabla "área temática" con campo "padre" a null. No podrán existir dos áreas temáticas con la misma "abreviatura" y campo "activo" a "true" dentro del mismo árbol de áreas temáticas. No podrán existir dos áreas temáticas con el mismo "nombre de área temática" y campo "activo" a "true" dentro del mismo árbol de áreas temáticas.El elemento se crea siempre activo, campo "Activo" a true.El campo "abreviatura" del interface se corresponde con el campo "nombre" de la tabla de "Área temática" y el campo "nombre del área temática" del interface se corresponde con el campo "descripción" de la tabla de "AreaTematica"[CU\-CSP\-0060\-003 \- Añadir área temática a un Listado de áreas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0060-gestion-de-areas-tematicas/cu-csp-0060-003-anadir-area-tematica-a-un-listado-de-areas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0060-gestion-de-areas-tematicas/cu-csp-0060-003-anadir-area-tematica-a-un-listado-de-areas.md") | CSP\-AREA\-C |
| Cancelar | No realiza ninguna operación en base de datos | Se permanecerá en la pantalla de creación/modificación del árbol de áreas temáticas |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




