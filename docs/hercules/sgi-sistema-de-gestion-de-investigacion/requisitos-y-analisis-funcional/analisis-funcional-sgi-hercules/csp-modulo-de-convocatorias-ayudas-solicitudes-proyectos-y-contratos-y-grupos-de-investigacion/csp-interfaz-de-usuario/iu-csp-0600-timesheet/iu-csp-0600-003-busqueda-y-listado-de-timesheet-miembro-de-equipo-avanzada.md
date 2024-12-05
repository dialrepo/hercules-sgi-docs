# Hércules : IU\-CSP\-0600\-003 \- Búsqueda y listado de timesheet \- Miembro de equipo \- Avanzada



## Formulario Búsqueda y listado de timesheet \- Miembro de equipo \- Avanzada

Pantalla que muestra el formulario de búsqueda avanzada que permite aplicar filtros sobre el listado de timesheet de los ACT\- CSP\-001\-Investigador. Los timesheet que se encuentren en estado "Propuesta" no podrán ser visualizados por el ACT\- CSP\-001\-Investigador.



|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Formulario de búsqueda de proyectos | | | |
| Fecha hasta | Desde | Intervalo de FechasOpcional | Permitirá indicar el intervalo de fechas entre las que se debe encontrar el periodo de timesheet |
| Hasta |
| Estado | | SelectorTexto cortoOpcional | Listado con los siguientes valores:* Abierto * Validado IM * Validado IP: La inclusión de estado podrá ser omitida por configuración en la implantación del SGI. * Validado unidad * Subsanación * Cerrado |
| Proyecto | | ReferenciaTextoOpcional | A través del botón "Buscar" se dará acceso al buscador de Proyectos común al SGI. El proyecto seleccionado se utilizará para aplicar como filtro de búsqueda sobre los timesheet, de forma que en los timesheet de ACT\- CSP\-001\-Investigador figure el proyecto seleccionado |
| Responsable de proyecto | | ReferenciaTexto cortoOpcional | Pendiente de profundizar análisis para valorar si pudiera ser un combo con el listado de personas que sean o hayan sido responsables de cualquier proyecto en el que participe o haya participado el usuario.A través del botón "Buscar" se dará acceso al buscador de Personas [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md") común al SGI. Las condiciones de invocación a este buscador se especifican en la tabla de acciones.La persona seleccionada se utilizará para aplicar como filtro de búsqueda sobre los timesheet, de forma que en los timesheet listados del ACT\-CSP\-001\-Investigador figure algún proyecto cuyo responsable sea esta persona |
| Buscar | | Icono de acción | Acción "Buscar". acción principal del formulario |
| Listado de timesheets del ACT\-CSP\-001\-Investigador que cumplen las condiciones indicadas en el filtro | | | |
| Periodo | | Texto corto | Mes y año del periodo con el que se corresponde el timesheet |
| Estado | | Texto corto | Estado en el que se encuentra el timesheet |
| Ver | | Icono de acción | Acción "Ver" |
| Modificar | | Icono de acción | Acción "Modificar" |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Formulario de búsqueda de timesheet | | |
| Buscar proyecto |  | Mostrará el buscador donde seleccionar el proyecto para el que se recuperarán los timesheet asociados. |
| Buscar responsable |  | Mostrará el buscador de investigadores donde seleccionar el investigador que actúa con rol principal del proyecto. Pendiente de profundizar análisis para valorar si pudiera ser un combo con el listado de personas que sean o hayan sido responsables de cualquier proyecto en el que participe o haya participado el usuario.La búsqueda se realizará a través del formulario [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md") que hará uso del requisito de integracion [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md")[.](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md") Se le deberán pasar a este buscador el listado de colectivos (campo "colectivo ref") recuperados de la tabla "rol proyecto colectivo" que estén asociados a cualquier rol  activo (campo "activo" a "true") de la tabla "rol proyecto" que tenga marcado a "true" cualquier de los campos "responsable económico" o "rol principal". |
| Buscar | Acción principal del formulario | Aplica los filtros introducidos sobre la lista de timesheet mostrando los que cumplen las condiciones |
| Listado de timesheets del ACT\-CSP\-001\-Investigador que cumplen las condiciones indicadas en el filtro | | |
| Modificar | Muestra la pantalla de modificación del timesheet seleccionado del listado de timesheetDisponible para usuarios ACT\- CSP\-001\-Investigador cuando el timesheet se encuentra en estado "Abierto" o "Subsanación" | Se resuelve con la pantalla [IU\-CSP\-0500\-008 \- Timesheet \- Detalle \- Comprensión general](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0600-timesheet/iu-csp-0600-008-timesheet-detalle-comprension-general.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0600-timesheet/iu-csp-0600-008-timesheet-detalle-comprension-general.md") |
| Ver | Ver el detalle del timesheet.Disponible para usuarios ACT\- CSP\-001\-Investigador (cuando el timesheet se encuentra en estado "Validado IM", "Validado IP", "Validado unidad" o "Cerrado") | Se resuelve con la pantalla [IU\-CSP\-0500\-008 \- Timesheet \- Detalle \- Comprensión general](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0600-timesheet/iu-csp-0600-008-timesheet-detalle-comprension-general.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0600-timesheet/iu-csp-0600-008-timesheet-detalle-comprension-general.md") en modo consulta. |

### Acciones

  
  
  
  
  
  





