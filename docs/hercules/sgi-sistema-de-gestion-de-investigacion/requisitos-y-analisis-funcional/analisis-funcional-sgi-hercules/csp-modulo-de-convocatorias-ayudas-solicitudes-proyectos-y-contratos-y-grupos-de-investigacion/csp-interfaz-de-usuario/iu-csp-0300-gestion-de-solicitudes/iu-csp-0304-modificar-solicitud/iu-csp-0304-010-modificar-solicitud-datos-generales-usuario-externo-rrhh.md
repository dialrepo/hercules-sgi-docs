# Hércules : IU\-CSP\-0304\-010 \- Modificar solicitud \- Datos generales \- Usuario externo (RRHH)



## Formulario Modificar solicitud \- Datos generales \- Usuario externo

Formulario de modificación de solicitud de RRHH, apartado **Datos Generales y  Solicitante**, cuando la solicitud es cumplimentada por el usuario externo. El resto de pantallas (Tutor, Requisitos convocatoria, Memoria, Documentos, Histórico estados) será como las del ACT\-CSP\-001\-Investigador  


Si se trata del usuario externo que ha cumplimentado la solicitud (el creador de la solicitud es la misma persona que el "solicitante externo") podrá modificar la solicitud mientras ésta se encuentre en estado "**Borrador**" y "**Rechazada**".   


