# Hércules : IU\-CSP\-0402\-027 \- Seleccionar área temática



## Formulario Seleccionar área temática

Formulario que permite seleccionar un área temática durante de la creación o modificación de un proyecto, en los casos que existan restricciones de áreas temáticas marcadas desde la convocatoria.



|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Listado de áreas temáticas | | Texto cortoObligatorio | Nombre del listado de áreas temáticas. Se deberá recuperar el nodo raíz del árbol de áreas temáticas utilizado en la convocatoria. Se obtendrá, en la tabla "área temática", el nodo raíz a partir de cualquier elemento de la tabla "convocatoria área temática". El nodo raíz será aquel cuyo campo "padre" tome valor "null". Se mostrará el campo "nombre" de este nodo raíz.Se mostrará en modo consulta. |
| Seleccione área temática | | Componente gráfico de árbolTexto largoObligatorio | Se mostrará el árbol de áreas temáticas (recuperado de la tabla "área temática") limitado por los nodos establecidos en la tabla "convocatoria área temática", de forma que, aunque el árbol de áreas temáticas al que está asociada la convocatoria se pueda mostrar completo, solo serán seleccionables los elementos referenciados en la tabla "convocatoria área temática"  o cualquiera de sus hijos (sin que tenga por qué ser un nodo hoja).Solamente se podrá seleccionar un elemento. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir | Añade el área temática al proyecto. | * + Sólo se puede seleccionar un nodo del árbol 	+ Se almacenará el nodo seleccionado en el campo "área temática" de la tabla "contexto proyecto" | CSP\-PRO\-ECSP\-PRO\-E\_UOCSP\-SOL\-INV\-ER |
| Cancelar | Retorna al formulario de la solicitud, sin salvar los posibles cambios. |  |  |

  
  
  
  
  
  





