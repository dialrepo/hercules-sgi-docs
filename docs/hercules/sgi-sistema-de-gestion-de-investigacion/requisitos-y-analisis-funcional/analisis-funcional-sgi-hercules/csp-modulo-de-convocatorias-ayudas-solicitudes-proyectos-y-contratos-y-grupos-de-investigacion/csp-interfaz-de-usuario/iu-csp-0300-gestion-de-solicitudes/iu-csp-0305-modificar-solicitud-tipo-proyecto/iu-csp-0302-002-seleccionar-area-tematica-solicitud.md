# Hércules : IU\-CSP\-0302\-002 \- Seleccionar área temática solicitud



## Formulario Seleccionar área temática solicitud

Formulario que permite seleccionar un área temática durante de la creación o modificación de una solicitud en el caso que existan restricciones de áreas temáticas en la convocatoria de la que depende la solicitud.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de áreas temáticas | Texto cortoConsulta | Nombre del listado de áreas temáticas. Se deberá recuperar el nodo raíz del árbol de áreas temáticas utilizado en la convocatoria. Se obtendrá, en la tabla "área temática", el nodo raíz a partir de cualquier elemento de la tabla "convocatoria área temática", para la convocatoria a la que está vinculada la solicitud (campo "convocatoria" de la tabla "solicitud"). El nodo raíz será aquel cuyo campo "padre" tome valor "null". Se mostrará el campo "nombre" de este nodo raíz.Se mostrará en modo consulta. |
| Seleccione área temática | Componente gráfico de árbolTexto largoOpcional | Se mostrará el árbol de áreas temáticas (recuperado de la tabla "área temática") limitado por los nodos establecidos en la tabla "convocatoria área temática", de forma que, aunque el árbol de áreas temáticas al que está asociada la convocatoria se pueda mostrar completo, solo serán seleccionables los elementos referenciados en la tabla "convocatoria área temática"  o cualquiera de sus hijos (sin que tenga por qué ser un nodo hoja).Solamente se podrá seleccionar un elemento. |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Añadir | Añade/modifica el área temática a la solicitud, campo "área temática" de la tabla "solicitud proyecto" | * Sólo se puede seleccionar un nodo hijo del árbol * Se almacenará el nodo seleccionado en el campo "área temática" de la tabla "solicitud proyecto" |
| Cancelar | Retorna al formulario de la solicitud, sin salvar los posibles cambios |  |

  
  
  
  
  
  