Formulario para cumplimentación de la pantalla de Datos generales y Solicitante de Datos solicitud RRHH , en una solicitud de tipo "RRHH" para los usuarios externos.



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Datos generales \- Solicitante | | |
| Nombre | TextoObligatorio | Nombre de la persona. Campo "nombre" de la tabla "solicitante externo". |
| Apellidos | TextoObligatorio | Apellidos de la persona. Campo "apellidos" de la tabla "solicitante externo". |
| Tipo de documento | SelectorTexto cortoObligatorio | Tipo de documento de identificación personal de la persona. Campo "tipo documento ref" de la tabla "solicitante externo".Se cargará un listado de tipos de documentos de identificación personal recuperados a través de [REQ\-INT\-0020\-SGP\-0015 \- Listar tipos de documento de identificación personal.](https://confluence.um.es/confluence/pages/viewpage.action?pageId=103878831 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=103878831") |
| Número documento | Texto cortoObligatorio | Número de documento de identificación de la persona del tipo indicado en "Tipo de documento". Campo "número documento" de la tabla "solicitante externo". |
| Sexo | SelectorTexto cortoOpcional | Sexo de la persona. Campo "sexo ref" de la tabla "solicitante externo".Se cargará un listado de sexos recuperados a través de [REQ\-INT\-0020\-SGP\-0014 \- Listar sexos](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0014+-+Listar+sexos "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0020-SGP-0014+-+Listar+sexos") |
| Fecha de nacimiento | FechaOpcional | Fecha de nacimiento de la persona.  Campo "fecha nacimiento" de la tabla "solicitante externo". |
| País de nacimiento | SelectorTexto cortoOpcional | País de nacimiento de la persona. Campo "país nacimiento ref" de la tabla "solicitante externo".Se cargará un listado de países recuperados a partir del requisito de integración [REQ\-INT\-0030\-SGO\-0060 \- Listar países](https://confluence.um.es/confluence/pages/viewpage.action?pageId=103891354 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=103891354"). |
| Teléfono | Texto cortoObligatorio | Teléfono de contacto de la persona. Campo "teléfono" de la tabla "solicitante externo". |
| E\-mail | Texto cortoObligatorio | E\-mail de contacto de la persona. Campo "email" de la tabla "solicitante externo".Validar formato correcto de correo electrónico. |
| Dirección de contacto | | |
| Dirección | TextoOpcional | Dirección de contacto de la persona. Campo "dirección" de la tabla "solicitante externo". |
| País | SelectorTexto cortoOpcional | País de dirección de contacto de la persona. Campo "país contacto ref" de la tabla "solicitante externo".Se cargará un listado de países recuperados a partir del requisito de integración [REQ\-INT\-0030\-SGO\-0060 \- Listar países](https://confluence.um.es/confluence/pages/viewpage.action?pageId=103891354 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=103891354"). |
| Comunidad autónoma | SelectorTexto cortoOpcional | Comunidad autónoma de dirección de contacto de la persona. Campo "com autónoma ref" de la tabla "solicitante externo".Se cargará con valores, recuperados a partir del requisito de integración [REQ\-INT\-0030\-SGO\-0070 \- Listar comunidades autónomas](https://confluence.um.es/confluence/pages/viewpage.action?pageId=103891356 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=103891356"), solo si previamente se ha seleccionado un país de dirección de contacto, en otro caso, estará vacío. |
| Provincia | SelectorTexto cortoOpcional | Provincia de dirección de contacto de la persona. Campo "provincia ref" de la tabla "solicitante externo".Se cargará con valores, recuperados a partir del requisito de integración [REQ\-INT\-0030\-SGO\-0080 \- Listar provincias](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0030-SGO-0080+-+Listar+provincias "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0030-SGO-0080+-+Listar+provincias"), solo si previamente se ha seleccionado una comunidad autónoma o región de contacto, en otro caso, estará vacío. |
| Localidad | Texto cortoOpcional | Localidad de dirección de contacto de la persona. Campo "ciudad" de la tabla "solicitante externo". |
| Código postal | Texto cortoOpcional | Código postal de dirección de contacto de la persona. Campo "código postal" de la tabla "solicitante externo". |
|  | | |
| Universidad de origen | TextoOpcional | Campo para que el investigador pueda introducir el nombre de la Universidad de origen del trabajo. Campo "universidad" de la tabla "solicitud rrhhh" |
| Área ANEP | BuscadorTextoOpcional | Muestra la pantalla común [IU\-GEN\-0120 \- Selección de clasificaciones](https://confluence.um.es/confluence/pages/viewpage.action?pageId=103904412 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=103904412") filtrando por el "Tipo de clasificación" igual a "Áreas ANEP" de tal manera que únicamente se podrá seleccionar un nodo hijo del tipo de clasificación "Áreas ANEP" estando inicializado el combo de "Clasificación" con dicho valor y no dejando modificar el valor del combo. El combo estará deshabilitado.Sólo se permite seleccionar un nodo del árbol de área ANEP.La referencia de la área ANEP recuperada se almacenará en el campo "área ANEP ref" de la tabla "solicitud rrhh". |
|  | | |
| Estado de la solicitud | Texto corto | Estado actual de la solicitud. Modo consulta |
| Comentarios del estado | Texto largo | Comentario indicando el motivo del que se ha pasado al estado indicado en el campo Estado de la solicitud. Modo consulta.Mostrar el campo comentario únicamente para los estados que tienen dicho campo informado. |
| Título convocatoria | Texto | Título de la convocatoria obtenido automáticamente al crear la solicitud desde una convocatoria registrada con anterioridad. Modo consulta. |
| Código de registro interno | Texto cortoAutomático | Código de registro de la solicitud generado automáticamente al crear la solicitud. Estará formado por un sufijo unido a la fecha y hora de la creación, por tanto, será único y permitirá identificar inequívocamente a la solicitud. Se corresponde con el campo "código registro interno" de la tabla "solicitud"Modo consulta |
| Código de registro en entidad convocante | TextoOpcional | Campo para introducir el código de registro de la solicitud en la entidad convocante, en caso que la solicitud se haya registrado/presentado de forma paralela en la entidad convocante. En el caso de las convocatorias del plan propio (internas a la Universidad) el código introducido se correspondería con el código asignado en el Registro de la institución.Se corresponde con el campo "código externo" de la tabla "Solicitud". |
| Listado de las entidades convocantes de la convocatoria. Se obtendrá el listado de la tabla "Convocatoria entidad convocante" para la convocatoria desde la que se está creando la solicitud. El listado podrá estar vacío ya que no es obligatorio crear la convocatoria con ninguna entidad convocante. En este caso no se mostrará en pantalla la tabla asociada al listado, ni el título de la misma "Indique la modalidad a la que se acoge la solicitud para cada entidad convocante". | | |
| Entidad convocante | TextoOpcional | Nombre de la entidad convocante recuperado a través de la referencia a la entidad almacenada en la tabla de relación "Convocatoria entidad convocante", por medio del requisito de integración [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0015-SGEMP-0030+-+Consultar+datos+generales+de+empresa "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0015-SGEMP-0030+-+Consultar+datos+generales+de+empresa"). |
| Plan de la convocatoria | TextoOpcional | Nombre del plan de investigación recuperado de la tabla Programa a través del campo "programa" referenciado en la tabla de relación "Convocatoria entidad convocante". El plan de investigación se corresponderá con el nodo raíz del árbol al que pertenece el programa asociado a la entidad convocante en "Convocatoria entidad convocante" (campo "programa" de esta relación). |
| Programa/subprograma de la convocatoria | TextoOpcional | Nombre del programa/subprograma/modalidad al que está vinculada la convocatoria desde la que se crea la solicitud. Se corresponderá con el campo nombre recuperado de la tabla "Programa" a partir del valor almacenado en el campo "programa" de la relación "Convocatoria entidad convocante" |
| Modalidad seleccionada | Texto | En el momento de la creación este campo estará vacío. |
| Seleccionar modalidad | Icono de acción | Acción "Seleccionar modalidad" |
|  | | |
| Observaciones | Texto largoOpcional | Campo abierto que permite introducir cualquier observación de tipo genérico asociada a la solicitud, se almacenará sobre el campo "observaciones" de la tabla Solicitud.Se corresponde con el campo "observaciones" de la tabla "solicitud". |
| Mensaje informativo | Texto largo | Este mensaje solo se mostrará si la solicitud se encuentra en estado borrador (campo "estado" de la tabla "solicitud").Se mostrará con los estilos de aviso informativo el siguiente mensaje "Para que la solicitud pueda ser validad por su tutor/a debe cambiar el estado de la misma a "Solicitada"". |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar (área ANEP) | Abre la pantalla del buscador de la clasificación de "Áreas ANEP" | Muestra la pantalla común [IU\-GEN\-0120 \- Selección de clasificaciones](https://confluence.um.es/confluence/pages/viewpage.action?pageId=103904412 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=103904412") filtrando por el "Tipo de clasificación" igual a "Áreas ANEP" de tal manera que únicamente se podrá seleccionar un nodo hijo del tipo de clasificación "Áreas ANEP" estando inicializado el combo de "Clasificación" con dicho valor y no dejando modificar el valor del combo. El combo estará deshabilitado.Sólo se permite seleccionar un nodo del árbol de área ANEP. | No se necesita permiso adicional para realizar esta búsqueda |

### Botones generales a la pantalla



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Guardar | Modificar la solicitud con la información introducida en el formulario.Al guardar una solicitud se guardar la información de todos los apartados de definición de la solicitud. | Ver precondiciones en [CU\-CSP\-1100\-001 Modificar solicitud \- Guardar](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1100-gestion-de-solicitudes/cu-csp-1100-001-modificar-solicitud-guardar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1100-gestion-de-solicitudes/cu-csp-1100-001-modificar-solicitud-guardar.md"). | Sin permiso |
| Cancelar | Retorna a la consulta de la Solicitud sin salvar los posibles cambios.Al cancelar una solicitud se cancela la información de todas las pestañas de la pantalla, sin salvar los posibles cambios. |  |  |




