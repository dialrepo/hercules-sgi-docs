# Hércules : IU\-CSP\-0406\-010 \- Modificar proyecto \- Equipo



## Formulario Modificar proyecto \- Equipo

Formulario de modificación de un proyecto, apartado de Equipo, que muestra el listado de miembros del equipo de proyecto. Los usuarios ACT\-CSP\-003\-Gestor y ACT\-CSP\-004\-Administrador podrán añadir nuevos miembros.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Listado de miembros del equipo | | |
| Advertencia | Icono de advertencia con tooltip | Las comprobaciones para mostrar o no el icono de advertencia solamente se realizarán si el proyecto está vinculado a una convocatoria registrada en el SGI (campo "convocatoria" de la tabla "proyecto" está informado). Para cada miembro del equipo (tabla "proyecto equipo") se realizarán la siguientes comprobaciones respecto a los datos de la convocatoria (requisitos IP y requisitos equipo).* Si el miembro tiene un rol principal (el campo "rol proyecto" de la tabla "proyecto equipo" está configurado con el campo "principal" a "true"), se realizarán las comprobaciones contra los requisitos establecidos en la tabla "requisito IP" de la convocatoria con la que se asocia el proyecto (ver como referencia [IU\-CSP\-0201\-010 \- Crear convocatoria \- Requisitos IP](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-010-crear-convocatoria-requisitos-ip.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-010-crear-convocatoria-requisitos-ip.md")). Se aplicarán las comprobaciones establecidas en [CU\-CSP\-1200\-010 \- Comprobación requisitos IP](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1200-gestion-de-proyectos/cu-csp-1200-010-comprobacion-requisitos-ip.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1200-gestion-de-proyectos/cu-csp-1200-010-comprobacion-requisitos-ip.md") sobre el "persona ref" correspondiente al miembro de equipo: 	+ Si cualquiera de las comprobaciones anteriores no se cumple se mostrará el icono de advertencia con el tooltip "No se cumplen los requisitos establecidos por la convocatoria." * Si el miembro tiene un rol que no sea principal (el campo "rol proyecto" de la tabla "proyecto equipo" está configurado con el campo "principal" a "false"), se realizarán las comprobaciones contra los requisitos establecidos en la tabla "requisito equipo" de la convocatoria con la que se asocia la solicitud (ver como referencia [IU\-CSP\-0201\-011 \- Crear convocatoria \- Requisitos Equipo](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-011-crear-convocatoria-requisitos-equipo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-011-crear-convocatoria-requisitos-equipo.md")). Se aplicarán las comprobaciones establecidas en [IU\-CSP\-0204\-010 \- Modificar convocatoria \- Requisitos IP](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0204-modificar-convocatoria/iu-csp-0204-010-modificar-convocatoria-requisitos-ip.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0204-modificar-convocatoria/iu-csp-0204-010-modificar-convocatoria-requisitos-ip.md") sobre el "persona ref" correspondiente al miembro de equipo: 	+ Si cualquiera de las comprobaciones anteriores no se cumple se mostrará el icono de advertencia con el tooltip "No se cumplen los requisitos establecidos por la convocatoria." |
| Email | Texto | Listado de email de la persona recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md"). Los diferentes emails se separarán por el carácter "," y en caso de no poder mostrarse de forma completa se mostrará la cadena final "..." y el contenido completo se mostrará sobre tooltip. |
| Nombre | Texto corto | Nombre del miembro del equipo de proyecto, recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") |
| Apellidos | Texto corto | Apellidos del miembro del equipo de proyecto, recuperado a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") |
| Rol en el equipo | Texto corto | Rol con el que participará el miembro en el equipo de proyecto. Se deberá indicar obligatoriamente un rol para cada uno de los miembros del equipo. El solicitante se añadirá automáticamente en el listado de miembros con el rol Investigador principal. Los roles disponibles serán los configurados en la tabla "RolProyecto" |
| Fecha inicio | Fecha | Fecha de inicio del miembro en el equipo con el rol indicado en el punto anterior. |
| Fecha fin | Fecha | Fecha de fin del miembro en el equipo con el rol indicado en el punto "Rol en el equipo". |
| Modificar | Icono de acción | Acción "Modificar" |
| Eliminar | Icono de acción | Acción "Eliminar" |
| Añadir miembro | Icono de acción | Acción "Añadir miembro" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Modificar | Muestra la pantalla de modificación del miembro seleccionado del listado de miembros del equipo de proyecto | Se resuelve con la pantalla [IU\-CSP\-0402\-005 \- Añadir miembro a equipo de proyecto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-005-anadir-modificar-miembro-a-equipo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-005-anadir-modificar-miembro-a-equipo.md").Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Eliminar | Elimina el miembro del equipo de proyecto | En caso de que el investigador este relacionado con un paquete de trabajo del proyecto (tabla "PaqueteTrabajoInvestigadores") en las fechas en las que se esta eliminado, se mostrará un mensaje de que no se puede eliminar. "El investigador no se puede eliminar porque esta incluido en un paquete de trabajo".Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados. |  |  |
| Añadir miembro | Muestra la pantalla de Nuevo miembro del equipo de proyecto | Muestra la pantalla [IU\-CSP\-0402\-005 \- Añadir miembro a equipo de proyecto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-005-anadir-modificar-miembro-a-equipo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-005-anadir-modificar-miembro-a-equipo.md").Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578"). | CSP\-PRO\-ECSP\-PRO\-E\_UO |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modifica el Proyecto con la información introducida en el formulario.Al guardar un proyecto se guardar la información de todos los apartados de definición del proyecto. | Ver documentación de restricciones en [CU\-1200\-002 \- Modificar proyecto \- Unidad de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=100764578").Aplicar las validaciones para mostrar los mensajes de advertencia  a partir de las comprobaciones a realizar sobre los apartados requisitos IP y requisitos equipo descritos en [CU\-CSP\-1200\-002 \- Modificar proyecto \- Unidad de gestión](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1200-gestion-de-proyectos/cu-csp-1200-002-modificar-proyecto-unidad-de-gestion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1200-gestion-de-proyectos/cu-csp-1200-002-modificar-proyecto-unidad-de-gestion.md") (pestaña Equipo). | CSP\-PRO\-ECSP\-PRO\-E\_UO |
| Cancelar | Retorna al listado de Proyectos sin salvar los posibles cambios.Al cancelar un proyecto se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso



