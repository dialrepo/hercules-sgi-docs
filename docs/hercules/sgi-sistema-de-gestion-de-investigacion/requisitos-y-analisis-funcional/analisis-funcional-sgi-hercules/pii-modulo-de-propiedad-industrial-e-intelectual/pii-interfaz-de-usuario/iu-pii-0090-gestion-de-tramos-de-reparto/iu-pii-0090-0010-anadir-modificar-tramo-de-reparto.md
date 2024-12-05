# Hércules : IU\-PII\-0090\-0010 \- Añadir\-modificar tramo de reparto



## Formulario Añadir\-modificar tramo de reparto

Pantalla que muestra el formulario para crear un nuevo tramo de reparto de beneficios/resultados entre la Universidad y los miembros del equipo inventor o para modificar los datos de uno ya existente.



| | *Formulario en "modo alta"* | *Formulario en "modo modificación"* | | --- | --- | | | |
| --- | --- | --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario de nuevo tramo de reparto de ingresos | | |
| Tipo de tramo | SelectorObligatorioModificable/Solo consulta | Tipo de tramo de reparto con tres valores posibles:* Inicial: si se selecciona, el campo campo "hasta" se mostrará en modo de solo lectura y tomará el valor 1\. * Intermedio: si se selecciona, estarán visibles los campos "Tramo desde" y "Tramo hasta", mostrando en el campo "Tramo desde" el valor del máximo "Tramo desde" configurado hasta el momento \+ 1 en modo de solo lectura. * Final: si se selecciona, únicamente será visible el campo "Tramo desde" pero será de solo lectura, mostrando el valor del máximo "Tramo desde" configurado hasta el momento \+ 1\. El campo hasta tomará el valor del máximo entero permitido por el SGI, pero dicho valor no se visualizará por pantalla.  Si estamos en el modo modificación, no se podrá modificar este campo. |
| Tramo desde | Numérico enteroObligatorioModificable/Solo consulta | Cifra que marca el inicio del tramo dinerario para referenciar los % de reparto. Ha de ser inferior a la del "Tramo hasta"Si estamos en el modo modificación, no se podrá modificar este campo. |
| Tramo hasta | Numérico enteroObligatorioModificable/Solo consulta | Cifra que marca el final del tramo dinerario para referenciar los % de reparto. Ha de ser superior a la del "Tramo desde".Si estamos en el modo modificación, no se podrá modificar este campo. |
| % Universidad | Porcentaje (Decimal con 2 decimales)ObligatorioModificable | Porcentaje de los beneficios/reparto que se transfiere a la Universidad.Será un valor mayor o igual a 0 y menor o igual a 100\. |
| % Equipo inventor | Porcentaje (Decimal con 2 decimales)ObligatorioModificable | Porcentaje de los beneficios/reparto que se reparte entre los miembros del equipo inventor con los que la Universidad ha adquirido la obligación de retribuirles de manera proporcional a su porcentaje de autoría de invención, estén vinculados o no a la Universidad.Será un valor mayor o igual a 0 y menor o igual a 100\. |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Añadir | Añade el tramo de reparto y vuelve a la pantalla de listado de tramos de reparto.Se validará que % Universidad y  % Equipo invento sean \>\=0 y \<\=100 y que la suma de ambos sea igual a 100\.También se validará que no existan saltos ni intersecciones entre los tramos configurados, esto es, un tramo ha de comenzar donde finalice el inmediatamente anterior \+ 1, por tanto, por extensión, los tramos se han de introducir de manera secuencial y ordenada de menor a mayor rango de importes, sin solaparse entre sí.También se validará que no exista más de un tramo de tipo inicial o final ya añadido a la lista. |  |
| Aceptar | Guarda los cambios realizados en el tramo de reparto y vuelve a la pantalla de listado de tramos de reparto.Se validará que % Universidad y  % Equipo inventor sean \>\=0 y \<\=100 y que la suma de ambos sea igual a 100\. |  |
| Cancelar | Vuelve a la pantalla listado de tramos de reparto sin salvar los posibles cambios. |  |




