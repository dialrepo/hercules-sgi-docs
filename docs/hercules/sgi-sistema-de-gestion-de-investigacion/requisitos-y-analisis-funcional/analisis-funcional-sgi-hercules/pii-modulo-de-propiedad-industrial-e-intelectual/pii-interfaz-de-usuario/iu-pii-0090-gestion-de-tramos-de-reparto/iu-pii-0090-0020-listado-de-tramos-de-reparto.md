# Hércules : IU\-PII\-0090\-0020 \- Listado de tramos de reparto



## Formulario de Listado de tramos de reparto

Pantalla que muestra el formulario con el listado de tramos de reparto de los resultados/beneficios (ingresos\-gastos) entre la Universidad y los miembros del equipo inventor a los que la Universidad tiene obligación de pagar.

Los tramos de reparto habrán de introducirse de manera secuencial y ordenada de inicial, pasando por intermedio hasta llegar al tramo final.

Si bien no es obligatorio que exista ninguno de ellos, sí habrá dependencias en el sentido de que no puede haber tramos intermedios sin haber un tramo inicial ni puede haber más de un tramo inicial o final.

Sí que podría haber únicamente definido un tramo, que fuese inicial y ningún tramo intermedio o un único tramo que fuese final y ningún tramo intermedio, o únicamente un tramo inicial y uno final, pero nunca podría haber únicamente tramos intermedios.

También puede haber una secuencia de tramos desde el inicial pasando por los intermedios pero que no exista tramo final.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de resultados | | |
| Tramo(desde \- hasta) | Numérico entero | Cifras que marcan el tramo dinerario para referenciar los % de reparto.En el caso especial de un tipo de tramo inicial, se mostrará el símbolo "\<\=" precediendo al valor del campo hasta y no se mostrará el valor desde, se supone 1\.En el caso especial de un tipo de tramo final, se mostrará el símbolo "\>\=" precediendo al valor del campo desde y no se mostrará el valor hasta, se supone el máximo permitido por el sistema. |
| % Universidad | Numérico entero | Porcentaje de los beneficios/reparto que se transfiere a la Universidad. |
| % Miembro equipo inventor | Numérico entero | Porcentaje de los beneficios/reparto que se reparte entre los miembros del equipo inventor con los que la Universidad ha adquirido la obligación de retribuirles de manera proporcional a su porcentaje de autoría de invención, estén vinculados o no a la Universidad. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir tramo de reparto | Muestra la pantalla de para añadir un nuevo tramo de reparto. |  | PII\-TRE\-C |
| Modificar (tramo de reparto) | Muestra la pantalla para ver el detalle/modificar un tramo de reparto. |  | PII\-TRE\-VPII\-TRE\-E |
| Eliminar (tramo de reparto) | Elimina el registro seleccionado del listado.Solo se podrá eliminar el último tramo por orden de secuencia (sea final o no), por lo que si el usuario intenta eliminar otro tramo que no sea ese, se le informará con un mensaje similar a "No se puede eliminar el tramo seleccionado puesto que se provocaría un salto en los tramos de reparto." |  | PII\-TRE\-B |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




