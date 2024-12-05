# Hércules : IU\-CSP\-0050\-005 Añadir tipo de documento al modelo de ejecución



## Formulario Añadir tipo de documento al modelo de ejecución

Formulario para añadir un tipo de documento a un modelo de ejecución. Podrá accederse a este formulario desde la creación o modificación de un modelo de ejecución.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Añadir tipo de documento al modelo de ejecución | | |
| Tipo de documento | SelectorTexto cortoObligatorio | El desplegable cargará el listado de los tipos de documento que estén activos y puedan aún ser asociados a alguna fase del modelo:* Figuren en la tabla "TipoDocumento" con el campo "activo" a true * Figuren en la tabla "ModeloTipoDocumento" con el campo "activo" de esta relación a "false" o que figuren en la tabla "ModeloTipoDocumento" con el campo "activo" de esta relación a "true" y con "ModeloTipoFase" distinto de "null" |
| Tipo de fase | SelectorTexto cortoOpcional | El desplegable cargará el listado de fases que tenga asignado el modelo en la pestaña Tipos de fases ("ModeloTipoFase" con el campo "activo" a true) y que aún no hayan sido relacionados con el tipo de documento, es decir, aquellas fases que no existan ya en al tabla "ModeloTipoDocumento" para el Tipo de documento seleccionado en el combo "Tipo de documento" con "activo" a true.No será obligatorio que un tipo de documento se vincule a ninguna de las fases del modelo, es decir, se puede crear un registro en "Modelo Tipo Documento" con un "Modelo Tipo Fase" vacío. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea un nuevo registro en base de datos | Almacena la triple relación entre el tipo de documento seleccionado, el tipo de fase (si fue seleccionado) y el modelo de ejecución que está siendo creado/modificado en la tabla "Modelo Tipo documento".La relación se creará con el campo "activo" a "true". En el caso que la la relación ya existiese con el campo activo a "false" se volverá a activar poniendo el campo "activo" a "true". | CSP\-ME\-ECSP\-ME\-E\_UOCSP\-ME\-CCSP\-ME\-C\_UO |
| Cancelar | No realiza ninguna operación en base de datos | Vuelve a la pestaña de Tipos de documento del modelo de ejecución |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




