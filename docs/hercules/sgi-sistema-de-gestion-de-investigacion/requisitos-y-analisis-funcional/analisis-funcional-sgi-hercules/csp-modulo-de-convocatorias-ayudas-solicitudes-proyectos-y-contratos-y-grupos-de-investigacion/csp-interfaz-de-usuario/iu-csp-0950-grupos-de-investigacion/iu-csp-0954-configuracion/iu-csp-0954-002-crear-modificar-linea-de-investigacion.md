# Hércules : IU\-CSP\-0954\-002 Crear\-modificar línea de investigación



## Formulario Crear/Modificar línea de investigación

Formulario de creación de una línea de investigación, formarán el diccionario común del SGI de líneas de investigación. Los grupos podrán desarrollar su trabajo bajo una línea o varias líneas de investigación.



|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Creación/Modificación de línea de investigación | | | |
| Nombre | | Texto largoAutocompletarObligatorio | Es el nombre identificativo de la línea de investigación.Según se vaya escribiendo un texto se comprobará si existen líneas de investigación que contengan dicho texto en alguna parte de su nombre. Se mostrarán las líneas coincidentes para que el usuario sepa que líneas de investigación existen con el texto introducido para que pueda crear un nueva línea diferente en alguna palabra respecto a las existentes.Campo "nombre" de la tabla "línea investigación"Debe de validarse su unicidad en la la tabla "línea investigación" entre aquellos elementos activos (campo "activo"\="true") |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir/Aceptar | Crea o modifica un registro en base de datos.El botón se muestra:* Añadir, cuando se acceda al formulario para añadir una nueva línea * Aceptar, cuando se acceda al formulario para modificar una línea | Se deberá verificar la unicidad a partir del campo "Nombre" entre los registros de la tabla "línea investigación" que tengan el campo "activo" a "true". El registro se almacenará con el campo "activo" a true. | CSP\-LIN\-CCSP\-LIN\-E |
| Cancelar | Retorna al formulario de línea de investigación, sin salvar los posibles cambios |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




