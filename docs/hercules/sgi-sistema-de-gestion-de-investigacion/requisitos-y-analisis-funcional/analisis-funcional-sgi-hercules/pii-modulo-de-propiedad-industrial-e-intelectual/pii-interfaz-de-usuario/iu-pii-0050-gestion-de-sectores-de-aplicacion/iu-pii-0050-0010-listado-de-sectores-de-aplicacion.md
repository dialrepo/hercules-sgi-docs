# Hércules : IU\-PII\-0050\-0010 \- Listado de sectores de aplicación



## Formulario de listado de sectores de aplicación

Pantalla que muestra un formulario con el listado de sectores de aplicación.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| *Listado de sectores de aplicación* | | |
| Nombre | Texto | Es el nombre identificativo del sector de aplicación, con el que se listará en todos los desplegables. |
| Descripción | Texto | Campo de texto de introducción libre para descripción ampliada. |
| Activo | Texto | Indicador de si el registro está activo o no.Tomará uno de estos valores: Sí o No. |
| Modificar | Icono de acción | Acción "Modificar" sector de aplicación. |
| Eliminar | Icono de acción | Acción "Eliminar" sector de aplicación. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar | Muestra en una ventana emergente la pantalla de modificación de un sector de aplicación [IU\-PII\-0050\-0020 \- Añadir\-modificar sector de aplicación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0050-gestion-de-sectores-de-aplicacion/iu-pii-0050-0020-anadir-modificar-sector-de-aplicacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0050-gestion-de-sectores-de-aplicacion/iu-pii-0050-0020-anadir-modificar-sector-de-aplicacion.md").El modo "Ver detalle" en este caso no aplica puesto que se visualizarían en el detalle exactamente los mismos datos que en la tabla del listado. |  | PII\-SEA\-E |
| Eliminar | Desactiva el registro seleccionado del listado. Este ya no es visible en el listado ni en los desplegables. Las entidades relacionadas con este sector de aplicación seguirán sin alteraciones. |  | PII\-SEA\-B |
| Reactivar | Activa el registro de sector de aplicación seleccionado.**Acción disponible solamente para registros no activos (campo "activo" a "false").**Se mostrará el mensaje de confirmación para que el usuario verifique la acción. Si la confirmación es positiva, se debe de validar que el campo "nombre" no esté siendo utilizado en ningún registro activo (campo "activo" a "true") de la tabla "sector aplicación". En caso que no sea así, se mostrará un mensaje informando al usuario que la reactivación no se puede realizar debido a la existencia de un sector de aplicación activo con el mismo nombre. Si la comprobación de unicidad se cumple, el sector de aplicación se modificará poniendo el campo "activo" a "true". |  | PII\-SEA\-R |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir sector de aplicación | Muestra en una ventana emergente la pantalla para añadir un nuevo sector de aplicación [IU\-PII\-0050\-0020 \- Añadir\-modificar sector de aplicación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0050-gestion-de-sectores-de-aplicacion/iu-pii-0050-0020-anadir-modificar-sector-de-aplicacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0050-gestion-de-sectores-de-aplicacion/iu-pii-0050-0020-anadir-modificar-sector-de-aplicacion.md"). |  | PII\-SEA\-C |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




