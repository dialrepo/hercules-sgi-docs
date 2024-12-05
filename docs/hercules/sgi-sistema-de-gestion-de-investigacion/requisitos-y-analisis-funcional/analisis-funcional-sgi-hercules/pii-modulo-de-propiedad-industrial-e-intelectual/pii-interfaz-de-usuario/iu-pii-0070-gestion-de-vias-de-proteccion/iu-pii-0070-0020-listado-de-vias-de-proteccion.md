# Hércules : IU\-PII\-0070\-0020 \- Listado de vías de protección



## Formulario de Listado de vías de protección

Pantalla que muestra el listado de vías de protección



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de vías de protección | | |
| Nombre | Texto corto | Es el nombre identificativo de la vía de protección, con el que se listará en todos los desplegables. |
| Descripción | Texto | Campo de texto de introducción libre para descripción ampliada. |
| País específ. | Texto | Marca si al ser seleccionada esta vía en el desplegable ha de mostrarse el desplegable de países para indicar uno específico. |
| Ext. internac. | Texto | Marca si al ser seleccionada esta vía en el desplegable de vías de una solicitud de protección ha de adaptarse el texto para los campos de "Fecha prioridad" y "Fecha fin prioridad" a los adecuados para este tipo de vías, que será respectivamente, "Fecha solicitud" y "F. fin pres. f. nac./reg.". |
| Varios países | Texto | Marca si al ser seleccionada esta vía en el desplegable de vías de una solicitud de protección ha de mostrarse el listado de países en los que se ha validado la invención a través de la solicitud de protección. |
| Activo | Texto | Indicador de si el registro está activo o no.Tomará uno de estos valores: Sí o No. |



| Acciones | Descripción | Permisos |
| --- | --- | --- |
| Modificar (vía de protección) | Muestra la pantalla de ver detalle/modificación de una vía de protección [IU\-PII\-0070\-0010 \- Añadir\-modificar vía de protección](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0070-gestion-de-vias-de-proteccion/iu-pii-0070-0010-anadir-modificar-via-de-proteccion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0070-gestion-de-vias-de-proteccion/iu-pii-0070-0010-anadir-modificar-via-de-proteccion.md"). | PII\-VPR\-VPII\-VPR\-CPII\-VPR\-E |
| Eliminar (vía de protección) | Desactiva el registro seleccionado del listado. Este ya no es visible en el listado ni en los desplegables. Las entidades relacionadas con este tipo seguirán sin alteraciones. | PII\-VPR\-B |
| Reactivar | Activa el registro de resultado de vía de protección seleccionado.**Acción disponible solamente para registros no activos (campo "activo" a "false").**Se mostrará el mensaje de confirmación para que el usuario verifique la acción. Si la confirmación es positiva, se debe de validar que el campo "nombre" no esté siendo utilizado en ningún registro activo (campo "activo" a "true") de la tabla "vía protección". En caso que no sea así, se mostrará un mensaje informando al usuario que la reactivación no se puede realizar debido a la existencia de una vía de protección activa con el mismo nombre. Si la comprobación de unicidad se cumple, la vía de protección se modificará poniendo el campo "activo" a "true". | PII\-VPR\-R |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir vía de protección | Muestra la pantalla para dar de alta una nueva vía de protección [IU\-PII\-0070\-0010 \- Añadir\-modificar vía de protección](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0070-gestion-de-vias-de-proteccion/iu-pii-0070-0010-anadir-modificar-via-de-proteccion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0070-gestion-de-vias-de-proteccion/iu-pii-0070-0010-anadir-modificar-via-de-proteccion.md"). |  | PII\-VPR\-C |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso

  
  
  





