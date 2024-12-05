# Hércules : IU\-CSP\-0030\-003 Modificar tipo de fase



## Formulario Modificar tipo de fase

Formulario de modificación de tipo de fase.



|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Modificar tipo de fase | | | |
| Nombre | | Texto cortoObligatorio | Campo "nombre" de la tabla "tipo fase".No se podrá modificar el nombre a uno ya existente sobre un registro activo (campo "activo" \= true).No se podrá dejar vacío. |
| Descripción | | TextoOpcional | Se podrá modificar libremente el valor, pasando a dejarlo vacío aunque ya estuviese relleno. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Actualiza el registro en base de datos. | Se guardarán los cambios modificando los datos del tipo de fase.Se validará que el nombre no exista entre los elementos activos, campo "activo" \= "true".[CU\-CSP\-0005\-003 \- Modificar tipo de fase](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0005-gestion-de-tipos-de-fase/cu-csp-0005-003-modificar-tipo-de-fase.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0005-gestion-de-tipos-de-fase/cu-csp-0005-003-modificar-tipo-de-fase.md") | CSP\-TFASE\-E |
| Cancelar | No realiza ninguna operación en base de datos | No se tendrán en cuenta los cambios indicados en el formulario y se volverá a [IU\-CSP\-0030\-002 Buscar y listar tipos de fase](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0030-gestion-de-tipos-de-fases/iu-csp-0030-002-buscar-y-listar-tipos-de-fase.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0030-gestion-de-tipos-de-fases/iu-csp-0030-002-buscar-y-listar-tipos-de-fase.md") |  |

  


### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




