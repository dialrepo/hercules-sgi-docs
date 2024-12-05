# Hércules : IU\-PII\-0060\-0010 \- Listado de resultados de informe de patentabilidad



## Formulario de listado de resultados de informe de patentabilidad

Pantalla que muestra un formulario con el listado de resultados de informe de patentabilidad.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| *Listado de resultados de informe de patentabilidad* | | |
| Nombre | Texto | Es el nombre identificativo del resultado de informe de patentabilidad, con el que se listará en todos los desplegables. |
| Descripción | Texto | Campo de texto de introducción libre para descripción ampliada. |
| Activo | Texto | Indicador de si el registro está activo o no.Tomará uno de estos valores: Sí o No. |
| Modificar | Icono de acción | Acción "Modificar" resultado de informe de patentabilidad. |
| Eliminar | Icono de acción | Acción "Eliminar" resultado de informe de patentabilidad. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar | Muestra en una ventana emergente la pantalla de modificación de un resultado de informe de patentabilidad [IU\-PII\-0060\-0020 \- Añadir\-modificar resultado de informe de patentabilidad](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0060-gestion-de-resultados-de-informe-de-patentabilidad/iu-pii-0060-0020-anadir-modificar-resultado-de-informe-de-patentabilidad.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0060-gestion-de-resultados-de-informe-de-patentabilidad/iu-pii-0060-0020-anadir-modificar-resultado-de-informe-de-patentabilidad.md")El modo "Ver detalle" en este caso no aplica puesto que se visualizarían en el detalle exactamente los mismos datos que en la tabla del listado. |  | PII\-RIP\-E |
| Eliminar | Desactiva el registro seleccionado del listado. Este ya no es visible en el listado ni en los desplegables. Las entidades relacionadas con este resultado de informe de patentabilidad de aplicación seguirán sin alteraciones. |  | PII\-RIP\-B |
| Reactivar | Activa el registro de resultado de informe de patentabilidad seleccionado.**Acción disponible solamente para registros no activos (campo "activo" a "false").**Se mostrará el mensaje de confirmación para que el usuario verifique la acción. Si la confirmación es positiva, se debe de validar que el campo "nombre" no esté siendo utilizado en ningún registro activo (campo "activo" a "true") de la tabla "resultado informe patentabilidad". En caso que no sea así, se mostrará un mensaje informando al usuario que la reactivación no se puede realizar debido a la existencia de un resultado de informe de patentabilidad activo con el mismo nombre. Si la comprobación de unicidad se cumple, le resultado de informe de patentabilidad se modificará poniendo el campo "activo" a "true". |  | PII\-RIP\-R |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir sector de aplicación | Muestra en una ventana emergente la pantalla para añadir un nuevo resultado de informe de patentabilidad [IU\-PII\-0060\-0020 \- Añadir\-modificar resultado de informe de patentabilidad](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0060-gestion-de-resultados-de-informe-de-patentabilidad/iu-pii-0060-0020-anadir-modificar-resultado-de-informe-de-patentabilidad.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0060-gestion-de-resultados-de-informe-de-patentabilidad/iu-pii-0060-0020-anadir-modificar-resultado-de-informe-de-patentabilidad.md"). |  | PII\-RIP\-C |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




