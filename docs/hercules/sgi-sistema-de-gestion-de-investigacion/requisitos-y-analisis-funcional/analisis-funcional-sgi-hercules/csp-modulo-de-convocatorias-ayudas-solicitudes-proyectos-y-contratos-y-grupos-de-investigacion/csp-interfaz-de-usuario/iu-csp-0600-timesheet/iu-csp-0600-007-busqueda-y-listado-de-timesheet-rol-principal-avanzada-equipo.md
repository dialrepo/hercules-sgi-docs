# Hércules : IU\-CSP\-0600\-007 \- Búsqueda y listado de timesheet \- Rol principal \- Avanzada \- Equipo



## Formulario Búsqueda y listado de timesheet \- Rol principal \- Búsqueda avanzada \- Equipo

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
| Proyecto | | ReferenciaTextoOpcional | A través del botón "Buscar" se dará acceso al buscador de Proyectos común al SGI. El proyecto seleccionado se utilizará para aplicar como filtro de búsqueda sobre los timesheet a listar, de forma que éstos contengan al proyecto seleccionado |
| Titular del timesheet | | ReferenciaTexto cortoOpcional | Pendiente de profundizar en análisis: este buscador podría pasar a ser un combo con el listado de personas que formen o hayan formado parte de los equipos de investigación de los que el usuario sea IP.A través del botón "Buscar" se dará acceso al buscador de Personas común al SGI [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md"), las condiciones de invocación a este buscador se especifican en la tabla de acciones.La persona seleccionada se utilizará para aplicar como filtro de búsqueda los timesheet, de forma que éstos pertenezcan a la misma. |
| Buscar | | Icono de acción | Acción "Buscar". Acción principal del formulario. |
| Listado de timesheets que cumplen las condiciones indicadas en el filtro | | | |
| Periodo | | Texto corto | Mes y año del periodo de registro de horas de dedicación |
| Titular | | Texto | Nombre y apellidos de la persona a la que pertenece el TS.Los datos se recuperarán a través del requisito de integración [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md"). |
| Estado | | Texto corto | Estado en el que se encuentra el timesheet |
| Ver | | Icono de acción | Acción "Ver" |
| Modificar | | Icono de acción | Acción "Modificar" |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Formulario de búsqueda de timesheet | | |
| Buscar (Proyecto) |  | Mostrará el buscador de proyectos donde seleccionar el proyecto para el que se recuperarán los timesheet asociados |
| Buscar (titular) |  | Mostrará el buscador de investigadores común a todo el SGI.Pendiente de profundizar en análisis: este buscador podría pasar a ser un combo con el listado de personas que formen o hayan formado parte de los equipos de investigación de los que el usuario sea IP.La búsqueda se realizará a través del formulario [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md") que hará uso del requisito de integración [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md")[.](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md") El buscador se invocará para todos los colectivos de la tabla "rol proyecto colectivo" asociados a un rol activo (campo "activo" a "true") de la tabla "rol proyecto" para los que el campo "equipo" tome el valor  "equipo investigación" |
| Buscar | Acción principal del formulario, genera la tabla de listado de timesheet resultante | Aplica los filtros introducidos sobre la tabla de Timesheet, considerando además como filtro implícito que el ACT\-CSP\-001\-Investigador disponga de rol principal de alguno de los proyectos del timesheet durante un periodo de tiempo que englobe al periodo con el que se corresponde el timesheet. En función del estado de cada timesheet se habilitará o no el botón de modificación. Solo los timesheet en estado "Validado IM" serán modificables por parte del rol principal |
| Listado de timesheets que cumplen las condiciones indicadas en el filtro | | |
| Modificar | Muestra la pantalla de modificación del timesheet seleccionado | El ACT\-CSP\-001\-Investigador con rol principal podrá modificar los timesheet de los miembros de equipo de aquellos proyectos para los que actúe con rol principal en el periodo del timesheet, cuando estos se encuentren únicamente en estado "Validado IM". Solamente podrá modificar el estado de los mismos pasándolos a estado:* Validado IP * Subsanación. En este caso podrá añadir un comentario.  Se resuelve con la pantalla [IU\-CSP\-0500\-008 \- Timesheet \- Detalle \- Comprensión general](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0600-timesheet/iu-csp-0600-008-timesheet-detalle-comprension-general.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0600-timesheet/iu-csp-0600-008-timesheet-detalle-comprension-general.md") |
| Ver | Ver el detalle del timesheet. | Cuando el timesheet se encuentra en estado "Abierto", "Subsanación", "Validado IP", "Validado unidad" o "Cerrado" el ACT\-CSP\-001\-Investigador con rol principal solo podrá acceder al detalle del mismo en modo consultaSe resuelve con la pantalla [IU\-CSP\-0500\-008 \- Timesheet \- Detalle \- Comprensión general](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0600-timesheet/iu-csp-0600-008-timesheet-detalle-comprension-general.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0600-timesheet/iu-csp-0600-008-timesheet-detalle-comprension-general.md") en modo consulta. |

### Acciones

  
  





