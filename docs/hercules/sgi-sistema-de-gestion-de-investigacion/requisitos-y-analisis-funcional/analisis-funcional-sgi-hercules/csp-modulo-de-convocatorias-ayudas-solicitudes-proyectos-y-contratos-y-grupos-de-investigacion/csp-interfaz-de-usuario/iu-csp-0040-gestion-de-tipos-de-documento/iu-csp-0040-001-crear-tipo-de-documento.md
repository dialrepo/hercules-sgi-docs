# Hércules : IU\-CSP\-0040\-001 Crear tipo de documento



## Formulario Crear tipo de documento

Formulario de creación de los tipos de documentos. Se utilizarán en los modelos de ejecución de convocatorias  y proyectos.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Creación de tipo de documento | | |
| Nombre | Texto cortoObligatorio | Es el nombre identificativo del tipo de documento con el que se listará en todos los desplegables.Debe de validarse su unicidad entre los elementos activos (campo "activo" a true) de la tabla "Tipo documento". |
| Descripción | TextoOpcional | No requiere ser introducido de manera obligatorio |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea un nuevo registro en base de datos. | Se deberá verificar la unicidad a partir del campo "Nombre" entre los registros de la tabla "tipo documento" que tengan el campo "activo" a "true".El registro se almacenará con el campo "activo" a true.[CU\-CSP\-0006\-002 \- Crear tipo de documento](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=CU-CSP-0006-002+-+Crear+tipo+de+documento&linkCreation=true&fromPageId=597852572 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=CU-CSP-0006-002+-+Crear+tipo+de+documento&linkCreation=true&fromPageId=597852572") | CSP\-TDOC\-C |
| Cancelar | No realiza ninguna operación en base de datos | No se realiza ninguna inserción en base de datos. Se vuelve a mostrar la pantalla de listado de tipos de documento [IU\-CSP\-0040\-002 Buscar y listar tipos de documento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0040-gestion-de-tipos-de-documento/iu-csp-0040-002-buscar-y-listar-tipos-de-documento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0040-gestion-de-tipos-de-documento/iu-csp-0040-002-buscar-y-listar-tipos-de-documento.md") |  |

  


### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




