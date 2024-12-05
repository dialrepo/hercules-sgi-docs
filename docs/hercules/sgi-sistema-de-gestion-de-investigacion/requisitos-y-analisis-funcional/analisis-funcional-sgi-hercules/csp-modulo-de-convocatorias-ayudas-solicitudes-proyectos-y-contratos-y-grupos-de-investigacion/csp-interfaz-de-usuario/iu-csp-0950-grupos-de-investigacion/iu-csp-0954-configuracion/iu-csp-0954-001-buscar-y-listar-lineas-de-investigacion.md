# Hércules : IU\-CSP\-0954\-001 Buscar y listar líneas de investigación



## Formulario Buscar y listar tipos de enlace

Formulario de búsqueda y listado de líneas de investigación



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Búsqueda de líneas de investigación | | |
| Nombre | Texto largoNo obligatorio | Nombre identificativo de la línea de investigación |
| Activo | SelectorValores: sí, no, vacío | Por defecto marcado a "sí", para que la búsqueda se realice sobre las líneas de investigación activas. Se podrá dejar vacío para que la búsqueda devuelva todos los valores tanto las activos como las no activos. |
| Buscar | Botón | Acción buscar |
| Tabla de resultados. Listado de líneas de investigación | | |
| Nombre | Texto largo | Nombre identificativo de la línea de investigaciónCampo "nombre" de la tabla "línea investigación" |
| Activo | Booleano: sí, no | Valor que indica si el registro está activo o no.Campo "activo" de la tabla "línea investigación" |
| Modificar | Icono de acción | Acción modificar. Solo estará disponible para los elementos activos (campo "activo" a "true"). |
| Eliminar | Icono de acción | Acción eliminar. Solo estará disponible para los elementos activos (campo "activo" a "true"). |
| Reactivar | Icono de acción | Acción reactivar. Solo estará disponible para los elementos inactivos (campo "activo" a false). |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar | Se aplica la búsqueda a partir de los filtros introducidos. | Por defecto el filtro "Activo" estará seleccionado con el valor "Sí" por lo que se mostrarán solo los elementos con el campo "activo "\= "true", salvo que se aplique filtro específico sobre este campo.Realizará la búsqueda sobre la tabla "línea investigación" a partir de los filtros indicados en los campos:* Nombre * Activo  Si no se especifica ningún valor sobre ninguno de los campos, se devolverán todos los registros de la tabla "línea investigación" | CSP\-LIN\-ECSP\-LIN\-BCSP\-LIN\-R |
| Modificar | Mostrará la pantalla de modificación de la línea de investigación | Esta acción solo estará disponible si el elemento tiene el campo campo "activo" a "true"Se muestra la pantalla [IU\-CSP\-0954\-002 Crear\-modificar línea de investigación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0954-configuracion/iu-csp-0954-002-crear-modificar-linea-de-investigacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0954-configuracion/iu-csp-0954-002-crear-modificar-linea-de-investigacion.md") | CSP\-LIN\-E |
| Eliminar | Eliminación (desactivación) del tipo de enlace | Esta acción solo estará disponible si el elemento tiene el campo "activo" a "true"Se mostrará el mensaje de confirmación para que el usuario verifique la acción. Si la confirmación es positiva, la línea de investigación se modificará poniendo el campo "activo" a "false". | CSP\-LIN\-B |
| Reactivar | Reactivación del tipo de enlace | Esta acción solo estará disponible si el elemento tiene el campo "activo" a "false". Se mostrará un mensaje de confirmación para que el usuario verifique la acción. Si la confirmación es positiva, antes de realizar la reactivación se deberá comprobar que no exista una línea de investigación activa con el mismo nombre, en este caso se mostrará un mensaje de error informando que el elemento no puede ser reactivado dada la existencia de una línea de investigación activa con el mismo nombre. Si se cumple la comprobación de unicidad, la línea de investigación se modificará poniendo el campo "activo" a "true". | CSP\-LIN\-R |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir |  | Se mostrará el formulario de creación de una nueva línea de investigación [IU\-CSP\-0954\-002 Crear\-modificar línea de investigación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0954-configuracion/iu-csp-0954-002-crear-modificar-linea-de-investigacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0954-configuracion/iu-csp-0954-002-crear-modificar-linea-de-investigacion.md") | CSP\-LIN\-C |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




