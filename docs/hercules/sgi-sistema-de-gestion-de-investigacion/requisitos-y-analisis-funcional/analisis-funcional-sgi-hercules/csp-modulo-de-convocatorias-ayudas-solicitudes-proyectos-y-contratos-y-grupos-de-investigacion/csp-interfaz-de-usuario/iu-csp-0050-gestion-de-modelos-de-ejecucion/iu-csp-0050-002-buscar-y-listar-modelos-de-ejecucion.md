# Hércules : IU\-CSP\-0050\-002 Buscar y listar modelos de ejecución



## Formulario Buscar y listar modelos de ejecución

Formulario de búsqueda y listado de resultados de modelos de ejecución.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Búsqueda de modelos de ejecución | | |
| Nombre | Texto cortoNo obligatorio | Nombre identificativo del modelo de ejecución |
| Activo | SelectorValores: sí, no, vacío | Por defecto marcado a "sí", para que la búsqueda se realice sobre los modelos de ejecución activos. Se podrá dejar vacío para que la búsqueda devuelva todos los valores tanto los activos como los no activos. |
| Buscar | Botón | Acción Buscar |
| Listado de modelos de ejecución | | |
| Nombre | Texto corto | Nombre del modelo de ejecuciónSe incluirá ordenación de la tabla de resultados por esta columna.Se corresponde con el campo "nombre" de la tabla "modelo ejecución". |
| Descripción | Texto | Descripción modelo de ejecuciónSe incluirá ordenación de la tabla de resultados por esta columna.Se corresponde con el campo "descripción" de la tabla "modelo ejecución". |
| Externo | Booleano: sí, no | Identifica los modelos de ejecución que se utilizan para representar los proyectos/contratos en los que el personal investigador puede participar bajo la gestión de una entidad externa.Se incluirá ordenación de la tabla de resultados por esta columna.Se corresponde con el campo "externo" de la tabla "modelo ejecución". |
| Contrato/convenio | Booleano: sí, no | Identifica los modelos de ejecución que se utilizan para representar los contratos o convenios.Se incluirá ordenación de la tabla de resultados por esta columna.Se corresponde con el campo "contrato" de la tabla "modelo ejecución". |
| Activo | Booleano: sí, no | Valor que indica si el registro está activo o no.Se incluirá ordenación de la tabla de resultados por esta columna. |
| Modificar | Icono de acción | Acción modificar |
| Eliminar | Icono de acción | Acción eliminar |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar | Aplicará el filtro de búsqueda y mostrará el listado de resultados | Realizará la búsqueda sobre la tabla de modelos de ejecución a partir de los filtros indicados en los campos:* Nombre * Activo  Si no se especifica ningún valor sobre ninguno de los campos, se devolverán todos los registros de la tabla modelos de ejecución. | CSP\-ME\-VCSP\-ME\-ECSP\-ME\-BCSP\-ME\-RCSP\-ME\-V\_UOCSP\-ME\-E\_UOCSP\-ME\-B\_UOCSP\-ME\-R\_UO |
| Modificar | Modificación de los datos del modelo de ejecución | Acción solo disponible para los registros con campo "activo" a "true"Se mostrará el formulario de modificación del modelo de ejecución. [IU\-CSP\-0050\-003 Modificar modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-003-modificar-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-003-modificar-modelo-de-ejecucion.md")[CU\-CSP\-0020\-003 \- Modificar modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-003-modificar-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-003-modificar-modelo-de-ejecucion.md") | CSP\-ME\-ECSP\-ME\-E\_UO |
| Eliminar | Eliminación del modelo de ejecución | Acción solo disponible para los registros con campo "activo" a "true".Se mostrará el mensaje de confirmación para que el usuario verifique la acción. Si la confirmación es positiva, el modelo de ejecución modificará poniendo el campo "activo" a "false". El modelo de ejecución dejará de mostrarse en los desplegables para crear o modificar convocatorias/proyectos.[CU\-CSP\-0020\-004 \- Eliminar modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-004-eliminar-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-004-eliminar-modelo-de-ejecucion.md") | CSP\-ME\-BCSP\-ME\-B\_UO |
| Reactivar | Reactivación del modelo de ejecución | Acción solo disponible para los registros con campo "activo" a "false".Se mostrará un mensaje de confirmación para que el usuario verifique la acción. Si la confirmación es positiva, antes de realizar la reactivación se deberá comprobar que no exista un modelo de ejecución activo (campo "activo" a "true") con el mismo nombre. En caso que no se cumpla esta unicidad, se mostrará un mensaje de error informando que el elemento no puede ser reactivado dada la existencia de un modelo de ejecución activo con el mismo nombre.Si la comprobación de unicidad se cumple, el modelo de ejecución se modificará poniendo el campo "activo" a "true". El modelo volverá a mostrarse en los desplegables correspondientes de convocatorias/proyectos. | CSP\-ME\-RCSP\-ME\-R\_UO |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir | Creación de un nuevo modelo de ejecución | Se mostrará el formulario de creación de un nuevo modelo de ejecución [IU\-CSP\-0050\-001 Crear modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-001-crear-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/iu-csp-0050-001-crear-modelo-de-ejecucion.md")[CU\-CSP\-0020\-002 \- Crear modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-002-crear-modelo-de-ejecucion/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-002-crear-modelo-de-ejecucion/index.md") | CSP\-ME\-CCSP\-ME\-C\_UO |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




