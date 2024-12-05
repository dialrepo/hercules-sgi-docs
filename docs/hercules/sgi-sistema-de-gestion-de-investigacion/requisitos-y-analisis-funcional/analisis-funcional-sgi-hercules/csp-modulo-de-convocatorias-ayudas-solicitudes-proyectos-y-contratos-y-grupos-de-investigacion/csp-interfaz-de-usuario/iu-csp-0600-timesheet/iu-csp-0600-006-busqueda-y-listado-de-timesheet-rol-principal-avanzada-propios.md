# Hércules : IU\-CSP\-0600\-006 \- Búsqueda y listado de timesheet \- Rol principal \- Avanzada \- Propios



## Formulario Búsqueda y listado de timesheet \- Rol principal \- Búsqueda avanzada \- Propios

Pantalla que muestra el formulario de búsqueda avanzada para los ACT\- CSP\-001\-Investigador que actúan con rol principal en algún proyecto. Las opciones del buscador y el resultado devuelto dependerán de la selección de la opción inicial:

* TS propios
* TS de equipos de proyecto

Los timesheet que se encuentren en estado "Propuesta" no podrán ser visualizados por el ACT\- CSP\-001\-Investigador.



|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Formulario de búsqueda de proyectos | | | |
| Fecha hasta | Desde | Intervalo de FechasOpcional | Permitirá indicar el intervalo de fechas entre las que se debe encontrar el periodo de timesheet |
| Hasta |
| Estado | | SelectorTexto cortoOpcional | Listado con los siguientes valores:* Abierto * Validado IM * Validado IP: La inclusión de estado podrá ser omitida por configuración en la implantación del SGI. * Validado unidad * Subsanación * Cerrado |
| Proyecto | | ReferenciaOpcional | A través del botón "Buscar" se dará acceso al buscador de Proyecto común al SGI. El proyecto seleccionado se utilizará para aplicar como filtro de búsqueda sobre los timesheet, de forma que éstos contengan al proyecto seleccionado |
| Responsable del proyecto | | ReferenciaTextoOpcional | Pendiente de profundizar análisis: valorar si en vez de buscador pudiera ser un combo con el listado de personas que sean responsables de los proyectos en los que el usuario participe o haya participado en el equipo de proyecto.A través del botón "Buscar" se dará acceso al buscador de Personas común al SGI [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md"). Las condiciones de invocación se especifican en la tabla de acciones.La persona seleccionada se utilizará para aplicar como filtro de búsqueda sobre los timesheet, de forma que éstos contengan proyectos sobre los que la persona seleccionada actúe con rol principal durante el periodo de fechas indicado en filtro previo. |
| Buscar | | Icono de acción | Acción "Buscar", acción principal |
| Listado de timesheets que cumplen las condiciones indicadas en el filtro | | | |
| Periodo | | Texto corto | Mes y año del timesheet |
| Estado | | Texto corto | Estado en el que se encuentra el timesheet |
| Ver | | Icono de acción | Acción "Ver" |
| Modificar | | Icono de acción | Acción "Modificar" |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Formulario de búsqueda de timesheet | | |
| Buscar proyecto |  | Mostrará el buscador de proyectos donde seleccionar el proyecto para el que se recuperarán los timesheet asociados |
| Buscar responsable |  | Mostrará el buscador de investigadores donde seleccionar la persona que actúa con rol principal del proyecto. Pendiente de profundizar análisis: valorar si en vez de buscador pudiera ser un combo con el listado de personas que sean responsables de los proyectos en los que el usuario participe o haya participado en el equipo de proyecto.La búsqueda se realizará a través del formulario [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md") que hará uso del requisito de integración [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md")[.](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md") Se le deberán pasar a este buscador el listado de colectivos (campo "colectivo ref") recuperados de la tabla "rol proyecto colectivo" que estén asociados a cualquier rol  activo (campo "activo" a "true") de la tabla "rol proyecto" que tenga marcado a "true" cualquier de los campos "responsable económico" o "rol principal". |
| Buscar | Acción principal del formulario | Se aplicarán los filtros de búsqueda sobre la tabla de Timesheet para devolver el listado. De acuerdo al estado en que se encuentre cada TS se activará la opción Modificar o Ver, posibilitando o no la modificación de los datos de cada timesheet |
| Listado de timesheets que cumplen las condiciones indicadas en el filtro | | |
| Modificar | Muestra la pantalla de modificación del timesheet seleccionado del listado de timesheetDisponible para usuarios ACT\- CSP\-001\-Investigador cuando el timesheet se encuentra en estado "Activo" o "Subsanación" | Se resuelve con la pantalla [IU\-CSP\-0500\-008 \- Timesheet \- Detalle \- Comprensión general](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0600-timesheet/iu-csp-0600-008-timesheet-detalle-comprension-general.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0600-timesheet/iu-csp-0600-008-timesheet-detalle-comprension-general.md") |
| Ver | Ver el detalle del timesheet.Disponible para usuarios ACT\- CSP\-001\-Investigador (cuando el timesheet se encuentra en estado "Validado IM", "Validado IP", "Validado unidad" o "Cerrado") | Se resuelve con la pantalla [IU\-CSP\-0500\-008 \- Timesheet \- Detalle \- Comprensión general](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0600-timesheet/iu-csp-0600-008-timesheet-detalle-comprension-general.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0600-timesheet/iu-csp-0600-008-timesheet-detalle-comprension-general.md") en modo consulta. |

### Acciones

  
  
  
  
  
  





