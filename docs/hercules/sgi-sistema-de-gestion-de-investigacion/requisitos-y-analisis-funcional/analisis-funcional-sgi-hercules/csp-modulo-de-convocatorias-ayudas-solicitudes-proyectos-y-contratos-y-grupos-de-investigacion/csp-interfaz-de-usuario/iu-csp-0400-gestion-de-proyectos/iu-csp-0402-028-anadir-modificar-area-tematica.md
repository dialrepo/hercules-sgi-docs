# Hércules : IU\-CSP\-0402\-028 \- Añadir\-modificar área temática



## Formulario Añadir\-modificar área temática

Formulario que permite añadir o modificar un área temática durante de la creación o modificación de un proyecto. Este formulario solo se muestra en los casos en los que el proyecto no está asociado a una convocatoria que tenga restricciones de áreas temáticas. Solo en estos casos, se podrá indicar el área temática sin partir de ningún listado base de convocatoria. En este caso se mostrará activo el campo de Listado de áreas temáticas, para que se seleccione en primer lugar el listado y luego un área temática perteneciente a ese listado



|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Listado de áreas temática | | SelectorTexto cortoObligatorio | Se mostrarán todos listados de áreas temáticas activos. Se recuperarán de la tabla "área temática" mostrando el campo "nombre" de aquellos elementos activos (campo "activo" a "true") que sean nodos raíz, es decir, que no tengan ningún antecesor (campo "padre" toma el valor "null").Si se accede a este formulario en modo edición (desde la acción modificar de la tabla de áreas temáticas del proyecto) se mostrará seleccionado el listado correspondiente al área temática indicada  en el campo "área temática" de la tabla "contexto proyecto". Partiendo, en la tabla "área temática", del registro referenciado por el campo "área temática" de la tabla "contexto proyecto", se debe llegar, a través del campo "padre", hasta el nodo raíz (aquel cuyo campo "padre" toma el valor "null"). |
| Seleccione área temática | | Componente gráfico de árbolTexto largoObligatorio | Se mostrará el árbol de áreas temáticas asociado al listado de áreas seleccionado en el desplegable "Listado de áreas temáticas". Si en este desplegable se ha seleccionado el valor vacío, no se mostrará ningún árbol.Se mostrará la estructura árbol cuyo elemento raíz ha sido seleccionado en el selector "Listado de áreas temáticas". Se mostrarán todos los niveles del árbol, pudiendo seleccionarse cualquier elemento, independientemente del nivel que ocupen en el árbol. Solo se mostrarán los elementos que tengan el campo activo a "true". Si un nodo está marcado con el campo activo a false no se mostrará y tampoco todos los que cuelguen de él. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir | Añade el área temática al proyecto | * + Sólo se puede seleccionar un nodo del árbol 	+ El nodo seleccionado se almacenará en el campo "área temática" de la tabla "contexto proyecto". | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al formulario de la solicitud, sin salvar los posibles cambios |  |  |




