# Hércules : IU\-CSP\-0306\-008 \- Validación como Tutor\-a



## Formulario Validación como Tutor\-a

Formulario que muestra el listado de las solicitudes de tipo RRHH en las que el ACT\-CSP001\-Investigador esta como tutor/a de la solicitud.



| Listado de solicitudes filtradas por el check de "Pendientes"Listado de solicitudes no filtradas por el check de "Pendientes" | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario de búsqueda de solicitudes. Por defecto se mostrará el listado de las solicitudes de tipo "RRHH" (tabla "solicitud RRHH") donde el campo "tutor ref" referencie al ACT\-CSP\-001\-Investigador que realiza la consulta y estén en estado "Solicitada". Las solicitudes se mostrarán ordenadas por la fecha del estado de más a menos reciente. | | |
| Pendientes | Check | Si esta marcado el campo de "Pendientes" únicamente se muestra el listado de las solicitudes de tipo "RRHH" (tabla "solicitud RRHH") donde el campo "tutor ref" referencie al ACT\-CSP\-001\-Investigador que realiza la consulta y estén en estado "Solicitada.Sino esta marcado el campo de "Pendientes"  se muestra el listado de las solicitudes de tipo "RRHH" (tabla "solicitud RRHH") donde el campo "tutor ref" referencie al ACT\-CSP\-001\-Investigador que realiza la consulta (independientemente del estado)Por defecto estará el campo marcado. |
| Buscar | Botón | Acción "Buscar" |
| Limpiar | Botón | Acción "Limpiar" |
| Listado de solicitudes que cumplen las condiciones indicadas en el filtro y además el campo "tutor ref" referencie al ACT\-CSP\-001\-Investigador que realiza la consulta. Las solicitudes se mostrarán ordenadas por la fecha del estado de más a menos reciente. | | |
| Código interno | Texto corto | Valor del campo "código registro interno" de la tabla "solicitud". Se corresponde con el código de registro de la solicitud generado automáticamente al crear la solicitud. Estará formado por un sufijo unido a la fecha y hora de la creación, por tanto, será único y permitirá identificar inequívocamente a la solicitud. |
| Solicitante/IP | Texto | ACT\-CSP\-001\-Investigador titular de la solicitud. Se recuperarán el Nombre y apellidos por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0030+-+Consultar+datos+generales+de+persona") para la referencia almacenada en el campo "solicitante ref" de la tabla "Solicitud" si dicho campo esta informado, sino se cogerán los campos "nombre" y "apellidos" de la tabla "Solicitante Externo" referenciado por el campo "solicitante externo" de la tabla "Solicitud" |
| Título del trabajo | Texto | Mostrará el "título trabajo" de la Solicitud. Se recuperará de la tabla "solicitud RRHH" |
| Convocatoria | Texto | Campo "titulo" de la tabla "convocatoria" referenciada por el campo "convocatoria" de la tabla "solicitud" |
| Estado | Texto corto | Mostrará el estado actual de la solicitud. Se recuperará de la tabla "estado solicitud" y se mostrará el nombre del estado ("Tipo estado solicitud"). Los estados son definidos en [Tipos de estados de la solicitud](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Solicitudes#CSP-Solicitudes-#tipo_estado_solicitudTiposdeestadodesolicitud "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Solicitudes#CSP-Solicitudes-#tipo_estado_solicitudTiposdeestadodesolicitud") |
| Fecha estado | Fecha | Mostrará el campo "fecha" asociado al estado actual de la solicitud, recuperados ambos de la tabla "Estado solicitud".Se mostrará en formato fecha (sin hora). |
| Ver | Icono de acción | Acción "Ver" |
| Modificar | Icono de acción | Acción "Modificar" |



| Acciones | Descripción | Descripción C.U. | Permisos |
| --- | --- | --- | --- |
| Buscar | Ejecuta la acción buscar | Se mostrarán las solicitudes que cumplen las condiciones indicadas en el filtro y además el campo "tutor ref" de la tabla "solicitud RRHH" referencie al ACT\-CSP\-001\-Investigador que realiza la consulta. Las solicitudes se mostrarán ordenadas por la fecha del estado de más a menos reciente. |  |
| Ver | Muestra la pantalla de modificación de la solicitud seleccionada del listado de solicitudes en modo consulta | Se mostrará la acción "Ver":* Si la solicitud esta en un estado distinto a "Solicitada"  Se abre la pantalla [IU\-CSP\-0304\-001 \- Modificar Solicitud \- Datos generales \- Investigador](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0304-modificar-solicitud/iu-csp-0304-001-modificar-solicitud-datos-generales-investigador.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0304-modificar-solicitud/iu-csp-0304-001-modificar-solicitud-datos-generales-investigador.md") en modo ConsultaNOTA: Al ir a la consulta de una solicitud los enlaces de "Cancelar" y la miga de pan, debería de volver a la opción de menú "Validación como tutor/a" y no al de "Solicitudes" | CSP\-SOL\-INV\-ER |
| Modificar | Muestra la pantalla de modificación de la solicitud seleccionada del listado de solicitudes | Se mostrará la acción "Modificar":* Si la solicitud esta en el estado "Solicitada"  El tutor/a únicamente podrá realizar la acción de "Cambiar de estado", no podrá modificar ningún campo de la solicitud, ni añadir ni eliminar nada. Todos los datos de la solicitud la ve en modo consulta. El cambio de estado que puede hacer es pasar del estado "Solicitada" a:* Validada * Rechazada  Se abre la pantalla [IU\-CSP\-0304\-001 \- Modificar Solicitud \- Datos generales \- Investigador](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0304-modificar-solicitud/iu-csp-0304-001-modificar-solicitud-datos-generales-investigador.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0304-modificar-solicitud/iu-csp-0304-001-modificar-solicitud-datos-generales-investigador.md") en modo Consulta, únicamente estará activo el botón de "Cambiar de estado"Ver IU: [IU\-CSP\-0304\-007 \- Modificar solicitud \- Cambiar estado \- Investigador](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0304-modificar-solicitud/iu-csp-0304-007-modificar-solicitud-cambiar-estado-investigador.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0304-modificar-solicitud/iu-csp-0304-007-modificar-solicitud-cambiar-estado-investigador.md")Ver CU: [CU\-CSP\-1100\-002 \- Modificar solicitud \- Cambio de estado](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1100-gestion-de-solicitudes/cu-csp-1100-002-modificar-solicitud-cambio-de-estado.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1100-gestion-de-solicitudes/cu-csp-1100-002-modificar-solicitud-cambio-de-estado.md")NOTA: Al ir a la consulta de una solicitud los enlaces de "Cancelar" y la miga de pan, debería de volver a la opción de menú "Validación como tutor/a" y no al de "Solicitudes" | CSP\-SOL\-INV\-ER |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




