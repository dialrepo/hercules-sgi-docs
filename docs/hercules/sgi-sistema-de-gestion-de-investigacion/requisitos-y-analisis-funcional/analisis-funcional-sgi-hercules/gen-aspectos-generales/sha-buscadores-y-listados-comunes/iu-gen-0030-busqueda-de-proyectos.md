# Hércules : IU\-GEN\-0030 \- Búsqueda de proyectos







## Formulario de Búsqueda de proyectos

Pantalla emergente que muestra un formulario que, mediante unos filtros de búsqueda, muestra un listado de los proyectos/contratos registrados y consolidados en el sistema que cumplen las condiciones que se presentan. 

Será el buscador de proyectos común a todo el SGI que utilizarán el resto de módulos de la aplicación.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Formulario de búsqueda. El buscador puede recibir de manera opcional un parámetro de entrada. Este parámetro de entrada será un listado de identificadores de persona (persona ref). La inclusión o no de este listado dependerá de la pantalla del SGI desde la que se invoque al buscador. | | |
| Identificador interno | Numérico entero | Código numérico generado automáticamente por el SGI al crear el proyecto.Filtro a aplicar sobre el campo "ID" de la tabla "proyecto". |
| Código identificación en SGE | Texto | Código de identificación del proyecto económico del SGE con el que se vincula el proyecto SGI. Podrá ser alfanumérico.Filtro a aplicar sobre el campo "proyecto SGE Ref" de la tabla "proyecto proyecto SGE". |
| Título | TextoOpcional | Campo para introducir la cadena de texto por la que se aplicará la búsqueda sobre el campo "título" de la tabla "proyecto". |
| Acrónimo | Texto cortoOpcional | Campo para introducir la cadena de texto a partir de la que se establecerá el filtro de búsqueda sobre el campo "acrónimo" de la tabla "proyecto". |
| Referencia en entidad convocante | TextoOpcional | Cadena de texto para indicar la referencia que ha otorgado al proyecto la entidad convocante.Filtro a aplicar sobre el campo "código externo" de la tabla "proyecto". |
| Modelo de ejecución | SelectorTextoOpcional | Permitirá indicar un modelo de ejecución por el que filtrar los proyectos.El listado disponible serán los valores (campo "nombre") de modelos de ejecución activos (campo "activo" a "true") que tengan asociados las unidades de gestión sobre las que tiene visibilidad el usuario conectado. |
| Tipo finalidad | SelectorTextoOpcional | Permitirá indicar un tipo de finalidad de ejecución por el que filtrar los proyectos.El listado disponible serán los valores (campo "nombre") de los tipos de finalidad (campo "activo" a "true") que estén asociados a cualquiera de los modelos de ejecución de cualquiera de las unidades de gestión sobre las que tiene visibilidad el usuario conectado. |
| Fecha inicio (entre \- y) | Intervalo de Fechas (sin hora)Opcional | Permitirá indicar el intervalo de fechas entre las que se debe encontrar la fecha de inicio del proyecto (campo "fecha inicio" de la tabla "proyecto"). Será obligatorio indicar los dos límites ("entre" e "y" para el intervalo). Si se rellena el campo "fecha inicio entre", se rellenará automáticamente el campo "fecha inicio y" con la fecha actual.La aplicación del filtro por la fecha de inicio no obligará a que se establezca filtro por la fecha de fin. Se aplicarán de manera independiente, cada uno sobre el campo correspondiente de la tabla "proyecto". |
| Fecha fin/fecha fin definitiva (entre \- y) | Intervalo de Fechas (sin hora)Opcional | El filtro aplicará indistintamente sobre la fecha de fin inicial y la fecha de fin definitiva del proyecto.Rango de fechas a aplicar sobre los campos "fecha fin" y "fecha fin definitiva" de la tabla "proyecto". Será suficiente con que al menos una de las dos fechas cumpla el filtro. Será obligatorio que el rango de búsqueda se establezca con los dos límites ("entre" e "y") informados. Si se rellena el campo "fecha de fin entre", se rellenará automáticamente el rango final (campo "fecha de fin y") con la fecha actual. |
| Responsable proyecto | BuscadorTextoOpcional | A través del botón Buscar se dará acceso al buscador común [IU\-GEN\-0100\-0060 \- Búsqueda de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md").  El listado de investigadores disponible se obtendrá del requisito de integración [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md"). Las condiciones de invocación a este buscador se establecen en la tabla de acciones.La persona seleccionada se utilizará para aplicar como filtro de búsqueda sobre los miembros de los equipos de los proyectos, de forma que deba de participar en ellos con un rol categorizado como rol principal.La persona seleccionada deberá estar referenciada en la tabla "Proyecto equipo" con un rol que tenga el indicador "rol principal" a "true" en la tabla de configuración de roles de proyecto ("rol proyecto"). |
| Miembro de equipo | BuscadorTextoOpcional | A través del botón Buscar se dará acceso al buscador común [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md").  El listado de investigadores disponible se obtendrá del requisito de integración [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md"). Las condiciones de invocación a este buscador se establecen en la tabla de acciones.La persona seleccionada se utilizará para aplicar como filtro de búsqueda sobre los miembros de los equipos de los proyectos, de forma que deba de estar referenciada en la tabla "Proyecto equipo" sin discriminar por el tipo de rol. |
| Convocatoria | BuscadorTextoOpcional | A través del botón Buscar se dará acceso al buscador de convocatorias, [IU\-GEN\-0050 \- Búsqueda de Convocatorias](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0050-busqueda-de-convocatorias.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0050-busqueda-de-convocatorias.md"). La convocatoria seleccionada se aplicará como filtro sobre el campo "convocatoria" de la tabla "proyecto". |
| Entidad financiadora | BuscadorTextoOpcional | A través del botón Buscar se dará acceso al buscador de Empresas común al SGI, [IU\-GEN\-0100\-0080 \- Búsqueda de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md"), que hará uso del requisito de integración [REQ\-INT\-0015\-SGEMP\-0020 \- Buscar empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md")La empresa seleccionada se utilizará para aplicar como filtro de búsqueda sobre las entidades financiadoras de los proyectos (tabla "proyecto entidad financiadora") |
| Proyectos en curso con participación de cualquiera de los siguientes miembros | CheckOpcional | La disponibilidad de este filtro es dependiente de la pantalla desde la que se invoca al buscador de proyectos. Solamente será visible si el buscador de proyectos es invocado con un listado de personas como parámetro de entrada.En caso de estar disponible, se mostrarán, sobre un campo de texto en formato modo consulta, el nombre y apellidos de todas las personas recibidas como parámetro de entrada. El nombre y apellidos de cada persona se obtendrán a través del requisito de integración [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") a partir de los "persona ref" recibidos como parámetro. Los nombres y apellidos de cada persona se mostrarán separados por el carácter ",". Si la cadena resultante superase el tamaño reservado para el campo, se mostrará al final la cadena "..." y el contenido completo se mostrará sobre un tooltip. Ver en acciones la aplicación de este filtro. |
| Listado de Proyectos de Investigación | | |
| ID interno | Numérico entero | Código numérico generado automáticamente por el SGI para identificar de forma única al proyecto.Se corresponde con el campo "ID" de la tabla "proyecto" |
| Código SGE | Texto | Código de identificación del proyecto económico del SGE con el que se vincula el proyecto SGI.Se corresponde con  el campo "proyecto SGE Ref" de la tabla "proyecto proyecto SGE". |
| Título | Texto | Título del proyecto. Campo "título" de la tabla "proyecto" |
| Acrónimo | Texto corto | Acrónimo del proyecto. Campo "acrónimo" de la tabla "proyecto". |
| Referencia en entidad convocante | Texto | Referencia que la entidad convocante asigna al proyecto.Se corresponde con el campo "código externo" de la tabla "proyecto". |
| Fecha inicio | Fecha (sin hora) | Fecha de inicio del proyecto. Campo "fecha inicio"  de la tabla "proyecto". |
| Fecha fin | Fecha (sin hora) | Fecha de fin del proyecto. Campo "fecha fin"  de la tabla "proyecto". |
| Fecha fin definitiva | Fecha (sin hora) | Fecha de fin definitiva del proyecto. Se corresponde con el campo  "fecha fin definitiva" de la tabla "proyecto". |
| Modelo de ejecución | Texto | Modelo de ejecución asociado al proyecto. |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar responsable de proyecto | Pantalla genérica de búsqueda de personas. | Muestra la pantalla [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md") que hará uso del requisito de integración [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md"). Se le deberán pasar a este buscador el listado de colectivos (campo "colectivo ref") recuperados de la tabla "rol proyecto colectivo" que estén asociados a cualquier rol  activo (campo "activo" a "true") de la tabla "rol proyecto" que tenga marcado a "true" el campo "rol principal". |  |
| Buscar miembro | Pantalla genérica de búsqueda de personas. | Muestra la pantalla [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md") que hará uso del requisito de integración[REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md").  Se le deberán pasar a este buscador el listado de colectivos (campo "colectivo ref")  recuperados de la tabla "rol proyecto colectivo" que estén asociados a cualquier rol  activo (campo "activo" a "true") de la tabla "rol proyecto". |  |
| Buscar | Muestra los resultados de la búsqueda | Aplica la búsqueda sobre la tabla "proyectos" teniendo en cuenta los filtros introducidos en el formulario y conllevando el filtro implícito sobre el campo "activo" de forma que solo se consideren los proyectos con el campo "activo" a "true".Si se selecciona el filtro "Proyectos en curso con participación de cualquiera de los siguientes miembros" se deberán buscar todos los proyectos en los que cualquiera de los "persona ref" recibidos como parámetro figure en la tabla "proyecto equipo" (independientemente del rol). Siendo necesario, además, que los proyectos estén vigentes en la fecha actual, es decir, la fecha actual debe estar comprendida entre la fecha de inicio del proyecto  y la fecha de fin definitiva o fecha de fin, en caso de estar fecha de fin definitiva no informada (campo "fecha inicio", "fecha fin" y "fecha fin definitiva" de la tabla "proyecto"). |  |
| Limpiar | Elimina los datos introducidos en el formulario de búsqueda de Proyectos de Investigación. |  |  |
| Seleccionar | Asigna la referencia del proyecto de investigación a la entidad desde la que se ha solicitado su asignación. |  |  |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Cancelar | No se realiza ninguna acción, se cierra el formulario sin devolver ningún dato al formulario de invocación. |  |  |

### Interfaces y casos de uso relacionados





















### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso







