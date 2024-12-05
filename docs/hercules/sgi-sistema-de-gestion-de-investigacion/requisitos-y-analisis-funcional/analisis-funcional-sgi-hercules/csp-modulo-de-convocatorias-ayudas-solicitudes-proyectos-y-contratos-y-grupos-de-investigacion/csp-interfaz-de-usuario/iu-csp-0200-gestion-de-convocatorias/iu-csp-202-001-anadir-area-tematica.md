# Hércules : IU\-CSP\-202\-001 \- Añadir área temática



## Formulario Añadir área temática

Pantalla que muestra un formulario, que permite añadir un área temática a la convocatoria.

El área temática se añade desde la pestaña de "Datos Generales" de la convocatoria [IU\-CSP\-0201\-001 \- Crear convocatoria \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-001-crear-convocatoria-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-001-crear-convocatoria-datos-generales.md").



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de áreas temática | SelectorTexto cortoOpcional | Nombre de los listados de áreas temáticas activos.El nombre los listados se corresponderá con el campo "nombre" de  aquellos elementos de la tabla "área temática" que no tienen ningún antecesor, es decir, son los nodos raíz de los árboles de área temáticas (campo "padre" toma el valor "null"). |
| Seleccione área temática | Componente gráfico de árbolTexto largoOpcional | Se mostrará el árbol de áreas temáticas asociado al listado de áreas seleccionado en el desplegable "Listado de áreas temáticas". Si en este desplegable se ha seleccionado el valor vacío, no se mostrará ningún árbol.Se mostrará la estructura árbol cuyo elemento raíz ha sido seleccionado en el selector "Listado de áreas temáticas". Se mostrarán todos los niveles del árbol pero solamente aquellos elementos que tengan el campo "activo" a "true". Si un nodo está marcado con el campo "activo" a "false" no se mostrará así como  tampoco ninguno de los nodos que cuelguen de él. Se podrá seleccionar cualquier elemento independientemente del nivel que ocupen en el árbol, pero se deberá establecer el siguiente control: si un nodo está seleccionado no se permitirá seleccionar uno de nivel inferior (la selección de una rama del árbol implica la cobertura de todos sus descendientes). |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Guardar | Añade el área temática a la convocatoria, tabla "Áreas temáticas convocatoria"Si aplica:* Añade un nuevo elemento a la tabla ""Áreas temáticas" dejando el campo padre a null * Añade un nuevo elemento a la tabla "Áreas temáticas" | * Si se selecciona un elemento del desplegable "Listado áreas temáticas": 	+ Se mostrará el árbol de áreas temáticas para el listado seleccionado. El árbol será compuesto mostrando el campo "nombre" de todos los elementos activos de la tabla "área temática" que sean descendientes  del nodo raíz que representa al listado de áreas temáticas seleccionado ( aquel para el que el campo "padre" toma el valor "null" ) 	+ Se permitirá la multiselección de elementos del árbol pero estableciendo el siguiente límite: 		- Si un nodo está seleccionado no se permitirá seleccionar uno de nivel inferior (la selección de una rama del árbol implica la cobertura de todos sus descendientes). 		- Para todos los elementos seleccionados, se insertará un registro en la tabla "convocatoria área temática" con los valores: 			* Campo "área temática" hará referencia al campo "id" que tome el elemento seleccionado en la  tabla "área temática" * Si no se selecciona un elemento del desplegable "Listado de áreas temáticas": 	+ No se mostrará ningún árbol de áreas temáticas |
| Cancelar | Retorna al formulario de la convocatoria, sin salvar los posibles cambios. |  |




