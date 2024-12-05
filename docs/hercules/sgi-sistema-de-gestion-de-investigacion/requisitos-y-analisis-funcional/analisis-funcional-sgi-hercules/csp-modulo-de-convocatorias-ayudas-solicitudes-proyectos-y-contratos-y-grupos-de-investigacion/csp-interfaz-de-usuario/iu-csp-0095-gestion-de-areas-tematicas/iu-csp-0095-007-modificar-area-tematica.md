# Hércules : IU\-CSP\-0095\-007 \- Modificar área temática



## Formulario Modificar área temática

Formulario de  modificación de un ítem del árbol de áreas temáticas



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Modificar área temática | | |
| Abreviatura | Texto cortoObligatorio | Abreviatura del área/subárea. No se podrá dejar vacío. Se podrá modificar la abreviatura del área/subarea siempre y cuando se respete la restricción de unicidad entre los registros activos y sobre el mismo listado de áreas. Es decir, no podrán existir dos áreas/subareas activos, para un mismo listado, con la misma abreviatura.El campo "abreviatura" del interface se corresponde en el campo "nombre" de la tabla de "Área temática" |
| Nombre | TextoObligatorio | Nombre del área/subárea. No se podrá dejar vacío. Se podrá modificar el nombre del área/subárea siempre y cuando se respete la restricción de unicidad entre los registros activos y sobre el mismo listado de áreas. Es decir, no podrán existir dos áreas/subáreas activas, para un mismo listado, con el mismo nombre.El campo "nombre del área temática" del interface se corresponde con el campo "descripción" de la tabla de "Área temática" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Actualiza el registro en base de datos. | Se actualizará el registro en la tabla "Áreas temáticas" de acuerdo a los valores introducidos en el formulario. Se comprobará la unicidad de los campos "Abreviatura" y "Nombre" entre los registros activos pertenecientes al mismo listado/grupo de área temáticas.Los listados de áreas temáticas serán aquellos elementos de la tabla "área temática" con campo "padre" a null. No podrán existir dos áreas temáticas con la misma "abreviatura" y campo "activo" a "true" dentro del mismo árbol de áreas temáticas. No podrán existir dos áreas temáticas con el mismo "nombre de área temática" y campo "activo" a "true" dentro del mismo árbol de áreas temáticas.El campo "abreviatura" del formulario se corresponde con el campo "nombre" de la tabla de "Área temática" y el campo "nombre del área temática" se corresponde con el campo "descripción" de la tabla de "área temática" | CSP\-AREA\-E |
| Cancelar | No realiza ninguna operación en base de datos | Se permanecerá en la pantalla de creación/modificación del árbol de áreas temáticas. |  |

  


### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




