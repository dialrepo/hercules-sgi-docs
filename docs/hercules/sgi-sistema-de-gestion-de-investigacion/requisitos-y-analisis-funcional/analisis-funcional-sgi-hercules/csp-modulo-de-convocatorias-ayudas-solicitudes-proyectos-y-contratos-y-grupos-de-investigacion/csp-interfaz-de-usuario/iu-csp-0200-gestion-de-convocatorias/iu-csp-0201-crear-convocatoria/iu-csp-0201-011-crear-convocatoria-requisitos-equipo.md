# Hércules : IU\-CSP\-0201\-011 \- Crear convocatoria \- Requisitos Equipo



## Formulario Crear convocatoria \- Requisitos Equipo

La información de una convocatoria estará distribuida en los siguientes apartados:

* Datos generales
* Entidades convocantes
* Entidades financiadoras
* Enlaces
* Fases
* Periodos justificación
* Seguimiento científico
* Hitos
* Documentos
* Requisitos IP
* **Requisitos Equipo**
* Elegibilidad
* Configuración de solicitudes

### Requisitos Equipo

La información de una convocatoria estará distribuida en los siguientes apartados:

* Datos generales
* Entidades convocantes
* Entidades financiadoras
* Enlaces
* Fases
* Periodos justificación
* Seguimiento científico
* Documentos
* Hitos
* Requisitos IP
* **Requisitos Equipo**
* Elegibilidad
* Configuración de solicitudes

En este apartado de Requisitos equipos se especificarán las limitaciones que recoge la convocatoria para formar parte del equipo de investigación. Los siguientes campos  del formulario se valorarán en el cómputo total de todos los miembros del equipo propuesto:

