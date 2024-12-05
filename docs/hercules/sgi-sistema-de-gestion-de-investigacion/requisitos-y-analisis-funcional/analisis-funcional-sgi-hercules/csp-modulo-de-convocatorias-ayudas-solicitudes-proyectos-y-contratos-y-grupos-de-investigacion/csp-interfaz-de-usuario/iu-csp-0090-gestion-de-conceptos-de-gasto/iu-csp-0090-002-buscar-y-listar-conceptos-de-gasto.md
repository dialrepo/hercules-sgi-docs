# Hércules : IU\-CSP\-0090\-002 \- Buscar y listar conceptos de gasto



## Formulario Buscar y listar conceptos de gasto

Formulario de búsqueda y listado de conceptos de gasto

* Un elemento inactivo (activo \= No) no tendrá disponibles las acciones "editar" ni "eliminar".  La única acción disponible para elementos inactivos será "reactivar". A través de esta acción el elemento volverá a estar activo pudiendo así ser modifido.
* En la modificación de un elemento no se podrá modificar el valor del campo activo. La única forma de modificar este campo será a través de las operaciones "eliminar" y "reactivar".



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Búsqueda de conceptos de gasto | | |
| Activo | SelectorBooleanoValores: Sí, NoOpcional | Filtro de búsqueda sobre el campo "activo" del concepto de gasto. Por defecto, el filtro se mostrará precargado con "activo\=sí", debiendo el usuario forzar su cambio. Se debe permitir también que el usuario realice la búsqueda sin filtrar por este campo para así obtener el listado de todos los conceptos de gasto (activos y no activos). |
| Buscar | Botón |  |
| Listado de conceptos de gasto | | |
| Nombre | Texto corto | Nombre identificativo del concepto de gasto.Se corresponde con el campo "nombre" de la tabla "concepto de gasto". |
| Descripción | Texto | Descripción del concepto de gasto.Se corresponde con el campo "descripción" de la tabla "concepto de gasto". |
| Costes indirectos | Texto corto | Indicador de si el concepto representa o no costes indirectos.Se corresponde con el campo "costes indirectos" de la tabla "concepto de gasto". |
| Activo | Booleano | Se corresponde con el campo "activo" de la tabla "concepto de gasto". |
| Modificar | Icono de acción | Acción modificar |
| Eliminar | Icono de acción | Acción eliminar |
| Reactivar | Icono de reactivar | Acción reactivar |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar | Aplica la búsqueda y muestra los resultados en la tabla del listado. | Realizará la búsqueda sobre la tabla "Conceptos gasto" a partir de los filtros indicados en los campos:* Activo  La búsqueda se podrá aplicar sin indicar ningún filtro, devolviendo todos los registros de la tabla.[CU\-CSP\-0090\-001 \- Buscar y listar conceptos de gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0090-gestion-de-conceptos-de-gasto/cu-csp-0090-001-buscar-y-listar-conceptos-de-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0090-gestion-de-conceptos-de-gasto/cu-csp-0090-001-buscar-y-listar-conceptos-de-gasto.md") | CSP\-TGTO\-VCSP\-TGTO\-ECSP\-TGTO\-BCSP\-TGTO\-R |
| Modificar | Modificación del registro al que está vinculado el botón de modificar. | **Acción solo disponible para elementos con campo "activo" a "true"**Se muestra la ventana de modificación del concepto de gasto [IU\-CSP\-0090\-003 \- Modificar concepto de gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0090-gestion-de-conceptos-de-gasto/iu-csp-0090-003-modificar-concepto-de-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0090-gestion-de-conceptos-de-gasto/iu-csp-0090-003-modificar-concepto-de-gasto.md")[CU\-CSP\-0090\-003 \- Modificar concepto de gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0090-gestion-de-conceptos-de-gasto/cu-csp-0090-003-modificar-concepto-de-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0090-gestion-de-conceptos-de-gasto/cu-csp-0090-003-modificar-concepto-de-gasto.md") | CSP\-TGTO\-E |
| Eliminar | Elimina el registro al que está vinculado el botón eliminar. | ****Acción solo disponible para elementos con campo "activo" a "true"****Se mostrará el mensaje de confirmación para que el usuario verifique la acción. Si la confirmación es positiva, el concepto de gasto se modificará poniendo el campo "activo" a "false". Dejará de mostrarse en los desplegables de convocatorias/proyectos.[CU\-CSP\-0090\-004 \- Eliminar concepto de gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0090-gestion-de-conceptos-de-gasto/cu-csp-0090-004-eliminar-concepto-de-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0090-gestion-de-conceptos-de-gasto/cu-csp-0090-004-eliminar-concepto-de-gasto.md") | CSP\-TGTO\-B |
| Reactivar | Vuelve a activar el registro poniendo en campo Activo a "true". | ******Acción solo disponible para elementos con campo "activo" a "false"******Se mostrará el mensaje de confirmación para que el usuario verifique la acción. Si la confirmación es positiva, se validará que el nombre del elemento a reactivar no figure en la tabla "conceptos de gasto" sobre un elemento activo (campo "activo" a "true"). Si ya existe un concepto de gasto activo con el mismo nombre se mostrará un mensaje de error informando que el elemento no puede ser reactivado al existir un concepto de gasto activo con el mismo nombre. En caso contrario, el concepto de gasto se modificará poniendo el campo "activo" a "true". Volverá de mostrarse en los desplegables de convocatorias/proyectos. | CSP\-TGTO\-R |
| Paginación | Componente estándar de paginación sobre la tabla del listado de resultados |  |  |
| Añadir concepto de gasto | Crea un nuevo concepto de gasto. | Se muestra la ventana de creación de un concepto de gasto [IU\-CSP\-0090\-001 \- Crear concepto de gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0090-gestion-de-conceptos-de-gasto/iu-csp-0090-001-crear-concepto-de-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0090-gestion-de-conceptos-de-gasto/iu-csp-0090-001-crear-concepto-de-gasto.md")[CU\-CSP\-0090\-002 \- Crear concepto de gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0090-gestion-de-conceptos-de-gasto/cu-csp-0090-002-crear-concepto-de-gasto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0090-gestion-de-conceptos-de-gasto/cu-csp-0090-002-crear-concepto-de-gasto.md") | CSP\-TGTO\-C |

  


### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




