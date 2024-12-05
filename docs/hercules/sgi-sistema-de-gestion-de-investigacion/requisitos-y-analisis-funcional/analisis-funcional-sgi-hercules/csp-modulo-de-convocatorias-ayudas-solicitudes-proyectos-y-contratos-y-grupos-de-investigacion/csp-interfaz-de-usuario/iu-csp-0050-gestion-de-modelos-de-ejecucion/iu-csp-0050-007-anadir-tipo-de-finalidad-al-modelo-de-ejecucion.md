# Hércules : IU\-CSP\-0050\-007 Añadir tipo de finalidad al modelo de ejecución



## Formulario Añadir tipo de finalidad al modelo de ejecución

Formulario para añadir un tipo de finalidad a un modelo de ejecución. Podrá accederse a este formulario desde la creación o modificación de un modelo de ejecución.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Añadir tipo de finalidad al modelo de ejecución | | |
| Tipo de finalidad | SelectorTexto cortoObligatorio | El desplegable cargará el listado de los tipos de finalidad que estén activos (campo Activo \= true) y que aún puedan ser añadidos al modelo:* Que figuren en la tabla "Tipo finalidad" con el campo "activo" a "true" * Que no existan en la tabla "Modelo tipo finalidad" para el modelo que está siendo creado/modificado o que exista en la tabla "Modelo tipo finalidad" con el campo "activo" a "false" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea un nuevo registro en base de datos | Almacena la relación entre el tipo de finalidad seleccionado y el modelo de ejecución que está siendo creado/modificado en la tabla "Modelo tipo finalidad".El registro se creará con el campo "activo" a true. En caso de que la relación ya existiese con el campo "activo" a "false" se volverá a activar poniendo el campo "activo" a "true". | CSP\-ME\-ECSP\-ME\-E\_UOCSP\-ME\-CCSP\-ME\-C\_UO |
| Cancelar | No realiza ninguna operación en base de datos | Vuelve a la pestaña de Tipos de finalidad del modelo de ejecución |  |

  


### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




