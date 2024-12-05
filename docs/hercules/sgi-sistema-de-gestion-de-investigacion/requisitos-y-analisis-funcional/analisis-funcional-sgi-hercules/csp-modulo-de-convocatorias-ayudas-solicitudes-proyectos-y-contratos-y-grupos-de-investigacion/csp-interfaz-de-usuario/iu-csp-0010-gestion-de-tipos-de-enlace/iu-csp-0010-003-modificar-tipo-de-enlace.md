# Hércules : IU\-CSP\-0010\-003 Modificar tipo de enlace



## Formulario Modificar tipo de enlace

Modificación de tipo de enlace.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Modificar tipo de enlace | | |
| Nombre | Texto cortoObligatorio | Campo "nombre" de la tabla "tipo enlace". No podrá modificarse a un nombre que ya esté siendo utilizado en un tipo de enlace activo (campo "activo" a "true") |
| Descripción | TextoOpcional | Se podrá modificar libremente el valor, pasando a dejarlo vacío aunque ya estuviese relleno. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Actualiza el registro en base de datos. | Se deberá validar la unicidad de este campo entre los elementos activos de la tabla "tipo enlace"(aquellos con campo "activo" a "true")Se guardarán los cambios modificando el registro sobre la tabla "tipo enlace"[CU\-CSP\-0007\-003 \- Modificar tipo de enlace](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0007-gestion-de-tipos-de-enlace/cu-csp-0007-003-modificar-tipo-de-enlace.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0007-gestion-de-tipos-de-enlace/cu-csp-0007-003-modificar-tipo-de-enlace.md") | CSP\-TENL\-E |
| Cancelar | No realiza ninguna operación en base de datos | No se tendrán en cuenta los cambios indicados en el formulario y se volverá a [IU\-CSP\-0010\-002 Buscar y listar tipos de enlace](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0010-gestion-de-tipos-de-enlace/iu-csp-0010-002-buscar-y-listar-tipos-de-enlace.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0010-gestion-de-tipos-de-enlace/iu-csp-0010-002-buscar-y-listar-tipos-de-enlace.md") |  |

  


### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




