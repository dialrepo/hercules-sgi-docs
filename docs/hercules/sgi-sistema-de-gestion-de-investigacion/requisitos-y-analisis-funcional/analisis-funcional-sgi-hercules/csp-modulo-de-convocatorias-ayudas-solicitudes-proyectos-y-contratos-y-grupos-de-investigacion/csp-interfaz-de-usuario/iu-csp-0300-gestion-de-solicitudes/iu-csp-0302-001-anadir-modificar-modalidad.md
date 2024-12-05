# Hércules : IU\-CSP\-0302\-001 \- Añadir\-modificar modalidad



## Formulario Añadir/modificar modalidad

Formulario para indicar el subprograma/modalidad/submodalidad de una solicitud.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Entidad convocante | TextoSolo lectura | Nombre de la entidad convocante sobre la que se está añadiendo/modificando la modalidad de la solicitud. Se muestra a modo informativo. El nombre de la entidad convocante se recuperará por medio de [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md") a partir de la referencia a la entidad almacenada en la tabla de relación "Convocatoria entidad convocante" para la convocatoria con la que se vincula la solicitud (campo "convocatoria" de la tabla "solicitud"). |
| Plan de investigación | TextoSolo lectura | Nombre del plan de investigación. El plan de investigación se corresponderá con el nodo raíz del árbol de programas (tabla "Programa") que tenga asociado la entidad convocante sobre la que se está añadiendo/modificando la modalidad de la solicitud. A través del campo "programa" de la relación "convocatoria entidad convocante" se obtendrá, en la tabla "Programa", el nodo raíz del árbol. El valor recuperado en el campo "nombre" para este nodo raíz será el nombre del Plan de investigación. |
| Modalidad | Componente gráfico de árbol | Se mostrará el árbol recuperado del la tabla "Programa" a partir del campo "programa" de la relación "Convocatoria entidad convocante" para la entidad convocante sobre la que se está añadiendo/modificando la modalidad de la solicitud. En el árbol mostrado, serán seleccionables todos los nodos de cualquier rama a partir del nodo referenciado por la convocatoria (campo "programa" de la relación "convocatoria entidad convocante"). El elemento referenciado en la convocatoria no será seleccionable, por tanto, si de él no cuelgan más nodos, no será seleccionable ningún elemento del árbol.El nodo raíz del árbol no se podrá seleccionar.Solamente se podrá seleccionar un elemento.Sobre cada elemento del árbol se mostrará a modo de tooltip (al pasar el ratón por encima del elemento) el valor del campo "descripción" (tabla "programa"). |



| Acciones | Descripción | Descripción C.U. |
| --- | --- | --- |
| Aceptar | Añade la modalidad a la solicitud | * Se permitirá seleccionar un nodo a partir del nivel del árbol de programas indicado en la convocatoria (el de la convocatoria no se podrá seleccionar, el nodo raíz) * El árbol se mostrará de acuerdo a lo indicado arriba para el campo Modalidad * Si se accede a este formulario desde la creación de una nueva solicitud: 	+ Se creará un registro en la tabla "Solicitud modalidad": 		- El campo "programa" será el identificador recuperado de la tabla "programa" correspondiente al elemento seleccionado en el formulario. 		- El campo "entidad ref" será la referencia de la entidad convocante (correspondiente al registro de la tabla "convocatoria entidad convocante" desde el que se ha accedido a este formulario) 		- El campo "programa convocatoria" será el identificador del programa de la convocatoria (campo "programa" del registro de la tabla "convocatoria entidad convocante" desde el que se ha accedido a este formulario) * Si se accede a este formulario desde la modificación de la solicitud se actualizará el registro en "solicitud modalidad". |
| Cancelar | Retorna al formulario de la solicitud, sin salvar los posibles cambios. |  |

  
  
  
  
  
  





