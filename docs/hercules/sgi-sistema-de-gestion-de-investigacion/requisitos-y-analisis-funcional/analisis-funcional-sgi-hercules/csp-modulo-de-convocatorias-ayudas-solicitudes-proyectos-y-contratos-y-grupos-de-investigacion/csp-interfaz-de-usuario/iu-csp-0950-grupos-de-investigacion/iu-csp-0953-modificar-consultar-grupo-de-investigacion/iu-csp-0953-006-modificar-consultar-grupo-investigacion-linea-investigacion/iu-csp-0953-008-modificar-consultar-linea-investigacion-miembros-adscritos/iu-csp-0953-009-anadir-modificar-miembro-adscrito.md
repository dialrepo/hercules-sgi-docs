# Hércules : IU\-CSP\-0953\-009 \- Añadir\-modificar miembro adscrito



## Formulario Añadir/modificar miembro adscrito

Formulario para añadir/modificar un miembro a una línea de investigación



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario para añadir miembros a la línea de investigación | | |
| Miembro adscrito | SelectorTextoObligatorio | Nombre y apellidos de los miembro del  equipo quitando duplicados.Desplegable con los miembros del equipo del grupo de investigación (sin duplicados). Se muestra el nombre y apellidos recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona"). Se recupera a partir del campo "persona ref" de la tabla "grupo equipo" que pertenezcan al grupo de investigación. En el caso de que un investigador (personaRef) este mas de una vez en la tabla "grupo equipo" para el mismo grupo por ser en un rango de fechas distinto, sólo se muestra una vez a ese investigador.Campo "persona ref" de la tabla "grupo equipo" |
| Fecha inicio | FechaObligatorio | Fecha de inicio del miembro del equipo adscrito a la línea de investigación. En la creación de un nuevo miembro tomará el valor de la fecha de inicio de la línea de investigación (campo "fecha inicio" de la tabla "grupo línea investigación")Campo "fecha inicio" de la tabla "grupo línea investigador" |
| Fecha fin | FechaOpcional | Fecha de fin del miembro del equipo adscrito a la línea de investigación.Campo "fecha fin" de la tabla "grupo línea investigador" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir/Aceptar | El botón se muestra:* Añadir, cuando se acceda al formulario para añadir un nuevo miembro a la línea * Aceptar, cuando se acceda al formulario para modificar un miembro ya incluido en la línea | Validaciones de obligatoriedad:* Persona * Fecha inicio  Comprobaciones de fechas:* Fecha inicio y fecha fin deben estar dentro del rango de duración de la línea de investigación. * Una misma persona podrá estar adscrita más de una vez a la línea si lo hace en periodos diferentes (fecha inicio y fecha fin ). * Si en un periodo solo se define la fecha inicio se considerará que la vigencia, desde esa fecha inicial, es permanente. La persona no podrá figurar dos veces en la línea con una fecha inicio determinada salvo que exista otro registro con una fecha fin inferior a esa fecha inicio). * Fecha de fin debe de ser mayor a la fecha de inicio | CSP\-GIN\-E |
| Cancelar | Retorna al formulario de línea, sin salvar los posibles cambios |  |  |

  


### Permisos de acceso a la pantalla

#### Por actor



| ACT\-CSP\-004\-Administrador | CSP\-GIN\-E |
| --- | --- |
| ACT\-CSP\-003\-Gestor | CSP\-GIN\-E |

#### Todos los permisos de acceso

  




| Permisos | CSP\-GIN\-E |
| --- | --- |




