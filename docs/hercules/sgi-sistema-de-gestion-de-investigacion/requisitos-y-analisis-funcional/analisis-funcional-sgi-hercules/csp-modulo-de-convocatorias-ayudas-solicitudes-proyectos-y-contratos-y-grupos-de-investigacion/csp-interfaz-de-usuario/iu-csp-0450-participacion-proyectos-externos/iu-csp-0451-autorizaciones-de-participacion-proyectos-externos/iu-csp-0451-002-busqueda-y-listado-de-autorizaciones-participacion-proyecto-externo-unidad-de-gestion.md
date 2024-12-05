# Hércules : IU\-CSP\-0451\-002 \- Búsqueda y listado de autorizaciones participación proyecto externo \- Unidad de gestión



## Formulario Búsqueda y listado de autorizaciones participación proyecto externo \- Unidad de gestión

Formulario de búsqueda y listado de solicitudes de autorización de participación en proyectos externos para ACT\-CSP\-003\-Gestor, ACT\-CSP\-004\-Administrador.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario de búsqueda de las solicitudes de participación en proyectos externos. No será obligatorio introducir ningún filtro de entrada. En este caso se mostrarán todas las solicitudes de autorización ordenadas, por defecto,  por el campo "fecha solicitud" de más a menos reciente. Por defecto, se aplicará el filtro por el campo "estado", de forma que se listen las solicitudes en estado "presentada". | | |
| Fecha solicitud "entre" | FechaOpcional | Campo para introducir el rango inicial del intervalo de fechas para realizar la búsqueda de la solicitud de participación. La fecha introducida en este campo actuará como filtro sobre el campo "fecha" de la tabla "estado autorización" para el registro con estado "borrador", de forma que la fecha introducida (con hora 00:00:00\) deba ser mayor o igual a la fecha del estado borrador recuperada de la tabla "estado autorización". |
| Fecha solicitud "y" | FechaOpcional | Campo para introducir el rango final del intervalo de fechas para realizar la búsqueda de la solicitud de participación.La fecha introducida en este campo actuará como filtro sobre el campo "fecha" de la tabla "estado autorización" para el registro con estado "borrador", de forma que la fecha introducida en el campo "y" (a la que se concatenará la hora 23:59:59\) deba ser menor o igual a la fecha del estado borrador recuperada de la tabla "estado autorización". |
| Solicitante | TextoOpcional | El solicitante se introducirá previa búsqueda a través del buscador de personas. El buscador asociado a este campo es el buscador de personas, común a todo el SGI, [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md") resuelto a través del requisito de integración [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md") que se invocará sobre el colectivo "solicitante csp". |
| Estado | SelectorTexto cortoOpcional | Desplegable con el listado de estados de las solicitudes de autorización de participación en proyectos externos (enumerado "tipo estado autorización").Por defecto, estará establecido el valor "presentada".El valor seleccionado actuará como filtro sobre el campo "estado" de la tabla "autorización". Este campo representa el estado actual de la solicitud de autorización. El valor del estado actual se recuperará de la tabla "estado autorización" a partir de la referencia establecida desde el campo "estado" de la tabla "autorización". |
| Listado de resultados: solicitudes de autorización de participación en proyectos externos. El listado se mostrará ordenado por defecto por el campo fecha solicitud, de más a menos reciente. | | |
| Fecha solicitud | Fecha | Fecha de creación de la solicitud.Se corresponde con el campo "fecha" de la tabla "estado autorización" para el registro más antiguo de la tabla (registro con estado "borrador" y "fecha" más antigua).Se mostrará en formato DD/MM/AAAA (sin hora). |
| Solicitante | Texto | Nombre y apellidos del solicitante.Se recuperará el nombre y apellidos recuperados del sistema de gestión de personas por medio del requisito de integración [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") a partir del campo "solicitante ref" de la tabla "autorización". |
| Título proyecto | Texto | Título del proyecto indicado en la solicitud de autorización. Se corresponde con el campo "título proyecto" de la tabla "autorización. |
| Entidad participación | Texto | Entidad externa con la que se realizará el proyecto externo para el que se solicita la autorización de participación.Si el campo "entidad ref" de la tabla "autorización" está informado se mostrará el nombre de la entidad, recuperado del sistema de gestión de empresas a través del requisito de integración [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md").Si el campo "entidad ref" de la tabla "autorización" no está informado se mostrará el valor recogido en el campo "datos entidad" de la tabla "autorización". |
| Estado | Texto | Estado actual de la autorización.Se mostrará el nombre del estado recuperado de la tabla "estado autorización" correspondiente al estado referenciado por el campo "estado" de la tabla "autorización". El nombre del estado se obtendrá del enumerado "tipo estado autorización". |
| Fecha estado | Fecha | Fecha en la que la autorización adquirió el estado actual.Se mostrará el campo "fecha" de la tabla "estado autorización" correspondiente al estado referenciado por el campo "estado" de la tabla "autorización". |
| Modificar | Icono de acción | Acción "modificar" |
| Eliminar | Icono de acción | Acción "eliminar" |
| Ver | Icono de acción | Acción "ver" |
| Ver notificación CV | Icono de acción | Acción "ver notificación CV". Se permitirá la apertura en una ventana de navegador nueva. |
| Ver proyecto | Icono de acción | Acción  "ver proyecto". Se permitirá la apertura en una ventana de navegador nueva. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Formulario de búsqueda | | | |
| Buscar (Solicitante) | Muestra la pantalla de búsqueda para seleccionar una persona | El buscador asociado a este campo es el buscador de personas, común a todo el SGI, [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md") resuelto a través del requisito de integración [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md") que se invocará sobre el colectivo "solicitante csp". | No se necesita un permiso adicional |
| Buscar | Aplica la búsqueda y muestra el listado de resultados | Aplica la búsqueda de acuerdo a los filtros establecidos.Cada uno de los campos de filtrado aplicará de acuerdo a lo establecido a nivel individual. Todos los filtros aplicarán entre sí como una condición "y".El listado se mostrará estableciendo por defecto una ordenación por el campo fecha solicitud de más a menos reciente (campo "fecha" de la tabla "estado autorización" para el estado "borrador"). | CSP\-AUT\-ECSP\-AUT\-BCSP\-AUT\-V |
| Limpiar | Limpia los campos del buscador | Se vacían todos los filtros que pudieran estar establecidos en el buscado. |  |
| Listado de resultados | | | |
| Modificar | Permite modificar los datos de la solicitud de autorización. | Esta opción estará disponible cuando la solicitud de autorización se encuentre en alguno de los siguientes estados:* "borrador" (campo "estado" de la tabla "estado autorización" para el registro referenciado desde el campo "estado" de la tabla "autorización", toma el valor "borrador"). * "presentada" (campo "estado" de la tabla "estado autorización" para el registro referenciado desde el campo "estado" de la tabla "autorización", toma el valor "presentada"). * "revisión" (campo "estado" de la tabla "estado autorización" para el registro referenciado desde el campo "estado" de la tabla "autorización", toma el valor "revisión").  Muestra la pantalla [IU\-CSP\-0451\-008 \- Modificar autorización participación proyecto externo \- Unidad gestión](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0450-participacion-proyectos-externos/iu-csp-0451-autorizaciones-de-participacion-proyectos-externos/iu-csp-0451-008-modificar-autorizacion-participacion-proyecto-externo-unidad-gestion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0450-participacion-proyectos-externos/iu-csp-0451-autorizaciones-de-participacion-proyectos-externos/iu-csp-0451-008-modificar-autorizacion-participacion-proyecto-externo-unidad-gestion.md") en modo edición | CSP\-AUT\-E |
| Eliminar | Elimina la solicitud de autorización. | Esta opción sólo estará disponible si la solicitud de autorización no tiene notificaciones de CVN asociadas, es decir, si no existe ningún registro en la tabla "notificación proyecto externo CVN" vinculado a la autorización. Se eliminará el registro correspondiente de la tabla "autorización". | CSP\-AUT\-B |
| Ver | Muestra el detalle de la solicitud de autorización. | Esta opción estará habilitada cuando la solicitud se encuentre en estado:* "autorizada" (campo "estado" de la tabla "estado autorización" para el registro referenciado desde el campo "estado" de la tabla "autorización", toma el valor "autorizada").  Muestra la pantalla [IU\-CSP\-0451\-008 \- Modificar autorización participación proyecto externo \- Unidad gestión](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0450-participacion-proyectos-externos/iu-csp-0451-autorizaciones-de-participacion-proyectos-externos/iu-csp-0451-008-modificar-autorizacion-participacion-proyecto-externo-unidad-gestion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0450-participacion-proyectos-externos/iu-csp-0451-autorizaciones-de-participacion-proyectos-externos/iu-csp-0451-008-modificar-autorizacion-participacion-proyecto-externo-unidad-gestion.md") en modo consulta (estado "autorizada"). | CSP\-AUT\-V |
| Ver notificación CV | Muestra el detalle de la notificación de CV asociada a la solicitud de autorización de participación en proyecto externo | Muestra la pantalla [IU\-CSP\-0452\-002 \- Detalle de notificación CVN de proyecto externo](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0450-participacion-proyectos-externos/iu-csp-0452-notificaciones-cvn-de-proyectos-externos/iu-csp-0452-002-detalle-de-notificacion-cvn-de-proyecto-externo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0450-participacion-proyectos-externos/iu-csp-0452-notificaciones-cvn-de-proyectos-externos/iu-csp-0452-002-detalle-de-notificacion-cvn-de-proyecto-externo.md"), cargando la notificación CV vinculada a la solicitud de autorización en curso (será el registro de la tabla "notificación proyecto externo cvn" cuyo campo "autorización" referencie a la autorización en curso).El botón que da acceso tendrá activo la opción de mostrar en una nueva ventana del navegador. | CSP\-CVPR\-V |
| Ver proyecto | Muestra el detalle del proyecto asociado a la solicitud de autorización de participación en proyecto externo | Muestra el detalle de proyecto, [IU\-CSP\-0406\-001 \- Modificar proyecto \- Datos generales \- Ficha](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-001-modificar-proyecto-datos-generales-ficha.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-001-modificar-proyecto-datos-generales-ficha.md"),  para el proyecto vinculado a la solicitud de autorización en curso (el proyecto a cargar se obtendrá del campo "proyecto" de la tabla "notificación proyecto externo cvn" para el registro cuyo campo "autorización" referencie a la autorización en curso).El botón de acceso tendrá activo la opción de mostrar en una nueva ventana del navegador. | CSP\-PRO\-V\_UO |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso



