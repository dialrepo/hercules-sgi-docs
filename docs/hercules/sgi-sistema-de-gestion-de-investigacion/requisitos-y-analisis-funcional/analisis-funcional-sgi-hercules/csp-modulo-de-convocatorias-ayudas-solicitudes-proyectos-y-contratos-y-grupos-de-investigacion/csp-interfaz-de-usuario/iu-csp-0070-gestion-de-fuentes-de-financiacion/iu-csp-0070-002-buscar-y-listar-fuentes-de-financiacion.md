# Hércules : IU\-CSP\-0070\-002 \- Buscar y listar fuentes de financiación



## Formulario Buscar y listar fuentes de financiación

Formulario de búsqueda y listado de las fuentes de financiación.

* Un elemento inactivo (activo \= No) no tendrá habilitadas las acciones "modificar"  ni "eliminar".  La única acción disponible para los elementos inactivos será la acción "reactivar". Con esta acción el elemento volverá a estar Activo (campo "activo" \= "true") y, por tanto, ya podrán realizarse la acción de modificación sobre él.
* En la acción "modificar" de un elemento no se podrá modificar el campo "activo", mostrándose este campo en modo solo lectura. La modificación del campo "activo" irá implícita únicamente en las acciones "eliminar" y "reactivar".



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Búsqueda de fuentes de financiación | | |
| Nombre | TextoOpcional | Filtro de búsqueda por el campo nombre de la fuente de financiación. No es obligatorio que sea introducido. |
| Ámbito | SelectorTexto cortoOpcional | Filtro de búsqueda sobre el campo "ámbito geográfico" de la fuente de financiación. Los valores del desplegable serán los de la tabla "Tipo ámbito geográfico" que tengan el campo "activo \= true". No será obligatorio introducir este filtro de búsqueda por lo que se debe contemplar la necesidad de que el desplegable incluya la opción "vacía". |
| Origen | SelectorTexto cortoOpcional | Filtro de búsqueda sobre el campo "origen" de la fuente de financiación. Los valores del desplegable serán los de la tabla "Tipo origen" que tengan el campo "activo \= true". No será obligatorio introducir este filtro de búsqueda por lo que se debe contemplar la necesidad de que el desplegable incluya la opción "vacía". |
| Activo | SelectorBooleanoValores: Sí, NoOpcional | **Este filtro solo estará habilitado para ACT\-CSP\-004\-Administrador.** Por defecto, el filtro se mostrará precargado con "activo\=sí", debiendo el usuario forzar su cambio. Se debe permitir también que el usuario realice la búsqueda sin filtrar por este campo para así obtener el listado de todas las fuentes de financiación (activas y no activas). ACT\-CSP\-003\-Gestor no tendrá disponible este filtro de búsqueda, pudiendo acceder solamente a los elementos activos (campo "activo" \= "true"). |
| Acción buscar | Botón |  |
| Listado de fuentes de financiación | | |
| Nombre | Texto | Nombre de la fuente de financiación.Se contemplará la ordenación de las filas de la tabla en función de esta columna |
| Descripción | Texto | Descripción de la fuente de financiaciónSe contemplará la ordenación de las filas de la tabla en función de esta columna |
| Ámbito | Texto corto | Campo nombre de la tabla "Tipo de ámbito geográfico" referenciado desde el registro de la tabla fuente de financiación.Se contemplará la ordenación de las filas de la tabla en función de esta columna |
| Origen | Texto corto | Campo nombre de la tabla "Tipo de origen" referenciado desde el registro de la tabla fuente de financiación.Se contemplará la ordenación de las filas de la tabla en función de esta columna |
| Fondo estructural | Boolean | Campo fondo estructural de la tabla fuente de financiaciónSe contemplará la ordenación de las filas de la tabla en función de esta columna |
| Activo | Boolean | Campo "activo" de la tabla fuente de financiación. Se contemplará la ordenación de las filas de la tabla en función de esta columna**Este campo solo estará visible para ACT\-CSP\-004\-Administrador** |
| Modificar | Icono de acción | Acción modificar |
| Eliminar | Icono de acción | Acción eliminar |
| Reactivar | Icono de reactivar | Acción reactivar**Acción solo disponible para ACT\-CSP\-004\-Administrador** |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar | Aplica la búsqueda y muestra los resultados en la tabla del listado. | Realizará la búsqueda sobre la tabla "Fuente de financiación" a partir de los filtros indicados en los campos:* Nombre * Ámbito * Origen * Activo  La búsqueda se podrá aplicar sin indicar ningún filtro, devolviendo todos los registros de la tabla Fuentes de financiación, en combinación con la disponibilidad o no del filtro por el campo "activo" en función del usuario. ACT\-CSP\-004\-Administrador tendrá el filtro por el campo "activo" disponible. ACT\-CSP\-003\-Gestor no tendrá este filtro por lo que solo tendrá acceso a los elementos activos.[CU\-CSP\-0070\-001 \- Buscar y listar fuentes de financiación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0070-gestion-de-fuentes-de-financiacion/cu-csp-0070-001-buscar-y-listar-fuentes-de-financiacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0070-gestion-de-fuentes-de-financiacion/cu-csp-0070-001-buscar-y-listar-fuentes-de-financiacion.md") | CSP\-FNT\-VCSP\-FNT\-ECSP\-FNT\-BCSP\-FNT\-R |
| Modificar | Modificación del registro al que está vinculado el botón de modificar. | **Esta acción solo estará disponible para los registros con campo "activo" a "true"**Muestra la ventana de modificación de la fuente de financiación [IU\-CSP\-0070\-003 \- Modificar fuente de financiación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0070-gestion-de-fuentes-de-financiacion/iu-csp-0070-003-modificar-fuente-de-financiacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0070-gestion-de-fuentes-de-financiacion/iu-csp-0070-003-modificar-fuente-de-financiacion.md")[CU\-CSP\-0070\-003 \- Modificar fuente de financiación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0070-gestion-de-fuentes-de-financiacion/cu-csp-0070-003-modificar-fuente-de-financiacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0070-gestion-de-fuentes-de-financiacion/cu-csp-0070-003-modificar-fuente-de-financiacion.md") | CSP\-FNT\-E |
| Eliminar | Elimina el registro al que está vinculado el botón modificar. | **Esta acción solo estará disponible para los registros con campo "activo" a "true"**Se mostrará el mensaje de confirmación para que el usuario verifique la acción. Si la confirmación es positiva, la fuente de financiación se modificará poniendo el campo Activo a "false". Dejará de mostrarse en los desplegables para crear o modificar convocatorias/proyectos.[CU\-CSP\-0070\-004 \- Eliminar fuente de financiación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0070-gestion-de-fuentes-de-financiacion/cu-csp-0070-004-eliminar-fuente-de-financiacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0070-gestion-de-fuentes-de-financiacion/cu-csp-0070-004-eliminar-fuente-de-financiacion.md") | CSP\-FNT\-B |
| Reactivar | Vuelve a activar el registro poniendo en campo Activo a "true". | ******Esta acción solo estará disponible para los registros con campo "activo" a "false"************Esta acción solo está disponible para ACT\-CSP\-004\-Administrador******Se mostrará el mensaje de confirmación para que el usuario verifique la acción.En caso que el nombre de la fuente que se está intentando reactivar ya figurase en una de las fuentes con campo "activo" a true, no se permitirá la reactivación. Se mostrará un mensaje de error indicando que el elemento no se puede reactivar porque ya existe una fuente de financiación activa con mismo nombre. En caso contrario, la fuente de financiación se modificará poniendo el campo "activo" a "true". Volverá a mostrarse en los desplegables para crear o modificar convocatorias/proyectos. | CSP\-FNT\-R |
| Paginación | Componente estándar de paginación sobre la tabla del listado de resultados |  |  |
| Añadir fuente de financiación | Crea una nueva fuente de financiación. | Se muestra la ventana de creación de una nueva fuente de financiación [IU\-CSP\-0070\-001 \- Crear fuente de financiación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0070-gestion-de-fuentes-de-financiacion/iu-csp-0070-001-crear-fuente-de-financiacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0070-gestion-de-fuentes-de-financiacion/iu-csp-0070-001-crear-fuente-de-financiacion.md")[CU\-CSP\-0070\-002 \- Crear fuente de financiación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0070-gestion-de-fuentes-de-financiacion/cu-csp-0070-002-crear-fuente-de-financiacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0070-gestion-de-fuentes-de-financiacion/cu-csp-0070-002-crear-fuente-de-financiacion.md") | CSP\-FNT\-C |

  


### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