* Ratio por sexo
* Número mínimo de proyectos competitivos
* Número mínimo de proyectos no competitivos
* Número máximo de proyectos competitivos en curso
* Número máximo de proyectos no competitivos en curso



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Edad máxima | Numérico entero genéricoOpcional | Edad máxima que pudiera requerir la convocatoria.Se corresponde con el campo "edad máxima" de la tabla "requisito equipo".Se contrastará con la fecha de nacimiento de cada uno de los miembros del equipo incluidos en la solicitud. La restricción aplicará por igual a todos los miembros del equipo. La fecha de nacimiento para cada uno de los miembros deberá ser recuperado del sistema de gestión de personas a través de [REQ\-INT\-0020\-SGP\-0031 \- Consultar datos personales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0031-consultar-datos-personales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0031-consultar-datos-personales-de-persona.md"). Esta comprobación se realizará durante el registro de datos de la solicitud, no se realiza ninguna comprobación durante el registro de la convocatoria. |
| Limitaciones en términos de igualdad de sexo | | |
| Sexo | SelectorTexto cortoOpcional | Junto con el campo "ratio mínimo exigido" permitirá recoger las limitaciones que establezca la convocatoria respecto a la composición, en términos de igualdad, del equipo.En este campo se recogerá el sexo en base al que se expresa el ratio mínimo exigido. El valor debe de ser seleccionado de un listado. Este listado será obteniedo a través de [REQ\-INT\-0020\-SGP\-0014 \- Listar sexos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0014-listar-sexos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0014-listar-sexos.md").El valor seleccionado se almacenará sobre el campo "sexo ref" de la tabla "requisito equipo". |
| Ratio mínimo exigido | Numérico entero genéricoOpcional | Este campo recogerá el ratio exigido por la convocatoria, expresado tomando como referencia el sexo seleccionado en el campo "sexo" anterior.Se corresponde con el campo "ratio sexo" de la tabla "requisito equipo".Deberá ser un valor mayor o igual que 0 y menor o igual a 100\.Se contrastará con el ratio calculado a partir del equipo propuesto en la solicitud. Para ello se obtendrá el sexo de cada uno de los miembros del equipo, dato a recuperar por medio de la integración con el sistema de gestión de personas a través de  [REQ\-INT\-0020\-SGP\-0031 \- Consultar datos personales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0031-consultar-datos-personales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0031-consultar-datos-personales-de-persona.md"). Esta comprobación se realizará durante el registro de datos de la solicitud, no se realiza ninguna comprobación durante el registro de la convocatoria. |
| Restricciones sobre nivel académico: listado recuperado de la tabla "requisito equipo nivel académico". Podrá estar vacío | | |
| Nivel de académico permitido | Texto | Nombre del nivel académico. El valor a mostrar se obtendrá a través del requisito de integración [REQ\-INT\-0020\-SGP\-0019 \- Consultar detalle de nivel académico](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0019-consultar-detalle-de-nivel-academico.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0019-consultar-detalle-de-nivel-academico.md") a partir de la referencia almacenada en el campo "nivel académico ref." de la tabla "requisito equipo nivel académico".Se contrastará con el nivel académico de cada uno de los miembros del equipo incluidos en la solicitud. La restricción aplicará por igual a todos los miembros del equipo. Este dato, para cada uno de los miembros, deberá ser recuperado por medio de la integración con el sistema de gestión de personas a través de [REQ\-INT\-0020\-SGP\-0034 \- Consultar datos académicos de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0034-consultar-datos-academicos-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0034-consultar-datos-academicos-de-persona.md"). Esta comprobación se realizará durante el registro de datos de la solicitud, no se realiza ninguna comprobación durante el registro de la convocatoria. |
| Eliminar | Icono de acción | Acción "Eliminar nivel académico permitido" |
| Añadir nivel académico permitido | Botón | Acción "Añadir nivel académico permitido" |
| Limitaciones sobre la fecha de obtención del nivel académico | | |
| Posterior a | FechaOpcional | Fecha mínima de obtención del nivel académico que exige la convocatoria.Se corresponde con el campo "fecha mínima nivel académico" de la tabla "requisito equipo".Se contrastará con la fecha en la que cada miembro del equipo adquiere el nivel académico (la que conste en los sistemas de la Universidad), dato que debe ser obtenido por medio de la recuperación de los datos de cada miembro del sistema de gestión de personas a través de [REQ\-INT\-0020\-SGP\-0034 \- Consultar datos académicos de persona](https://confluence.um.es/confluence/pages/viewpage.action?pageId=103891764 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=103891764"), de forma que la fecha de obtención del nivel académico deba ser mayor o igual a la indicada en el campo "posterior a". Esta comprobación se realizará durante el registro de datos de la solicitud, no se realiza ninguna comprobación durante el registro de la convocatoria. |
| Anterior a | FechaOpcional | Fecha máxima de obtención del nivel académico que exige la convocatoria.Se corresponde con el campo "fecha máxima nivel académico" de la tabla "requisito equipo".Se contrastará con la fecha en la que cada miembro del equipo adquiere el nivel académico (la que conste en los sistemas de la Universidad), dato que debe ser obtenido por medio de la recuperación de los datos de cada miembro del sistema de gestión de personas a través de [REQ\-INT\-0020\-SGP\-0034 \- Consultar datos académicos de persona](https://confluence.um.es/confluence/pages/viewpage.action?pageId=103891764 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=103891764"), de forma que la fecha de obtención del nivel académico deba ser menor o igual a la indicada en el campo "anterior a". Esta comprobación se realizará durante el registro de datos de la solicitud, no se realiza ninguna comprobación durante el registro de la convocatoria. |
|  | | |
| Vinculación universidad | SelectorBooleanOpcional | Selector con los valores: vacío, sí, no.Si se selecciona "sí" se activará el botón "añadir categoría profesional". Se corresponde con el campo "vinculación universidad" de la tabla "requisito equipo".Si este campo ya toma valor "sí" y ya han sido añadidas categorías profesionales a la restricción (existen registros asociados en la tabla "requisito equipo categoría"), no se permitirá modificar su valor hasta que no se hayan eliminado todas las categorías de la restricción (es decir, hasta que no haya registros asociados en la tabla "requisito equipo categoría"). Siempre que este campo se muestre en modo solo lectura por este motivo (existen registros asociados en la tabla "requisito equipo categoría") se mostrará el icono de información con el tooltip: "Para poder modificar este valor debe eliminar todas las categorías profesionales de la restricción". |
| Restricciones sobre categoría profesional: listado recuperado de la tabla "requisito equipo categoría". Este apartado solo estará visible si el campo "vinculación universidad" toma valor "sí". | | |
| Categoría profesional permitida | Texto | Nombre de la categoría profesional. El valor a mostrar se obtendrá a través del requisito de integración [REQ\-INT\-0020\-SGP\-0017 \- Consultar detalle de categoría profesional](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0017-consultar-detalle-de-categoria-profesional.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0017-consultar-detalle-de-categoria-profesional.md") a partir de la referencia almacenada en el campo "categoría profesional ref." de la tabla "requisito equipo categoría".Se contrastará con la categoría profesional de cada uno de los miembros del equipo incluidos en la solicitud. La restricción aplicará por igual a todos los miembros del equipo. Este dato, para cada uno de los miembros, deberá ser recuperado del sistema de gestión de personas a través de [REQ\-INT\-0020\-SGP\-0033 \- Consultar datos de vinculación de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0033-consultar-datos-de-vinculacion-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0033-consultar-datos-de-vinculacion-de-persona.md"). Esta comprobación se realizará durante el registro de datos de la solicitud, no se realiza ninguna comprobación durante el registro de la convocatoria. |
| Eliminar | Icono de acción | Acción "Eliminar categoría profesional permitida" |
| Añadir categoría profesional permitido | Botón | Acción "Añadir categoría profesional permitida". Solo disponible si el campo "vinculación universidad" toma valor "sí". |
| Limitaciones sobre la fecha de obtención de la categoría profesional | | |
| Posterior a | FechaOpcional | Fecha mínima de obtención de la categoría profesional que exige la convocatoria.Se corresponde con el campo "fecha mínima categoría profesional" de la tabla "requisito equipo".Se contrastará con la fecha en la que cada miembro del equipo adquiere la categoría profesional (la que conste en los sistemas de la Universidad), dato que debe ser obtenido por medio de la recuperación de los datos de cada miembro del sistema de gestión de personas a través de  [REQ\-INT\-0020\-SGP\-0033 \- Consultar datos de vinculación de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0033-consultar-datos-de-vinculacion-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0033-consultar-datos-de-vinculacion-de-persona.md") de forma que la fecha de obtención de la categoría deba de ser mayor o igual a la indicada en el campo "posterior a". Esta comprobación se realizará durante el registro de datos de la solicitud, no se realiza ninguna comprobación durante el registro de la convocatoria. |
| Anterior a | FechaOpcional | Fecha máxima de obtención de la categoría profesional que exige la convocatoria.Se corresponde con el campo "fecha máxima categoría profesional" de la tabla "requisito equipo".Se contrastará con la fecha en la que cada miembro del equipo adquiere la categoría profesional (la que conste en los sistemas de la Universidad), dato que debe ser obtenido por medio de la recuperación de los datos de cada miembro del sistema de gestión de personas a través de [REQ\-INT\-0020\-SGP\-0033 \- Consultar datos de vinculación de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0033-consultar-datos-de-vinculacion-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0033-consultar-datos-de-vinculacion-de-persona.md") de forma que la fecha de obtención de la categoría deba de ser menor o igual a la indicada en el campo "anterior a". Esta comprobación se realizará durante el registro de datos de la solicitud, no se realiza ninguna comprobación durante el registro de la convocatoria. |
|  | | |
| Número mínimo proyectos competitivos | Numérico entero genéricoOpcional | Se recogerá en este campo el número de proyectos competitivos mínimos en los que la convocatoria exige haber participado a los miembros del equipo.Se corresponde con el campo "num. mínimo competitivos" de la tabla "requisito equipo".La información para valorar la cobertura de este requisito se obtendrá del listado de proyectos incluidos en el CVN, apartado Experiencia científica y tecnológica \- Proyectos financiados en convocatorias competitivas. |
| Número  mínimo proyectos no competitivos | Numérico entero genéricoOpcional | Se recogerá en este campo el número de proyectos no competitivos mínimos en los que la convocatoria exige haber participado a los miembros del equipo.Se corresponde con el campo "num. mínimo no competitivos" de la tabla "requisito equipo".La información para valorar la cobertura de este requisito se obtendrá del listado de proyectos incluidos en el CVN, apartado Experiencia científica y tecnológica \- Proyectos financiados en convocatorias no competitivas. |
| Número máximo proyectos competitivos en curso | Numérico entero genéricoOpcional | Se recogerá en este campo el límite máximo de proyectos competitivos en los que la convocatoria permite estar participando simultáneamente a los miembros del equipo.Se corresponde con el campo "num. máximo competitivos activos" de la tabla "requisito equipo".Número de proyectos  competitivos de los que el solicitante puede ser miembro del equipo de proyecto en el momento de realizar la solicitud. La información para valorar la cobertura de este requisito se obtendrá de los propios proyectos registrados en el del SGI. |
| Número máximo proyectos no competitivos en curso | Numérico entero genéricoOpcional | Se recogerá en este campo el límite máximo de proyectos no competitivos en los que la convocatoria permite estar participando simultáneamente a los miembros del equipo.Se corresponde con el campo "num. máximo no competitivos activos" de la tabla "requisito equipo".Número de proyectos no competitivos de los que el solicitante puede ser miembro del equipo de proyecto en el momento de realizar la solicitud.  La información para valorar la cobertura de este requisito se obtendrá de los propios proyectos registrados en el del SGI. |
| Observaciones sobre los requisitos a cumplir | Texto largoOpcional | Campo de descripción abierta para que  los usuarios ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor recojan de manera global todos los requisitos que marca la convocatoriaSe corresponde con el campo "otros requisitos" de la tabla "requisitos equipo". |

### Acciones



| Acción | Descripción | CU |
| --- | --- | --- |
| Eliminar nivel académico permitido | Se elimina el registro seleccionado del listado de niveles académicos permitidos de la convocatoria. | Elimina el registro correspondiente de la tabla "requisito equipo nivel académico", realizando un borrado físico. |
| Añadir nivel académico permitido | Se añade un nuevo nivel académico al listado de niveles académicos permitidos de la convocatoria. | Muestra la pantalla [IU\-CSP\-202\-019 \- Añadir nivel académico permitido a requisitos equipo](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-019-anadir-nivel-academico-permitido-a-requisitos-equipo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-019-anadir-nivel-academico-permitido-a-requisitos-equipo.md") |
| Eliminar nivel categoría profesional permitida | Se elimina el registro seleccionado del listado de categorías profesionales permitidas de la convocatoria. | Elimina el registro correspondiente de la tabla "requisito equipo categoría", realizando un borrado físico. |
| Añadir nivel categoría profesional permitida | Se añade una nueva categoría profesional al listado de categorías permitidas de la convocatoria. | Acción solo disponible si el campo "vinculación universidad" toma valor "sí".Muestra la pantalla  [IU\-CSP\-202\-020 \- Añadir categoría profesional permitida a requisitos equipo](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-020-anadir-categoria-profesional-permitida-a-requisitos-equipo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-020-anadir-categoria-profesional-permitida-a-requisitos-equipo.md") |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea la Convocatoria con la información introducida en el formulario.Al guardar una convocatoria se guardar la información de todas las pestañas de la pantalla. |  | CSP\-CON\-CCSP\-CON\-C\_UO |
| Cancelar | Retorna al listado de Convocatorias sin salvar los posibles cambios.Al cancelar una convocatoria se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




