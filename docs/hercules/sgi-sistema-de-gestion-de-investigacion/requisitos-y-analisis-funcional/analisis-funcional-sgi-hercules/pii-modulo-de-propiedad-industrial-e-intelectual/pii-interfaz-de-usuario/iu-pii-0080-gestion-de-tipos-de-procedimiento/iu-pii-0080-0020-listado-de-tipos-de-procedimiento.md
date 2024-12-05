# Hércules : IU\-PII\-0080\-0020 \- Listado de Tipos de procedimiento



## Formulario de Listado de Tipos de procedimiento

Pantalla que muestra un formulario con el listado de tipos de procedimiento.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de tipos de procedimientos | | |
| Nombre | Texto corto | Es el nombre identificativo del tipo, con el que se listará en todos los desplegables. |
| Descripción | Texto | Campo de texto de introducción libre para descripción ampliada. |
| Activo | Texto | Indicador de si el registro está activo o no.Tomará uno de estos valores: Sí o No. |
| Modificar | Icono de acción | Acción "Modificar" tipo de procedimiento. |
| Eliminar | Icono de acción | Acción "Eliminar" tipo de procedimiento. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar | Muestra la pantalla para modificar un tipo de procedimiento [IU\-PII\-0080\-0010 \- Añadir\-modificar tipo de procedimiento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0080-gestion-de-tipos-de-procedimiento/iu-pii-0080-0010-anadir-modificar-tipo-de-procedimiento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0080-gestion-de-tipos-de-procedimiento/iu-pii-0080-0010-anadir-modificar-tipo-de-procedimiento.md"). |  | PII\-TPR\-E |
| Eliminar | Desactiva el registro seleccionado del listado. Este ya no es visible en el listado ni en los desplegables. Las entidades relacionadas con este tipo seguirán sin alteraciones. |  | PII\-TPR\-B |
| Reactivar | Activa el registro de resultado de informe de patentabilidad seleccionado.**Acción disponible solamente para registros no activos (campo "activo" a "false").**Se mostrará el mensaje de confirmación para que el usuario verifique la acción. Si la confirmación es positiva, se debe de validar que el campo "nombre" no esté siendo utilizado en ningún registro activo (campo "activo" a "true") de la tabla "tipo procedimiento". En caso que no sea así, se mostrará un mensaje informando al usuario que la reactivación no se puede realizar debido a la existencia de un tipo de procedimiento activo con el mismo nombre. Si la comprobación de unicidad se cumple, el tipo de procedimiento  se modificará poniendo el campo "activo" a "true". |  | PII\-TPR\-R |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir tipo de procedimiento | Muestra la pantalla para añadir un nuevo tipo de procedimiento [IU\-PII\-0080\-0010 \- Añadir\-modificar tipo de procedimiento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0080-gestion-de-tipos-de-procedimiento/iu-pii-0080-0010-anadir-modificar-tipo-de-procedimiento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0080-gestion-de-tipos-de-procedimiento/iu-pii-0080-0010-anadir-modificar-tipo-de-procedimiento.md"). |  | PII\-TPR\-C |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




