# Hércules : IU\-CSP\-0303\-003\- Búsqueda ampliada y listado de solicitudes \- Unidades de gestión



## Formulario Búsqueda ampliada y listado de solicitudes \- Unidades de gestión

Formulario que muestra los filtros que se pueden establecer para realizar una búsqueda con filtros ampliados sobre las solicitudes, así como el listado de solicitudes resultante tras aplicar la búsqueda. Existirá siempre un filtro implícito asociado a la Unidad de gestión, de forma que solo se recuperarán las solicitudes asociadas a alguna de las  Unidades de gestión que tenga habilitadas el usuario.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario de búsqueda avanzada de solicitudes para usuarios de las Unidades de gestión. Por defecto el listado se mostrará ordenado por fecha de estado de la solicitud de más a menos reciente. El listado llevará siempre implícito el filtro por Unidad de gestión, de forma que solo se muestren las solicitudes asociadas a Unidades de gestión a las que ACT\-CSP\-003\-Gestor, ACT\-CSP\-004\-Administrador, ACT\-CSP\-005\-Visor esté vinculado. | | |
| Convocatoria | BuscadorOpcional | Se incorporará el buscador de convocatorias común al SGI [IU\-GEN\-0050 \- Búsqueda de convocatorias](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0050-busqueda-de-convocatorias.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0050-busqueda-de-convocatorias.md") que permita seleccionar una convocatoria registrada en el SGI. Se invocará al buscador con la restricción de Unidad de gestión tal y como se especifica en la tabla Acciones. La convocatoria seleccionada que se devolverá desde el buscador será la que se utilizará para aplicar como filtro sobre el campo "convocatoria" de la tabla "solicitud". |
| Estado solicitud | SelectorOpcional | El listado disponible serán todos los tipos de estado de solicitud (definidos en [Tipos de estados de la solicitud](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Solicitudes#CSP-Solicitudes-#tipo_estado_solicitudTiposdeestadodesolicitud "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Solicitudes#CSP-Solicitudes-#tipo_estado_solicitudTiposdeestadodesolicitud")). El filtro se aplicará sobre el estado actual de la solicitud, que será el que tenga la fecha más reciente en la tabla "Estado solicitud" |
| Título solicitud | TextoOpcional | Filtro a aplicar sobre el campo "título" de la tabla "Solicitud" |
| Solicitante/IP | BuscadorOpcional | A través del botón Buscar se dará acceso al buscador de personas común al SGI, [IU\-GEN\-0100\-0060 \- Búsqueda de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md"). Las condiciones de invocación a este buscador se recogen en  la tabla de acciones.La persona seleccionada se utilizará para aplicar como filtro de búsqueda sobre el campo "solicitante" de la tabla Solicitud. |
| Nombre solicitante externo | TextoOpcional | Filtro a aplicar sobre el campo "nombre" de la tabla "SolicitanteExterno" referenciado por el campo "solicitanteExterno" de la tabla "Solicitud". |
| Apellidos solicitante externo | TextoOpcional | Filtro a aplicar sobre el campo "apellidos" de la tabla "SolicitanteExterno" referenciado por el campo "solicitanteExterno" de la tabla "Solicitud". |
| Abierto plazo de presentación de solicitudes | CheckBooleanoOpcional | Permitirá establecer de forma directa un filtro sobre el plazo de presentación de la solicitud. Marcar el check supondrá que se marque como filtro que la solicitud tenga abierto el plazo de solicitud. Este filtro operará sobre los campos "fecha inicio" y "fecha fin" del plazo seleccionado en el campo "Seleccione plazo de presentación de solicitudes " de la tabla "Configuración solicitud" referenciada a través del campo "convocatoria" de la tabla Solicitud, de forma que la fecha actual deba encontrarse entre el intervalo delimitado por "fecha inicio" y "fecha fin". En caso que la Solicitud no se haya asociado a ninguna convocatoria registrada en el SGI (el campo "convocatoria" de la tabla Solicitud no estará informado) o no tenga informado el plazo de presentación de solicitudes quedará excluida de los resultados, pues el filtro no podrá aplicarse sobre ella. |
| Plazo presentación solicitudes \- Fecha de inicio entre | Fecha \+ HoraOpcional | Permitirá indicar el intervalo de fechas entre las que se debe encontrar la fecha de inicio del plazo para presentar solicitudes definido en la convocatoria asociada (formato fecha \+ hora). Este filtro operará sobre el campos "fecha inicio"  del plazo seleccionado en el campo "Seleccione plazo de presentación de solicitudes " de la tabla "Configuración solicitud" referenciada a través del campo "convocatoria" de la tabla Solicitud,  de forma que el valor del campo "fecha inicio" deba estar entre el intervalo indicado en el campo del filtro "Plazo presentación solicitudes \- Fecha de inicio entre"En caso que la Solicitud no se haya asociado a ninguna convocatoria registrada en el SGI (el campo "convocatoria" de la tabla Solicitud no estará informado) o no tenga informado el plazo de presentación de solicitudes quedará excluida de los resultados, pues el filtro no podrá aplicarse sobre ella. |
| Plazo presentación solicitudes \- Fecha de fin entre | Fecha \+ HoraOpcional | Permitirá indicar el intervalo de fechas entre las que se debe encontrar la fecha de fin del plazo para presentar solicitudes definido en la convocatoria asociada (formato fecha \+ hora).Este filtro se aplicará sobre el campo "fecha fin" del plazo seleccionado en el campo "Seleccione plazo de presentación de solicitudes " de la tabla "Configuración solicitud" referenciada a través del campo "convocatoria" de la tabla Solicitud, de forma que el valor del campo "fecha fin" deba estar entre el intervalo indicado en el campo del filtro "Plazo presentación solicitudes \- Fecha de fin entre" |
| Entidad convocante | BuscadorOpcional | A través del botón Buscar se dará acceso al buscador de Empresas común al SGI, [IU\-GEN\-0100\-0080 \- Búsqueda de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md"), que requerirá del requisito de integración [REQ\-INT\-0015\-SGEMP\-0020 \- Buscar empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md")La empresa selecciona se utilizará para aplicar como filtro de búsqueda sobre las entidades convocantes de la convocatoria. Serán aquellas que figuren en la tabla de relación "Convocatoria entidad convocante" para la convocatoria referencia a través del campo "convocatoria" de la tabla Solicitud. Si el campo "convocatoria" de la tabla Solicitud no está informado será indicativo de que la solicitud no fue vinculada a una convocatoria registrada en el SGI por lo que, en este caso, la solicitud quedará excluida de los resultados al no poder aplicar el filtro establecido. |
| Plan investigación | SelectorTexto cortoOpcional | Listado precargado con los planes de investigación activos, es decir, con los elementos raíz activos de la tabla "Programa".El valor seleccionado se aplicará para realizar la búsquedas de las solicitudes que hayan sido vinculadas a cualquier elemento del árbol de programas (plan de investigación) seleccionado. El filtro aplicará, por tanto, sobre la relación "Convocatoria entidad convocante", para la convocatoria referenciada en el campo "convocatoria" de la tabla Solicitud, de forma que la convocatoria deba estar relacionada a través de cualquiera de sus entidades convocantes (o de la establecida concretamente en el filtro anterior) con cualquiera de los elementos del árbol de programas establecido en el filtro (independientemente del nivel que ocupe en el árbol de programas el elemento con el que se relaciona la convocatoria) Si el campo "convocatoria" de la tabla Solicitud no está informado será indicativo de que la solicitud no fue vinculada a una convocatoria registrada en el SGI por lo que, en este caso, la solicitud quedará excluida de los resultados al no poder aplicar el filtro establecido. |
| Entidad financiadora | BuscadorOpcional | A través del botón Buscar se dará acceso al buscador de Empresas común al SGI, [IU\-GEN\-0100\-0080 \- Búsqueda de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md"), que requerirá del requisito de integración [REQ\-INT\-0015\-SGEMP\-0020 \- Buscar empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md")La empresa selecciona se utilizará para aplicar como filtro de búsqueda sobre las entidades financiadoras de la convocatoria. Serán aquellas que figuren en la tabla de relación "Convocatoria entidad financiadora" para la convocatoria referencia a través del campo "convocatoria" de la tabla Solicitud. Si el campo "convocatoria" de la tabla Solicitud no está informado será indicativo de que la solicitud no fue vinculada a una convocatoria registrada en el SGI por lo que, en este caso, la solicitud quedará excluida de los resultados al no poder aplicarse sobre ella el filtro establecido. |
| Fuente financiación | SelectorTexto cortoOpcional | Listado precargado con las fuentes de financiación activas, tabla "Fuente financiación".El filtro se aplicará sobre la tabla de relación "Convocatoria entidad financiadora" para la convocatoria establecida en el campo "convocatoria" de la tabla Solicitud, de forma que la fuente de financiación seleccionada figure vinculada a cualquiera de las entidades financiadoras de la convocatoria o concretamente para la que haya podido quedar establecida en el filtro "entidad financiadora" anterior.Si el campo "convocatoria" de la tabla Solicitud no está informado será indicativo de que la solicitud no fue vinculada a una convocatoria registrada en el SGI por lo que, en este caso, la solicitud quedará excluida de los resultados al no poder aplicarse sobre ella el filtro establecido. |
| Fecha publicación convocatoriaDesde \- Hasta | FechaOpcional | Los valores introducidos en estos campos se aplicarán como rango de búsqueda  sobre la fecha de publicación de la convocatoria (campo "fecha publicación" de la tabla "convocatoria"), de forma que ésta deba estar comprendida entre los valores indicados. La convocatoria de la solicitud está establecida por el campo "convocatoria" de la tabla "solicitud".Se introducirá en formato fecha (sin hora).En caso que la Solicitud no se haya asociado a ninguna convocatoria registrada en el SGI (el campo "convocatoria" de la tabla Solicitud no estará informado) quedará excluida de los resultados, pues el filtro no podrá aplicarse sobre ella. |
| Activo | SelectorBooleanObligatorio | Valores posibles a seleccionar: todos, sí, no. Por defecto, el selector se mostrará con el valor "Sí" precargado.Si se selecciona el valor "todos" la búsqueda devolverá todas las convocatorias que cumplan el resto de filtros sin valorar el estado de su campo Activo (se mostrarán tanto las activas como las no activas). |
| Palabras clave | Componente a medidaOpcional | Lista de palabras clave por las que filtrar para buscar convocatorias. El filtro se aplicará sobre el campo "nombre" de las palabras clave vinculadas a la solicitud a través de la tabla "solicitud palabra clave".El comportamiento del componente será el descrito de manera general en [IU\-GEN\-0201 \- Búsqueda por palabras clave](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/plcl-palabras-clave/gen-palabras-clave-interfaz-de-usuario/iu-gen-0201-busqueda-por-palabras-clave.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/plcl-palabras-clave/gen-palabras-clave-interfaz-de-usuario/iu-gen-0201-busqueda-por-palabras-clave.md"). |
| Buscar | Botón | Acción "Buscar" |
| Limpiar | Botón | Acción "Limpiar" |
| Búsqueda simple | Botón | Acción "Búsqueda simple" |
| Listado de solicitudes que cumplen las condiciones indicadas en el filtro y además están asociadas a las convocatorias vinculadas a la Unidad Gestora | | |
| Código registro interno | Texto corto | Código de registro de la solicitud generado automáticamente al crear la solicitud. Se corresponde con el campo "código registro interno" de la tabla "solicitud". |
| Código registro en entidad convocante | Texto | Valor del campo "código externo" de la tabla "solicitud". |
| Solicitante/IP | Texto | ACT\-CSP\-001\-Investigador titular de la solicitud. Se recuperarán el Nombre y apellidos por medio de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") para la referencia almacenada en el campo "solicitante ref" de la tabla "Solicitud" si dicho campo esta informado, sino se cogerán los campos "nombre" y "apellidos" de la tabla "Solicitante Externo" referenciado por el campo "solicitante externo" de la tabla "Solicitud" |
| Externo | Texto | Si esta informado el campo "solicitante ref" de la tabla "Solicitud" se mostrará el valor "No", en caso contrario el valor "Sí" |
| Título solicitud | Texto | Mostrará el "título" de la Solicitud. Se recuperará de la tabla "Solicitud" |
| Identificación convocatoria | Texto | Si la solicitud se ha vinculado a una convocatoria registrada en el SGI (el campo "convocatoria" de la tabla "solicitud" estará informado), en este campo se mostrará el valor del campo "código" de la tabla "convocatoria" recuperado a partir de la referencia establecida por el campo "convocatoria" de la tabla "solicitud".Si la solicitud no se ha vinculado a una convocatoria registrada en el SGI (el campo "convocatoria" de la tabla "solicitud" no estará informado), en este campo se mostrará el valor del campo "convocatoria externa" de la tabla "solicitud". |
| Estado  solicitud | Texto corto | Mostrará el estado actual (el más reciente) de la solicitud. Se recuperará de la tabla "Estado solicitud" y se mostrará el nombre del estado ("Tipo estado solicitud"). Los estados son definidos en [Tipos de estados de la solicitud](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Solicitudes#CSP-Solicitudes-#tipo_estado_solicitudTiposdeestadodesolicitud "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Solicitudes#CSP-Solicitudes-#tipo_estado_solicitudTiposdeestadodesolicitud") |
| Fecha estado | Fecha | Mostrará el campo "fecha" de la tabla "Estado solicitud" asociado al estado actual (el más reciente) de la solicitud.Se mostrará en formato fecha (sin hora). |
| Activo | Boolean | Valor del campo "activo" de la solicitud |
| Ver | Icono de acción | Acción "Ver" |
| Modificar | Icono de acción | Acción "Modificar" |
| Eliminar | Icono de acción | Acción "Eliminar" |



| Acciones | Descripción | Descripción CU | Permisos |
| --- | --- | --- | --- |
| Buscar convocatoria | Búsqueda de convocatoria registrada en el SGI | La búsqueda se realizará a través del buscador de convocatorias [IU\-GEN\-0050 \- Búsqueda de convocatorias](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0050-busqueda-de-convocatorias.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0050-busqueda-de-convocatorias.md"), común a todo el SGI. Esta búsqueda llevará implícito el filtro por los permisos: creación, modificación, borrado, recuperación o consulta de solicitudes.  (CSP\-SOL\-C, CSP\-SOL\-E, CSP\-SOL\-B, CSP\-SOL\-R, CSP\-SOL\-V) | No se necesita permiso para buscar convocatoria. |
| Buscar entidad convocante | Botón de búsqueda del filtro entidad convocantes | Mostrará el buscador de empresas donde seleccionar la empresa que actúa como entidad convocante de la solicitud, [IU\-GEN\-0100\-0080 \- Búsqueda de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md"), que deberá ser resuelto por el requisito de integración [REQ\-INT\-0015\-SGEMP\-0020 \- Buscar empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md"). | No se necesita permiso para buscar entidad convocante. |
| Buscar entidad financiadora | Botón de búsqueda del filtro entidad financiadora | Mostrará el buscador de empresas donde seleccionar la empresa que actúa como entidad financiadora de la solicitud.El listado de empresas disponibles se obtendrá a través del buscador de empresas, común al SGI, [IU\-GEN\-0100\-0080 \- Búsqueda de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md") y que deberá ser resuelto por el requisito de integración [REQ\-INT\-0015\-SGEMP\-0020 \- Buscar empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md"). | No se necesita permiso para buscar entidad financiadora. |
| Buscar investigador/a principal | Botón de búsqueda del filtro Solicitante | Mostrará el buscador de investigadores donde seleccionar el investigador que actúa como solicitante de la solicitud. Este buscador se resolverá por medio del requisito de integración [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md"). Se le deberá pasar a este buscador el tipo de colectivo "solicitante csp". | No se necesita permiso para buscar investigador principal. |
| Buscar | Ejecuta la acción de búsqueda y muestra la tabla de resultados | Aplica los filtros introducidos sobre la lista de solicitudes mostrando las que cumplen las condiciones. Cada uno de los campos de filtrado aplicará de acuerdo a lo establecido a nivel individual en el apartado anterior. Todos los filtros aplicarán entre sí como una condición "y". | CSP\-SOL\-VCSP\-SOL\-V\_UOCSP\-SOL\-ECSP\-SOL\-E\_UOCSP\-SOL\-BCSP\-SOL\-B\_UOCSP\-SOL\-RCSP\-SOL\-R\_UO |
| Limpiar | Ejecuta la acción limpiar | Elimina los datos introducidos en el formulario de búsqueda, vaciando el contenido que pudiera tener cualquier campo del buscador. |  |
| Búsqueda simple | Cambia la vista del buscador | Se muestra el formulario [IU\-CSP\-0303\-002\- Búsqueda y listado de solicitudes \- Unidades de gestión](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0303-busqueda-y-listado-de-solicitudes/iu-csp-0303-002-busqueda-simple-y-listado-de-solicitudes-unidades-de-gestion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0303-busqueda-y-listado-de-solicitudes/iu-csp-0303-002-busqueda-simple-y-listado-de-solicitudes-unidades-de-gestion.md") | CSP\-SOL\-VCSP\-SOL\-V\_UOCSP\-SOL\-ECSP\-SOL\-E\_UOCSP\-SOL\-BCSP\-SOL\-B\_UOCSP\-SOL\-RCSP\-SOL\-R\_UO |
| Listado de solicitudes que cumplen las condiciones indicadas en el buscador y además están asociadas a una de las Unidades de gestión sobre las que tiene permiso ACT\-CSP\-003\-Gestor, ACT\-CSP\-004\-Administrador, ACT\-CSP\-005\-Visor | | | |
| Ver | Muestra el detalle de la solicitud en modo solo lectura | Si el usuario es ACT\-CSP\-005\-Visor sobre la unidad de gestión de la solicitud, solo podrá acceder en modo lectura al detalle de la solicitud. Si el usuario es un ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador  y no se cumple las precondiciones para poder modificar una solicitud ([CU\-CSP\-1100 \-001 Modificar solicitud \- Guardar](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar")) accederá en modo consulta a todo el detalle de la solicitud. | CSP\-SOL\-VCSP\-SOL\-ECSP\-SOL\-E\_UO |
| Modificar | Muestra la pantalla de modificación de la solicitud seleccionada | Los ACT\-CSP\-004\-Administrador y ACT\-CSP\-003\-Gestor podrán editar la solicitud siempre que se encuentre entre las Unidades de gestión sobre las que tengan habilitado permisos de edición y la solicitud este en el estado adecuado.Ver documentación de restricciones en [CU\-CSP\-1100 \-001 Modificar solicitud \- Guardar](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar "https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-001+Modificar+solicitud+-+Guardar"). | CSP\-SOL\-ECSP\-SOL\-E\_UO |
| Eliminar | Elimina el registro seleccionado | **Acción disponible solamente para registros activos (campo "activo" a "true") ********y con estado "borrador"**********Los ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador podrán Eliminar una Solicitud, siempre que esté vinculada a una Unidad de gestión sobre las que tengan permisos de edición, siempre y cuando este en estado "Borrador".Se mostrará el mensaje de confirmación para que el usuario verifique la acción. Si la confirmación es positiva, la solicitud se modificará poniendo el campo "activo" a "false". | CSP\-SOL\-BCSP\-SOL\-B\_UO |
| Reactivar | Activa el registro seleccionado | ******Acción disponible solamente para registros no activos (campo "activo" a "false") ********y con estado "borrador"**************Los ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador podrán Reactivar una Solicitud, siempre que esté vinculada a una Unidad de gestión sobre las que tengan permisos de edición, siempre y cuando este en estado "Borrador".Se mostrará el mensaje de confirmación para que el usuario verifique la acción. Si la confirmación es positiva, la solicitud se modificará poniendo el campo "activo" a "true". | CSP\-SOL\-RCSP\-SOL\-R\_UO |
| Crear proyecto | Crea un proyecto vinculado a la solicitud | Los ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador podrán crear un proyecto vinculado a una solicitud.Esta opción solo estará disponible si:* La solicitud es de tipo "Proyecto" o "RRHH": el campo "formulario solicitud" de la tabla "solicitud" toma el valor "proyecto" o "RRHH" (enumerado "tipo formulario solicitud") * La solicitud  se encuentra en uno de los siguientes estados (campo "estado" de la tabla "solicitud"): 	+ Concedida provisional 	+ Concedida provisional alegada 	+ Concedida provisional no alegada 	+ Concedida  Se mostrará el formulario [IU\-CSP\-0303\-004 \- Búsqueda y listado de solicitudes \- UG \- Crear proyecto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0303-busqueda-y-listado-de-solicitudes/iu-csp-0303-004-busqueda-y-listado-de-solicitudes-ug-crear-proyecto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0303-busqueda-y-listado-de-solicitudes/iu-csp-0303-004-busqueda-y-listado-de-solicitudes-ug-crear-proyecto.md") | CSP\-PRO\-C |
| Crear grupo | Crea un grupo vinculado a la solicitud | Los ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador podrán crear un grupo vinculado a una solicitud.Esta opción solo estará disponible si:* la solicitud es de tipo "Grupo": el campo "formulario solicitud" de la tabla "solicitud" toma el valor "grupo" (enumerado "tipo formulario solicitud") * la solicitud es de constitución de nuevo grupo: el campo "tipo solicitud grupo" de la tabla "solicitud" toma el valor "constitución grupo" (enumerado "tipo solicitud grupo") * La solicitud  se encuentra en uno de los siguientes estados (campo "estado" de la tabla "solicitud"): 	+ Concedida provisional 	+ Concedida provisional alegada 	+ Concedida provisional no alegada 	+ Concedida  Se mostrará el formulario [IU\-CSP\-0303\-006 \- Búsqueda y listado de solicitudes \- UG \- Crear grupo](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0303-busqueda-y-listado-de-solicitudes/iu-csp-0303-006-busqueda-y-listado-de-solicitudes-ug-crear-grupo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0303-busqueda-y-listado-de-solicitudes/iu-csp-0303-006-busqueda-y-listado-de-solicitudes-ug-crear-grupo.md") | CSP\-GIN\-C |
| Detalle grupo | Accede al detalle del grupo vinculado a la solicitud en modo edición | Este botón tendrá activada la posibilidad de poder abrir una nueva pestaña del navegador.Esta opción solo estará disponible  si:* La solicitud es de tipo "grupo" : el campo "formulario solicitud" de la tabla "solicitud" toma valor "grupo" (enumerado "tipo formulario solicitud"). * La solicitud es de modificación de grupo: el campo "tipo solicitud grupo" de la tabla "solicitud" toma el valor "modificación datos grupo" (enumerado "tipo solicitud grupo"). * La solicitud está en uno de los siguientes estados (campo "estado" de la tabla "solicitud"): 	+ Concedida provisional 	+ Concedida provisional alegada 	+ Concedida provisional no alegada 	+ Concedida  Se mostrará el formulario [IU\-CSP\-0953\-001 \- Modificar\-consultar grupo investigación \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-001-modificar-consultar-grupo-investigacion-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0950-grupos-de-investigacion/iu-csp-0953-modificar-consultar-grupo-de-investigacion/iu-csp-0953-001-modificar-consultar-grupo-investigacion-datos-generales.md") en una pestaña nueva del navegador. Desde el formulario mostrado, ACT\-CSP\-003\-Gestor/ACT\-CSP\-004\-Administrador, podrán introducir las modificaciones en los datos del grupo indicadas en la solicitud. | CSP\-GIN\-E |
| Acciones generales | | | |
| Paginación | Componente estándar de paginación sobre la tabla de lista de resultados |  |  |
| Exportar | Permite la generación el informe asociado al listado de solicitudes | Muestra la pantalla [IU\-CSP\-0303\-005 \- Exportación listado de solicitudes \- Unidades de gestión](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0303-busqueda-y-listado-de-solicitudes/iu-csp-0303-005-exportacion-listado-de-solicitudes-unidades-de-gestion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0303-busqueda-y-listado-de-solicitudes/iu-csp-0303-005-exportacion-listado-de-solicitudes-unidades-de-gestion.md") | CSP\-SOL\-VCSP\-SOL\-V\_UO |
| Añadir solicitud | Muestra la pantalla de creación de solicitud para las unidades de gestión | La acción Añadir solicitud solo estará disponible en caso que el usuario sea un ACT\-CSP\-003\-Gestor, ACT\-CSP\-004\-Administrador sobre alguna unidad de gestión. Si el usuario es un ACT\-CSP\-005\-Visor para todas las unidades de gestión del módulo CSP, no tendrá habilitada la opción Añadir solicitud. Para que esta acción esté habilitada el usuario debe tener los permisos de creación de solicitud (CSP\-SOL\-C) sobre alguna de las Unidades de gestión.Muestra la pantalla [IU\-CSP\-0301\-002 \- Crear solicitud \- Datos generales \- Unidades de gestión](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0301-crear-solicitud/iu-csp-0301-002-crear-solicitud-datos-generales-unidades-de-gestion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0301-crear-solicitud/iu-csp-0301-002-crear-solicitud-datos-generales-unidades-de-gestion.md") | CSP\-SOL\-CCSP\-SOL\-C\_UO |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso



