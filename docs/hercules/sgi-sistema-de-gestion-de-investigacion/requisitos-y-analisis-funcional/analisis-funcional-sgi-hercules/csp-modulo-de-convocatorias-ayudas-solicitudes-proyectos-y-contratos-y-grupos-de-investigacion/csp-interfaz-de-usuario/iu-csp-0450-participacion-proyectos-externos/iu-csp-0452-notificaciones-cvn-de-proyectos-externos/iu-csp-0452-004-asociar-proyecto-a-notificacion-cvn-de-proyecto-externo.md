# Hércules : IU\-CSP\-0452\-004 \- Asociar proyecto a notificación CVN de proyecto externo



## Formulario Asociar proyecto a notificación CVN de proyecto externo

Formulario que permite asociar un proyecto SGI con una notificación e proyecto de CVN.



| Crear nuevo proyecto:Buscar proyecto existente: | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
|  | | |
| Indique si desea crear un nuevo proyecto o vincularlo a uno existente | Radio botónObligatorio | Valores:* Crear nuevo proyecto * Buscar proyecto existente |
| Crear nuevo proyecto | | |
| Título | TextoObligatorio | Título del proyecto a crear.Se precargará por defecto con el valor del campo "título" de la tabla "notificación proyecto externo CVN", pudiendo ser modificado.Es un campo obligatorio.El valor recogido se almacenará en el campo "título" de la tabla "proyecto". |
| Fecha inicio | FechaObligatorio | Fecha de inicio del proyecto a crear.Se precargará por defecto con el valor del campo  "fecha inicio" de la tabla notificación proyecto externo CVN", pudiendo ser modificado.Es un campo obligatorio.El valor recogido se almacenará en el campo "fecha inicio" de la tabla "proyecto". |
| Fecha fin | FechaObligatorio | Fecha de fin del proyecto a crear.Se precargará por defecto con el valor del campo  "fecha fin" de la tabla notificación proyecto externo CVN", pudiendo ser modificado.Es un campo obligatorio.El valor recogido se almacenará en el campo "fecha fin" de la tabla "proyecto". |
| Unidad de gestión | SelectorTextoObligatorio | Unidad de gestión a la que estará asociado el proyecto en creación.El selector contendrá el listado de las unidades de gestión sobre las que el usuario conectado tenga permisos de ACT\-CSP\-003\-Gestor y/o ACT\-CSP\-004\-Gestor. Si solo dispone de una unidad de gestión, ésta se mostrará precargada.Es un campo obligatorio.El valor recogido se almacenará sobre el campo "unidad de gestión" de la tabla "proyecto". |
| Modelo de ejecución | SelectorTextoObligatorio | Modelo de ejecución del proyecto que está siendo creado.El selector contendrá el listado de los modelos de ejecución (tabla "modelo ejecución") activos (campo "activo" a "true") que tengan el campo "externo" a "true" y estén asociados a cualquiera de las unidades de gestión sobre las que el  usuario conectado tenga permisos de ACT\-CSP\-003\-Gestor y/o ACT\-CSP\-004\-Gestor. Si solo existe un modelo de ejecución que cumpla las condiciones, éste se mostrará precargado.Es un campo obligatorio.El valor recogido se almacenará sobre el campo "modelo de ejecución" de la tabla "proyecto". |
| Buscar proyecto existente | | |
| Seleccione el proyecto | SelectorTextoObligatorio | Muestra la pantalla [IU\-GEN\-0030 \- Búsqueda de proyectos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0030-busqueda-de-proyectos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0030-busqueda-de-proyectos.md") |

  


### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Aceptar | Crea el vínculo entre la notificación CVN y el proyecto, creando el nuevo proyecto si así se selecciona. | Si se selecciona la opción "crear proyecto":* Se creará un nuevo registro en la tabla "proyecto" para el que: 	+ El campo "título" tomará el valor recogido en el formulario. 	+ El campo "fecha inicio" tomará el valor recogido en el formulario. 	+ El campo "fecha fin" tomará el valor recogido en el formulario. 	+ El campo "unidad de gestión" tomará el valor recogido en el formulario. 	+ El campo "modelo de ejecución" tomará el valor recogido en el formulario.  Se actualizará el registro correspondiente de la tabla "notificación proyecto externo CVN" actualizando el campo "proyecto" con:* La referencia del nuevo proyecto creado. * La referencia del proyecto ya existente seleccionado a través del buscador. | CSP\-CVPR\-E |
| Cancelar | Retorna al listado de notificaciones CVN sin salvar los posibles cambios introducidos hasta el momento. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




