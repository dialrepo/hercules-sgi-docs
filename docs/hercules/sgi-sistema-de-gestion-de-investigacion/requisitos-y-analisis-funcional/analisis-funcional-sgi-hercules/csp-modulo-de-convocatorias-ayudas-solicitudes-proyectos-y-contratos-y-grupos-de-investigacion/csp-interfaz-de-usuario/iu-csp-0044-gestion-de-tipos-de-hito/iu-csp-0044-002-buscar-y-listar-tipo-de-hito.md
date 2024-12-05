# Hércules : IU\-CSP\-0044\-002 Buscar y listar tipo de hito



## Formulario Buscar y listar tipo de hito

Formulario de búsqueda y listado de tipos de hito.



|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Búsqueda de tipos de hito | | | |
| Nombre | | Texto cortoNo obligatorio | Nombre identificativo del tipo de hito. |
| Activo | | SelectorValores: sí, no, vacío | Por defecto marcado a "sí", para que la búsqueda se realice sobre los tipos de hito activos. Se podrá dejar vacío para que la búsqueda devuelva todos los valores tanto los activos como los no activos. |
| Buscar | | Botón | Acción buscar |
| Listado de tipos de hito | | | |
| Nombre | | Texto corto | Nombre identificativo del tipo de hito.Se incluirá ordenación de la tabla de resultados por esta columna. |
| Descripción | | Texto | Descripción del tipo de hito.Se incluirá ordenación de la tabla de resultados por esta columna. |
| Activo | | Booleano: sí, no | Valor que indica si el registro está activo o no.Se incluirá ordenación de la tabla de resultados por esta columna. |
| Modificar | | Icono de acción | Acción modificar |
| Eliminar | | Icono de acción | Acción eliminar |
| Reactivar | | Icono de acción | Acción reactivar |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar |  | Realizará la búsqueda sobre la tabla de tipos de hito a partir de los filtros indicados en los campos:* Nombre * Activo  Si no se especifica ningún valor sobre ninguno de los campos, se devolverán todos los registros de la tabla tipo de hito.Por defecto se listarán los elementos que tengan el campo "Activo" a "true", salvo que se especifique un valor concreto en el filtro del campo "Activo"[CU\-CSP\-0011\-001 \- Buscar y listar de tipos de hito](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0011-gestion-de-tipos-de-hito/cu-csp-0011-001-buscar-y-listar-de-tipos-de-hito.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0011-gestion-de-tipos-de-hito/cu-csp-0011-001-buscar-y-listar-de-tipos-de-hito.md") | CSP\-THITO\-VCSP\-THITO\-ECSP\-THITO\-BCSP\-THITO\-R |
| Modificar | Modificación del tipo de hito. | [CU\-CSP\-0011\-003 \- Modificar tipo de hito](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0011-gestion-de-tipos-de-hito/cu-csp-0011-003-modificar-tipo-de-hito.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0011-gestion-de-tipos-de-hito/cu-csp-0011-003-modificar-tipo-de-hito.md")La acción solo estará disponible para aquellos elementos que tengan el campo "Activo" a "true"Se mostrará el formulario de modificación del tipo de hito [IU\-CSP\-0044\-003 Modificar tipo de hito](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0044-gestion-de-tipos-de-hito/iu-csp-0044-003-modificar-tipo-de-hito.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0044-gestion-de-tipos-de-hito/iu-csp-0044-003-modificar-tipo-de-hito.md") | CSP\-THITO\-E |
| Eliminar | Eliminación/desactivación del tipo de hito | [CU\-CSP\-0011\-004 \- Eliminar tipo de hito](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0011-gestion-de-tipos-de-hito/cu-csp-0011-004-eliminar-tipo-de-hito.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0011-gestion-de-tipos-de-hito/cu-csp-0011-004-eliminar-tipo-de-hito.md")La acción solo estará disponible para aquellos elementos que tengan el campo "Activo" a "true"Se mostrará el mensaje de confirmación para que el usuario verifique la acción. Si la confirmación es positiva, el tipo de hito se modificará poniendo el campo Activo a "false". El tipo de hito dejará de mostrarse en los desplegables para añadir nuevos tipos en la configuración de los modelos de ejecución y por consiguiente en las convocatorias/solicitudes/proyectos. | CSP\-THITO\-B |
| Reactivar | Activación del tipo de hito | La acción solo estará disponible para aquellos elementos que tengan el campo "activo" a "false".Se mostrará el mensaje de confirmación para que el usuario verifique la acción. Si la confirmación es positiva, se debe de validar que el campo "nombre" no esté siendo utilizado en ningún registro activo (campo "activo" a "true") de la tabla "tipo hito". En caso que no sea así, se mostrará un mensaje informando al usuario que la reactivación no se puede realizar debido a la existencia de un tipo de hito activo con el mismo nombre. Si la comprobación de unicidad se cumple, el tipo de hito se modificará poniendo el campo "activo" a "true". El tipo de hito volverá a estar disponible. | CSP\-THITO\-R |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir | Se mostrará el formulario de creación de un nuevo tipo de hito. | [CU\-CSP\-0011\-002 \- Crear tipo de hito](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0011-gestion-de-tipos-de-hito/cu-csp-0011-002-crear-tipo-de-hito.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0011-gestion-de-tipos-de-hito/cu-csp-0011-002-crear-tipo-de-hito.md") | CSP\-THITO\-C |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




