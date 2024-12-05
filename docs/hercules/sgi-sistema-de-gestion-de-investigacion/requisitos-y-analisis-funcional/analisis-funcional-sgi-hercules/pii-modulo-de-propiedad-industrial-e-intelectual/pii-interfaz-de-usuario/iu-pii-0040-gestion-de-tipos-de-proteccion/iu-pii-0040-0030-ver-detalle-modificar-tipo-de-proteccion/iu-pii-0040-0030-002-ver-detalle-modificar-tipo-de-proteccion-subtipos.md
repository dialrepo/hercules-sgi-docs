# Hércules : IU\-PII\-0040\-0030\-002 \- Ver detalle\-modificar tipo de protección \- Subtipos



## Formulario Ver detalle\-modificar tipo de protección \- Subtipos

Formulario para ver el detalle y/o modificar un tipo de protección. Apartado de Subtipos.

Este formulario contendrá el listado de subtipos asociados a un tipo de protección. Los subtipos en sí mismos serán tipos de protección que se habrán tenido que dar de alta previamente como tales para poder asociarlos como subtipo a un tipo.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| *Listado de subtipos* | | |
| Nombre | Texto | Nombre identificativo del subtipo. |
| Descripción | Texto | Descripción del subtipo. |
| Activo | Texto | Indicador de si el registro está activo o no.Tomará uno de estos valores: Sí o No. |
| Eliminar (Subtipo) | Icono de acción | Acción "Eliminar" un subtipo. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Eliminar (Subtipo) | Desactiva el registro seleccionado del listado. Este ya no es visible en el listado ni en los desplegables. Las entidades relacionadas con este tipo seguirán sin alteraciones. |  | PII\-TPR\-B |
| Reactivar (Subtipo) | Activa el subtipo de protección seleccionado.**Acción disponible solamente para registros no activos (campo "activo" a "false").**Se mostrará el mensaje de confirmación para que el usuario verifique la acción. Si la confirmación es positiva, el subtipo de protección se modificará poniendo el campo "activo" a "true". |  | PII\-TPR\-R |
| Añadir subtipo | Abrirá una ventana emergente que permitirá al usuario seleccionar un tipo de protección a relacionar con el tipo de protección que se está modificando [IU\-PII\-0040\-0030\-003 \- Añadir subtipo](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0040-gestion-de-tipos-de-proteccion/iu-pii-0040-0030-ver-detalle-modificar-tipo-de-proteccion/iu-pii-0040-0030-003-anadir-subtipo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0040-gestion-de-tipos-de-proteccion/iu-pii-0040-0030-ver-detalle-modificar-tipo-de-proteccion/iu-pii-0040-0030-003-anadir-subtipo.md"), de manera que, el tipo seleccionado en dicha ventana emergente pase a ser "subtipo" del actual.La lista de a la de tipos disponibles para seleccionar como subtipo de otro será la de tipos de nivel raíz, esto es, un subtipo de un tipo no podrá ser seleccionado como subtipo de otro, será necesario deshacer antes la relación jerárquica previa antes de hacer una nueva. |  | PII\-TPR\-E |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar tipo de protección | Se creará el nuevo tipo de protección con los datos informados y se volverá a la pantalla de listado de tipos de protección dentro del menú de Configuración.No es obligatorio que un tipo de protección tenga subtipos.Al guardar, se guardarán todas las pestañas, por lo que, además de las condiciones de obligatoriedad u otras validaciones previas al guardado que aquí se describan, se deberán comprobar las indicadas en el resto de pestañas con datos que se puedan modificar. |  | PII\-TPR\-E |
| Cancelar | Vuelve a la pantalla listado de tipos de protección sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




