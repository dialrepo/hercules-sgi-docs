# Hércules : IU\-PII\-0040\-0010 \- Listado de tipos de protección



## Formulario de Listado de tipos de protección

Pantalla que muestra el listado de tipos de protección.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| *Listado de tipos de protección* | | |
| Nombre | Texto | Nombre identificativo del tipo de protección. |
| Descripción | Texto | Descripción del tipo de protección. |
| Tipo de propiedad | Texto | Tipo de propiedad asociada al tipo de protección.Tendrá uno de estos dos valores:* Propiedad industrial * Propiedad intelectual |
| Activo | Texto | Indicador de si el registro está activo o no.Tomará uno de estos valores: Sí o No. |
| Modificar | Icono de acción | Acción "Modificar" sector de aplicación. |
| Eliminar | Icono de acción | Acción "Eliminar" sector de aplicación. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Ver/Modificar | Realizará un cambio de contexto para mostrar la pantalla que permitirá ver el detalle y/o modificar un tipo de protección.Al entrar en dicha pantalla se mostrará seleccionada la pestaña de Datos Generales   [IU\-PII\-0040\-0030\-001 \- Ver detalle\-modificar tipo de protección \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0040-gestion-de-tipos-de-proteccion/iu-pii-0040-0030-ver-detalle-modificar-tipo-de-proteccion/iu-pii-0040-0030-001-ver-detalle-modificar-tipo-de-proteccion-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0040-gestion-de-tipos-de-proteccion/iu-pii-0040-0030-ver-detalle-modificar-tipo-de-proteccion/iu-pii-0040-0030-001-ver-detalle-modificar-tipo-de-proteccion-datos-generales.md"). |  | PII\-TPR\-VPII\-TPR\-E |
| Eliminar | Desactiva el registro seleccionado del listado. Este ya no es visible en el listado ni en los desplegables. Las entidades relacionadas con este tipo seguirán sin alteraciones. |  | PII\-TPR\-B |
| Reactivar | Activa el tipo de protección seleccionado.**Acción disponible solamente para registros no activos (campo "activo" a "false").**Se mostrará el mensaje de confirmación para que el usuario verifique la acción. Si la confirmación es positiva, se debe de validar que el campo "nombre" no esté siendo utilizado en ningún registro activo (campo "activo" a "true") de la tabla "tipo protección". En caso que no sea así, se mostrará un mensaje informando al usuario que la reactivación no se puede realizar debido a la existencia de un tipo de protección activo con el mismo nombre. Si la comprobación de unicidad se cumple, el tipo de protección se modificará poniendo el campo "activo" a "true". |  | PII\-TPR\-R |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Añadir tipo de protección | Realizará un cambio de contexto para mostrar la pantalla que permitirá dar de alta un nuevo tipo de protección.Al entrar en dicha pantalla se mostrará seleccionada la pestaña de Datos Generales [IU\-PII\-0040\-0020\-001 \- Crear tipo de protección \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0040-gestion-de-tipos-de-proteccion/iu-pii-0040-0020-crear-tipo-de-proteccion/iu-pii-0040-0020-001-crear-tipo-de-proteccion-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0040-gestion-de-tipos-de-proteccion/iu-pii-0040-0020-crear-tipo-de-proteccion/iu-pii-0040-0020-001-crear-tipo-de-proteccion-datos-generales.md"). |  | PII\-TPR\-C |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




