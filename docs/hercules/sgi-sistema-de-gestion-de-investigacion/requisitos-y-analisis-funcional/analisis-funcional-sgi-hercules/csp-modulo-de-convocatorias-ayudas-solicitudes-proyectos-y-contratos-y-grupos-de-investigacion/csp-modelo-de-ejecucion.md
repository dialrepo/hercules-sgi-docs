# Hércules : CSP \- Modelo de ejecución



Un modelo de ejecución podría definirse como el mecanismo o formato  bajo el que se ejecuta la actividad (proyecto) de investigación. Los modelos de ejecución al uso podrían ser: 

* Ayudas y subvenciones
* Contratos y convenios

Dado que el planteamiento general del SGI es la construcción de un sistema lo menos restrictivo posible, no se establecerá un listado de valores predefinidos de partida. Los modelos de ejecución podrán ser definidos en cada implantación. El modelo de ejecución no va a ser solamente una clasificación sino que va a agrupar una serie de tablas de configuración que otorgarán flexibilidad a la gestión de convocatorias, ayudas y proyectos/contratos.

De esta forma si en la implantación de una Universidad se considera necesario realizar una configuración más granular de los modelos de ejecución el SGI tendría la capacidad para adaptarse. Por ejemplo, pudiera darse el caso de distinguir modelos de ejecución para:

* Ayudas y subvenciones de UGI
* Ayudas y subvenciones de OTRI
* Contratos
* Contratos de explotación de PII
* Convenios
* Proyectos de gestión externa
* Contratos de gestión externa
* etc

El comportamiento del SGI sería homogéneo para cualquier modelo de ejecución que se defina, y serán los usuarios con rol ACT\-CSP\-004\-Administrador quienes podrán crear y configurar los modelos de ejecución que se precisen.

Un modelo de ejecución tendrá los siguientes tipos asociados:

* Tipos de fases
* Tipos de documentos
* Tipos de enlaces
* Tipos de finalidad
* Tipos de hitos
* Unidades de gestión

Los modelos de ejecución podrán asociarse a una o varias unidades de gestión, si bien el listado de modelos de ejecución será único para todas las unidades de gestión.

Puesto que cada Universidad podrá elegir el punto en el que comienza el flujo de registro de convocatoria \- solicitudes \- proyecto, el modelo de ejecución será un atributo tanto de convocatoria como de proyecto. En caso que el proyecto proceda de una solicitud sobre una convocatoria, tomará el valor indicado en la misma.

  


Los modelos de ejecución, asociados cada uno de ellos a las distintas unidades de gestión que vayan a hacer uso de los mismos,  junto con la creación libre (restringida a los usuarios con perfil Administrador) de los tipos de fases, hitos, documentos, enlaces y finalidades permitirá una gestión unificada en el SGI de la amplia variedad de convocatorias, ayudas, proyectos y contratos, pero sin marcar una clasificación y estructura específicas para cada uno de los tipos.

  


### Descripción funcional

#### 

#### Modelo de ejecución

Los usuarios con perfil ACT\-CSP\-004\-Administrador de las unidades de gestión que tengan habilitada la gestión de modelos de ejecución, que normalmente serán UGI, OPE y OTRI, podrán realizar la gestión de los modelos de ejecución y sus tipos relacionados. El mantenimiento del listado de modelos de ejecución será común para todas las unidades de gestión que tengan habilitada esta funcionalidad, es decir, todos los ACT\-CSP\-004\-Adminstrador de las mismas podrán gestionar (crear, editar y eliminar) sobre el mismo listado, independientemente de la unidad de gestión a la que estén vinculados como Administradores. Cada ACT\-CSP\-004\-Administrador debe asociar a su Unidad (o unidades) aquellos modelos  que sea necesario que estén habilitados para que los ACT\-CSP\-003\-Gestor puedan realizar la gestión de convocatorias y proyectos/contratos. 

