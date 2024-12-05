# Hércules : IU\-CSP\-0080\-002 \- Buscar y listar tipos de financiación



## Formulario Buscar y listar tipos de financiación

Formulario de búsqueda y listado de tipos de financiación

* Un elemento inactivo (activo \= No) no tendrá disponibles las acciones "editar" ni "eliminar". La  única acción disponible sobre un registro inactivo será "reactivar". Con esta acción el elemento volverá a estar activo, teniendo de esta forma disponible la acción "modificar".
* En la modificación  de un elemento no se podrá actuar sobre el campo "activo". Este campo se mostrará en modo solo lectura. La modificación del campo "activo" únicamente se realizará de forma implícita con las acciones "eliminar" y "reactivar".



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Búsqueda de tipos de financiación | | |
| Activo | SelectorBooleanoValores: sí, noOpcional | Filtro de búsqueda sobre el campo "activo" del tipo de financiación. Por defecto, el filtro se mostrará precargado con "activo\=sí", debiendo el usuario forzar su cambio. Se debe permitir también que el usuario realice la búsqueda sin filtrar por este campo para así obtener el listado de todos los tipos de financiación (activos y no activos). |
| Buscar | Botón |  |
| Listado de fuentes de financiación | | |
| Nombre | Texto corto | Nombre identificativo del tipo de financiación. |
| Descripción | Texto | Descripción del tipo de financiación |
| Activo | Booleano | Campo activo del tipo de financiación |
| Modificar | Icono de acción | Acción modificar |
| Eliminar | Icono de acción | Acción eliminar |
| Reactivar | Icono de reactivar | Acción reactivar |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar | Aplica la búsqueda y muestra los resultados en la tabla del listado. | Realizará la búsqueda sobre la tabla "Tipo de financiación" a partir de los filtros indicados en los campos:* Activo  La búsqueda se podrá aplicar sin indicar ningún filtro, devolviendo todos los registros de la tabla Tipos de financiación.[CU\-CSP\-0080\-001 \- Buscar y listar tipos de financiación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0080-gestion-de-tipos-de-financiacion/cu-csp-0080-001-buscar-y-listar-tipos-de-financiacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0080-gestion-de-tipos-de-financiacion/cu-csp-0080-001-buscar-y-listar-tipos-de-financiacion.md") | CSP\-TFNA\-VCSP\-TFNA\-ECSP\-TFNA\-BCSP\-TFNA\-R |
| Modificar | Modificación del registro al que está vinculado el botón de modificar. | **Esta acción solo estará disponible sobre los elementos activos (campo "activo" \= "true")**Se muestra la ventana de modificación [IU\-CSP\-0080\-003 \- Modificar tipo de financiación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0080-gestion-de-tipos-de-financiacion/iu-csp-0080-003-modificar-tipo-de-financiacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0080-gestion-de-tipos-de-financiacion/iu-csp-0080-003-modificar-tipo-de-financiacion.md")[CU\-CSP\-0080\-003 \- Modificar tipo de financiación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0080-gestion-de-tipos-de-financiacion/cu-csp-0080-003-modificar-tipo-de-financiacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0080-gestion-de-tipos-de-financiacion/cu-csp-0080-003-modificar-tipo-de-financiacion.md") | CSP\-TFNA\-E |
| Eliminar | Elimina el registro al que está vinculado el botón eliminar. | ****Esta acción solo estará disponible sobre los elementos activos (campo "activo" \= "true")****Se mostrará el mensaje de confirmación para que el usuario verifique la acción. Si la confirmación es positiva, el tipo de financiación se modificará poniendo el campo "activo" a "false". Dejará de mostrarse en los desplegables para crear o modificar convocatorias/proyectos.[CU\-CSP\-0080\-004 \- Eliminar tipo de financiación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0080-gestion-de-tipos-de-financiacion/cu-csp-0080-004-eliminar-tipo-de-financiacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0080-gestion-de-tipos-de-financiacion/cu-csp-0080-004-eliminar-tipo-de-financiacion.md") | CSP\-TFNA\-B |
| Reactivar | Vuelve a activar el registro poniendo en campo Activo a "true". | ********Esta acción solo estará disponible sobre los elementos inactivos (campo "activo" \= "false")********Se mostrará el mensaje de confirmación para que el usuario verifique la acción. Si laconfirmación es positiva, se comprobará la unicidad del campo nombre sobre los elementos activos, de forma que no se podrá reactivar un elemento si ya existe otro activo (campo "activo" a "true") con el mismo nombre. En este caso, se mostrará un mensaje de error informando al usuario que el elemento no puede ser reactivo debido a la existencia de un tipo de financiación activo con el mismo nombre. En caso contrario, el tipo de financiación se modificará poniendo el campo "activo" a "true". Volverá de mostrarse en los desplegables  para crear o modificar convocatorias/proyectos. | CSP\-TFNA\-R |
| Paginación | Componente estándar de paginación sobre la tabla del listado de resultados |  |  |
| Añadir nuevo tipo de financiación | Crea una nueva fuente de financiación. | Se muestra la ventana de creación de un tipo de financiación [IU\-CSP\-0080\-001 \- Crear tipo de financiación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0080-gestion-de-tipos-de-financiacion/iu-csp-0080-001-crear-tipo-de-financiacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0080-gestion-de-tipos-de-financiacion/iu-csp-0080-001-crear-tipo-de-financiacion.md")[CU\-CSP\-0080\-002 \- Crear tipo de financiación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0080-gestion-de-tipos-de-financiacion/cu-csp-0080-002-crear-tipo-de-financiacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0080-gestion-de-tipos-de-financiacion/cu-csp-0080-002-crear-tipo-de-financiacion.md") | CSP\-TFNA\-C |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




