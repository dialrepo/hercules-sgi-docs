# Hércules : IU\-CSP\-0501\-002 \- Búsqueda ampliada y listado de proyectos del SGE



## Formulario Búsqueda y listado de proyectos del SGE \- Búsqueda ampliada

Pantalla que muestra el formulario de búsqueda ampliada, que permite aplicar filtros sobre la ejecución económica. La ejecución económica del módulo CSP puede estar asociada a proyectos/contratos y a los grupos de investigación.

En función de los procedimientos establecidos en las diferentes Universidades, podría darse el caso de que varios proyectos del SGI compartan un mismo identificador en el SGE. Desde el detalle de cada uno de los proyectos que compartan el mismo código identificador en el SGE se accederá al mismo detalle de Ejecución económica.



| **Datos económicos de Proyectos****Datos económicos de Grupos de investigación** | | | |
| --- | --- | --- | --- |
| Nombre | | Tipo | Características / Notas |
| Formulario de búsqueda. La búsqueda aplicará sobre las tablas "proyecto proyecto SGE" o sobre "grupos", en función del selector "Datos económicos de". En el caso de proyectos la búsqueda llevará implícito el filtro por las unidades de gestión a las que esté asociado ACT\-CSP\-003\-Gestor, ACT\-CSP\-004\-Administrador, ACTP\-CSP\-005\-Visor, de forma que el proyecto deba estar vinculado a una de las unidades de gestión del usuario (campo "unidad de gestión" de la tabla "proyecto"). | | | |
| Datos económicos de | | SelectorTexto cortoObligatorio | Desplegable con los valores:* Proyecto * Grupo  Por defecto se mostrará preseleccionada la opción "proyecto". |
| Título de proyecto | | TextoOpcional | Este segundo campo del formulario tendrá como etiqueta "Título de proyecto" cuando el valor seleccionado en el desplegable "Datos económicos de" tome el valor "Proyecto". Como el desplegable será cargado por defecto con el valor  "proyecto" la etiqueta "Título de proyecto" será la que se muestre por defecto al mostrar de manera inicial este formulario.Campo para introducir la cadena de texto por la que se aplicará la búsqueda sobre el campo "título" de la tabla "proyecto". |
| Nombre grupo | | TextoOpcional | Este segundo campo del formulario tendrá como etiqueta "Nombre grupo" cuando el valor seleccionado en el desplegable "Datos económicos de" tome el valor "Grupo". Campo para introducir la cadena de texto por la que se aplicará la búsqueda sobre el campo "nombre" de la tabla "grupo". |
| Código SGE | | TextoOpcional | Identificador del proyecto en el SGE (Sistema de Gestión Económica). Cuando el valor del desplegable "datos económicos de" tome el valor "Proyecto", el filtro se aplicará sobre el campo "proyecto SGE ref" de la tabla "proyecto identificador SGE" Cuando el valor del desplegable "datos económicos de" tome el valor "Grupo", el filtro se aplicará sobre el campo "proyecto SGE ref" de la tabla "grupo". |
| Fecha de inicio | Desde | Intervalo de FechasOpcional | Permitirá indicar el intervalo de fechas entre las que se debe encontrar la fecha de inicio del proyecto o del grupo.Cuando el valor del desplegable "datos económicos de" tome el valor "Proyecto", el filtro aplicará sobre el campo "fecha inicio" de la tabla "proyecto".Cuando el valor del desplegable "datos económicos de" tome el valor "Grupo", el filtro aplicará sobre el campo "fecha inicio" de la tabla "grupo". |
| Hasta |
| Fecha fin | Desde | Intervalo de FechasOpcional | Permitirá indicar el intervalo de fechas entre las que se debe encontrar la fecha de fin del proyecto o del grupo. Cuando el valor del desplegable "datos económicos de" tome el valor "Proyecto", el filtro aplicará sobre el campo "fecha inicio" de la tabla "proyecto".Cuando el valor del desplegable "datos económicos de" tome el valor "Grupo", el filtro aplicará sobre el campo "fecha inicio" de la tabla "grupo". |
| Hasta |
| Convocatoria | | BuscadorTextoOpcional | Este filtro solo estará disponible cuando el valor del desplegable "datos económicos de" tome el valor "Proyecto".A través del botón Buscar se dará acceso al buscador de convocatorias, [IU\-GEN\-0050 \- Búsqueda de Convocatorias](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0050-busqueda-de-convocatorias.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0050-busqueda-de-convocatorias.md"). La invocación a este buscador se realizará con las consideraciones indicadas en la tabla inferior de Acciones.  La convocatoria seleccionada se aplicará como filtro sobre el campo "convocatoria" de la tabla "proyecto". |
| Responsable proyecto | | BuscadorTextoOpcional | La etiqueta de este filtro será "Responsable proyecto" cuando el valor del desplegable "datos económicos de" tome el valor "Proyecto".A través del botón Buscar se dará acceso al buscador común [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md") con las condiciones especificadas en la tabla de Acciones. La persona seleccionada se utilizará para aplicar como filtro de búsqueda sobre los miembros del equipo de proyecto, de forma que deba de participar con un rol categorizado como rol principal. La persona seleccionada deberá estar referenciada en la tabla "proyecto equipo" con un rol que tenga el indicador "rol principal" a "true" en la tabla de configuración de roles de proyecto ("rol proyecto"). |
| Responsable grupo | | BuscadorTextoOpcional | La etiqueta de este filtro será "Responsable grupo" cuando el valor del desplegable "datos económicos de" tome el valor "Grupo".A través del botón Buscar se dará acceso al buscador común [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md") con las condiciones especificadas en la tabla de Acciones. La persona seleccionada se utilizará para aplicar como filtro de búsqueda sobre los miembros del equipo del grupo, de forma que deba de participar con un rol categorizado como rol principal. La persona seleccionada deberá estar referenciada en la tabla "grupo equipo" con un rol que tenga el indicador "rol principal" a "true" en la tabla de configuración de roles de proyecto ("rol proyecto") |
| Entidad convocante | | BuscadorTextoOpcional | Este filtro solo estará disponible cuando el valor del desplegable "datos económicos de" tome el valor "Proyecto".Se recuperarán todos los proyectos para los que, cumpliendo el resto de filtros, la entidad seleccionada figure entre sus entidades convocantes. La entidad convocante se seleccionará a del buscador común [IU\-GEN\-0080 \- Búsqueda de empresas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md").La empresa seleccionada aplicará como filtro sobre el campo "entidad ref" de la tabla "proyecto entidad convocante". |
| Entidad financiadora | | BuscadorTextoOpcional | Este filtro solo estará disponible cuando el valor del desplegable "datos económicos de" tome el valor "Proyecto".Se recuperarán todos los proyectos para los que, cumpliendo el resto de filtros, la entidad seleccionada figure entre sus entidades financiadoras. La entidad financiadora se seleccionará a del buscador común  [IU\-GEN\-0080 \- Búsqueda de empresas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md")La empresa seleccionada aplicará como filtro sobre el campo "entidad ref" de la tabla "proyecto entidad financiadora". |
| Buscar | | Botón | Acción "Buscar" |
| Búsqueda simple | | Enlace | Acción "Búsqueda simple" |
| Limpiar | | Enlace | Acción "Limpiar" |
| Listado de proyectos o grupos que cumplen las condiciones indicadas en el filtro y además están asociados a una de las unidades de gestión a las que está vinculado el ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador. El listado se recuperará a partir de la tabla "Proyecto proyecto SGE" o de la tabla "Grupo" (en función del selector  "datos económicos de") | | | |
| Identificador interno SGI | | Numérico entero | Identificador interno creado por el SGI para identificar al proyecto o grupo.Se corresponde con el campo "id" de la tabla "proyecto" (asociado al campo "proyecto" de la tabla "proyecto proyecto SGE") o con el campo "id" de la tabla "grupo" en función de que se esté representando un proyecto o un grupo. |
| Código SGE | | Texto | Código de identificación del proyecto en el SGE.Se corresponde con el campo "proyecto ref SGE" de la tabla "proyecto proyecto SGE" en caso que se esté representado un proyecto y con el campo "proyecto ref SGE" de la tabla "grupo" en caso que se esté representado un grupo. |
| Título proyecto | | Texto | La etiqueta de esta segunda columna de la tabla de resultados será "Título proyecto" cuando el desplegable "Datos económicos de" tome el valor "Proyecto". Como el desplegable será cargado por defecto con el valor  "proyecto" la etiqueta "Título de proyecto" será la que se muestre por defecto al mostrar de manera inicial este formulario.Se mostrará el valor del campo "título" de la tabla "proyecto" (a partir del campo "proyecto" de la tabla "proyecto proyecto SGE"). |
| Nombre grupo | | Texto | La etiqueta de esta segunda columna de la tabla de resultados será "Nombre grupo" cuando el desplegable "Datos económicos de" tome el valor "Grupo"Se mostrará el valor del campo "nombre" de la tabla "grupo". |
| Responsable proyecto | | Texto | La etiqueta de esta tercera columna de la tabla de resultados será "Título proyecto" cuando el desplegable "Datos económicos de" tome el valor "Proyecto". Como el desplegable será cargado por defecto con el valor  "proyecto" la etiqueta "Título de proyecto" será la que se muestre por defecto al mostrar de manera inicial este formulario.Se mostrarán el nombre y apellidos obtenidos a través del requisito de integración [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") para la "persona ref" de la tabla "proyecto equipo" que tenga el rol principal (registro de la tabla "rol proyecto" con campo "principal" a "true") para la fecha actual (la fecha actual debe estar comprendida entre los campos "fecha inicio" y "fecha fin" de la tabla "proyecto equipo", considerando el valor null como fecha vigente). Podría darse el caso que existan varias personas con un rol "principal", en este caso se deben mostrar todos ellos separados por el carácter "," y en caso de que la cadena supere el espacio reservado para la columna se mostrarán "..." al final y se mostrará el contenido completo sobre componente tooltip. |
| Responsable grupo | | Texto | La etiqueta de esta tercera columna de la tabla de resultados será "Nombre grupo" cuando el desplegable "Datos económicos de" tome el valor "Grupo"Se mostrarán el nombre y apellidos obtenidos a través del requisito de integración [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") para la "persona ref" de la tabla "grupo equipo" que tenga el rol principal (registro de la tabla "rol proyecto" con campo "principal" a "true") para la fecha actual (la fecha actual debe estar comprendida entre los campos "fecha inicio" y "fecha fin" de la tabla "grupo equipo", considerando el valor null como fecha vigente). Podría darse el caso que existan varias personas con un rol "principal", en este caso se deben mostrar todos ellos separados por el carácter "," y en caso de que la cadena supere el espacio reservado para la columna se mostrarán "..." al final y se mostrará el contenido completo sobre componente tooltip. |
| Fecha inicio | | Fecha | Fecha de inicio del proyecto o grupo. Si en la fila se representa un proyecto se mostrará el valor del campo "fecha inicio" de la tabla "proyecto" a partir de la referencia establecida por el campo "proyecto" de la tabla "proyecto proyecto SGE". Si en la fila se representa un grupo se mostrará el valor del campo "fecha inicio" de la tabla "grupo". |
| Fecha fin | | Fecha | Fecha de fin del proyecto o grupo. Si en la fila se representa un proyecto se mostrará el valor del campo "fecha fin" de la tabla "proyecto" a partir de la referencia establecida por el campo "proyecto" de la tabla "proyecto proyecto SGE". Si en la fila se representa un grupo se mostrará el valor del campo "fecha fin" de la tabla "grupo". |
| Ver ejecución económica | | Icono de acción | Acción "Ver ejecución económica" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Formulario de búsqueda | | | |
| Buscar convocatoria | Muestra la pantalla de búsqueda para seleccionar la convocatoria | La búsqueda se realizará a través del buscador de convocatorias [IU\-GEN\-0050 \- Búsqueda de convocatorias](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0050-busqueda-de-convocatorias.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0050-busqueda-de-convocatorias.md"), común a todo el SGI.  Si el usuario es un  ACT\-CSP\-001\-Investigador la búsqueda se aplicará sin ninguna restricción de unidad de gestión (permisos). Si el usuario es un ACT\-CSP\-003\-Gestor, ACT\-CSP\-004\-Administrador o ACT\-CSP\-005\-Visor, la búsqueda llevará implícito el filtro por el permiso de edición o visualización de la ejecución económica (CSP\-EJEC\-E) | No se necesita permiso para buscar convocatoria. |
| Buscar responsable proyecto/grupo | Da acceso al buscador común de personas | Muestra el formulario de búsqueda [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md"), que hará uso del requisito de integración [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md"). Se le deberán pasar a este buscador el listado de colectivos (campo "colectivo ref") recuperados de la tabla "rol proyecto colectivo" que estén asociados a cualquier rol  activo (campo "activo" a "true") de la tabla "rol proyecto" para el que el campo  "rol principal" toma valor "true" y el campo "orden" toma valor "primario". | No se necesita permiso para mostrar la pantalla de búsqueda de personas. |
| Buscar entidad convocante | Da acceso al buscador común de empresas | Muestra el formulario [IU\-GEN\-0080 \- Búsqueda de empresas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md"), que hará uso del requisito de integración [REQ\-INT\-0015\-SGEMP\-0020 \- Buscar empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md") | No se necesita permiso para mostrar la pantalla de búsqueda de empresas. |
| Buscar entidad financiadora | Da acceso al buscador común de empresas | Muestra el formulario [IU\-GEN\-0080 \- Búsqueda de empresas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md"), que hará uso del requisito de integración [REQ\-INT\-0015\-SGEMP\-0020 \- Buscar empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md") | No se necesita permiso para mostrar la pantalla de búsqueda de empresas. |
| Buscar | Aplica los filtros introducidos sobre la lista de proyectos mostrando los que cumplen las condiciones | La búsqueda se realizará aplicando los filtros sobre:* proyectos, tablas "proyecto", "proyecto proyecto SGE" y "proyecto equipo" cuando el valor seleccionado en el desplegable "datos económicos de" sea "proyecto". * grupos, tablas "grupo" y "grupo equipo" cuando el valor seleccionado en el desplegable "datos económicos de" sea "proyecto".  Un identificador SGE puede estar asociado a varios proyectos de la tabla "proyecto". Del mismo modo,  un proyecto de la tabla "proyecto" puede estar vinculado a más de un identificador SGE en la tabla "proyecto proyecto SGE". | CSP\-EJEC\-VCSP\-EJEC\-V\_UOCSP\-EJEC\-ECSP\-EJEC\-E\_UOCSP\-EJEC\-INV\-VR |
| Búsqueda simple | Muestra el buscador simple | Se muestra la pantalla [IU\-CSP\-0501\-001 \- Búsqueda y listado de proyectos del SGE \- Búsqueda simple](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0501-001-busqueda-simple-y-listado-de-proyectos-del-sge.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0501-001-busqueda-simple-y-listado-de-proyectos-del-sge.md") | CSP\-EJEC\-VCSP\-EJEC\-V\_UOCSP\-EJEC\-ECSP\-EJEC\-E\_UOCSP\-EJEC\-INV\-VR |
| Limpiar | Limpia los filtros de búsqueda. | Se vacían todos los valores establecidos en los campos del formulario de búsqueda |  |
| Listado de proyectos | | | |
| Ver ejecución económica | Acceso a la información detallada de Ejecución económica | Produce un cambio de contexto a la ejecución económica del identificador SGE del proyecto seleccionado.Si varios proyectos comparten el mismo código identificador del SGE, se accederá al mismo detalle de Ejecución económica.Muestra la pantalla [IU\-CSP\-0404\-002 \- Ejecución económica \- Listado de proyectos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0510-001-listado-de-proyectos-grupos-sgi.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0510-001-listado-de-proyectos-grupos-sgi.md") | CSP\-EJEC\-VCSP\-EJEC\-V\_UOCSP\-EJEC\-ECSP\-EJEC\-E\_UOCSP\-EJEC\-INV\-VR |
| Exportar requerimientos | Permite exportar los requerimientos del seguimiento de justificación para los proyectos SGE obtenidos en el listado | Opción solo disponible en el caso de que se haya aplicado el valor "Proyecto" sobre el filtro "Datos económicos de"Muestra la pantalla [IU\-CSP\-0501\-006 \- Exportación de requerimientos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0501-006-exportacion-de-requerimientos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0500-ejecucion-economica/iu-csp-0501-006-exportacion-de-requerimientos.md") | CSP\-EJEC\-VCSP\-EJEC\-V\_UOCSP\-EJEC\-ECSP\-EJEC\-E\_UO |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso



