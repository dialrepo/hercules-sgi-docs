# Hércules : IU\-CSP\-0020\-002 Buscar y listar tipo de finalidad



## Formulario Buscar y listar tipo de finalidad

Formulario de búsqueda y listado de tipos de finalidad.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Búsqueda de tipos de finalidad | | |
| Nombre | Texto cortoNo obligatorio | Nombre identificativo del tipo de finalidad. |
| Activo | SelectorValores: sí, no, vacío | Por defecto marcado a "sí", para que la búsqueda se realice sobre los tipos de finalidad activos. Se podrá dejar vacío para que la búsqueda devuelva todos los valores tanto los activos como los no activos. |
| Buscar | Botón | Acción buscar |
| Listado de tipos de finalidad | | |
| Nombre | Texto corto | Nombre identificativo del tipo de finalidad.Se incluirá ordenación de la tabla de resultados por esta columna. |
| Descripción | Texto | Descripción del tipo de finalidad.Se incluirá ordenación de la tabla de resultados por esta columna. |
| Activo | Booleano: sí, no | Valor que indica si el registro está activo o no.Se incluirá ordenación de la tabla de resultados por esta columna. |
| Modificar | Icono de acción | Acción modificar |
| Eliminar | Icono de acción | Acción eliminar |
| Reactivar | Icono de acción | Acción rectificar |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar | Realiza la búsqueda y muestra el listado de resultados | Por defecto el listado se cargará con los registros que tenga el campo "activo" a "true, salvo que se especifique un valor concreto sobre este filtro.Realizará la búsqueda sobre la tabla de tipos de finalidad a partir de los filtros indicados en los campos:* Nombre * Activo  Si no se especifica ningún valor sobre ninguno de los campos, se devolverán todos los registros de la tabla tipo de finalidad.[CU\-CSP\-0008\-001 \- Buscar y listar de tipos de finalidad](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0008-gestion-de-tipos-de-finalidad/cu-csp-0008-001-buscar-y-listar-de-tipos-de-finalidad.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0008-gestion-de-tipos-de-finalidad/cu-csp-0008-001-buscar-y-listar-de-tipos-de-finalidad.md") | CSP\-TFIN\-VCSP\-TFIN\-ECSP\-TFIN\-BCSP\-TFIN\-R |
| Modificar | Se mostrará el formulario de modificación del tipo de finalidad. | La acción solo estará disponible para aquellos elementos que tengan el campo "activo" a "true"Muestra la pantalla [IU\-CSP\-0020\-003 Modificar tipo de finalidad](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0020-gestion-de-tipos-de-finalidad/iu-csp-0020-003-modificar-tipo-de-finalidad.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0020-gestion-de-tipos-de-finalidad/iu-csp-0020-003-modificar-tipo-de-finalidad.md")[CU\-CSP\-0008\-003 \- Modificar tipo de finalidad](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0008-gestion-de-tipos-de-finalidad/cu-csp-0008-003-modificar-tipo-de-finalidad.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0008-gestion-de-tipos-de-finalidad/cu-csp-0008-003-modificar-tipo-de-finalidad.md") | CSP\-TFIN\-E |
| Eliminar | Se eliminará/desactivará el tipo de finalidad | La acción solo estará disponible para aquellos elementos que tengan el campo "activo" a "true".Se mostrará el mensaje de confirmación para que el usuario verifique la acción, si la confirmación es positiva, el tipo de finalidad se modificará poniendo el campo "activo" a "false". El tipo de finalidad dejará de mostrarse en los desplegables para añadir nueva finalidades en la confiugración de los modelos de ejecución así como en las convocatorias/proyectos.[CU\-CSP\-0008\-004 \- Eliminar tipo de finalidad](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0008-gestion-de-tipos-de-finalidad/cu-csp-0008-004-eliminar-tipo-de-finalidad.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0008-gestion-de-tipos-de-finalidad/cu-csp-0008-004-eliminar-tipo-de-finalidad.md") | CSP\-TFIN\-B |
| Reactivar | Se volverá a activar el tipo de finalidad | La acción solo estará disponible sobre aquellos elementos que tengan el campo "activo" a "false".Se mostrará un mensaje de confirmación al usuarios para que verifique la acción de reactivación. Si la confirmación es positiva, se deberá validar que el nombre del elemento a reactivar no figure ya en la tabla "tipo finalidad" para un elemento activo (campo "activo" a "true").  Si no se cumple la comprobación de unicidad, no se permitirá la acción mostrando un mensaje de error para informar que el elemento no puede ser reactivado debido a la existencia de un tipo de finalidad activo con el mismo nombre. Si se cumple la comprobación de unicidad, se modificará el registro poniendo el campo "activo" a "true". El elemento volverá a estar activo | CSP\-TFIN\-R |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir | Se mostrará el formulario de creación de un nuevo tipo de finalidad | Se mostrará el formulario [IU\-CSP\-0020\-001 Crear tipo de finalidad](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0020-gestion-de-tipos-de-finalidad/iu-csp-0020-001-crear-tipo-de-finalidad.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0020-gestion-de-tipos-de-finalidad/iu-csp-0020-001-crear-tipo-de-finalidad.md")[CU\-CSP\-0008\-002 \- Crear tipo de finalidad](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0008-gestion-de-tipos-de-finalidad/cu-csp-0008-002-crear-tipo-de-finalidad.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0008-gestion-de-tipos-de-finalidad/cu-csp-0008-002-crear-tipo-de-finalidad.md") | CSP\-TFIN\-C |

  


### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




