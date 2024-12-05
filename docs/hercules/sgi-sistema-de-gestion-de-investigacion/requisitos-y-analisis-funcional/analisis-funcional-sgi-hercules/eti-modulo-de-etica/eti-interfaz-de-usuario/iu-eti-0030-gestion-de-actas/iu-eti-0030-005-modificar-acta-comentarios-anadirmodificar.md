# Hércules : IU\-ETI\-0030\-005 Modificar acta \- Comentarios \- Añadir/modificar



## Formulario de Evaluar memoria \- Comentarios \- Añadir

Pantalla que muestra el formulario para crear  o modificar uno comentario de tipo revisión de acta de una evaluación de una memoria.

Para dar de alta/modificar un comentario se necesitan los siguientes campos:

* Memoria: desplegable con las referencias de las memorias que se están evaluando en la convocatoria de reunión asociada al acta y que tengan ya un dictamen y que no tenga conflicto de intereses con el evaluador (las personas asignadas a la memoria, tabla "tarea" no están en el listado de conflicto de intereses del evaluador)
* Bloque: desplegable con el nombre de los 5 bloques del formulario asociado al comité que tiene asignada la memoria.
* Apartado: árbol con los apartados y subapatados del bloque seleccionado
* Comentario: caja de texto para introducir el comentario respecto al subapartado o apartado.

Todos los cambios se realizarán en memoria, no serán efectivos hasta que el usuario pulse el botón Guardar de la pantalla.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Memoria | DesplegableTexto cortoObligatorio | Desplegable con las referencias de las memorias que se están evaluando en la convocatoria de reunión asociada al acta y que tengan ya un dictamen y que no tenga conflicto de intereses con el evaluador (las personas asignadas a la memoria, tabla "tarea" no están en el listado de conflicto de intereses del evaluador).No se muestran en el desplegable aquellas memorias con las que tiene conflicto de interés el evaluador o aquellas que no tienen un dictamen.En el caso del gestor se mostrarán todas las memorias de la convocatoria de reunión que tengan ya el dictamen informado. |
| Bloque | DesplegableTexto cortoObligatorio | Desplegable con el nombre de los 5 bloques del formulario asociado al comité que tiene asignada la memoria. |
| Apartado | ÁrbolTexto cortoObligatorio | Árbol con los apartados y subapartados del bloque seleccionado |
| Comentario | TextoObligatorio | Comentario a introducir. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir/Aceptar | Añade/modifica un  comentario al listado de comentarios. | Se guarda en la tabla Comentario el nuevo comentario de tipoComentario \= ACTA asociado a la memoria seleccionada. | ETI\-ACT\-EETI\-ACT\-INV\-ERETI\-ACT\-ER |
| Cancelar | Se vuelve al listado de comentarios sin añadir el comentario |  |  |

### Acciones

#### Por actor

#### Todos los permisos de acceso




