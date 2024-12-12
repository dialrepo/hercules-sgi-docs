# Hércules : IU\-CSP\-0301\-003 \- Crear solicitud \- Usuario externo (RRHH)



## Formulario Crear solicitud \- Usuario externo (RRHH)

Formulario de creación de solicitud de RRHH, (incluye los apartados de Datos generales y Solicitante que vará el gestor/administrador), cuando la solicitud es cumplimentada por un usuario externo



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
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
| --- | --- | --- |
| Dirección | TextoOpcional | Dirección de contacto de la persona. Campo "dirección" de la tabla "solicitante externo". |
| País | SelectorTexto cortoOpcional | País de dirección de contacto de la persona. Campo "país contacto ref" de la tabla "solicitante externo".Se cargará un listado de países recuperados a partir del requisito de integración [REQ\-INT\-0030\-SGO\-0060 \- Listar países](https://confluence.um.es/confluence/pages/viewpage.action?pageId=103891354 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=103891354"). |
| Comunidad autónoma | SelectorTexto cortoOpcional | Comunidad autónoma de dirección de contacto de la persona. Campo "com autónoma ref" de la tabla "solicitante externo".Se cargará con valores, recuperados a partir del requisito de integración [REQ\-INT\-0030\-SGO\-0070 \- Listar comunidades autónomas](https://confluence.um.es/confluence/pages/viewpage.action?pageId=103891356 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=103891356"), solo si previamente se ha seleccionado un país de dirección de contacto, en otro caso, estará vacío. |
| Provincia | SelectorTexto cortoOpcional | Provincida de dirección de contacto de la persona. Campo "provincia ref" de la tabla "solicitante externo".Se cargará con valores, recuperados a partir del requisito de integración [REQ\-INT\-0030\-SGO\-0080 \- Listar provincias](https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0030-SGO-0080+-+Listar+provincias "https://confluence.um.es/confluence/display/HERCULES/REQ-INT-0030-SGO-0080+-+Listar+provincias"), solo si previamente se ha seleccionado una comunidad autónoma o región de contacto, en otro caso, estará vacío. |
| Localidad | Texto cortoOpcional | Localidad de dirección de contacto de la persona. Campo "ciudad" de la tabla "solicitante externo". |
| Código postal | Texto cortoOpcional | Código postal de dirección de contacto de la persona. Campo "código postal" de la tabla "solicitante externo". |
|  | | |
| Datos universidad de origen | TextoOpcional | Campo para que el investigador pueda introducir el nombre de la Universidad de origen del trabajo. Campo "universidad" de la tabla "solicitud rrhhh" |
| Área ANEP | BuscadorTextoOpcional | Muestra la pantalla común [IU\-GEN\-0120 \- Selección de clasificaciones](https://confluence.um.es/confluence/pages/viewpage.action?pageId=103904412 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=103904412") filtrando por el "Tipo de clasificación" igual a "Áreas ANEP" de tal manera que únicamente se podrá seleccionar un nodo hijo del tipo de clasificación "Áreas ANEP" estando inicializado el combo de "Clasificación" con dicho valor y no dejando modificar el valor del combo. El combo estará deshabilitado.Sólo se permite seleccionar un nodo del árbol de área ANEP.Campo "nombre" recuperado a través de [REQ\-INT\-0030\-SGO\-0031 \- Consultar clasificación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=103904541 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=103904541") para la referencia indicada en el campo "área ANEP ref" de la tabla "solicitud rrhh". |
|  | | |
| Código de registro en entidad convocante | TextoOpcional | Campo para introducir el código de registro de la solicitud en la entidad convocante, en caso que la solicitud se haya registrado/presentado de forma paralela en la entidad convocante. En el caso de las convocatorias del plan propio (internas a la Universidad) el código introducido se correspondería con el código asignado en el Registro de la institución.Se corresponde con el campo "código externo" de la tabla "Solicitud". |
| Observaciones | Texto largoOpcional | Campo abierto que permite introducir cualquier observación de tipo genérico asociada a la solicitud, se almacenará sobre el campo "observaciones" de la tabla Solicitud.Se corresponde con el campo "observaciones" de la tabla "solicitud". |
| Listado de las entidades convocantes de la convocatoria. Se obtendrá el listado de la tabla "Convocatoria entidad convocante" para la convocatoria desde la que se está creando la solicitud. El listado podrá estar vacío ya que no es obligatorio crear la convocatoria con ninguna entidad convocante. En este caso no se mostrará en pantalla la tabla asociada al listado, ni el título de la misma "Indique la modalidad a la que se acoge la solicitud para cada entidad convocante". | | |
| Entidad convocante | TextoOpcional | Nombre de la entidad convocante recuperado a través de la referencia a la entidad almacenada en la tabla de relación "Convocatoria entidad convocante", por medio del requisito de integración [REQ\-INT\-0015\-SGEMP\-0030 \- Consultar datos generales de empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0030-consultar-datos-generales-de-empresa.md"). |
| Plan de la convocatoria | TextoOpcional | Nombre del plan de investigación recuperado de la tabla Programa a través del campo "programa" referenciado en la tabla de relación "Convocatoria entidad convocante". El plan de investigación se corresponderá con el nodo raíz del árbol al que pertenece el programa asociado a la entidad convocante en "Convocatoria entidad convocante" (campo "programa" de esta relación). |
| Programa/subprograma de la convocatoria | TextoOpcional | Nombre del programa/subprograma/modalidad al que está vinculada la convocatoria desde la que se crea la solicitud. Se corresponderá con el campo nombre recuperado de la tabla "Programa" a partir del valor almacenado en el campo "programa" de la relación "Convocatoria entidad convocante" |
| Modalidad seleccionada | Texto | En el momento de la creación este campo estará vacío. |
| Seleccionar modalidad | Icono de acción | Acción "Seleccionar modalidad" |



| Acciones | Descripción | Enlace CU. | Permisos |
| --- | --- | --- | --- |
| Buscar (área ANEP) | Abre la pantalla del buscador de la clasificación de "Áreas ANEP" | Muestra la pantalla común [IU\-GEN\-0120 \- Selección de clasificaciones](https://confluence.um.es/confluence/pages/viewpage.action?pageId=103904412 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=103904412") filtrando por el "Tipo de clasificación" igual a "Áreas ANEP" de tal manera que únicamente se podrá seleccionar un nodo hijo del tipo de clasificación "Áreas ANEP" estando inicializado el combo de "Clasificación" con dicho valor y no dejando modificar el valor del combo. El combo estará deshabilitado.Sólo se permite seleccionar un nodo del árbol de área ANEP. | Sin permiso |
| Seleccionar modalidad |  | Muestra la pantalla [IU\-CSP\-0302\-001 \- Añadir modalidad](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0302-001-anadir-modificar-modalidad.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0302-001-anadir-modificar-modalidad.md") | Sin permiso |

### Botones generales a la pantalla



| Acciones | Descripción | Descripción C.U. | Permisos |
| --- | --- | --- | --- |
| Guardar | Crea la solicitud con la información introducida en el formulario. | * La solicitud se creará en estado "borrador". * Se generará un código de registro interno con la siguiente estructura: "SGI\_SLC" \+ identificador \+ fecha \+ hora. Siendo el identificador el mismo secuencial que se asigne como identificador de la solicitud para su registro en base de datos. * Se recuperará el valor  "formulario solicitud" de la tabla "convocatoria" a la que está vinculada la solicitud y se almacenará este valor en el campo "formulario solicitud" de la tabla "solicitud". * El campo "creador" de la solicitud de dejará vacío * Se almacena el registro en la tabla "Solicitud". * Se guardará el solicitante externo con los campos de la pantalla de "Solicitante" (tabla "Solicitante externo") * No se realizan comprobaciones de "Requisito IP" * Se generará el UUID y se creará un registro en la tabla "solicitud externa". El campo "id" del registro de la tabla "solicitud externa" tomará el valor de este UUID generado. El registro de la tabla "solicitud externa" se asociará al registro creado previamente en la tabla "solicitud". * Se envía un comunicado al usuario externo (al email introducido en el campo de email del formulario) para indicar que se ha creado la solicitud. En este comunicado se remitirá el UUID generado. Será un comunicado de envío inmediato ([CU\-COM\-0010 \- Generar comunicado de envío inmediato](https://confluence.um.es/confluence/pages/viewpage.action?pageId=131860109 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=131860109")). Ver definición del comunicado en el apartado**Solicitudes \- Alta de solicitud RRHH cuando el solicitante es un usuario externo** de [CSP \- Comunicados \- Comunicados no personalizables por el usuario (automáticos)](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/csp-comunicados-comunicados-no-personalizables-por-el-usuario-automaticos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/csp-comunicados-comunicados-no-personalizables-por-el-usuario-automaticos.md"). * Tras guardar la solicitud, se mostrará la pantalla de modificación de la solicitud de RRHH para usuario externo | Sin permiso |
| Cancelar | No se crea la solicitud. | Retorna a la consulta de Solicitud sin salvar los posibles cambios. |  |



