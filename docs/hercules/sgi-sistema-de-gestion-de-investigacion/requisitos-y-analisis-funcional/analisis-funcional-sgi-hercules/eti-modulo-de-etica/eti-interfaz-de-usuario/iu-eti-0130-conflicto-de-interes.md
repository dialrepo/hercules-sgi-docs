# Hércules : IU\-ETI\-0130 Conflicto de interés



  


  


## Formulario Conflicto de interés

Pantalla que muestra el formulario para gestionar los posibles conflicto de interés de un evaluador con las personas que tiene que evaluar.

Esta opción de menú únicamente se mostrará si la persona es un evaluador, es decir, es miembro activo de uno de los comités (fecha actual es mayor de la fecha de alta del evaluador y menor de la fecha de baja del evaluador o no tiene fecha de baja el evaluador).

Se muestra para cada memoria en estado "En evaluación" y que pertenezca al comité del cual la persona logueada es evaluador, los campos referencia de la memoria, el título del proyecto al que pertenece la memoria y el nombre de las personas del equipo de trabajo asignadas a la memoria, para que el evaluador pueda seleccionar aquellas personas con las que tiene conflicto de interés. En caso de que exista un registro para ese evaluador, la memoria y el usuario que se esta mostrando en la tabla "ConflictoInteres" la columna "Existe conflicto de interés" mostrará el valor "Sí", en caso de que no exista el registro se mostrará el valor "No".



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario de búsqueda | | |
| Comité | DesplegableTexto cortoOpcional | Listado con los tres comités. Sacar el campo "nombre" de la tabla "Comite".Se aplica el filtro sobre el campo "comité" de la tabla "Memoria" |
| Referencia memoria | Texto cortoOpcional | Identifica a una memoria.Se aplica el filtro sobre el campo "numReferencia" de la tabla "Memoria" |
| Listado de resultados: registros de al tabla "Memoria" que tenga en el estado actual el valor "En evaluación" y en "comite" el comité del cual la persona logueada es evaluador (miembro activo del comité) | | |
| Memoria | Texto corto | Identifica a una memoria.Campo "numReferencia" de la tabla "Memoria" |
| Título proyecto | Texto largo | Título de la solicitud de evaluación a la que pertenece la memoria.Campo "titulo" de la tabla "PeticionEvaluacion" referenciado por el campo "peticionEvaluacion" de la tabla "Memoria" |
| E\-mail | Texto | Campo "nombre" y "apellidos" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referencia indicada en el campo "usuarioRef" de la tabla "EquipoTrabajo" referenciado por el campo "equipoTrabajo" de la tabla "Tarea" y el campo "memoria" |
| Nombre y apellidos | Texto | Campo "email" con el indicador "principal" a "true" recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referencia indicada en el campo "usuarioRef" de la tabla "EquipoTrabajo" referenciado por el campo "equipoTrabajo" de la tabla "Tarea" y el campo "memoria" |
| Existe conflicto de interés | Texto corto | En caso de que exista un registro en la tabla "ConflictoInteres" para el evaluador logueado y la memoria y el usuario de la fila  que se esta mostrando se mostrará el valor "Sí", en caso de que no exista el registro se mostrará el valor "No". |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar | Aplica los filtros introducidos sobre la lista de Memorias mostrando las que cumplen las condiciones. |  | ETI\-COI\-ERETI\-COI\-INV\-ER |
| Limpiar | Elimina los datos introducidos en el formulario de búsqueda |  |  |
| Añadir conflicto de interés | Se añade un conflicto de interés para el evaluador logueado y la persona seleccionada | Se creará un nuevo registro en la tabla "ConflictoInteres" con el identificador del evaluador, el identificador de la memoria y el identificador del usuario seleccionado.La columna "Conflicto de interés" se actualiza al valor "Sí" | ETI\-COI\-ERETI\-COI\-INV\-ER |
| Eliminar conflicto de interés | Se elimina eĺ conflicto de interés para el evaluador logueado y la persona seleccionada | Se eliminará el registro de la tabla "ConflictoInteres" que se corresponde con el identificador del evaluador, el identificador de la memoria y el identificador del usuario seleccionado.La columna "Conflicto de interés" se actualiza al valor "No" | ETI\-COI\-ERETI\-COI\-INV\-ER |

### Acciones

#### Por actor

#### Todos los permisos de acceso




