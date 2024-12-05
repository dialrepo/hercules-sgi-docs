# Hércules : IU\-CSP\-0060\-004 \- Modificar plan de investigación



## Formulario Modificar plan de investigación

Formulario de modificación de un  plan de investigación. Pestaña "Datos generales"



| Pestaña "Datos generales" | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Datos generales | | |
| Nombre | TextoObligatorio | Identificador del nombre del Plan de investigación. Es un campo obligatorio y debe de ser único en la tabla "Programa" dentro de los elementos "activos" que tengan "padre" a null. Se podrá establecer otro nombre para el plan siempre y cuando no se repitan dos planes activos con el mismo nombre (siendo un "plan" los elementos de la tabla programa que no tengan "padre"). |
| Descripción | TextoOpcional | Se podrá modificar libremente el valor del campo descripción, pudiendo dejarse sin rellenar. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Botón común a la página de modificación de "plan de investigación". Actualiza el registro cuyos datos están siendo modificados. | Se debe verificar la unicidad del campo Nombre entre todos los registros activos de la tabla "Programa" con padre a null.No es necesario que el plan tenga vinculado ningún programa ("pestaña programas") para guardar las modificaciones introducidas.[CU\-CSP\-0050\-004 \- Modificar plan de investigación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0050-gestion-de-planes-de-investigacion/cu-csp-0050-004-modificar-plan-de-investigacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0050-gestion-de-planes-de-investigacion/cu-csp-0050-004-modificar-plan-de-investigacion.md") | CSP\-PRG\-E |
| Cancelar | Botón común a la página de modificación de "plan de investigación". No realiza ninguna operación en base de datos. | Retorna a la pantalla de listado [IU\-CSP\-0060\-002 \- Buscar y listar planes de investigación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0060-gestion-de-plan-de-investigacion/iu-csp-0060-002-buscar-y-listar-planes-de-investigacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0060-gestion-de-plan-de-investigacion/iu-csp-0060-002-buscar-y-listar-planes-de-investigacion.md") |  |

  


  
Formulario de modificación de plan de investigación. Pestaña "Programas".

Sólo se muestra en el árbol los programas activos.



| Pestaña "Programas"Pestaña "Programas" con un elemento seleccionado | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Pestaña Programas: Los elementos mostrados en el árbol de programas serán solamente aquellos que tengan el campo "activo" a "true". Inicialmente se muestra todo el árbol, permitiendo seleccionar cualquier nodo del mismo. Al seleccionar un nodo se muestra su detalle en la parte derecha de la pantalla | | |
| Árbol de programas del plan | Estructura en forma de árbol que representa la jerarquía de programas, subprogramas, modalidades, submodalidades del plan de investigación, sin distinguir el nombre de cada uno de estos subniveles. | Se permitirá la selección de un ítem del árbol para poder mostrar su detalle en la parte derecha de la pantalla |
| Datos del programa | | |
| Nombre | Texto corto | Nombre del elemento seleccionadoSe mostrará el campo "nombre" de la tabla "programa" para el elemento seleccionado.Se mostrará en modo consulta. |
| Descripción | Texto largo | Descripción del elemento seleccionadoSe mostrará el campo "descripción" de la tabla "programa" para el elemento seleccionado.Se mostrará en modo consulta. |
| Editar programa | Botón | Acción modificar |
| Borrar programa | Botón | Acción eliminar |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar | Modificación del ítem seleccionado en el árbol del plan de investigación. | Muestra la ventana de modificación de un programa de investigación [IU\-CSP\-0060\-005 \- Modificar programa de investigación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0060-gestion-de-plan-de-investigacion/iu-csp-0060-005-modificar-programa-de-investigacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0060-gestion-de-plan-de-investigacion/iu-csp-0060-005-modificar-programa-de-investigacion.md") | CSP\-PRG\-E |
| Eliminar | Eliminación del ítem seleccionado en el árbol del plan de investigación. | Actualiza el programa de investigación para poner su campo Activo \= "no" (activo\=false). Previamente se mostrará un mensaje de confirmación al usuario. El programa dejará de mostrarse en el árbol de programas del plan de investigación. | CSP\-PRG\-E |
| Añadir programa | Inserta un nuevo ítem al árbol del plan de investigación. | Muestra la ventana de creación de un ítem del árbol [IU\-CSP\-0060\-003 \- Añadir programa al plan de investigación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0060-gestion-de-plan-de-investigacion/iu-csp-0060-003-anadir-programa-al-plan-de-investigacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0060-gestion-de-plan-de-investigacion/iu-csp-0060-003-anadir-programa-al-plan-de-investigacion.md") | CSP\-PRG\-E |
| Guardar | Botón común a la página de modificación de "plan de investigación". Actualiza el registro cuyos datos están siendo modificados, que afectarán a la tabla "Programa". | Se debe verificar la unicidad del campo Nombre entre todos los registros activos de la tabla "Programa" con padre a null.No es necesario que se haya creado ningún programa ("pestaña programas") para crear el plan de investigación.A su vez se debe verificar la unicidad del campo Nombre de todos los ítems del árbol de programas que hubieran sido modificados. La unicidad se comprobará solamente dentro de los programas activos del árbol formado a partir de un plan (siendo plan el nodo raíz del árbol, aquel que tenga "padre" . Es decir, se permitirán duplicados de programas activos pero pertenecientes a diferentes planes de investigación.[CU\-CSP\-0050\-004 \- Modificar plan de investigación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0050-gestion-de-planes-de-investigacion/cu-csp-0050-004-modificar-plan-de-investigacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0050-gestion-de-planes-de-investigacion/cu-csp-0050-004-modificar-plan-de-investigacion.md") | CSP\-PRG\-E |
| Cancelar | Botón común a la página de modificación de "plan de investigación". No realiza ninguna operación en base de datos. | Retorna a la pantalla de listado [IU\-CSP\-0060\-002 \- Buscar y listar planes de investigación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0060-gestion-de-plan-de-investigacion/iu-csp-0060-002-buscar-y-listar-planes-de-investigacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0060-gestion-de-plan-de-investigacion/iu-csp-0060-002-buscar-y-listar-planes-de-investigacion.md") |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




