# Hércules : IU\-CSP\-0044\-001 Crear tipo de hito



## Formulario  Crear tipo de hito

Creación de un nuevo tipo de hito.



|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Crear tipo de hito | | | |
| Nombre | | Texto cortoObligatorio | Es el nombre identificativo del tipo de hito, con el que se listará en todos los desplegables.Se debe validar que no exista un registro en la tabla "tipo hito" en estado activo (campo "activo" a "true") con el mismo nombre. |
| Descripción | | TextoOpcional | No requiere ser introducido de manera obligatoria. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea un nuevo registro en base de datos. | Se deberá verificar la unicidad a partir del campo "Nombre" entre los registros activos (campo "activo" a "true") de la tabla "tipo hito". El registro se almacenará con el campo "activo" a true.[CU\-CSP\-0011\-002 \- Crear tipo de hito](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0011-gestion-de-tipos-de-hito/cu-csp-0011-002-crear-tipo-de-hito.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0011-gestion-de-tipos-de-hito/cu-csp-0011-002-crear-tipo-de-hito.md") | CSP\-THITO\-C |
| Cancelar | No realiza ninguna operación en base de datos | No se realiza ninguna inserción en base de datos. Se vuelve a mostrar la pantalla de búsqueda y listado de tipos de hito. |  |

  


### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso

  
  


  
  
  





