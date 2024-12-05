# Hércules : IU\-CSP\-0050\-008 Añadir tipo de hito al modelo de ejecución



## Formulario  Añadir tipo de hito a un modelo de ejecución

Formulario para añadir un tipo de hito a un modelo de ejecución. Podrá accederse a este formulario desde la creación o modificación de un modelo de ejecución.



|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Añadir tipo de hito al modelo de ejecución | | | |
| Tipo de hito | | SelectorTexto cortoObligatorio | El desplegable cargará el listado de los tipos de hito que aún puedan asociarse al modelo:* Que figuren en la tabla "Tipo hito" con el campo "activo" a "true" y * Que no existan en la relación "Modelo tipo hito" para el modelo que está siendo creado o modificado o que existan en la relación "Modelo tipo hito" con el campo "activo" a "false" |
| Disponible en | Convocatorias | CheckBooleanOpcional | Indica si el tipo de hito estará disponible para la gestión de convocatorias asociadas al modelo. Se corresponde con el campo "convocatoria" de la relación "Modelo tipo hito" |
| Solicitudes | CheckBooleanOpcional | Indica si el tipo de hito estará disponible para la gestión de solicitudes asociadas al modelo.  Se corresponde con el campo "solicitud" de la relación "Modelo tipo hito" |
| Proyectos | CheckBooleanOpcional | Indica si el tipo de hito estará disponible para la gestión de proyectos asociados al modelo.  Se corresponde con el campo "proyecto" de la relación "Modelo tipo hito" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea o modifica un registro en la relación "Modelo tipo hito" | Almacena o modifica la relación entre el tipo de hito seleccionado y el modelo de ejecución que está siendo creado/modificado en la tabla "Modelo tipo hito".Los campos "convocatoria", "solicitud" y "proyecto" tomarán valor de acuerdo a los checks "Convocatorias", "Solicitudes", "Proyectos". Se deberá validar que al menos uno de ellos esté seleccionado, pudiendo estar más de uno. En caso de no estar ninguno, no se permitirá realizar la operación.El registro se creará con el campo "activo" a "true".Si la relación entre el modelo y el tipo de hito ya existiese con el campo "activo" a "false" se volverá a activar poniendo el campo "activo" a "true" y actualizando los campos "Convocatorias", "Solicitudes", "Proyectos" de acuerdo a lo indicado en los checks.Si la relación entre el modelo y el tipo de hito ya existiese con el campo "activo" a "true" se actualizará de acuerdo a los cambios en los checks "Convocatorias", "Solicitudes", "Proyectos". Si la relación entre el modelo y tipo de hito ya existiese y los tres checks "Convocatorias", "Solicitudes", "Proyectos" se dejan sin marcar, no se permitirá realizar la operación de creación o modificación. | CSP\-ME\-ECSP\-ME\-E\_UOCSP\-ME\-CCSP\-ME\-C\_UO |
| Cancelar | No realiza ninguna operación en base de datos | Vuelve a la pestaña de Tipos de hito del modelo de ejecución |  |

  


### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




