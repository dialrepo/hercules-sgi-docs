# Hércules : IU\-PRC\-0202\-006 \- Añadir\-Modificar rango cuantía contratos



## Formulario Crear/Modificar rango cuantía contratos

Formulario de creación/modificación de un rango de cuantía contratos. El usuario ACT\-PRC\-003\-Gestor podrá crear o realizar cambios.

  




|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Tipo | SelectorTexto cortoObligatorioModificable/Solo consulta | Tipo de temporalidad. Selector con tres valores:* Inicial: si se selecciona, el campo "desde" se mostrará en modo de solo lectura y tomará el valor 0\. El campo "hasta" deberá de introducirlo el usuario. * Intermedio: si se selecciona, estarán visibles  los campos "desde" y "hasta". El campo "desde" estará en modo de solo lectura mostrando el valor del máximo "hasta" configurado hasta el momento \+ 1\. El campo "hasta" deberá de introducirlo el usuario. * Final: si se selecciona, únicamente será visible el campo "desde" pero será de solo lectura, mostrando el valor del máximo "hasta" configurado hasta el momento \+ 1 (en caso de que no exista ningún rango creado, se pondrá el valor 0\). El campo "hasta" tomará el valor del máximo entero permitido por el SGI, pero no se visualizará por pantalla.  Campo "tipo temporalidad" de la tabla "Rango" con el campo "tipo rango" igual a "CUANTIA\_CONTRATOS".Si estamos en el modo modificación, no se podrá modificar este campo, es decir, solo cuando estamos en una creación de un nuevo rango. |
| Rango \- Desde | Numérico enteroObligatorioModificable/Solo consulta | Cifra que marca el inicio del rango de contratos. Ha de ser inferior a la de hasta.No se ha de solapar los tramos entre sí.Si Tipo de temporalidad es:* Inicial:  el campo "desde" se mostrará en modo de solo lectura y tomará el valor 0\. * Intermedio: el campo "desde" se mostrará en modo de solo lectura mostrando el valor del máximo "hasta" configurado hasta el momento \+ 1\. * Final: el campo "desde" se mostrará en modo de solo lectura mostrando el valor del máximo "hasta" configurado hasta el momento \+ 1 (en caso de que no exista ningún rango creado, se pondrá el valor 0\).  Campo "desde" de la tabla "Rango" con el campo "tipo rango" igual a "CUANTIA\_CONTRATOS".Si estamos en el modo modificación, no se podrá modificar este campo, es decir, solo cuando estamos en una creación de un nuevo rango. |
| Rango \- Hasta | Numérico enteroObligatorioModificable/Solo consulta | Cifra que marcan el final del rango de contratos. Ha de ser superior a la de desde.No se ha de solapar los tramos entre sí.Si Tipo de temporalidad es:* Inicial: el campo "hasta" estará habilitado para que el usuario pueda introducir un valor. * Intermedio: el campo "hasta" estará habilitado para que el usuario pueda introducir un valor. * Final: el campo "hasta" tomará el valor del máximo entero permitido por el SGI, pero no se visualizará por pantalla.  Campo "hasta" de la tabla "Rango" con el campo "tipo rango" igual a "CUANTIA\_CONTRATOS".Si estamos en el modo modificación, no se podrá modificar este campo, es decir, solo cuando estamos en una creación de un nuevo rango. |
| Puntos | Número decimalObligatorioModificable | Puntos que se darían en el caso de que el proyecto tenga una cuantía de costes indirectos que este dentro del rango indicado por el campo "Rango"Campo "puntos" de la tabla "Rango" con el campo "tipo rango" igual a "CUANTIA\_COSTES\_INDIRECTOS" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir/Aceptar | El botón se muestra:* Añadir, cuando se acceda al formulario para añadir un nuevo rango. * Aceptar, cuando se acceda al formulario para modificar rango | Añade o modifica el rango y vuelve a la pantalla de "Moduladores y Rangos"Validaciones de obligatoriedad:* Tipo * Desde * Hasta: sólo si "tipo temporalidad" es Inicial o Intermedio, si es Final se tomará el valor del máximo entero permitido por el SGI, pero no se visualizará en la pantalla. * Puntos  Comprobación de rango:* No se podrá crear un rango de tipo "INTERMEDIO" sino existe el rango de tipo "INICIAL", se indicará el siguiente error "El rango de costes indirectos tiene un salto". (Si se podrá crear un único rango Final o un único rango Inicial) * Únicamente puede existir un rango de "tipo temporalidad" con valor "INICIAL * Únicamente puede existir un rango de "tipo temporalidad" con valor "FINAL" * No se podrá crear un rango que provoque saltos ni intersecciones con los rangos configurados en la tabla "Rango" con el campo "tipo rango" igual a "CUANTIA\_CONTRATOS", esto es, un rango ha de comenzar donde finalice el inmediatamente anterior \+ 1, por tanto, por extensión, los rangos se han de introducir de manera secuencial y ordenada de menor a mayor importe. | PRC\-CON\-CPRC\-CON\-E |
| Cancelar | Retorna al formulario de Moduladores y Rangos, sin salvar los posibles cambios |  |  |

### 

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




