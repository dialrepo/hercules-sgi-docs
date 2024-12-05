# Hércules : CSP \- Convocatorias



La entidad convocatoria es el punto de partida para el flujo convocatoria \- solicitud \- proyecto.

El registro de nuevas convocatorias será realizada por los usuarios con perfiles:

* ACT\-CSP\-003\-Gestor ([CSP \- Actores](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-actores.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-actores.md"))
* ACT\-CSP\-004\-Administrador ([CSP \- Actores](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-actores.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-actores.md"))

pertenecientes a una de las unidades de gestión que tengan habilitado la creación de convocatorias entres sus funcionalidades ([USR \- Módulo de usuarios](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=USR+-+M%C3%B3dulo+de+usuarios&linkCreation=true&fromPageId=597853534 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=USR+-+M%C3%B3dulo+de+usuarios&linkCreation=true&fromPageId=597853534"))

  


El personal de las unidades de gestión registrará la convocatoria en el SGI a partir de la información publicada por el organismo convocante/financiador. El registro de convocatorias no es una fase obligatoria para el SGI. La Universidad podría decidir no realizar el registro de la convocatoria en el SGI y directamente registrar el proyecto ya concedido. Cada convocatoria registrada quedará vinculada a una unidad de gestión (UGI, OTRI, OPE, etc.) de forma que se limite la visibilidad de la misma al personal cuyo usuario tenga un rol asociado sobre dicha unidad de gestión ([USR \- Módulo de usuarios](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=USR+-+M%C3%B3dulo+de+usuarios&linkCreation=true&fromPageId=597853534 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=USR+-+M%C3%B3dulo+de+usuarios&linkCreation=true&fromPageId=597853534")).

La gestión de las convocatorias en el SGI será homogénea, independientemente de su naturaleza de financiación y/o la finalidad del proyecto resultante.  

  


Las convocatorias serán visibles por ACT\- CSP\-001\-Investigador, a través de su acceso al SGI, serán las que hayan sido registradas por el personal de las unidades de gestión. La información disponible en el SGI será la que haya sido transcrita a la estructura convocatoria durante este proceso de registro. Esta estructura permitirá recoger los enlaces web y/o la documentación facilitada por el organismo convocante/financiador, pero el ciclo de vida de la convocatoria en el SGI será independiente del proceso que siga la misma en el organismo correspondiente. El SGI no definirá o limitará los criterios para decidir el registro de la convocatoria. De acuerdo a sus  procedimientos internos, será el Servicio de investigación de cada Universidad quien decida o no registrar una convocatoria en el SGI, así como las solicitudes presentadas. Del mismo modo serán estos procedimientos internos, y los datos aportados por el personal de la unidad de gestión durante el registro de la convocatoria, los que determinarán si el personal investigador podrá realizar directamente el registro de la solicitud en el SGI. La configuración para habilitar el proceso de registro de las solicitudes estará disponible a nivel de convocatoria. Esto permitirá a las unidades de gestión tomar esta decisión en función de la casuística de cada convocatoria particular. En caso de no habilitar esta opción será el personal de las unidades de gestión quien deba registrar en el SGI las solicitudes presentadas, siempre y cuando resulte de su interés el disponer de esta información recogida en el SGI.

  


Dada la heterogeneidad y multitud de posibilidades que puede tener la información de las convocatorias, la estructura de esta entidad en el SGI será lo menos restrictiva posible, debiendo balancearse la minimización de limitaciones y restricciones con la posibilidad de agrupación y estructuración de sus datos para posibilitar la realización de búsquedas y/o la posterior obtención de estadísticas.

  


### Descripción de convocatoria

![](/attachments/597853534/597877164.png)

  


Una convocatoria tendrá los siguientes bloques de información:

* Datos generales
* Entidades convocantes a través de un plan y programa
* Entidades financiadoras, que financian un importe o porcentaje determinado haciendo uso de un tipo de financiación y a través de una fuente de financiación (que a su vez tiene un ámbito geográfico, un origen (público o privado) y la característica de si es un fondo estructural o no).
* Enlaces a información externa al SGI
* Plazos y fases
* Periodos de justificación
* Periodos de seguimiento científico
* Hitos
* Documentos
* Requisitos a cumplir por el IP
* Requisitos a cumplir por el equipo de investigación
* Elegibilidad
* Partidas presupuestarias
* Configuración de solicitudes
* Palabras clave

#### Datos generales

En este apartado se agrupará información general e identificativa:

* Identificador. Será un identificador numérico único asignado de manera automática por el SGI. No podrá ser modificado. Será un código interno que no estará visible en las pantallas.
* Título de la convocatoria. Campo alfanumérico que permitirá darle un título a la convocatoria. Será un campo obligatorio.
* Tipo de formulario para la solicitud.  El tipo de formulario de solicitud no marcará el flujo de convocatoria. Será un campo obligatorio ya que internamente el SGI requiere este dato para mostrar posteriormente el formulario donde se recogerán los datos de las solicitudes asociadas a la convocatoria. Se define un número máximo y limitado de formularios para la recogida de solicitudes:
	+ Proyectos. Responderán a este tipo la mayoría de las convocatorias. Se deberán marcar con esta tipología todas aquellas convocatorias cuya solicitud se vaya a recoger en el SGI con los datos específicos de un proyecto.
	+ RRHH. Como norma general se marcarán con esta tipología las convocatorias de contratación de personal, predoctorales o postdoctorales, del plan propio. En líneas generales deberán marcarse con este tipología aquellas convocatorias cuyas solicitudes deban recogerse en el SGI con el formulario específico de RRHH. Estas convocatorias, al igual que las de tipo proyecto, desencadenará en el SGI la creación de un proyecto (entendido éste como una entidad para gestionar el paquete económico asociado a la ayuda y no como un proyecto de investigación), pero presentarán un formulario específico que permitirá especificar la persona que tutorizará a la persona contratada e incorporará alguna variación en el flujo de estados de las solicitudes derivadas.
	+ Grupos. Responderán a esta tipología las convocatorias generales de constitución de Grupos de investigación o de modificación de datos de los grupos ya existentes. Este tipo de convocatorias supondrán la creación, en el SGI, de un Grupo de investigación en vez de un Proyecto.
* Identificación o  referencia. Código alfanumérico para recoger la referencia a través del que la entidad gestora identifica la convocatoria. Se podría definir como el identificador externo de la convocatoria (ejemplo  código BDNS: base de datos nacional de subvenciones).
* Unidad de gestión. Será la unidad u oficina (OTRI, OPE, UGI, etc.) que realizará la gestión de la convocatoria. Estas oficinas deberán haber sido registradas en el SGI en el proceso de configuración de la implantación. Como el usuario que esté creando la convocatoria podrá estar asociado a varias unidades de gestión con diferente perfil en cada  uno de ellas, solo podrá registrar una convocatoria sobre la/s unidad/es de gestión sobre las que tenga perfil  ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador. Es decir, las unidades de gestión disponibles en el desplegable serán solamente aquellas sobre las que el usuario disponga de un rol ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador.
* Modelo de ejecución: Será un listado configurable que determinará los tipos disponibles en la pestaña de fases, enlaces, documentos  y en el listado de "finalidad". La explicación ampliada de los modelos de ejecución se encuentra disponible en ([CSP \- Modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-modelo-de-ejecucion.md")). Los modelos de ejecución disponibles en el momento de crear o modificar la convocatoria serán los que tenga asociados la unidad de gestión a la que se ha asociado la convocatoria a través del campo "Unidad de gestión".
* Finalidad: Será un listado configurable, cuyos valores estarán limitados por el Modelo de ejecución. Ejemplos de valores: proyectos i\+d, contratación rrhh, servicios técnicos, asesorías, movilidades, constitución grupos, infraestructuras, royalties, etc. Puede consultarse [CSP \- Modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-modelo-de-ejecucion.md") e [IU\-CSP\-0020 \- Gestión de tipos de finalidad](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0020-gestion-de-tipos-de-finalidad/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0020-gestion-de-tipos-de-finalidad/index.md").
* Entidad gestora. Será la entidad u organismo que actuará como gestor de la convocatoria. Solo se permitirá indicar una única entidad gestora para la convocatoria. El listado de entidades disponible procederá de la integración del SGI con el sistema corporativo universitario que centralice la información de empresas/organismos. No se realizará ninguna comprobación para validar que la entidad gestora se encuentre entre el listado de las entidades convocantes y/o financiadoras incluidas. Si en el momento de creación de la convocatoria la entidad gestora no estuviese registrada en el sistema universitario correspondiente, el SGI facilitará un formulario para la introducción de los datos mínimos obligatorios que serán remitidos al sistema correspondiente. Será la integración con este sistema la que determine cuándo estará disponible la nueva entidad para poder vincularla a la convocatoria, así como quien determine los campos obligatorios a cumplimentar para poder registrar la entidad.
* Fecha de publicación: Será la fecha en la que se publica la convocatoria.
* Fecha provisional. Fecha de resolución provisional de las solicitudes de la convocatoria.
* Fecha de concesión. Fecha de concesión de las actividades (proyectos) asociadas a la convocatoria.
* Excelencia. Permitirá indicar si se trata de una convocatoria de excelencia.
* Duración: Duración, expresada en meses, que tendrá la actividad de investigación (proyecto, contrato de rrrhh, etc.) derivada de la convocatoria. Este campo será heredado por todos los proyectos resultantes de la convocatoria, si bien podrá ser modificado individualmente en cada proyecto.
* Ámbito geográfico: Clasificación de la convocatoria de acuerdo a su ámbito geográfico. Será un valor que deberá estar disponible en el listado global correspondiente del SGI. Ver [CSP \- Configuración](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=CSP+-+Configuraci%C3%B3n&linkCreation=true&fromPageId=597853534 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=CSP+-+Configuraci%C3%B3n&linkCreation=true&fromPageId=597853534").
* Apartado CVN. Será un listado con los valores: "ayudas y becas", "proyectos competitivos", "contratos, convenios y proyectos no competitivos". La finalidad de este campo es seleccionar el apartado del CVN (y producción científica) con el que se corresponderá la actividad de investigación derivada de la convocatoria. El listado también admitirá el valor vacío, por lo  que en este caso, la actividad no alimentará ni la producción científica ni el CVN. Este listado no será configurable, será un listado inherente al SGI. Ver [CSP \- Configuración](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=CSP+-+Configuraci%C3%B3n&linkCreation=true&fromPageId=597853534 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=CSP+-+Configuraci%C3%B3n&linkCreation=true&fromPageId=597853534").
* Régimen de concurrencia. Será un listado con los valores: concurrencia competitiva, concesión directa. A pesar de tomar los valores de un listado, el campo podrá dejarse vacío. Tomará los datos de una tabla interna del sistema que solo será configurable por ACT\-008\-Sysadm (equipo técnico). Ver [CSP \- Configuración](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=CSP+-+Configuraci%C3%B3n&linkCreation=true&fromPageId=597853534 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=CSP+-+Configuraci%C3%B3n&linkCreation=true&fromPageId=597853534").
* Objeto o descripción de la convocatoria. Campo alfanumérico de mayor extensión que el título, que permitirá describir cuales son los objetivos de la convocatoria.
* Observaciones internas. Campo alfanumérico para recoger observaciones de carácter interno.
* Áreas temáticas. Las áreas temáticas se organizarán por listados independientes entre sí e independientes al plan/programa y a las entidades convocantes. El listado de áreas temáticas será una estructura en forma de árbol (área, subáreas), dando así cabida a la clasificación estándar del Ministerio (por ejemplo). Ver [CSP \- Configuración](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=CSP+-+Configuraci%C3%B3n&linkCreation=true&fromPageId=597853534 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=CSP+-+Configuraci%C3%B3n&linkCreation=true&fromPageId=597853534"). Una convocatoria podrá estar asociada a un listado de áreas, sin que sea obligatorio especificar ninguno (en este caso no se restringirían las solicitudes por área). Si sobre la convocatoria se especifica un listado de áreas temáticas, podrá, además,  restringirse el subconjunto de áreas admitidas, de forma que este subconjunto sea una rama concreta del árbol de áreas temáticas o incluso podrá restringirse a un área temática exclusiva. Aunque se especifique un listado de áreas temáticas para la convocatoria, no será obligatorio que se restrinjan las áreas temáticas que admite la convocatoria, es decir, una convocatoria podrá cubrir un listado completo de áreas temáticas.
* Palabras clave. Se podrán añadir palabras clave a la convocatoria. Las palabras clave formará parte del tesauro global del SGI, al que también irá ligado CVN.
* Estado: Contará con dos posibles valores representativos del estado del registro de la convocatoria:
	+ Borrador
	+ Registrada

Una convocatoria se podrá guardar en estado "Borrador" sin completar todos sus campos obligatorios, aunque sí respetando sus restricciones de tipo y longitud (cuando apliquen). Cambiar el estado de una convocatoria a "Registrada" implicará la validación de la existencia de todos los campos obligatorios.

  


Los únicos campos obligatorios para crear una convocatoria en el SGI serán:

* Título
* Unidad de gestión
* Tipo de formulario para la solicitud
* Estado (por defecto todas las convocatorias se crearán en estado "borrador").

No será obligatorio vincular la convocatoria a ninguna entidad (gestora, convocante o financiadora). 

  


Para pasar una convocatoria a estado "registrada" será  obligatorio la cumplimentación de los siguientes campos:

* Título
* Unidad de gestión
* Modelo de ejecución
* Finalidad
* Ámbito geográfico
* Tipo de formulario para la solicitud
* Configuración de la tramitación de solicitudes. Ver apartado [Configuración de solicitudes](#CSPConvocatorias-configuracion_solicitudes "#CSPConvocatorias-configuracion_solicitudes").

Cuando la convocatoria figura en estado "registrada" aplicará la visibilidad de las misma por parte de los ACT\-CSP\-001\-Investigador de acuerdo a lo indicado en el apartado "Configuración Solicitudes".

Ver prototipo de pantalla en [IU\-CSP\-0201\-001 \- Crear convocatoria \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-001-crear-convocatoria-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-001-crear-convocatoria-datos-generales.md")

#### Entidades convocantes

Se permitirá la inclusión de una o varias Entidades convocantes. No se realizará ninguna comprobación para asegurar que la Entidad gestora figure entre las entidades convocantes, ni tampoco que las Entidades convocantes figuren entre las Entidades financiadoras.  Tampoco será obligatorio vincular la convocatoria a ninguna entidad (gestora, convocante o financiadora). 

Las entidades convocantes se deberán seleccionar del buscador de empresas común a todo el SGI. Este buscador tendrá establecidos los mecanismos de integración correspondientes con el sistema corporativo universitario que centralice la información de empresas/organismos. Si en el momento de creación de la convocatoria la entidad convocante no estuviese registrada en el sistema universitario correspondiente, el SGI facilitará un formulario para la introducción de los datos mínimos obligatorios que serán remitidos al sistema correspondiente. Será la integración con este sistema la que determine cuándo estará disponible la nueva entidad para poder vincularla a la convocatoria, así como quien determine los campos obligatorios a cumplimentar para poder registrar la entidad.

Es común que las entidades, sobre todo las que representan a organismos públicos, dispongan de una agrupación de subentidades. Las convocatorias/proyectos deben quedar referenciados a la subentidad (Ejemplo: Entidad: Ministerio de Ciencia e Innovación, Subentidad: Agencia estatal de investigación). El SGI tendrá la capacidad de recoger la información a nivel de subentidad, pero el sistema origen que marcará la disponibilidad de esta información será el sistema corporativo universitario que centralice la información de las Empresas. 

De todos los campos que pudieran tener las entidades o empresas en el sistema corporativo correspondiente, en el listado de las entidades convocantes se mostrarán:

* Nombre de la entidad
* CIF de la entidad

Toda entidad convocante que se vincule a la convocatoria debe asociarse a un plan/programa de investigación. Los planes y programas  deberán haber sido registrados en el sistema  por los ACT\-CSP\-004\-Administrador con carácter previo. Ver [CSP \- Configuración](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=CSP+-+Configuraci%C3%B3n&linkCreation=true&fromPageId=597853534 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=CSP+-+Configuraci%C3%B3n&linkCreation=true&fromPageId=597853534"). No existirá ningún tipo de restricción para vincular cualquier entidad convocante a cualquier plan.

Para crear una convocatoria no será obligatorio que se indique ninguna entidad convocante. Si bien esto implicará que no se pueda clasificar la convocatoria bajo ningún plan/programa, con la siguiente pérdida de capacidad de explotación y agrupación de la información. En líneas generales, no será obligatorio vincular la convocatoria a ninguna entidad (gestora, convocante o financiadora) . 

Una vez añadida una o varias entidades convocantes a la convocatorias, éstas se podrán eliminar (se eliminará la vinculación de la convocatoria a la entidad convocante, pero la Entidad seguirá existiendo en el sistema de gestión corporativo correspondiente).

Ver prototipo de pantalla en [IU\-CSP\-0201\-002 \- Crear convocatoria \- Entidades convocantes](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-002-crear-convocatoria-entidades-convocantes.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-002-crear-convocatoria-entidades-convocantes.md").

#### Entidades financiadoras

Se permitirá la inclusión de una o varias entidades financiadoras. No se realizará ninguna comprobación para asegurar que la entidad gestora figure entre las entidades financiadoras, al igual que tampoco se realizará ninguna comprobación para validar que las entidades financiadoras se correspondan con las entidades convocantes. Tampoco será obligatorio vincular la convocatoria a ninguna entidad (gestora, convocante o financiadora). 

Las entidades financiadoras se deberán seleccionar del buscador de empresas común a todo el SGI. Este  buscador tendrá establecidos los mecanismos de integración correspondientes con el sistema corporativo universitario que centralice la información de empresas/organismos. Si en el momento de creación de la convocatoria la entidad financiadora no estuviese registrada en el sistema universitario correspondiente, el SGI facilitará un formulario para la introducción de los datos mínimos obligatorios que serán remitidos al sistema correspondiente. Será la integración con este sistema la que determine cuándo estará disponible la nueva entidad para poder vincularla a la convocatoria, así como quien determine los campos obligatorios a cumplimentar para poder registrar la entidad.

Es común que las entidades, sobre todo las que representan a organismos públicos, dispongan de una agrupación de subentidades. Las convocatorias/proyectos deben quedar referenciados a la subentidad (Ejemplo: entidad: Ministerio de Ciencia e Innovación, subentidad: Agencia estatal de investigación). El SGI tendrá la capacidad de recoger la información a nivel de subentidad, pero el sistema origen que marcará la disponibilidad de esta información será el sistema corporativo que centralice la información de las Empresas. 

De todos los campos que pudiera tener registrados la entidad/empresa en el sistema corporativo correspondiente, en el listado de las entidades financiadoras se mostrarán:

* Nombre de la entidad
* CIF de la entidad

  


Sobre cada una de las entidades financiadoras asociadas a la convocatoria, se podrá especificar:

* Fuente de financiación. Ver [CSP \- Configuración](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=CSP+-+Configuraci%C3%B3n&linkCreation=true&fromPageId=597853534 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=CSP+-+Configuraci%C3%B3n&linkCreation=true&fromPageId=597853534").
* Tipo de financiación. Ver  [CSP \- Configuración](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=CSP+-+Configuraci%C3%B3n&linkCreation=true&fromPageId=597853534 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=CSP+-+Configuraci%C3%B3n&linkCreation=true&fromPageId=597853534").
* Porcentaje o importe de financiación.

De forma que la relación establecida identificará que una entidad financiará una convocatoria a través de una fuente de financiación, haciendo uso de un mecanismo de financiación y participando sobre el total de la convocatoria con un porcentaje o importe de financiación determinados. Se podrá añadir a una convocatoria una misma entidad financiadora varias veces, cada una de ellas con una fuente de financiación diferente. No existirá limitación ni en el número total de entidades financiadoras, ni en en el número de veces que se incluya una misma entidad financiadora.

Al asociar una entidad financiadora, no será obligatorio:

* Indicar la fuente de financiación
* Indicar el tipo de tipo de financiación
* Indicar el porcentaje de financiación

Deberá tenerse en cuenta que el no introducir cualquiera de los datos anteriores restará capacidad de clasificación y consulta posterior de la información de las convocatorias.

Para crear una convocatoria no será obligatorio que se indique ninguna entidad financiadora. Si bien debe tenerse en cuenta que el hecho de no indicar ninguna entidad financiadora supondrá que no pueda introducirse el detalle de financiación de la convocatoria, y que determinada información económica derivada del proyecto resultante procedente del SGE quede inconexa a efectos de su posterior agrupación para posibles informes.  

Una vez añadida una o varias entidades financiadoras a la convocatoria, éstas se podrán eliminar (se eliminará la vinculación de la convocatoria a la entidad, pero la Entidad seguirá existiendo en el sistema de gestión corporativo correspondiente). Del mismo modo, se podrán modificar los datos asociados (fuente de financiación, tipo de financiación y/o porcentaje de financiación).

  


Ver prototipo de pantalla  [IU\-CSP\-0201\-003 \- Crear convocatoria \- Entidades financiadoras](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-003-crear-convocatoria-entidades-financiadoras.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-003-crear-convocatoria-entidades-financiadoras.md")

#### Enlaces

En este apartado se incluirán todos los enlaces (en formato URL) que se considere útil y/o necesario recoger en los datos de la convocatoria. Este es un apartado meramente informativo. Para cada enlace incluido a la convocatoria se indicará:

* URL
* Descripción
* Tipo de enlace

Los tipos de enlace disponibles serán los que  están asociados al modelo de ejecución que se haya indicado en los Datos generales de la convocatoria. Puede verse el detalle de definición de los modelos de ejecución en [CSP \- Modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-modelo-de-ejecucion.md").

No será obligatorio incluir ningún enlace en la convocatoria, así como tampoco será necesario vincularlos a un tipo si no se desea. La indicación del tipo de enlace permite presentar la información a los ACT\- CSP\-001\-Investigador de una forma más clara y concisa. Se podrán añadir tantos enlaces a la convocatoria como se considere necesario.

Una vez añadido un enlace a la convocatoria, éste podrá eliminarse y/o modificarse.

  


Ver prototipo de pantalla [IU\-CSP\-0201\-004 \- Crear convocatoria \- Enlaces](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-004-crear-convocatoria-enlaces.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-004-crear-convocatoria-enlaces.md")

#### Fases

En este apartado se incluirán los plazos o fases generales de la convocatoria (teniendo en cuenta que los periodos de justificación y de seguimiento científico tendrán sus propios apartados). Los plazos de una convocatoria quedan definidos por:

* Fecha de inicio
* Fecha de fin
* Tipo de fase. Los tipos de fase disponibles serán los configurados sobre el modelo de ejecución al que se haya asociado la convocatoria.
* Observaciones.

Los tipos de fase disponibles serán los que están asociados al modelo de ejecución que se haya indicado en los Datos generales de la convocatoria. Puede verse el detalle de definición de los modelos de ejecución en [CSP \- Modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-modelo-de-ejecucion.md"). La configuración de las fases podrá ser tan amplia como las unidades consideren, de acuerdo a sus procesos internos y/o la cantidad de información que se desee dejar recogida en el SGI.

Los datos obligatorios para añadir un plazo o fase a una convocatoria serán:

* Fecha de inicio
* Fecha de fin
* Tipo de fase

Podrá darse el caso que una fase pueda recogerse en una sola fecha, en este caso se indicaría el mismo valor tanto en fecha de inicio como en fecha de fin. Se comprobará que las fecha de fin sea siempre mayor o igual que la fecha de inicio. Las convocatorias también contarán con la posibilidad de registrar [Hitos](#CSPConvocatorias-hitos_convocatoria "#CSPConvocatorias-hitos_convocatoria"). Los hitos darán la posibilidad de registrar acontecimientos puntuales, asociados exclusivamente a una fecha concreta. 

Una vez asociado un periodo o plazo para una fase, sus datos podrán ser modificados y/o podrá eliminarse.

Las fase que se añadan a las convocatorias o proyectos podrán ser a pasado o futuro, a decisión de ACT\-CSP\-003\-Gestor. En caso que sean a futuro, ACT\-CSP\-003\-Gestor podrá decidir si generarán o no un aviso, a través del módulo de Comunicados global al SGI ([CSP \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/index.md")).

Ver prototipo de pantalla [IU\-CSP\-0201\-005 \- Crear convocatoria \- Fases](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-005-crear-convocatoria-fases.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-005-crear-convocatoria-fases.md")

#### Periodos de justificación

Aunque los periodos de justificación económica pudieran quedar identificados en el apartado de Fases junto con una correcta configuración de los tipos de fases del Modelo de ejecución, la información de las convocatorias contarán con un apartado exclusivo para ellos. Un periodo de justificación económica queda definido por:

* Número de periodo
* Tipo de justificación
* Mes inicial (del periodo de ejecución a justificar)
* Mes final (del periodo de ejecución a justificar)
* Fecha de inicio de presentación de la justificación económica
* Fecha de fin de presentación de la justificación económica
* Observaciones

Siendo obligatorios:

* Número de periodo
* Tipo de justificación
* Mes inicial
* Mes final

El número de periodo será un secuencial dentro de la convocatoria que asignará directamente el sistema en función de la ordenación de los meses de los periodos. No existirán dos periodos con el mismo número.

El tipo de justificación responde a la clasificación en base a la periodicidad del mismo, podrá tomar un valor entre:

* Periódico
* Intermedio
* Final

El mes inicial y el mes final delimitarán el número de meses que comprende el periodo de ejecución que se justificará. Estos meses serán relativos a la duración e inicio que finalmente tendrá cada uno de los proyectos resultantes de la convocatoria. No se permitirá que un mismo mes quede solapado en diferentes periodos de justificación.

Fecha de inicio y fecha de fin, que podrán dejarse sin cumplimentar en la fase de convocatoria, serán las fechas que acoten el plazo de presentación de toda la documentación asociada al periodo de justificación. Aunque podrán indicarse en la convocatoria, será  una información  que también estará presente en los proyectos, siendo en esta entidad donde ya deban tomar los valores definitivos.

No se limitará  el número de periodos de justificación que puedan ser añadidos a una convocatoria. Una vez asociado un periodo de justificación a una convocatoria, sus datos podrán ser modificados y/o podrá eliminarse.

  


Ver prototipo de pantalla [IU\-CSP\-0201\-006 \- Crear convocatoria \- Periodos justificación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-006-crear-convocatoria-periodos-justificacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-006-crear-convocatoria-periodos-justificacion.md")

#### Periodos de seguimiento científico

Seguirán la misma estructura que los periodos de justificación y, aunque pudieran quedar identificados en el apartado de Fases junto con una correcta configuración de los tipos de fases del Modelo de ejecución, la información de las convocatorias contará con un apartado exclusivo para los periodos de seguimiento científico. Un periodo de seguimiento científico queda definido por:

* Número de periodo
* Tipo de seguimiento
* Mes inicial (del periodo de ejecución a justificar)
* Mes final (del periodo de ejecución a justificar)
* Fecha inicio de presentación del justificación científica
* Fecha fin de presentación de la justificación científica
* Observaciones
* Indicador de generación de aviso. Solo tendrá validez si la fase se registra con una fecha futura. El aviso será gestionado por el módulo de Comunicados, común al SGI ([COM \- Módulo de Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md")).

Siendo obligatorios:

* Número de periodo
* Tipo de seguimiento
* Mes inicial
* Mes final

El número de periodo será un secuencial dentro de la convocatoria que asignará directamente el sistema en función de la ordenación del mes inicial. No existirán dos periodos con el mismo número.

El tipo de seguimiento responde a la clasificación en base a la periodicidad del mismo, podrá tomar un valor entre:

* Periódico
* Intermedio
* Final

El mes inicial y el mes final delimitarán el número de meses que comprende el  periodo de seguimiento científico, definiendo así el rango del mismo. Serán relativos a la duración e inicio que finalmente tendrá cada uno de los proyectos resultantes de la convocatoria. Los periodos deberán ser consecutivos, de forma que un mes esté incluido en un único periodo.

Fecha de inicio y fecha de fin, que podrán dejarse sin cumplimentar en la fase de convocatoria, serán las fechas que acoten el plazo de presentación de toda la documentación asociada al periodo de seguimiento. Aunque podrán indicarse en la convocatoria, será  una información  que también estará presente en los proyectos, siendo en esta entidad donde ya deban tomar los valores definitivos.

No se limitará  el número de periodos de seguimiento científico que puedan ser añadidos a una convocatoria. Una vez asociado un periodo de seguimiento a una convocatoria, sus datos podrán ser modificados y/o podrá eliminarse.

  


Ver prototipo de pantalla [IU\-CSP\-0201\-007 \- Crear convocatoria \- Seguimiento científico](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-007-crear-convocatoria-seguimiento-cientifico.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-007-crear-convocatoria-seguimiento-cientifico.md")

#### Hitos

En este apartado se registrará cualquier acontecimiento que resulte de interés mantener identificado en el historial de la convocatoria. Un hito de una convocatoria quedará definido por:

* Tipo de hito. El tipo de hito deberá estar incluido en el listado de tipos de hitos de convocatoria asociados al modelo de ejecución al que se haya vinculado la convocatoria.
* Fecha. Es la fecha a la que se vincula el hito, la fecha en la que ha ocurrido u ocurrirá.
* Comentario. Campo libre para registrar cualquier comentario de interés relacionado con el hito y convocatoria concretos.
* Indicador de generación de aviso. Solo tendrá validez si el hito se registra con una fecha futura. El aviso será gestionado por el módulo de Comunicados, común al SGI ([COM \- Módulo de Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md")).

Los hitos que se añadan a las convocatorias podrá ser a pasado o a futuro, a decisión de ACT\-CSP\-003\-Gestor. En caso que el hito se recoja a futuro, ACT\-CSP\-003\-Gestor podrá decidir si se desea que se genere o no un aviso. Ver [CSP \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/index.md").

#### Documentos

En este apartado se detallarán todos los documentos que sea de interés registrar en la convocatoria. No existirá limitación en el número de documentos. Los documentos quedarán registrados en el repositorio de documentos global del SGI. La información asociada a los documentos de una convocatoria será:

* El propio fichero
* Tipo de fase
* Tipo de documento
* Observaciones
* Público

  


Tipo de fase y tipo de documento, se indicarán a través de sendos listados. Los tipos disponibles serán los configurados en el modelo de ejecución (puede verse el detalle de definición de los modelos de ejecución en [CSP \- Modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-modelo-de-ejecucion.md")) al que se haya asociado la convocatoria en el apartado de Datos generales. Ambos listados serán dependientes de acuerdo a la definición del modelo de ejecución, es decir, de acuerdo al tipo de fase al que se indique que pertenece el documento estarán disponibles unos tipos de documentos. No se limitará el número de documentos de cada tipo de fase\-tipo de documento que se puedan incluir en la convocatoria. Ambos tipos, fase y tipo de documento, se utilizarán para clasificar los documentos dentro de la convocatoria, facilitando así la organización de la información tanto al personal de gestión como al personal de investigación. Sin embargo, no será obligatorio especificar la fase y/o el tipo de documento, pudiendo asociarse a la convocatoria ficheros sin clasificación.

Se podrán añadir observaciones al documento e indicar, a través del campo "público" si el documento va ser visible para los ACT\- CSP\-001\-Investigador.

Una vez añadido un documento, como parte de la funcionalidad general del SGI, se podrá:

* Descargar el fichero asociado.
* Adjuntar de nuevo el fichero (de forma que se sobre\-escribirá el fichero previo).

  


Los documentos añadidos a una convocatoria se podrán eliminar y/o modificar.  A excepción de la limitación impuesta por el campo "Público" que afecta únicamente a la visibilidad por parte del documento por parte de los ACT\- CSP\-001\-Investigador, no existirá vinculaciones de "propiedad" del fichero al usuario concreto que lo hubiera adjuntado. Es decir, los ficheros serán una información más de la convocatoria que contarán con las restricciones por el rol y unidad de gestión al igual que el resto de campos.

Ver prototipo de pantalla [IU\-CSP\-0201\-009 \- Crear convocatoria \- Documentos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-009-crear-convocatoria-documentos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-009-crear-convocatoria-documentos.md").

#### Requisitos a cumplir por IP

En este apartado ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor tipificarán los requisitos que deba de cumplir el destinatario principal, es decir, quien ejerza como solicitante de la convocatoria, de acuerdo a los requisitos marcados por la misma. En el caso de convocatorias que supongan la participación de un equipo de proyecto o grupo de investigación, se acompañará del apartado Requisitos del equipo.

Los campos de esta apartado:

* Número máximo de IPs. El valor introducido como límite se contrastará posteriormente con los datos de la solicitud (Equipo de proyecto).
* Edad máxima. Edad máxima que pudiera requerir la convocatoria. Se contrastará con la fecha de nacimiento de la persona solicitante que deberá ser recuperada a través de integración con el sistema de gestión de personas corporativo.
* Sexo. Sexo que pudiera requerir la convocatoria. Se contrastará con el sexo de la persona solicitante que deberá ser recuperado a través de integración con el sistema de gestión de personas corporativo.
* Nivel académico. Listado de valores con los niveles académicos permitidos por la convocatoria. Los niveles académicos permitidos se introducirán a partir del listado recuperado a través de la integración con el sistema de gestión de RRHH. En caso de que se precise que este listado esté alineado con CVN (norma FECYT) podría hacerse corresponder  con el listado marcado por FECYT para el campo 020\.010\.010\.010: Titulación universitaria del apartado Datos de la titulación universitaria y formación del CVN, que se implementa con el listado de FECYT ("CVN\_TITLE\_A"). El valor introducido en este campo se comparará con el valor del Nivel académico que se recupere para la persona indicada como IP en la Solicitud (este valor dato deberá ser recuperado del sistema de gestión de personas correspondiente).
* Restricciones sobre la fecha de obtención del nivel académico. Se permitirá expresar la restricción en base a dos fechas (fecha mínima y fecha máxima) de forma que se pueda indicar la fecha tope en la que ha podido ser obtenido el nivel académico y/o la fecha mínima. La comparación de este valor se realizará sobre el campo fecha o antigüedad que se recupere del sistema de gestión de personas para la persona indicada como IP en la solicitud.
* Vinculación con universidad. Permitirá indicar si se exige que la persona solicitante (IP) deba tener o no una vinculación (contrato profesional) con la Universidad para poder optar a la convocatoria. Si se exige una vinculación, se podrá especificar la/s categoría/s permitidas.
* Categoría profesional. Listado con las categorías exigidas por la convocatoria. Las categorías permitidas se introducirán a partir del listado recuperado través de la integración con el sistema de gestión de RRHH. En caso que se precise que este listado esté alineado con el listado marcado por FECYT para la norma CVN, debería hacerse corresponder con  el campo 010\.010\.000\.190 \- Modalidad de contrato, del apartado "Situación profesional actual", que se implementa con el listado responda a su tabla de tipos "CVN\_SITUATION\_A". El valor introducido en este campo se comparará con el valor de la categoría profesional que se recupere para la persona indicada como IP en la Solicitud (este valor dato deberá ser recuperado del sistema de gestión de personas correspondiente).
* Restricciones sobre la fecha de obtención de la categoría profesional. Se permitirá expresar la restricción en base a dos fechas (fecha mínima y fecha máxima) de forma que se pueda indicar la fecha tope en la que ha podido ser obtenida la categoría profesional y/o la fecha mínima. La comparación de este valor se realizará sobre el campo fecha o antigüedad de la Categoría para la persona solicitante. Esta información deberá ser obtenida a través del sistema de gestión de personas.
* Número mínimo de proyectos competitivos exigidos por la convocatoria. La información para valorar la cobertura de este requisito se obtendrá de los proyectos registrados en el SGI marcados con la clasificación CVN "proyectos competitivos". Se comprobará que la persona solicitante haya participado como IP en un número mínimo determinado de proyectos competitivos.
* Número mínimo de proyectos no competitivos exigidos por la convocatoria. La información para valorar la cobertura de este requisito se obtendrá de los proyectos registrados en el SGI marcados con la clasificación CVN "contratos, convenios y proyectos no competitivos".  Se comprobará que la persona solicitante haya participado como IP en un número mínimo determinado de proyectos no competitivos.
* Número máximo de proyectos competitivos en curso. Número de proyectos competitivos en los que la persona solicitante puede estar participando en el momento de realizar la solicitud. La información para valorar la cobertura de este requisito se obtendrá de los proyectos registrados en el del SGI (marcados con la clasificación CVN "proyectos competitivos"). Se comprobará que la persona solicitante esté participado como IP.
* Número máximo de proyectos no competitivos en curso. Número de proyectos no competitivos en los que la persona solicitante puede estar participando en el momento de realizar la solicitud. La información para valorar la cobertura de este requisito se obtendrá de los proyectos registrados en el del SGI (marcados con la clasificación CVN "contratos, convenios y proyectos no competitivos"). Se comprobará que la persona solicitante esté participado como IP.
* Observaciones: campo de descripción abierta para que ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor recojan de manera global todos los requisitos que marca la convocatoria (en cuanto a experiencia y participación). Será un campo informativo sobre el que no se podrán aplicar filtros (al ser un campo descripción).

  


Ninguno de estos campos será obligatorio. A partir de estas restricciones se podrá decidir registrar o no una solicitud sobre la convocatoria, sin que, en ningún caso, se restrinja de manera directa la posibilidad de que se registre la solicitud a pesar de que la persona solicitante no cumpla con todos los requisitos. En el momento de registrar la solicitud sin cubrir alguno de los requisitos el sistema mostrará un mensaje de aviso. Del mismo modo, cuando ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor revisen la información de la solicitud el sistema mostrará el  mensaje de advertencia correspondiente sobre el cumplimiento de los requisitos.

  


Ver prototipo de pantalla [IU\-CSP\-0201\-010 \- Crear convocatoria \- Requisitos IP](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-010-crear-convocatoria-requisitos-ip.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-010-crear-convocatoria-requisitos-ip.md").

  


#### Requisitos a cumplir por el equipo de investigación

En este apartado ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor tipificarán los requisitos que deba de cumplir el equipo propuesto en la solicitud. Como en el caso de requisitos IP algunos campos harán referencia a datos que deberán ser obtenidos a través del sistema de gestión de personas corporativo.

Los siguientes requisitos se valorarán de forma individual para cada uno de los miembros del equipo propuesto:

* Edad máxima. Edad máxima que pudiera requerir la convocatoria para los miembros del equipo de proyecto. La restricción aplica por igual a todos los miembros del equipo propuesto en la solicitud (a excepción del rol IP que se verá afectado por los requisitos marcados en el apartado "Requisitos IP"). Se contrastará con la fecha de nacimiento de cada uno de las personas recogidas en el equipo de proyecto de la solicitud. Este dato deberá ser proporcionado desde el sistema de gestión de personas por medio de la integración correspondiente.
* Nivel académico. Listado de valores con los niveles académicos permitidos por la convocatoria. El requisito se especifica de manera común para todos los miembros del equipo propuesto en la solicitud (a excepción del rol IP que se verá afectado por los requisitos marcados en el apartado "Requisitos IP"). Los niveles académicos permitidos se introducirán a partir del listado recuperado a través de la integración con el sistema de gestión de RRHH. En caso de que se precise que este listado esté alineado con CVN (norma FECYT) podría hacerse corresponder  con el listado marcado por FECYT para el campo 020\.010\.010\.010: Titulación universitaria del apartado Datos de la titulación universitaria y formación del CVN, que se implementa con el listado de FECYT ("CVN\_TITLE\_A"). El valor introducido en este campo se comparará con el valor del Nivel académico que se recupere para cada persona indicada en el equipo de la solicitud (este valor dato deberá ser recuperado del sistema de gestión de personas correspondiente).
* Restricciones sobre la fecha de obtención del nivel académico. Se permitirá expresar la restricción en base a dos fechas (fecha mínima y fecha máxima) de forma que se pueda indicar la fecha tope en la que ha podido ser obtenido el nivel académico y/o la fecha mínima. La restricción aplica por igual a todos los miembros del equipo propuesto en la solicitud (a excepción del rol IP que se verá afectado por los requisitos marcados en el apartado "Requisitos IP"). La comparación de este valor se realizará sobre el campo fecha o antigüedad que se recupere del sistema de gestión de personas para cada una de las personas del equipo de proyecto indicado en la solicitud.
* Vinculación con universidad. Permitirá indicar si se exige que los miembros del equipo deban tener o no una vinculación (contrato profesional) con la Universidad para poder optar a la convocatoria. Si se exige una vinculación, se podrá especificar la/s categoría/s permitidas.
* Categoría profesional. Listado con las categorías exigidas por la convocatoria. Las categorías permitidas se introducirán a partir del listado recuperado través de la integración con el sistema de gestión de RRHH. En caso que se precise que este listado esté alineado con el listado marcado por FECYT para la norma CVN, debería hacerse corresponder con  el campo 010\.010\.000\.190 \- Modalidad de contrato, del apartado "Situación profesional actual", que se implementa con el listado responda a su tabla de tipos "CVN\_SITUATION\_A". El valor introducido en este campo se comparará con el valor de la categoría profesional que se recupere para cada persona indicada como miembro del equipo en la Solicitud (este valor dato deberá ser recuperado del sistema de gestión de personas correspondiente).
* Restricciones sobre la fecha de posesión de la categoría profesional.  Se permitirá expresar la restricción en base a dos fechas (fecha mínima y fecha máxima) de forma que se pueda indicar la fecha tope en la que ha podido ser obtenida la categoría profesional y/o la fecha mínima. La comparación de este valor se realizará sobre el campo fecha o antigüedad de la Categoría para cada una de las personas indicadas como miembro del equipo en la solicitud. Este dato personal deberá ser proporcionado por el sistema de gestión de personas corporativo.

Los siguientes campos se valorarán en el cómputo total de todos los miembros del equipo/grupo propuesto

* Sexo y ratio mínimo exigido. Permitirá delimitar la proporción en la composición del equipo, especificado en base al sexo indicado. Se contrastará con el sexo de cada uno de los miembros del equipo, que deberá ser proporcionado por el sistema de gestión de personas.
* Número mínimo de proyectos competitivos exigidos por la convocatoria. La información para valorar la cobertura de este requisito se obtendrá de los proyectos registrados en el SGI marcados con la clasificación CVN "proyectos competitivos". Se realizará la comprobación considerando  la suma de todos los proyectos competitivos en los que hayan participado todos los miembros del equipo propuesto (a excepción de la persona indicada como IP) debiendo tratarse siempre de proyectos diferentes.
* Número mínimo de proyectos no competitivos exigidos por la convocatoria. La información para valorar la cobertura de este requisito se obtendrá de los proyectos registrados en el SGI marcados con la clasificación CVN "contratos, convenios y proyectos no competitivos". Se realizará la comprobación considerando  la suma de todos los proyectos no competitivos en los que hayan participado todos los miembros del equipo propuesto (a excepción de la persona indicada como IP) debiendo tratarse siempre de proyectos diferentes.
* Número máximo de proyectos competitivos en curso. Número de proyectos competitivos diferentes en los que pueden participar simultáneamente, en el momento de tramitar la solicitud, los miembros del equipo (suma total de los proyectos actuales de todos los miembros del equipo). La información para valorar la cobertura de este requisito se obtendrá de los proyectos registrados en el del SGI marcados con la clasificación CVN "proyectos competitivos".
* Número máximo de proyectos no competitivos en curso. Número de proyectos no competitivos diferentes en los que pueden participar simultáneamente, en el momento de tramitar la solicitud, los miembros del equipo (suma total de los proyectos de todos los miembros del equipo). La información para valorar la cobertura de este requisito se obtendrá de los proyectos registrados en el del SGI marcados con la clasificación CVN "contratos, convenios y proyectos no competitivos".

  


Ver prototipo de pantalla [IU\-CSP\-0201\-011 \- Crear convocatoria \- Requisitos Equipo](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-011-crear-convocatoria-requisitos-equipo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-011-crear-convocatoria-requisitos-equipo.md").

#### Elegibilidad

En este apartado se configurarán los conceptos de gasto de la convocatoria especificando:

* Conceptos de gasto elegibles o permitidos.
* Conceptos de gasto no permitidos.

No será obligatorio indicar la elegibilidad, pudiendo crearse una convocatoria sin ninguna definición en el apartado de elegibilidad.

El listado de conceptos de gasto disponible para indicar las dos configuraciones anteriores parte de los gastos que hubieran sido configurados de manera general en el SGI por los ACT\-CSP\-004\-Administrador. Ver [CSP \- Configuración](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=CSP+-+Configuraci%C3%B3n&linkCreation=true&fromPageId=597853534 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=CSP+-+Configuraci%C3%B3n&linkCreation=true&fromPageId=597853534"). 

##### Conceptos de gasto permitidos

A una convocatoria se le podrán asociar tantos conceptos de gasto como sea necesario. Quedarán definidos a través de los siguientes campos:

* Concepto de gasto
* Importe máximo
* Mes inicial
* Mes final
* Observaciones
* Listado de códigos económicos del SGE vinculados al concepto de gasto

Este listado de conceptos de gasto elegibles o permitidos se vinculará a las convocatorias  y proyectos (apartado elegibilidad) pero  por sí solos no podrán hacer referencia a ningún dato económico de manera directa. Para ello es necesario definir la correspondencia con los códigos económicos correspondiente del SGE, para, junto con otros datos del proyecto, poder establecer la integración con el SGE, recopilando de este sistema todo el detalle económico de cada proyecto asociado a la convocatoria.

El importe máximo será un dato opcional y permitirá recoger si la convocatoria marca un tope sobre el concepto de gasto.

A través de los campos "mes inicial" y "me final" se recogerá el rango de meses, relativo a la duración de cada uno de los proyectos resultantes, en el que el gasto estará permitido. Estos campos serán los únicos que permitan modificar la elegibilidad de un gasto durante el transcurso de la duración de la actividad resultante de la convocatoria. No se contempla la existencia de fechas de vigencia o un indicador de activo que permitan configurar que durante el transcurso del proyecto resultante de la convocatoria un concepto de gasto pase de ser permitido a no permitido (a excepción del número de meses).

Con el campo observaciones se podrá recoger cualquier comentario que aplique de forma concreta al gasto dentro de la convocatoria.

En el listado de códigos económicos se establecerá la relación entre los conceptos de gasto de la convocatorias y los códigos económicos del SGE. Los códigos económicos del SGE deben de ser recuperados a través de integración con el SGE [REQ\-INT\-0010\-SGE\-0070 \- Listar códigos económicos de gastos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0070-listar-codigos-economicos-de-gastos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0070-listar-codigos-economicos-de-gastos.md").

La relación entre conceptos de gasto de investigación y códigos económicos se establecerá a nivel de convocatoria y/o proyecto, lo que posibilitará la adaptación en cada una de ellas. Podría haberse optado por hacer esta vinculación con carácter general en todo el SGI, pero esto implicaría que todos los proyectos/convocatorias tuvieran la misma relación concepto de gasto de investigación \- código económico del SGI, lo que sería poco realista. 

La relación entre el concepto de gasto de investigación y sus códigos económicos quedará establecida por los siguientes campos:

* Código económico del  SGE, con el que se asocia el concepto de gasto. Los códigos económicos del SGE deberán ser leídos a partir de la integración con este sistema.
* Fecha de inicio.
* Fecha de fin.

A través de las fechas de inicio y fin se establece la vigencia de la vinculación entre concepto de gasto y código económico. Se contemplan estas fechas para dar cabida a que la correspondencia pueda variar a lo largo de la duración de la convocatoria/proyecto, debido a que en el SGE se registren modificaciones sobre los códigos económicos. Se parte de la base de que el listado de códigos económicos debe de ser leído desde el SGE, y es este sistema el que debe informar de la vigencia de los códigos económicos, de forma que las fechas de vigencia serán las marcadas por la información recogida de los códigos económicos el SGE.  Estas fechas no serán obligatorias en el SGI, de forma que si fecha inicio y fecha fin no tienen ningún valor, indicará que la correspondencia está vigente durante toda la duración de la convocatoria. Sin embargo, se mantendrán como campos editables en el SGI para dar la posibilidad de cubrir alguna particularidad por la que estas fechas de correspondencia entre el concepto de gasto y el código económico puedan ser independientes de las fechas de vigencia del código económico en el SGE (debiendo ser introducidas en el SGI en cada convocatoria/proyecto por los ACT\-CSP\-003\-Gestor).

Un  mismo concepto de gasto de la convocatoria puede estar vinculado a más de un código del SGE, con esto se cubrirá el hecho de que el SGE definiera sus códigos contables en subconceptos. También puede darse la situación que un código económico del SGE pueda estar vinculado a varios conceptos de gasto de la convocatoria en un mismo rango de fechas. Cuando se den estas situaciones debería habilitarse el apartado de "validación de gastos" del SGI (Ver [CSP \- Ejecución económica](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-ejecucion-economica/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-ejecucion-economica/index.md")). Este apartado permite especificar el concepto de gasto del SGI con el que se corresponde un gasto del SGE para, de esta forma, poder obtener la clasificación de los gastos recuperados del SGE en base a los conceptos de gasto del SGI.

  


##### Conceptos de gasto no permitidos

Del mismo modo que los conceptos de gasto permitidos, el apartado Elegibilidad permite especificar los conceptos de gasto no permitidos, que quedarán definidos a través de los campos:

* Concepto de gasto.
* Mes inicial.
* Mes final.
* Observaciones.
* Listado de códigos económicos del SGE.

Los campos "mes inicial" y "me final" recogen el rango de meses relativo a la duración de cada uno de los proyectos resultantes en el que el gasto no estará permitido.

Con el campo observaciones se podrá recoger cualquier comentario que aplique de forma concreta al gasto dentro de la convocatoria.

Un mismo concepto de gasto podrá estar incluido en el listado de gastos permitidos y en el de no permitidos. En el campo observaciones se indicarán las especificaciones marcadas por la convocatoria dentro del concepto de gasto que delimitan la elegibilidad para el tipo concreto. Será la vinculación de los conceptos de gastos a los códigos económicos lo que ya determina qué subconceptos están o no permitidos, de acuerdo al desglose que cada SGE realice de los conceptos de gasto. El listado de conceptos de gasto es configurable por los ACT\-CSP\-004\-Administrador, a través de [CSP \- Configuración](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=CSP+-+Configuraci%C3%B3n&linkCreation=true&fromPageId=597853534 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=CSP+-+Configuraci%C3%B3n&linkCreation=true&fromPageId=597853534"), por lo que si en algún caso interesase que los conceptos de gasto fuesen de mayor granularidad, de forma que el mismo concepto ya discrimine la elegibilidad para evitar repetir el mismo concepto en los dos apartados (permitidos y no permitidos), también sería posible. No obstante debe tenerse en cuenta que el listado de conceptos de gasto de investigación es común a todo el SGI (y por tanto a todas las convocatorias).

La relación entre el concepto de gasto de investigación y sus códigos económicos quedará establecida por los siguientes campos:

* Código económico del  SGE, con el que se asocia el concepto de gasto. Los códigos económicos del SGE deberán ser leídos a partir de la integración con este sistema [REQ\-INT\-0010\-SGE\-0070 \- Listar códigos económicos de gastos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0070-listar-codigos-economicos-de-gastos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0070-listar-codigos-economicos-de-gastos.md").
* Fecha de inicio.
* Fecha de fin.

A través de las fechas de inicio y fin se establece la vigencia de la vinculación entre concepto de gasto y código económico. Se contemplan estas fechas para dar cabida a que la correspondencia pueda variar a lo largo de la duración de la convocatoria/proyecto, debido a que en el SGE se registren modificaciones sobre los códigos económicos. Se parte de la base de que el listado de códigos económicos debe de ser leído desde el SGE, y es este sistema el que debe informar de la vigencia de los códigos económicos, de forma que las fechas de vigencia serán las marcadas por la información recogida de los códigos económicos el SGE, a través de [REQ\-INT\-0010\-SGE\-0070 \- Listar códigos económicos de gastos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0070-listar-codigos-economicos-de-gastos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0070-listar-codigos-economicos-de-gastos.md").  Estas fechas no serán obligatorias en el SGI, de forma que si fecha inicio y fecha fin no tienen ningún valor, indicará que la correspondencia está vigente durante toda la duración de la convocatoria. Sin embargo, se mantendrán como campos editables en el SGI para dar la posibilidad de cubrir alguna particularidad por la que estas fechas de correspondencia entre el concepto de gasto y el código económico puedan ser independientes de las fechas de vigencia del código económico en el SGE (debiendo ser introducidas en el SGI en cada convocatoria/proyecto por los ACT\-CSP\-003\-Gestor).

  


Ver prototipo de pantalla [IU\-CSP\-0201\-012 \- Crear convocatoria \- Elegibilidad](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-012-crear-convocatoria-elegibilidad.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-012-crear-convocatoria-elegibilidad.md")

#### Partidas presupuestarias

En este apartado se permitirá introducir el listado de partidas o aplicaciones presupuestarias que van a ser utilizadas posteriormente en la gestión económica de los proyectos derivados de la convocatoria. No será obligatoria su cumplimentación pues podrían darse situaciones en las que esta información no pudiese aún ser identificada en la fase de convocatoria. El detalle asociado a una partida será:

* código
* descripción
* tipo de la partida (gastos/ingresos)

Las partidas o aplicaciones presupuestarias serán introducidas manualmente por las unidades de gestión, sin que exista ninguna validación de su existencia contra el Sistema de gestión económica correspondiente. Si se comete algún error en la introducción del código o bien éste no hubiese sido creado aún en el SGE no podrá ser identificado y comunicado a la unidad de gestión. El momento más temprano en el que se podría detectar estas situaciones será al notificar al SGE la necesidad de creación del proyecto económico. El SGI dispondrá de una variable de configuración que permitirá validar el formato en el que se introduce el código de la partida presupuestaria.

Ver prototipo de pantalla [IU\-CSP\-0201\-013 \- Crear convocatoria \- Partidas presupuestarias](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-013-crear-convocatoria-partidas-presupuestarias.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-013-crear-convocatoria-partidas-presupuestarias.md")

#### Configuración de solicitudes

En este apartado se recogerán todos los parámetros relativos a la configuración de las solicitudes. Esta información se aislará de los datos de la convocatoria para que las convocatorias puedan tener un tratamiento genérico. Los datos de configuración de la solicitud serán:

* Habilitación o no del registro de solicitudes a través del SGI. ACT\-CSP\-003\-Gestor, en el momento de crear la convocatoria, podrá decidir si el personal investigador, ACT\-CSP\-001\-Investigador, puede registrar la solicitud a través del SGI. En caso contrario el registro solamente podrá ser realizado por la unidad de gestión correspondiente, ACT\-CSP\-003\-Gestor/ACT\-CSP\-004\-Administrador. El hecho de registrar las solicitudes en el SGI será una decisión propia de cada unidad de gestión/Universidad. El registro y estados de la solicitud en el SGI será independiente del ciclo de la solicitud real en la plataforma o mecanismos facilitados por la entidad gestora/convocante. Será decisión de cada Universidad registrar todas las solicitudes o solo las concedidas y/o hacerlo con carácter previo o en paralelo al ciclo de registro propio de cada entidad gestora/convocante.
* Configuración del plazo de presentación de solicitudes.  Será obligatorio si se ha habilitado el registro de solicitudes para el personal investigador a través del SGI . El plazo de presentación hará referencia al intervalo de fechas durante el que el personal investigador puede registrar la solicitud en el SGI. Tendrá que hacer uso de uno de los plazos definidos en el apartado Fases de la convocatoria ([Ver Fases](#CSPConvocatorias-plazos_fases "#CSPConvocatorias-plazos_fases")). En este caso se seleccionará la fase definida y sus fechas de inicio y fin se tomarán como los límites para posibilitar la introducción de las solicitud en el SGI por parte del personal investigador.
* Listado de documentos requeridos. A través de este listado se permitirá indicar los documentos que deben ser adjuntados de manera obligatoria en la tramitación de la solicitud en el SGI. El listado de documentos disponibles serán los configurados sobre el modelo de ejecución al que se ha asociado la convocatoria. Para configurar el requerimiento de un documento se debe indicar
	+ Tipo de documento. Se mostrarán todos los tipos de documento asociados a la fase seleccionada en el campo "Configuración del plazo de presentación de solicitudes".
	+ Observaciones. Indicaciones u observaciones sobre el documento solicitado.
* Importe máximo a conceder en la solicitud. Si la convocatoria establece algún límite, se podrá recoger en este campo.

  


Ver prototipo de pantalla [IU\-CSP\-0201\-014 \- Crear convocatoria \- Configuración de solicitudes](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-014-crear-convocatoria-configuracion-de-solicitudes.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-014-crear-convocatoria-configuracion-de-solicitudes.md")

#### Palabras clave

En este apartado se permitirá consultar las palabras clave asociadas a una convocatoria y/o asociar nuevas palabras de forma que luego se puedan buscar convocatorias por dichas palabras.

Ver prototipo de pantalla genérica para gestionar las palabras clave asociadas a una entidad [IU\-GEN\-0200 \- Gestión de palabras clave](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/plcl-palabras-clave/gen-palabras-clave-interfaz-de-usuario/iu-gen-0200-gestion-de-palabras-clave.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/plcl-palabras-clave/gen-palabras-clave-interfaz-de-usuario/iu-gen-0200-gestion-de-palabras-clave.md") que se adaptará en el menú correspondiente de la gestión de una convocatoria.

### Búsqueda y listado de convocatorias

#### Perfiles de Unidades de gestión

Los  ACT\-CSP\-004\-Administrador, ACT\-CSP\-003\-Gestor o ACT\-CSP\-005\-Visor podrán realizar búsquedas de las convocatorias . Los resultados devueltos además de los filtros aplicados dependerán siempre de la Unidad de gestión a la que se hubiera vinculado la convocatoria. Automáticamente, el SGI siempre aplicará el filtro de la unidad de gestión, de forma que un usuario solo podrá acceder a las convocatorias de las unidades de gestión  a las que esté vinculado con alguno de los roles  ACT\-CSP\-004\-Administrador, ACT\-CSP\-003\-Gestor o ACT\-CSP\-005\-Visor ([USR \- Módulo de usuarios](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=USR+-+M%C3%B3dulo+de+usuarios&linkCreation=true&fromPageId=597853534 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=USR+-+M%C3%B3dulo+de+usuarios&linkCreation=true&fromPageId=597853534")).

De acuerdo al rol, a partir del listado de convocatorias, estarán disponibles las opciones:

* Ver detalle, modificar o eliminar la convocatoria, para los roles ACT\-CSP\-004\-Administrador y ACT\-CSP\-003\-Gestor.
* Ver detalle de convocatoria, para el rol ACT\-CSP\-005\-Visor. El rol ACT\-CSP\-005\-Visor tendrá acceso, exclusivamente en modo consulta, a los siguientes apartados de la convocatoria:
	+ Datos generales
	+ Entidades convocantes
	+ Entidades financiadoras
	+ Enlaces
	+ Plazos y fases
	+ Periodos de justificación
	+ Seguimiento científico
	+ Documentos, incluyendo solo aquellos que hayan sido marcados como "públicos" por la unidad de gestión que haya registrado la convocatoria.
	+ Requisitos IP
	+ Requisitos Equipo
	+ Elegibilidad

#### Perfil investigador

Una vez que la convocatoria ha sido marcada por ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador en estado "Registrada" y de acuerdo a lo especificado en el apartado "Configuración de solicitudes", en referencia a la visibilidad de la misma y registro de solicitudes en el SGI para el personal  investigador ([IU\-CSP\-0201\-013 \- Crear convocatoria \- Configuración de solicitudes](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-014-crear-convocatoria-configuracion-de-solicitudes.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-014-crear-convocatoria-configuracion-de-solicitudes.md")), ésta estará disponible en el buscador de convocatorias para los ACT\- CSP\-001\-Investigador.

Los ACT\- CSP\-001\-Investigador podrán realizar dos tipos búsquedas:

* Búsqueda directa ([IU\-CSP\-0203\-002 \- Búsqueda directa y listado de convocatorias \- Investigador](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0203-busqueda-y-listado-de-convocatorias/iu-csp-0203-002-busqueda-directa-y-listado-de-convocatorias-investigador.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0203-busqueda-y-listado-de-convocatorias/iu-csp-0203-002-busqueda-directa-y-listado-de-convocatorias-investigador.md"))
* Búsqueda avanzada ([IU\-CSP\-0203\-003 \- Búsqueda avanzada y listado de convocatorias \- Investigador](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0203-busqueda-y-listado-de-convocatorias/iu-csp-0203-003-busqueda-ampliada-y-listado-de-convocatorias-investigador.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0203-busqueda-y-listado-de-convocatorias/iu-csp-0203-003-busqueda-ampliada-y-listado-de-convocatorias-investigador.md"))

  


Con la búsqueda directa se aplicará un filtrado automático a partir de los requisitos indicados en los apartados "Requisitos IP" ([IU\-CSP\-0201\-010 \- Crear convocatoria \- Requisitos IP](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-010-crear-convocatoria-requisitos-ip.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-010-crear-convocatoria-requisitos-ip.md")) y "Requisitos Equipo" ([IU\-CSP\-0201\-011 \- Crear convocatoria \- Requisitos Equipo](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-011-crear-convocatoria-requisitos-equipo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-011-crear-convocatoria-requisitos-equipo.md")) que se hubieran indicado en los datos de la convocatoria  registrados en el SGI por ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador. Además se aplicará automáticamente el filtro de las fechas internas de presentación de solicitudes, de forma que la convocatoria esté en la actualidad en plazo de presentación.

En la búsqueda avanzada, ACT\- CSP\-001\-Investigador, podrá indicar filtros específicos.

  


Cualquiera de los dos tipos de búsqueda devolverá un listado de solicitudes, a partir del que los ACT\- CSP\-001\-Investigador podrán:

* Ver el detalle de la convocatoria. Tendrá accesibles, exclusivamente en modo consulta, los siguientes apartados:
	+ Datos generales
	+ Entidades convocantes
	+ Entidades financiadoras
	+ Enlaces
	+ Plazos y fases
	+ Periodos de justificación
	+ Seguimiento científico
	+ Documentos, incluyendo solo aquellos que hayan sido marcados como "públicos" por la unidad de gestión que haya registrado la convocatoria.
	+ Requisitos IP
	+ Requisitos Equipo
	+ Elegibilidad
* Tramitar la solicitud, siempre que en el apartado "configuración de solicitudes" se haya marcado el check "habilitar presentación de solicitudes SGI". Con el proceso de tramitación, se entraría ya en el flujo [CSP \- Solicitudes](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-solicitudes/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-solicitudes/index.md").

  


  





