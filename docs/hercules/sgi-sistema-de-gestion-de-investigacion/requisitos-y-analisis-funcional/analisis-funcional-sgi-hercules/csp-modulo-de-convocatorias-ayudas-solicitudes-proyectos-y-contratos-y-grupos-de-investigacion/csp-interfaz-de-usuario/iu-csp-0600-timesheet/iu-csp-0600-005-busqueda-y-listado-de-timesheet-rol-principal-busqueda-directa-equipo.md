# Hércules : IU\-CSP\-0600\-005 \- Búsqueda y listado de timesheet \- Rol principal \- Búsqueda directa \- Equipo



## Formulario Búsqueda y listado de timesheet \- Rol principal \- Búsqueda directa \- Equipo

Pantalla que muestra el formulario de búsqueda por defecto para los ACT\- CSP\-001\-Investigador que actúan con rol principal en algún proyecto. ACT\-CSP\-001\-Investigador con rol principal, podrá:

* Realizar el registro de horas propiamente dicho.
* Realizar la validación del registro de horas realizado por los miembros del o los equipos de proyecto de los que actúa con rol principal.

Los timesheet que se encuentren en estado "Propuesta" no podrán ser visualizados por el ACT\- CSP\-001\-Investigador.



|  | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Formulario de búsqueda de timesheet | | | |
| Opción de búsqueda directa | TS propios estado "Abierto" | CheckObligatorio | En función de la opción seleccionada se mostrarán los timesheet propios del ACT\-CSP\-001\-Investigador en estado abierto para dar acceso al registro de horas propiamente dicho ([IU\-CSP\-0500\-004 \- Búsqueda y listado de timesheet \- Rol principal \- Búsqueda directa \- Propios](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0600-timesheet/iu-csp-0600-004-busqueda-y-listado-de-timesheet-rol-principal-busqueda-directa-propios.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0600-timesheet/iu-csp-0600-004-busqueda-y-listado-de-timesheet-rol-principal-busqueda-directa-propios.md")) o se listarán los timesheet que el ACT\-CSP\-001\-Investigador actuando con rol principal tiene pendientes de validar |
| TS pendientes de validar |
| Buscar | | Icono de acción | Acción de búsqueda por defecto |
| Búsqueda avanzada | | Icono de acción | Buscador avanzado |
| Listado de timesheets en estado "Validado IM" | | | |
| Periodo | | Texto corto | Mes y año del timesheet |
| Titular | | Texto | Nombre y apellidos del titular del timesheet.Los datos se recuperarán a través del requisito de integración [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md"). |
| Estado | | Texto corto | Estado en el que se encuentra el timesheet. En la búsqueda directa de "TS pendientes de validar" todos los timesheet estarán en estado "Validado IM" |
| Modificar | | Icono de acción | Acción "Modificar" |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Formulario de búsqueda de timesheet | | |
| Buscar | Ejecuta la búsqueda directa | Se mostrará el listado de timesheet en estado "Validado IM" que pertenezcan a los miembros del o los proyectos para los que ACT\-CSP\-001\-Investigador disponga de rol principal durante un periodo de tiempo que englobe al periodo con el que se corresponde el timesheet. |
| Búsqueda avanzada | Buscador avanzado | Muestra las opciones del buscador avanzado. Se resuelve con [IU\-CSP\-0500\-006 \- Búsqueda y listado de timesheet \- Rol principal \- Avanzada \- Propios](https://confluence.um.es/confluence/pages/viewpage.action?pageId=97288824 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=97288824") y [IU\-CSP\-0500\-007 \- Búsqueda y listado de timesheet \- Rol principal \- Avanzada \- Equipo](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0600-timesheet/iu-csp-0600-007-busqueda-y-listado-de-timesheet-rol-principal-avanzada-equipo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0600-timesheet/iu-csp-0600-007-busqueda-y-listado-de-timesheet-rol-principal-avanzada-equipo.md") |
| Listado de timesheets: Timesheets pendientes de validar por el ACT\-CSP\-001\-Investigador con rol principal | | |
| Modificar | Muestra la pantalla de modificación del timesheet seleccionado | El ACT\-CSP\-001\-Investigador podrá modificar los timesheet de los miembros de equipo de aquellos proyectos para los que actúe con rol principal en el periodo del timesheet. Solamente podrá modificar el estado de los mismos pasándolos a estado:* Validado IP * Subsanación. En este caso podrá añadir un comentario.  Se resuelve con la pantalla [IU\-CSP\-0500\-008 \- Timesheet \- Detalle \- Comprensión general](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0600-timesheet/iu-csp-0600-008-timesheet-detalle-comprension-general.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0600-timesheet/iu-csp-0600-008-timesheet-detalle-comprension-general.md") |

### Acciones

  
  





