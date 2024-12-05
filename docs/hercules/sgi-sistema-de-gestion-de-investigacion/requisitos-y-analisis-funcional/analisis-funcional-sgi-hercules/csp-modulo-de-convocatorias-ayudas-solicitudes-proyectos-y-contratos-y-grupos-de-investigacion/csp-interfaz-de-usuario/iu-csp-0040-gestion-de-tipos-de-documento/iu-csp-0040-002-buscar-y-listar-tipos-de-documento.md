# Hércules : IU\-CSP\-0040\-002 Buscar y listar tipos de documento



## Formulario Buscar y listar tipos de documento

Formulario de búsqueda y listado de tipos de documento



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Búsqueda de tipos de documento | | |
| Nombre | Texto cortoNo obligatorio | Nombre identificativo del tipo de documento. |
| Activo | SelectorValores: sí, no, vacíoNo obligatorio | Por defecto marcado a "sí", para que la búsqueda se realice sobre los tipos de documento activos. Se podrá dejar vacío para que la búsqueda devuelva todos los valores tanto los activos como los no activos. |
| Buscar | Botón | Acción buscar |
| Tabla de resultados. Listado de tipos de documento | | |
| Nombre | Texto corto | Nombre identificativo del tipo de documento.Se incluirá ordenación de la tabla de resultados por esta columna. |
| Descripción | Texto | Descripción del tipo de documento.Se incluirá ordenación de la tabla de resultados por esta columna. |
| Activo | Booleano: sí, no | Valor que indica si el registro está activo o no.Se incluirá ordenación de la tabla de resultados por esta columna. |
| Modificar | Icono de acción | Acción modificar |
| Eliminar | Icono de acción | Acción eliminar |
| Reactivar | Icono de acción | Acción reactivar |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar | Realiza la búsqueda y muestra la lista de resultados | Por defecto se mostrarán los elementos que tengan el campo "activo" a "true", salvo que se especifique un valor concreto sobre el filtro del campo "Activo".Realizará la búsqueda sobre la tabla de tipos de documento a partir de los filtros indicados en los campos:* Nombre * Activo  Si no se especifica ningún valor sobre ninguno de los campos, se devolverán todos los registros de la tabla tipo de documento.[CU\-CSP\-0006\-001 \- Buscar y listar tipos de documento](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=CU-CSP-0006-001+-+Buscar+y+listar+tipos+de+documento&linkCreation=true&fromPageId=597852573 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=CU-CSP-0006-001+-+Buscar+y+listar+tipos+de+documento&linkCreation=true&fromPageId=597852573") | CSP\-TDOC\-VCSP\-TDOC\-ECSP\-TDOC\-BCSP\-TDOC\-R |
| Modificar | Modificación del tipo de documento | La acción solo estará disponible para los tipos de documento que tengan el campo "activo" a "true".Se mostrará el formulario de modificación del tipo de documento [IU\-CSP\-0040\-003 Modificar tipo de documento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0040-gestion-de-tipos-de-documento/iu-csp-0040-003-modificar-tipo-de-documento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0040-gestion-de-tipos-de-documento/iu-csp-0040-003-modificar-tipo-de-documento.md").[CU\-CSP\-0006\-003 \- Modificar tipo de documento](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=CU-CSP-0006-003+-+Modificar+tipo+de+documento&linkCreation=true&fromPageId=597852573 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=CU-CSP-0006-003+-+Modificar+tipo+de+documento&linkCreation=true&fromPageId=597852573") | CSP\-TDOC\-E |
| Eliminar | Eliminación/desactivación del tipo de documento. | La acción solo estará disponible para los tipos de documento que tengan el campo "activo" a "true".Se mostrará el mensaje de confirmación para que el usuario verifique la acción. Si la confirmación es positiva, el tipo de documento se modificará poniendo el campo Activo a "false". El tipo de documento dejará de mostrarse en los desplegables para añadir nuevos documentos en las convocatorias/proyectos.[CU\-CSP\-0006\-004 \- Eliminar tipo de documento](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=CU-CSP-0006-004+-+Eliminar+tipo+de+documento&linkCreation=true&fromPageId=597852573 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=CU-CSP-0006-004+-+Eliminar+tipo+de+documento&linkCreation=true&fromPageId=597852573") | CSP\-TDOC\-B |
| Reactivar | Activación del tipo de documento. | La acción solo estará disponible para los tipos de documento que tengan el campo "activo" a "false".Se mostrará el mensaje de confirmación para que el usuario verifique la acción. Si la confirmación es positiva se deberá validar que no exista un registro con el mismo valor sobre el campo "nombre" y con el campo "activo" a "true"en la tabla "tipo documento". En caso de que se dé esta duplicidad, se mostrará un mensaje de error indicando que no se puede reactivar el elemento al existir ya un tipo de documento activo con mismo nombre. Si se cumple la unicidad se modificará el tipo de documento poniendo el campo "activo" a "true". El tipo de documento volverá a estar disponible. | CSP\-TDOC\-R |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir |  | Se mostrará el formulario de creación de un nuevo tipo de documento [IU\-CSP\-0040\-001 Crear tipo de documento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0040-gestion-de-tipos-de-documento/iu-csp-0040-001-crear-tipo-de-documento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0040-gestion-de-tipos-de-documento/iu-csp-0040-001-crear-tipo-de-documento.md") [CU\-CSP\-0006\-002 \- Crear tipo de documento](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=CU-CSP-0006-002+-+Crear+tipo+de+documento&linkCreation=true&fromPageId=597852573 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=CU-CSP-0006-002+-+Crear+tipo+de+documento&linkCreation=true&fromPageId=597852573") | CSP\-TDOC\-C |

  


### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




