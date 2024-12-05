# Hércules : IU\-CSP\-0302\-003 \- Añadir\-modificar área temática solicitud



## Formulario Añadir\-modificar área temática solicitud

Formulario que permite seleccionar un área temática durante de la creación o modificación de una solicitud en el caso que existan restricciones de áreas temáticas en la convocatoria de la que depende la solicitud.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de áreas temáticas | SelectorTexto cortoObligatorio | Se mostrarán todos listados de áreas temáticas activos. Se recuperarán de la tabla "área temática" mostrando el campo "nombre" de aquellos elementos activos (campo "activo" a "true") que sean nodos raíz, es decir, que no tengan ningún antecesor (campo "padre" toma el valor "null").Si se accede a este formulario en modo edición (desde la acción modificar de la tabla de área temática de la solicitud) se mostrará seleccionado el listado correspondiente al área temática indicada en el campo "área temática" de la tabla "solicitud proyecto". Partiendo, en la tabla "área temática", del registro referenciado por el campo "área temática" de la tabla "solicitud proyecto", se debe llegar, a través del campo "padre", hasta el nodo raíz (aquel cuyo campo "padre" toma el valor "null"). |
| Seleccione área temática | Componente gráfico de árbolTexto largoOpcional | Se mostrará el árbol de áreas temáticas asociado al listado de áreas seleccionado en el desplegable "Listado de áreas temáticas". Si en este desplegable se ha seleccionado el valor vacío, no se mostrará ningún árbol.Se mostrará la estructura árbol cuyo elemento raíz ha sido seleccionado en el selector "Listado de áreas temáticas". Se mostrarán todos los niveles del árbol, pudiendo seleccionarse cualquier elemento, independientemente del nivel que ocupen en el árbol. Solo se mostrarán los elementos que tengan el campo activo a "true". Si un nodo está marcado con el campo activo a false no se mostrará y tampoco todos los que cuelguen de él.Solamente se podrá seleccionar un elemento. |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Añadir/Aceptar | El botón se muestra como:* Añadir, cuando se accede al formulario para añadir un nuevo área temática a la solicitud * Aceptar, cuando se accede al formulario para modificar el área temática de la solicitud  Añade/modifica el área temática a la solicitud, campo "área temática" de la tabla "solicitud proyecto" | * Sólo se puede seleccionar un nodo del árbol * El nodo seleccionado se almacenará en el campo "área temática" de la tabla "solicitud proyecto". |
| Cancelar | Retorna al formulario de la solicitud, sin salvar los posibles cambios |  |

  
  
  
  
  
  





