# Hércules : IU\-CSP\-0010\-001 Crear tipo de enlace



## Formulario Crear tipo de enlace

Creación de tipos de enlace, que formarán parte de los modelos de ejecución en los que se basarán convocatorias y proyectos.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Creación de tipos de enlace | | |
| Nombre | Texto cortoObligatorio | Es el nombre identificativo del tipo de enlace, con el que se listará en todos los desplegables que referencien a "Tipo de enlace".Deberá validarse su unicidad dentro de la tabla "Tipo enlace" sobre aquellos registros activos (campo "activo"\= "true") |
| Descripción | TextoOpcional | Campo de texto de introducción libre para descripción ampliada. No requiere ser introducido de manera obligatoria. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea un nuevo registro en base de datos. | Se deberá verificar la unicidad a partir del campo "Nombre" entre todos los elementos de la tabla "Tipo enlace" que tengan el campo "activo" a "true"El registro se almacenará con el campo "activo" a true.Se insertará el nuevo registro en la tabla "Tipo enlace".[CU\-CSP\-0007\-002 \- Crear tipo de enlace](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0007-gestion-de-tipos-de-enlace/cu-csp-0007-002-crear-tipo-de-enlace.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0007-gestion-de-tipos-de-enlace/cu-csp-0007-002-crear-tipo-de-enlace.md") | CSP\-TENL\-C |
| Cancelar | No realiza ninguna operación en base de datos | No se realiza ninguna inserción en base de datos.Se vuelve a mostrar la pantalla de listado de tipos de enlace [IU\-CSP\-0010\-002 Buscar y listar tipos de enlace](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0010-gestion-de-tipos-de-enlace/iu-csp-0010-002-buscar-y-listar-tipos-de-enlace.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0010-gestion-de-tipos-de-enlace/iu-csp-0010-002-buscar-y-listar-tipos-de-enlace.md") |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




