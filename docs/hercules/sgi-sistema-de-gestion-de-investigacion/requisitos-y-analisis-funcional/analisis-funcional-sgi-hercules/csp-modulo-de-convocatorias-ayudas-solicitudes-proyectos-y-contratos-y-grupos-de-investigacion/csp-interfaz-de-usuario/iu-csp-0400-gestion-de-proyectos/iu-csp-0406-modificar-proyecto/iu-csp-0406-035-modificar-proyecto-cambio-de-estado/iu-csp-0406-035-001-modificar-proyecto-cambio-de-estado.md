# Hércules : IU\-CSP\-0406\-035\-001 \- Modificar proyecto \- Cambio de estado



## Formulario Cambiar estado

Formulario para seleccionar el nuevo estado e introducir el comentario asociado al cambio de estado



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Estado actual | Modo consulta | El estado actual del proyecto |
| Nuevo estado | SelectorTexto cortoObligatorio | Desplegable con los estados del proyecto* Borrador * Concedido * Renunciado * Rescindido  Se podrá pasar de un estado a cualquier otro. No hay ninguna restricción, se podrá ir hacia adelante y hacia atrás. |
| Comentario | Texto largoOpcional | Texto para explicar los motivos que justifican el paso al nuevo estado |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Aceptar | Se hace el cambio de estado | Al dar al botón "Aceptar" mostrar una pantalla de confirmación con el siguiente texto "¿Esta seguro que desea realizar el cambio de estado?" con los botones de Aceptar o Cancelar.Si el cambio de estado ha sido correcto (ha pasado todas las validaciones) se mostrará una pantalla modal de aviso en caso de que se cumplan las  siguientes condiciones (las cuatro):* nuevo estado sea "Concedido" * el campo entidad gestora esta vacío * en la pestaña de entidades convocantes no se ha introducido ninguna entidad convocante * en la pestaña de entidades financiadoras no se ha introducido ninguna entidad financiadora.  El texto será el siguiente: "En el proyecto no dispone de ninguna entidad informada (gestora, convocante ni financiadora), revise sus datos si lo considera necesario."  Con un único botón de "Aceptar"Realizar las validaciones/comprobaciones explicadas en el caso de uso: [CU\-CSP\-1200\-006 \- Modificar proyecto \- Cambiar estado](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1200-006+-+Modificar+proyecto+-+Cambiar+estado "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1200-006+-+Modificar+proyecto+-+Cambiar+estado")En el caso de que el cambio de estado sea a **Renunciado o Rescindido:*** Se debe actualizar el campo  "fecha fin definitiva" de la tabla "proyecto" con el valor de la fecha actual. * Si existen registros en la tabla "proyecto equipo": 	+ Si "fecha fin definitiva" de la tabla "proyecto" estaba vacía (valor null): 		- Si "fecha fin" del miembro de equipo (campo "fecha fin" tabla "proyecto equipo") es igual a "fecha fin" de la "tabla proyecto" y además es mayor que fecha actual: 			* se actualizará el campo "fecha fin" de la tabla "proyecto equipo" con la fecha actual 	+ Si "fecha fin definitiva" de la tabla "proyecto" no estaba vacía (valor distinto a null) 		- Si "fecha fin" del miembro de equipo (campo "fecha fin" tabla "proyecto equipo") es mayor o igual al valor original de la "fecha fin definitiva" del proyecto y además es mayor que fecha actual: 			* se actualizará el campo "fecha fin" de la tabla "proyecto equipo" con la fecha actual |
| Cancelar | Retorna al formulario del proyecto, sin salvar los posibles cambios. |  |




