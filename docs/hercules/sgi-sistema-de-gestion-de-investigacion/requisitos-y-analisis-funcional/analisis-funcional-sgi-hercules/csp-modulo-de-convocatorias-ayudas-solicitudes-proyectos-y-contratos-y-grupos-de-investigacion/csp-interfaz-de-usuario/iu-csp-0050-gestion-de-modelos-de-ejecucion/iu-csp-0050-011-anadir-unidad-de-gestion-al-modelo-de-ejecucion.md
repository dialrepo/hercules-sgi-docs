# Hércules : IU\-CSP\-0050\-011 Añadir unidad de gestión al modelo de ejecución



## Formulario Añadir unidad de gestión al modelo de ejecución

Formulario para añadir una unidad de gestión a un modelo de ejecución. Podrá accederse a este formulario desde la creación o modificación de un modelo de ejecución.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Añadir unidad de gestión al modelo de ejecución | | |
| Unidad de gestión | SelectorTexto cortoObligatorio | El listado cargará todas las unidades de gestión que estén activas (campo Activo \= true) que aún no figuren en la relación "Modelo Unidad" para el modelo que está siendo creado/modificado y para las que el usuario ACT\-CSP\-004\-Administrador tenga rol de Administrador. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea un nuevo registro en base de datos | Almacena la relación entre la unidad de gestión y el modelo de ejecución que está siendo creado/modificado en la tabla "ModeloUnidad".La relación se creará con el campo "activo" a "true".Si la relación ya existiese con el campo "activo" a "false" se volverá a actualizar poniendo el campo "activo" a "true". | CSP\-ME\-ECSP\-ME\-E\_UOCSP\-ME\-CCSP\-ME\-C\_UO |
| Cancelar | No realiza ninguna operación en base de datos | Vuelve a la pestaña de unidades de gestión del modelo. |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




