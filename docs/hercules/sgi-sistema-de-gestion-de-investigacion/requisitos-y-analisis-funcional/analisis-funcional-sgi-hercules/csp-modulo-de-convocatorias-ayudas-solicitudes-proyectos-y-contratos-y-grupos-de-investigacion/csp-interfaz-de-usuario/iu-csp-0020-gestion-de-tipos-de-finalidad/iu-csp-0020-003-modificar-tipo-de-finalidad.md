# Hércules : IU\-CSP\-0020\-003 Modificar tipo de finalidad



## Formulario Modificar tipo de finalidad

Formulario de modificación de un tipo de finalidad.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Modificar tipo de finalidad | | |
| Nombre | Texto cortoObligatorio | No se podrá modificar el nombre a un nombre ya existente sobre un elemento activo (campo "activo" a "true") de la tabla "tipo finalidad". No se podrá dejar vacío. |
| Descripción | TextoOpcional | Se podrá modificar libremente el valor, pasando a dejarlo vacío aunque ya estuviese relleno. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Se guardarán los cambios modificando los datos del tipo de finalidad en base de datos. | Se realizará la comprobación de unicidad sobre el campo "nombre" entre los elementos activos (campo "activo" a "true") de la tabla "tipo finalidad". No podrán existir dos registros activos con el mismo nombre.[CU\-CSP\-0008\-003 \- Modificar tipo de finalidad](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0008-gestion-de-tipos-de-finalidad/cu-csp-0008-003-modificar-tipo-de-finalidad.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0008-gestion-de-tipos-de-finalidad/cu-csp-0008-003-modificar-tipo-de-finalidad.md") | CSP\-TFIN\-E |
| Cancelar | No realiza ninguna operación en base de datos | No se tendrán en cuenta los cambios indicados en el formulario y se volverá a [IU\-CSP\-0020\-002 Buscar y listar tipo de finalidad](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0020-gestion-de-tipos-de-finalidad/iu-csp-0020-002-buscar-y-listar-tipo-de-finalidad.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0020-gestion-de-tipos-de-finalidad/iu-csp-0020-002-buscar-y-listar-tipo-de-finalidad.md") |  |

  


### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