Un modelo de ejecución queda definido simplemente por:

* Un identificador interno
* Un nombre
* Una descripción
* Dos indicadores para distinguir si el modelo de ejecución se utilizará para la representación de:
	+ contratos/convenios.
	+ proyectos/contratos de gestión externa. Los proyectos/contratos derivados se crearán en el SGI pero el personal investigador participará en ellos bajo la gestión de una entidad externa.
* Un indicador de si el modelo está activo o no. Solo los modelos activos podrán ser incluidos en la creación y modificación de convocatorias y proyectos.

Una convocatoria o un proyecto/contrato tendrán asociado un modelo de ejecución. Los modelos de ejecución que estén disponibles en cada caso serán aquellos que estén vinculados a una de las  unidades de gestión a las que esté asociado, con perfil ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor, el usuario que procede a crear/editar la convocatoria o proyecto/contrato.  A partir del modelo de gestión que se asigne a la convocatoria o proyecto/contrato, estarán disponible un determinado listado de:

* Tipos de fases de gestión
* Tipos de documentos
* Tipos de enlaces
* Tipos de finalidad
* Tipos de hitos

#### Tipos de fases de gestión

Las convocatorias y proyectos/contratos podrán tener una serie de fases. Las fases estarán ligadas al proceso de gestión administrativa de la convocatoria o proyecto/contrato dentro de los procedimientos internos de la Universidad. Los responsables de gestión de la investigación de cada universidad decidirán que fases es conveniente reflejar para cada uno de los modelos de ejecución. Ejemplo, para el modelo de ejecución tipo "contrato" se podrán definir fases como "negociación con empresa", "firma de Vicerrector", etc. Las fases son independientes al estado en el que se encuentre la entidad correspondiente  (convocatoria, solicitud o proyecto), que será un estado interno al SGI.

El listado de tipos de fases  será común para todos los ACT\-CSP\-004\-Administrador, independientemente de la Unidad de gestión, esto evitará tipos repetidos.  

A cada modelo de ejecución se podrán asignar una serie de fases, indicando si éstas aplican a las convocatoria, a los proyectos o a ambos.  

Un tipo de fase quedará definido por:

* Un identificador interno.
* Un nombre.
* Una descripción.
* Un indicador para discriminar si el tipo de fase está activo o no. Solo se podrán vincular a un modelo de ejecución los tipos de fase que permanezcan activos.

Un modelo de ejecución podrá tener tantos tipos de fase como se desee, pudiendo crearse sin ningún tipo de fase. Al crear un modelo de ejecución se le asignarán los tipos de fase, indicando si la fase aplica sobre la convocatoria o sobre el proyecto. La relación del modelo de ejecución con el tipo de fase dispondrá de los correspondientes indicadores para determinar si aplica a las convocatorias, a los proyectos o a ambos. 

Al crear una convocatoria/proyecto se le asociará un modelo de ejecución, y con éste se podrán vincular a la convocatoria/proyecto los tipos de fase que tenga configurados el modelo.  Cuando sobre una convocatoria o proyecto concretos se especifique una fase, se indicará el tipo de fase y sus plazos, las fechas de inicio y fin que comprende. ACT\-CSP\-003\-Gestor tendrá disponibles los tipos de fase asociados al modelo de ejecución al que hubiera vinculado la convocatoria o el proyecto/contrato. Si una fase solo requiere de una fecha puntual (como pudiera ser por ejemplo una fase del tipo "resolución"), podrá optarse por utilizar el concepto de "hito" o bien utilizar una fase indicando el mismo valor para fecha de inicio y fecha de fin.

Si el modelo de ejecución no dispone de ningún tipo de fase asociado, no se podrán recoger los plazos de las convocatorias o proyectos que se asocien a ese modelo de ejecución. 

Los tipos de fase dispondrán del indicador "activo". Que un tipo de fase se marque como "no activo" implicará que dejará de estar disponible a partir de un momento dado, pero sin que se pierdan todas las referencias previas que pudieran existir sobre convocatorias y proyectos. 

Se pueden consultar los prototipos de pantallas para la gestión de tipos de fases en  [IU\-CSP\-0030 \- Gestión de tipos de fases](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0030-gestion-de-tipos-de-fases/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0030-gestion-de-tipos-de-fases/index.md").

#### Tipos de documentos

Las convocatorias, solicitudes y proyectos/contratos podrán tener documentos adjuntos. Con el objeto de que esta documentación atienda a una estructura acorde a las necesidades marcadas por el modelo de ejecución (ayuda, contrato, convenio, etc.) se podrán definir tipos de documentos que identifiquen y categoricen el contenido de los mismos (ej. bases de convocatoria, modelo de contrato, etc.). 

El listado de tipos de documentos  será común para todos los ACT\-CSP\-004\-Administrador, independientemente de la Unidad de gestión, esto evitará tipos repetidos.  A cada modelo de ejecución se podrán asignar una serie de tipos de documento.  Los tipos de documentos podrán estar asociados de forma no obligatoria a una de las fases de gestión definidas sobre el modelo de ejecución.

Cuando una convocatoria o proyecto/contrato se vincula a un modelo de ejecución, estarán disponibles los tipos de documento que este modelo tenga asociados y éstos estarán asociados a una fase de gestión o no.

Los tipos de documentos no solo permitirán clasificar los documentos sino que constituirán la estructura de carpetas interna en las que se almacenarán los documentos. De esta forma existirá una carpeta por cada convocatoria y/o proyecto/contrato y dentro de ésta los documentos se organizarán en subcarpetas de acuerdo a las fases de gestión y a los tipos de documentos. Se compondrá una estructura jerárquica a partir de la raíz de la convocatoria o proyecto: subcarpeta "fase" y dentro de esta tantas subcarpetas "tipo de documento" como tenga asociadas. Para los tipos de documento que no estén vinculados a ninguna fase, la subcarpeta "tipo de documento" colgará de la raíz de la convocatoria o proyecto.

Un tipo de documento quedará definido por:

* Un identificador interno.
* Un nombre.
* Una descripción.
* El tipo de fase de gestión a la que pertenece, pudiendo estar vinculado a más de  una fase o a ninguna.
* Un indicador para discriminar si el tipo de documento está activo o no. Solo se podrán vincular a un modelo de ejecución los tipos de documentos que permanezcan activos.

Un modelo de ejecución podrán tener tantos tipos de documentos como se desee, pudiendo crearse sin ningún tipo de documento.

Cuando sobre una convocatoria o proyecto concreto se adjunte un tipo de documento se deberá indicar la fase a la que pertenece y el tipo de documento. ACT\-CSP\-003\-Gestor tendrá disponibles los tipos de fase y tipos de documentos asociados al modelo de ejecución al que hubiera vinculado la convocatoria o el proyecto/contrato.

La relación triple entre modelo de ejecución, tipo de fase y tipo de documento también dispondrá del indicador "activo". Esto permitirá que un modelo de ejecución pueda dejar de disponer de un tipo de documento concreto a partir de un momento dado, pero sin que se pierdan todas las referencias que pudieran existir sobre convocatorias y proyectos. 

  


Prototipos de pantallas para la gestión de tipos de documento: [IU\-CSP\-0040 \- Gestión de tipos de documento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0040-gestion-de-tipos-de-documento/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0040-gestion-de-tipos-de-documento/index.md")

  


#### Tipo de enlace

Las convocatorias podrán tener enlaces a información o documentación externa al SGI que complemente la información recogida en el SGI y/o facilite el acceso a los portales oficiales de tramitación de la entidad convocante. Con el objeto de poder presentar estos enlaces de una forma estructurada, el SGI contemplará una tipología para clasificación de los mismos. Se podrá definir una tipología independiente para cada uno de los modelos de ejecución.

El listado de tipos de enlace será común para todos los ACT\-CSP\-004\-Administrador, independientemente de la Unidad de gestión, esto evitará tipos repetidos.  A cada modelo de ejecución se podrán asignar una serie de tipos de enlace.  

Un tipo de enlace quedará definido por:

* Un identificador interno.
* Un nombre.
* Una descripción.
* Un indicador para discriminar si el tipo de enlace está activo o no. Solo se podrán vincular a un modelo de ejecución los tipos de enlace que permanezcan activos.

Cuando sobre una convocatoria concreta se incluya un enlace, se podrá indicar su tipo, sin que sea una información obligatoria. ACT\-CSP\-003\-Gestor tendrá disponibles los tipos de enlaces asociados al modelo de ejecución al que hubiera vinculado la convocatoria.

La relación entre modelo de ejecución y tipo de enlace también dispondrá del indicador "activo". Esto permitirá que un modelo de ejecución pueda dejar de disponer de un tipo de enlace concreto a partir de un momento dado, pero sin que se pierdan todas las referencias que pudieran existir sobre convocatorias. 

  


Prototipos de pantalla para la gestión de tipos de enlace [IU\-CSP\-0010 \- Gestión de tipos de enlace](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0010-gestion-de-tipos-de-enlace/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0010-gestion-de-tipos-de-enlace/index.md").

#### Tipo de finalidad

Las convocatorias y proyectos/contratos tendrán un tipo que permitirá su clasificación de acuerdo a la finalidad de la actividad (proyectos I\+D, infraestructuras, asistencias técnicas, etc.)

El listado de tipos de finalidad será común para todos los ACT\-CSP\-004\-Administrador, independientemente de la Unidad de gestión, esto evitará tipos repetidos.  A cada modelo de ejecución se podrán asignar una serie de tipos de finalidad.  

Un tipo de finalidad quedará definido por:

* Un identificador interno.
* Un nombre.
* Una descripción.
* Un indicador para discriminar si el tipo de finalidad está activo o no. Solo se podrán vincular a un modelo de ejecución los tipos de finalidad que permanezcan activos.

Cuando sobre una convocatoria o proyecto concretos se incluya una finalidad, se deberá seleccionar del listado disponible. ACT\-CSP\-003\-Gestor tendrá disponibles los tipos de finalidad asociados al modelo de ejecución al que hubiera vinculado la convocatoria o el proyecto/contrato. A su vez los modelos de ejecución serán los que tenga disponible la unidad de gestión a la que hubiera vinculado la convocatoria o proyecto.

La relación entre modelo de ejecución y tipo de finalidad también dispondrá del indicador "activo". Esto permitirá que un modelo de ejecución pueda dejar de disponer de un tipo de finalidad concreto a partir de un momento dado, pero sin que se pierdan todas las referencias que pudieran existir sobre convocatorias y proyectos. 

  


Prototipos de pantallas para la gestión de tipos de finalidad: [IU\-CSP\-0020 \- Gestión de tipos de finalidad](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0020-gestion-de-tipos-de-finalidad/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0020-gestion-de-tipos-de-finalidad/index.md").

#### Tipo de hito

Además de las fases, los modelos de ejecución también llevarán asociados una serie de hitos, entendiendo como tal cualquier acontecimiento que resulte de interés dejar historificado. Mientras que las fases están pensadas para estar definidas por un  periodo marcado por una fecha de inicio y fin, los hitos están orientados a dejar un registro de una situación puntual ocurrida en una fecha, prevista o no.  Tanto las convocatorias, como las solicitudes y proyectos podrán tener sus hitos específicos. 

Un tipo de hito quedará definido por:

* Un identificador interno.
* Un nombre.
* Una descripción.
* Un indicador para discriminar si el tipo de hito está activo o no. Solo se podrán vincular a un modelo de ejecución los tipos de hito que permanezcan activos.

El listado de tipos de hitos  será común para todos los ACT\-CSP\-004\-Administrador, independientemente de la Unidad de gestión, esto evitará tipos repetidos. A cada modelo de ejecución se le podrá asignar una serie de tipos de hitos, especificando si aplica sobre la convocatoria, sobre la solicitud o sobre el proyecto/contrato, pudiendo ser, a la vez, un tipo de hito compartido para dos o las tres entidades. Esto dará flexibilidad, ya que un mismo tipo de hito, por ejemplo, "validación Vicerrectorado", podrá aplicar en algunos modelos sobre el proyecto/contrato y  en otros sobre la solicitud.

Cuando se añada un hito sobre una convocatoria/solicitud/proyecto, el tipo de hito se debe de seleccionar del listado disponible. ACT\-CSP\-003\-Gestor tendrá disponibles los tipos de hitos  asociados al modelo de ejecución al que se hubiera vinculado la convocatoria/solicitud/proyecto que está siendo gestionada. A su vez, los modelos de ejecución disponibles para asociar la convocatoria/proyecto serán los que tenga asociados la unidad de gestión a la que se hubiera vinculado la convocatoria o el proyecto.

El tipo de hito dispondrá del indicador "activo". Esto permitirá que un tipo de hito pueda dejar de estar activo a partir de un momento dado, pero sin que se pierdan todas las referencias que ya pudieran existir sobre las convocatorias, solicitudes o proyectos.

Prototipos de pantallas de tipos de hito: [IU\-CSP\-0044 \- Gestión de tipos de hito](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0044-gestion-de-tipos-de-hito/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0044-gestion-de-tipos-de-hito/index.md").

#### Unidades de gestión

Las convocatorias, solicitudes y proyectos/contratos deberán estar asociados a una unidad de gestión. Esto permitirá habilitar la gestión y visibilidad de las mismas a los ACT\-CSP\-004\-Administrador, ACT\-CSP\-003\-Gestor, ACT\-CSP\-005\-Visor que estén asociados a dicha unidad de gestión.

Los modelos de ejecución estarán a su vez asociados a las unidades de gestión. Al crear una convocatoria o proyecto concreto se deberá indicar la unidad de gestión a la que estará asociada. Los únicos roles que podrán crear convocatorias o proyectos serán ACT\-CSP\-004\-Administrador y ACT\-CSP\-003\-Gestor. A su vez, las unidades de gestión que cada usuario tenga disponible para la creación de convocatorias/proyectos solo serán aquellas sobe las que el usuario esté asociado con rol ACT\-CSP\-004\-Administrador, ACT\-CSP\-003\-Gestor .

Una vez indicada la unidad de gestión a la que pertenecerá la convocatoria/proyecto, se cargarán los modelos de ejecución disponibles, que serán los que tenga vinculados la unidad de gestión correspondiente a través de la configuración del modelo de ejecución.

Con esta doble asignación se permite:

* restringir la gestión de convocatorias/proyectos por unidades de gestión (partiendo siempre de una misma estructura de datos).
* que cada unidad de gestión seleccione los modelos de ejecución apropiados (manteniendo siempre unas clasificaciones comunes que permitirán la generación de estadísticas globales).

  


La relación entre modelo de ejecución y unidad de gestión también dispondrá del indicador "activo". Esto permitirá que un modelo de ejecución pueda dejar de estar asociado a una unidad de gestión concreta a partir de un momento dado, pero sin que se pierdan todas las referencias que pudieran existir sobre convocatorias y proyectos. 

  


#### Prototipos de pantallas

La gestión de los modelos de ejecución y sus tipos asociados estará disponible en el apartado Configuración del módulo CSP y limitada al perfil ACT\-CSP\-004\-Administrador. Se pueden consultar los prototipos de pantallas en [IU\-CSP\-0050 \- Gestión de modelos de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0050-gestion-de-modelos-de-ejecucion/index.md")

  





