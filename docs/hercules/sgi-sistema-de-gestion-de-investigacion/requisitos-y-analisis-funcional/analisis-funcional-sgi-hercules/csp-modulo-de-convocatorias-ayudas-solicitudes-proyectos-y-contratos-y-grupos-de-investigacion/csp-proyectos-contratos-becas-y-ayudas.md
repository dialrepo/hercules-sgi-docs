# Hércules : CSP Proyectos, contratos, becas y ayudas



Con la entidad "Proyecto" y sus relaciones se cubrirá el ciclo de gestión de los proyectos de investigación, contratos artículo 83, becas y ayudas. Se puede considerar la entidad más compleja del SGI ya que en ella converge el flujo de Convocatorias y solicitudes y requiere de un alto grado de integración para poder recopilar los datos necesarios desde sistemas externos. Dos de los apartados más complejos serán los correspondientes a los Datos económicos, desde el que se activará la integración con el Sistema de gestión económica (SGE) corporativo, y a los Contratos de RRHH, desde el que se activará la integración con el sistema de Gestión de RRHH corporativo.

  


Con el objetivo de conseguir la máxima estandarización y homogeneidad, lo que redundará en una mayor capacidad para la posterior clasificación y agrupación de la información, la entidad Proyecto será común para cualquier tipología de proyectos y contratos. A través de los modelos de ejecución y la asignación de los mismos a las diferentes Unidades de gestión, se permitirá una particularización de diferentes listados y tipologías utilizados para recoger la información del proyecto. De esta forma, el SGI no parte de una clasificación de proyectos/contratos limitada y se permite que esta clasificación pueda ser la necesaria de acuerdo a la organización interna de cada Universidad a la vez que escalable para futuras necesidades. Ver [CSP \- Modelo de ejecución](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-modelo-de-ejecucion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-modelo-de-ejecucion.md"). Como complemento a al modelo de ejecución, en el apartado Ficha general del proyecto se podrán aplicar una serie de configuraciones que habilitarán o no la existencia de bloques de información sobre el proyecto. 

  


Un proyecto/contrato/beca/ayuda podrá ser registrado en el SGI a partir de la concesión de una solicitud, o podrá ser registrado directamente, sin que exista el flujo previo de convocatoria \- solicitud (como será en la mayoría de los casos de contratos del artículo 83\).

Debido a la elevada cantidad de información que tendrá un proyecto/contrato ésta se mostrará de forma estructurada en diferentes apartados, agrupada de acuerdo a la naturaleza de la misma. A continuación se enumeran los apartados  y subapartados en los que se estructura la información :

  


* Datos generales
	+ Ficha general
	+ Contexto del proyecto
	+ Áreas de conocimiento
	+ Clasificaciones
	+ Histórico de estados
	+ Relaciones
* Entidades
	+ Entidad gestora
	+ Entidades convocantes
	+ Entidades financiadoras
* Equipo y Responsable económico
	+ Equipo
	+ Responsable económico
* Socios: Listado de socios colaboradores. Por cada socio se dispondrá de los siguientes apartados:
* + Miembros del equipo
	+ Periodos de pago
	+ Periodos justificación. Por cada periodo de justificación:  
	
		- Datos generales
		- Documentación
* Fases e hitos
	+ Listado de plazos y fechas
	+ Listado de hitos del proyecto
* Seguimiento científico. Por cada periodo de seguimiento:
	+ Datos generales
	+ Documentación
* Prórrogas del proyecto. Por cada prórroga del proyecto:
	+ Datos generales
	+ Documentación
* Documentos. Árbol de documentos del proyecto
* Configuración de timesheet:
	+ Paquetes de trabajo
* Configuración económica. Apartado para realizar la configuración de los datos y seguimiento económico.
	+ Identificación
	+ Elegibilidad
	+ Partidas presupuestarias
	+ Presupuesto
	+ Agrupaciones de gastos
	+ Consulta de presupuesto
	+ Calendario de facturación
	+ Calendario de justificaciones
* Ejecución económica
* Timesheets
* Palabras clave
* Además, desde un proyecto se podrá acceder a la solicitud y convocatoria de origen (en caso de que el proyecto haya sido registrado en el SGI siguiendo este flujo).

  


### Estados de un proyecto

Antes de detallar cada uno de los apartados de información se expone el ciclo  de estados por los que puede pasar un proyecto. Los estados del proyecto no serán configurables por implantación así como tampoco lo será el flujo para pasar de un estado a otro. El comportamiento estará predefinido en el SGI.

Los cambios de estado deberá ser realizados por los  ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador de la Unidad de gestión responsable del proyecto. No existirá ningún proceso automático que provoque el cambio de estado. El cambio de estado, junto con la fecha en que se produce, quedará historificado, siendo este histórico visible para los ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador en el apartado "Datos generales". Cada vez que se produzca un cambio de estado, se podrá dejar registrado un comentario asociado al cambio.

* Borrador. Es el estado inicial. El proyecto, de forma automática tomará este estado, tanto cuando se genera a partir de la concesión de una solicitud como cuando se registra directamente. Este estado será indicativo de que el proyecto está aún en periodo de registro. No será aún visible para el equipo investigador a través de su acceso al SGI ni desde el Portal público del SGI. No existirá ninguna regla ni periodo establecido para pasar un proyecto en estado borrador al siguiente estado. Serán los ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador de la Unidad de gestión responsable del proyecto quienes deban cambiar el estado del proyecto, cuando estimen oportuno. Mientras un proyecto esté en estado borrador no será necesario que se cumplan todas las validaciones de obligatoriedad, pudiendo permanecer aún algunos de los campos obligatorios sin cumplimentar.
* Concedido. El paso a este estado será indicativo de que el proyecto/contrato ya está en marcha. Un proyecto/contrato en estado Concedido será visible para el equipo investigador a través de su acceso al SGI y  desde el Portal público del SGI. El paso a estado "Concedido" supondrá que se desencadenen una serie de operaciones de validación de datos  que serán necesarios para una correcta gestión de proyecto.
* Renunciado. Será indicativo de que el proyecto se cancela por algún motivo y no llega a su finalización. De manera automática la fecha fin definitiva del proyecto tomará la fecha del paso a estado Renunciado.
* Rescindido. Será indicativo de que el proyecto se rescinde por algún motivo y no llega a su finalización. De manera automática la fecha fin definitiva del proyecto tomará la fecha del paso a estado Rescindido.

  


### Modelo lógico

![](/attachments/597852939/597877174.png)

### Datos generales

En este apartado se unifica al información  global del proyecto. Dispondrá de los siguientes bloques o subapartados de información:

* Ficha general
* Contexto del proyecto
* Áreas de conocimiento
* Clasificaciones
* Histórico de estados

#### Ficha general

En este apartado se recogerá información general del proyecto así como valores de configuración que habilitarán o no otros apartados de gestión para el proyecto:

* Estado. Estado en el que se encuentra el proyecto/contrato. En el apartado [Estados de un proyecto](#CSPProyectos,contratos,becasyayudas-estados_proyecto "#CSPProyectos,contratos,becasyayudas-estados_proyecto") se detalla el flujo de estados.  El estado inicial tras la creación  de un proyecto/contrato será "Borrador". El cambio a cualquier otro estado, siguiendo el flujo predefinido, provocará que se muestre el campo Comentario que permitirá registrar una nota de texto libre asociada al cambio de estado. El cambio de estado quedará automáticamente vinculado a la fecha/hora en la que guarden los cambios tras haber modificado el valor del Estado.  Esta información, junto con el comentario introducido, podrá ser visualizada desde el subapartado "Histórico de estados". El estado será un campo obligatorio, que por defecto tomará el valor Borrador. No se permitirá la creación de un proyecto/contrato sin estado.
* Título. Título del proyecto. Será un campo obligatorio, incluso para guardar el proyecto/contrato en estado Borrador. En caso que el proyecto se cree desde la concesión de una Solicitud, este campo tomará el valor indicado en la misma. El Título "volcado" desde la Solicitud podrá ser modificado libremente por el ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador que esté registrando el proyecto, dejando, en este caso, de coincidir con el Título registrado en la Solicitud (que no será actualizado con el del Proyecto).
* Acrónimo. Identificador corto del proyecto. Será un campo alfanumérico, no obligatorio que permitirá asignar al proyecto un código de referencia. En caso que el proyecto se cree desde la concesión de una Solicitud, este campo tomará el valor indicado en la misma.
* Código de identificación externo. En este campo se podrá recoger el código de identificación que ha sido asignado al proyecto en la entidad convocante externa (en caso de existir). Será un campo alfanumérico y no será obligatorio.
* Fecha de inicio. Fecha de inicio del proyecto. Será un campo obligatorio, incluso para guardar el proyecto/contrato en estado Borrador.
* Fecha de fin. Será un campo obligatorio, incluso para guardar el proyecto/contrato en estado Borrador. En caso de que el proyecto se cree a partir de la concesión de una solicitud registrada en el SGI, la fecha de fin se calculará de forma automática a partir de la Fecha de inicio indicada en el campo anterior y la Duración en meses indicada en los datos de la Solicitud.
* Fecha de fin definitiva. Será un campo opcional. Podrá ser introducido manualmente para dejar registrada la fecha de fin definitiva en el caso de situaciones como rescisiones o renuncias al proyecto, o bien podrá ser informada automáticamente por el sistema al registrar una prórroga sobre el proyecto. Si está informada prevalecerá sobre la fecha de fin y será la considerada como fecha de finalización del proyecto, independientemente de que sea mayor o menor que la fecha de fin inicial.
* Convocatoria. Título de la convocatoria de la que procede el proyecto. Si el proyecto se crea a partir de la concesión de una solicitud registrada en el SGI, este campo se completará de forma automática. En caso de que se decida no registrar las solicitudes en el SGI, se deberá asociar de forma manual. Se dispondrá de un buscador sobre las Convocatorias registradas en el SGI asociadas a la Unidad de gestión a la que se ha vinculado el usuario que esta creando el proyecto.
* Identificación convocatoria externa. Campo para introducir de manera libre una identificación de la convocatoria externa con la que se relaciona el proyecto, en caso de que la convocatoria no se haya registrado en el SGI.
* Convocatoria de excelencia. Permite recoger si la convocatoria bajo la que se ejecuta el proyecto está categorizada como una convocatoria de excelencia. Si el proyecto se vincula a una convocatoria registrada en el SGI, será un dato heredado de la misma, si bien podrá ser modificado en el proyecto.
* Solicitud. Este campo se completará de forma automática si el proyecto se registra en el SGI a partir de la concesión de una solicitud. En caso que el proyecto sea creado directamente no se podrá asociar a una solicitud.
* Unidad de gestión. El proyecto/contrato quedará vinculado a la Unidad de gestión indicada en este campo. El componente utilizado para indicar la unidad de gestión será desplegable que contendrá únicamente las Unidades de gestión a las que el  ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador que está creando el proyecto esté vinculado con rol Gestor o Administrador. Un proyecto/contrato solo podrá ser creado o modificado por los usuarios que tengan rol Gestor o Administrador sobre una Unidad de gestión que tenga activa la acción de creación/modificación de proyectos. Si un usuario tiene rol Visor sobre la Unidad de gestión a la que está vinculado el proyecto/contrato, podrá ver sus datos pero nunca modificarlos ni crear un nuevo proyecto vinculado a dicha Unidad de gestión. Ver [Actores del módulo CSP](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Actores "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Actores") y [Gestión de usuarios y permisos](https://confluence.um.es/confluence/pages/viewpage.action?pageId=85628906 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=85628906"). Será obligatorio indicar una Unidad de gestión para poder guardar el proyecto/contrato, incluso si el proyecto se guarda en estado Borrador. En caso que el ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador que está creando el proyecto/contrato tenga rol Gestor o Administrador sobre más de una Unidad de gestión  Unidad de gestión, y con el objetivo de obligar a que el valor introducido sea revisado antes de crear el proyecto/contrato, el desplegable no tomará por defecto ningún valor (se forzará a que el  usuario deba de seleccionar uno de los valores disponibles). Si el proyecto procede de la concesión de una Solicitud, el proyecto tomará la Unidad de gestión a la que ya estuviera vinculada la convocatoria. Como se da de [ALTA una nueva Unidad de Gestión](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-002-crear-modelo-de-ejecucion/cu-usr-0020-002-crear-unidad-de-gestion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-002-crear-modelo-de-ejecucion/cu-usr-0020-002-crear-unidad-de-gestion.md") ([CU\-USR\-0020\-002 \- Crear unidad de gestión](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-002-crear-modelo-de-ejecucion/cu-usr-0020-002-crear-unidad-de-gestion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-0020-gestion-de-modelos-de-ejecucion/cu-csp-0020-002-crear-modelo-de-ejecucion/cu-usr-0020-002-crear-unidad-de-gestion.md")) y se asigna a los usuarios.
* Modelo de ejecución. De acuerdo a la Unidad de gestión asociada al proyecto/contrato, se cargarán los modelos de ejecución vinculados a la misma. Para ello será necesario que previamente se haya seleccionado un valor para el campo Unidad de gestión. Será obligatorio indicar un modelo de ejecución para poder guardar el proyecto, incluso en estado Borrador. El modelo de ejecución marcará muchos de los listados que estarán disponibles en otros apartados del proyecto. Ver [Detalle de modelo de ejecución](https://confluence.um.es/confluence/pages/viewpage.action?pageId=85633092 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=85633092") para más información. En caso que la Unidad de gestión tenga más de un modelo de ejecución asociado y con el objetivo de  obligar a que el valor introducido sea revisado por el ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador que está creando el proyecto/contrato, el desplegable no tomará por defecto ningún valor. Si el proyecto procede de la concesión de una Solicitud, el proyecto tomará la Unidad de gestión a la que ya estuviera vinculada la convocatoria origen.
* Finalidad. Uno de los listados marcados por el valor seleccionado en el Modelo de ejecución será el asociado al desplegable Finalidad (Ver [Gestión de tipos de finalidad](https://confluence.um.es/confluence/pages/viewpage.action?pageId=85633092#CSP-Modelodeejecuci%C3%B3n-Tipodefinalidad "https://confluence.um.es/confluence/pages/viewpage.action?pageId=85633092#CSP-Modelodeejecuci%C3%B3n-Tipodefinalidad")). Será necesario  haber seleccionado  un valor en el campo Modelo de ejecución para que este campo esté disponible.  El tipo de finalidad del proyecto/contrato será  un valor obligatorio para poder guardar el proyecto a partir del estado Concedido. Para  obligar a que el valor introducido sea revisado por el ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador que está creando el proyecto/contrato, y éste no se cree con un valor por defecto, el desplegable no tomará por defecto ningún valor. Si el proyecto procede de la concesión de una Solicitud, el proyecto tomará la Unidad de gestión a la que ya estuviera vinculada la convocatoria origen.
* Ámbito geográfico. Campo desplegable cargado con los valores definidos en [Gestión de ámbitos geográficos](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Convocatorias#CSP-Convocatorias-ambitos_geograficosGesti%C3%B3nde%C3%A1mbitosgeogr%C3%A1ficos "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Convocatorias#CSP-Convocatorias-ambitos_geograficosGesti%C3%B3nde%C3%A1mbitosgeogr%C3%A1ficos"). Será un campo obligatorio para el estado Concedido. Para asegurar que el valor introducido es revisado, el desplegable no cargará ningún valor por defecto, forzando así su selección. Si el proyecto se crea a partir de la concesión de una Solicitud o se indica manualmente la Convocatoria origen, el campo Ámbito geográfico tomará el mismo valor que el de la Convocatoria correspondiente.
* Confidencial. Podrá tomar valor Sí o No y será obligatorio indicar un valor para guardar el proyecto/contrato en estado Concedido. Si este campo toma valor Sí, el proyecto/contrato se entiende confidencial.
* Clasificación producción científica/CVN.Este campo indica el apartado de producción científica y CVN donde pasará a mostrarse de forma automática el proyecto/contrato en creación. Será un desplegable con los valores Ayudas y Becas; Contratos, convenios, proyectos no competitivos; Proyectos competitivos; Proyectos institucionales. Ayudas y becas; Proyectos institucionales. Contratos, convenios, proyectos no competitivos; Proyectos institucionales. Proyectos competitivos.).  No será un campo obligatorio pero si se selecciona cualquiera de las opciones que comienza con "Proyectos institucionales", el proyecto no será incluido de forma automática en la producción científica y CVN de ninguno de los  miembros del equipo de investigación. Ve*r*[*CSP \- Convocatorias \- Apartados CVN*](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Convocatorias#apartados_cvn "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Convocatorias#apartados_cvn")
* Proyecto coordinado. Campo con los valores Sí/No que permite indicar si el proyecto se desarrolla de manera conjunta por la Universidad y otros socios. No tomará ningún valor por defecto para obligar a que sea cumplimentado. Es un campo obligatorio para pasar el proyecto a estado Concedido.  Si este campo toma el valor Sí, se activará el apartado Socios colaboradores así como los campos Coordinador externo y Proyecto colaborativo de este mismo apartado. Si el proyecto es creado a partir de la concesión de una solicitud, este campo tomará el valor indicado en la Solicitud.
* Coordinador externo. En caso de haber indicado el valor Sí sobre el campo Proyecto coordinado se activará el campo Coordinador externo. Podrá tomar los valores Sí/No y permite indicar si el coordinador es la Universidad (valor No) o es uno de los socios (valor Sí) en cuyo caso se deberá de indicar en la Socios quien es el coordinador. Será necesario seleccionar un valor en este campo cuando el estado sea Concedido y siempre que se marque que el proyecto es coordinado. En caso que el proyecto se cree a partir de la concesión de una Solicitud registrada en el SGI, este campo tomará el mismo valor que el indicado en la misma.
* Proyecto colaborativo: Permitirá indicar si, además de coordinado, el proyecto es colaborativo, es decir, si alguno de los socios es una empresa privada. Este campo se activará tras haber indicado el valor "sí" sobre el campo "proyecto coordinado".
* Paquetes de trabajo.  Campo obligatorio para guardar el proyecto en estado Concedido. Podrá tomar valor afirmativo o negativo, sin que tome ningún valor por defecto para obligar a su cumplimentación. En caso de indicar que el proyecto dispondrá de Paquetes de trabajo se habilitará la opción "Configuración de Paquetes de trabajo".
* Porcentaje IVA. Será un campo opcional que solamente tendrá utilidad en los contratos. El porcentaje de IVA introducido a nivel de proyecto solo será utilizado para tomarlo como valor inicial del IVA en la notificación de las facturas emitidas derivadas del contrato (si bien en cada factura podrá ser modificado individualmente).
* Causa exención IVA. Solo se mostrará en caso que el porcentaje IVA tome valor 0\. En estos casos, será obligatorio la introducción de la causa de exención. Las causas de exención disponibles serán un listado fijo de valores predefinidos.
* Observaciones. Campo de texto libre para recoger cualquier observación general del proyecto/contrato.
* Importe presupuesto: Suma total a la que asciende el importe del presupuesto. En el caso de proyectos colaborativos reflejará exclusivamente el importe del presupuesto de la Universidad.
* Importe concedido: Suma total del importe concedido. En el caso de proyectos colaborativos reflejará exclusivamente el importe concedido con el que contará la Universidad para el desarrollo de su parte del proyecto.
* Importe presupuesto socios. Suma total del presupuesto de todos los socios que participan en el proyecto, excluyendo a la Universidad.
* Importe concedido socios. Suma total del importe concedido al resto de socios que participan en el proyecto, excluyendo a la Universidad.
* Total importe presupuesto. Suma total del importe del presupuesto (Universidad más socios).
* Total importe concedido. Suma total del importe concedido (Universidad más socios).

#### Contexto de proyecto

En este apartado se recogerá información del contexto del proyecto:

En el caso de que la creación del proyecto se realice desde una Solicitud concedida, todos estos campos tomarán el valor registrado en la Solicitud.

* Objetivos del proyecto: Texto libre para recoger cuales serán los objetivos del proyecto. No será un campo de obligada cumplimentación.
* Justificación e intereses: Texto libre para recoger los motivos que justifican el desarrollo del proyecto y/o los intereses del mismo. No será un campo de obligada cumplimentación.
* Resultados esperados: Texto libre para recoger los resultados esperados del proyecto. No será un campo de obligada cumplimentación.
* Propiedad de los resultados.  Permitirá recoger quién es el propietario de los resultados que se generen a raíz de la ejecución del proyecto. Desplegable con la lista predefinida de valores que se indica a continuación. No será un campo de obligada cumplimentación.
	+ Sin resultados
	+ Universidad
	+ Entidad financiadora
	+ Compartida

Los valores del desplegable estarán predefinidos en el SGI. No existirá la posibilidad de que sean modificados directamente por los ACT\-CSP\-004\-Administrador

* Área temática. Será el área temática en el que se enmarca el proyecto. No será un campo de obligada cumplimentación. Solo se permitirá vincular el proyecto a un área temática (o subárea). En función del mecanismo de creación del proyecto pueden darse los siguientes escenarios:
	+ En el caso que el proyecto proceda de una solicitud concedida en la que se hubiera especificado el Área temática, el proyecto tomará el valor del Área temática indicada en la misma.
	+ En el caso de que en la Solicitud de partida no se hubiera especificado ningún área temática, se podrá seleccionar una de las áreas temáticas asociadas a la convocatoria (si así se indicó durante la fase de registro de la convocatoria). En caso de que la convocatoria no disponga de un listado de áreas temáticas, se podrá especificar un nuevo área en el momento de creación del proyecto, a partir de los listados de áreas temáticas disponibles en el SGI. Ver [IU\-CSP\-0095 \- Gestión de áreas temáticas](https://confluence.um.es/confluence/pages/viewpage.action?pageId=87824177 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=87824177").
	+ En el caso de que el proyecto no se cree desde una Solicitud, pero sí se haya indicado la Convocatoria en el subapartado de Datos generales, se podrá seleccionar una de las áreas temáticas asociadas a la convocatoria. La operativa será igual que en el caso anterior. La convocatoria estará asociada a un listado de áreas temáticas, si así se indicó durante la fase de registro de la convocatoria. En caso de que la convocatoria no disponga de un listado de áreas temáticas, se podrá especificar un nuevo área en el momento de creación del proyecto a partir de los listados de áreas temáticas disponibles en el SGI. Ver [IU\-CSP\-0095 \- Gestión de áreas temáticas](https://confluence.um.es/confluence/pages/viewpage.action?pageId=87824177 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=87824177")
	+ Si el proyecto no se crea desde una solicitud ni tampoco se vincula con ninguna convocatoria, se podrá indicar el área temática a partir de los listados de áreas temáticas disponibles en el SGI. Ver [IU\-CSP\-0095 \- Gestión de áreas temáticas](https://confluence.um.es/confluence/pages/viewpage.action?pageId=87824177 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=87824177")

#### Áreas de conocimiento

En este apartado se podrá clasificar el proyecto dentro de una o varias áreas de conocimiento. Esto permitirá asociar el proyecto a un área de manera independiente al área de conocimiento al que esté adscrito el responsable principal. Las áreas de conocimiento disponibles se obtendrán del sistema corporativo universitario correspondiente. El SGI permitirá que las áreas sea una estructura jerárquica de forma que el proyecto quede asociado de manera directa a la rama o ramas de conocimiento a la que pertenezca el área/áreas con las que se relaciona.

#### Clasificaciones

El SGI contará con una estructura dinámica de listados de clasificación. Un proyecto podrá clasificarse bajo tantos listados como se desee. Listados de clasificación tipo que podrían ser cubiertas bajo esta estructura abierta son: 

* Código UNESCO. No será un campo de obligada cumplimentación. Un proyecto se podrá vincular a un código UNESCO. El listado de códigos UNESCO estará precargado a partir de los listados de FECYT.
* Código NABS. No será un campo de obligada cumplimentación. Un proyecto se podrá vincular a un código NABS. El listado de códigos NABS estará precargado.
* Código CNAE

#### Histórico de estados

El histórico de estados presenta a título informativo los cambios de estado del proyecto. Estos cambios de estado estarán regulados por el ciclo definido en [Estados de un proyecto](#CSPProyectos,contratos,becasyayudas-estados_proyecto "#CSPProyectos,contratos,becasyayudas-estados_proyecto"). La información se presenta en formato de tabla de forma que se dispondrá de:

* Estado
* Fecha en la que el proyecto toma ese estado
* Comentarios asociados al estado

El cambio de estado podrá ser realizado desde el apartado Ficha general, desde el apartado de Histórico de estados no se podrá modificar la información ni añadir ningún cambio de estado.

#### Relaciones

En este apartado se podrán establecer las relaciones que mantiene el proyecto/contrato con otras entidades del SGI, de esta forma podrán establecerse relaciones entre proyecto/contrato con:

* Otro proyecto/contrato. En este caso se podrá establecer la jerarquía de la relación (padre/hijo).
* Una convocatoria distinta a la que origina el proyecto. Por ejemplo, para vincular el proyecto con otra posible convocatoria con la que pudiera estar relacionado (convocatoria de selección de contratados, a modo de ejemplo). No se establecerá ninguna dependencia entre ambos, simplemente se trata de registrar el vínculo entre ambos.

Cuando se establezca una relación podrá recogerse un comentario explicativo de la misma.

El Proyecto/Contrato también podrá tener relaciones con otras entidades que se establecen desde los módulos correspondientes. Estas entidades son:

* PII. Ver [PII \- Módulo de Propiedad industrial e intelectual](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/index.md")
* Oportunidades. Ver [RCL \- Módulo de relación con clientes](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=_no_implementado_RCL+-+M%C3%B3dulo+de+relaci%C3%B3n+con+clientes&linkCreation=true&fromPageId=597852939 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=_no_implementado_RCL+-+M%C3%B3dulo+de+relaci%C3%B3n+con+clientes&linkCreation=true&fromPageId=597852939")

No existirán limitaciones para relacionar un proyecto/contrato con más de una entidad de cualquiera de los tipos indicados. Las relaciones solamente tiene como objetivo mantener una trazabilidad entre estas entidades del SGI. Establecer una relación no implica que el SGI realice ninguna gestión conjunta de las mismas. La gestión de los distintos proyectos/contratos relacionados será independiente, así como lo será también la gestión de las PII, oportunidades o convocatorias relacionadas con el proyecto/contrato. La eliminación de la relación no implica que se elimine la entidad (proyecto, PII, etc) relacionada. La modificación de la relación permitirá modificar el comentario explicativo de la relación pero nunca la modificación de la entidad relacionada.

### Entidades

En este apartado se recogerá la información de las diferentes entidades vinculadas al proyecto/contrato. No será obligatorio que existan los tres tipos de entidades. Al pasar el proyecto a estado Concedido se mostrará un mensaje informativo en caso que no se incluya ninguna entidad para el proyecto. 

En el caso que el proyecto se cree a partir de la opción disponible al marcar una Solicitud como concedida, parte de esta información será cargada directamente desde la convocatoria y/o solicitud.

#### Entidad gestora

Será la entidad u organismo que actuará como gestor de la convocatoria y/o proyecto/contrato. Solo se permitirá indicar una única entidad gestora. El listado de entidades disponible procederá del módulo Empresas, común a todo el SGI. Este módulo, a su vez, tendrá establecidos los mecanismos de integración correspondientes con el/los sistemas corporativos universitarios, donde se centralice la información de empresas/organismos.

No se realizará ninguna comprobación para validar que la entidad gestora se encuentre entre el listado de las entidades convocantes y/o financiadoras incluidas.  Si en el momento de creación del proyecto/contrato la entidad gestora no estuviese registrada, el usuario deberá dirigirse al módulo de Empresas, común al SGI, desde el que  se registrarán los datos necesarios para la creación de la nueva entidad. Será la integración de este módulo de Empresas con los sistemas corporativos de la Universidad, la que determine cuándo estará disponible la nueva entidad para poder vincularla al proyecto/contrato, así como quien determine los campos obligatorios a cumplimentar para poder registrar la Empresa.

  


Si el proyecto se crea desde la concesión de un Solicitud o bien se vincula directamente a una Convocatoria, la entidad gestora será copiada desde la Convocatoria origen, siempre y cuando esta información haya sido completada en la convocatoria.

#### Entidades convocantes

Se permitirá la inclusión de una o varias Entidades convocantes. No se realizará ninguna comprobación para asegurar que la Entidad gestora figure entre las entidades convocantes, ni tampoco que las Entidades convocantes figuren entre las Entidades financiadoras.  Tampoco será obligatorio vincular la convocatoria a ninguna entidad (gestora, convocante o financiadora) pero el SGI notificará con un aviso esta situación en el momento que el proyecto/contrato adquiera el estado "Concedido". 

Las Entidades convocantes se deberán seleccionar del listado de Entidades disponible en el módulo Empresas, común a todo el SGI. Este módulo, a su vez, tendrá establecidos los mecanismos de integración correspondientes con el/los sistemas corporativos universitarios, donde se centralice la información de empresas/organismos. Es común que las entidades, sobre todo las que representan a organismos públicos dispongan de una agrupación de subentidades. Las convocatorias/proyectos deben quedar referenciados a la subentidad (Ejemplo: Entidad: Ministerio de Ciencia e Innovación, Subentidad: Agencia estatal de investigación). El SGI tendrá la capacidad de recoger la información a nivel de subentidad, pero el sistema origen que marcará la disponibilidad de esta información será el/los sistemas corporativos universitarios que centralicen la información de las Empresas. Ver [REQ\-INT\-0015\-SGEMP\-0020 \- Buscar empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md")

Si en el momento de creación del proyecto la entidad convocante no estuviese registrada, el usuario deberá dirigirse al módulo de Empresas, común al SGI, desde el que  se registrarán los datos necesarios para la creación de la nueva entidad. Será la integración de este módulo de Empresas con los sistemas corporativos de la Universidad, la que determine cuándo estará disponible la nueva entidad para poder vincularla al proyecto/contrato, así como quien determine los campos obligatorios a cumplimentar para poder registrar la Empresa. Ver [REQ\-INT\-0015\-SGEMP\-0020 \- Buscar empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md")

De todos los campos que pudieran tener las Empresas, en el listado de las entidades convocantes se mostrará:

* Nombre de la entidad
* CIF de la entidad
* Nombre de la subentidad
* Código de la subentidad

Toda entidad convocante que se vincule al proyecto debe asociarse a un programa de investigación. Los planes y programas  deberán haber sido registrados en el sistema  por los ACT\-CSP\-004\-Administrador con caracter previo. Ver [Gestión de Planes y programas de investigación](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Convocatorias#CSP-Convocatorias-plan_investigacion "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Convocatorias#CSP-Convocatorias-plan_investigacion"). No existirá ningún tipo de restricción para vincular cualquier entidad convocante a cualquier plan.

Para crear un proyecto no será obligatorio que se indique ninguna entidad convocante. Si bien esto implicará que no se pueda clasificar  bajo ningún plan/programa, con la siguiente pérdida de capacidad de explotación y agrupación de la información.  El proyecto podrá estar vinculado a un programa/subprograma/modalidad/submodalidad por cada una de las entidades convocantes.

Una vez añadida una o varias entidades convocantes al proyecto/contrato, éstas se podrán eliminar (se eliminará la vinculación entre proyecto y Entidad convocante, pero la Entidad seguirá existiendo en el módulo común de Empresas.

  


Si el proyecto se crea desde la concesión de una solicitud, esta información será copiada de la Solicitud.

Si el proyecto no se vincula a ninguna solicitud pero sí a una convocatoria, solamente se recogerán de ésta las entidades convocantes y el programa de investigación de cada una de ellas, debiendo indicarse el subprograma/modalidad/submodalidad concreto bajo el que se enmarca el proyecto para cada una de las entidades convocantes.

  


#### Entidades financiadoras

Se permitirá la inclusión de una o varias Entidades financiadoras. No se realizará ninguna comprobación para asegurar que la Entidad gestora figure entre las Entidades financiadoras, al igual que tampoco se realizará ninguna comprobación para validar que las entidades financiadoras se correspondan con las Entidades convocantes. Tampoco será obligatorio vincular el proyecto/contrato a ninguna entidad (gestora, convocante o financiadora) pero el SGI notificará con un aviso esta situación en el momento que el proyecto/contrato adquiera el estado "Concedido".   

Las Entidades financiadoras se deberán seleccionar del listado de Entidades disponible en el módulo Empresas, común a todo el SGI. Este módulo, a su vez, tendrá establecidos los mecanismos de integración correspondientes con el/los sistemas corporativos universitarios, donde se centralice la información de empresas/organismos.  Es común que las entidades, sobre todo las que representan a organismos públicos dispongan de una agrupación de subentidades. Las convocatorias/proyectos deben quedar referenciados a la subentidad (Ejemplo: Entidad: Ministerio de Ciencia e Innovación, Subentidad: Agencia estatal de investigación). El SGI tendrá la capacidad de recoger la información a nivel de subentidad, pero el sistema origen que marcará la disponibilidad de esta información será el/los sistemas corporativos universitarios que centralicen la información de las Empresas. Ver [REQ\-INT\-0015\-SGEMP\-0020 \- Buscar empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md")

Si en el momento de creación del proyecto/contrato la entidad financiadora no estuviese registrada, el usuario deberá dirigirse al módulo de Empresas, común al SGI, desde el que  se registrarán los datos necesarios para la creación de la nueva entidad. Será la integración de este módulo de Empresas con los sistemas corporativos de la Universidad, la que determine cuándo estará disponible la nueva entidad para poder vincularla al proyecto/contrato, así como quien determine los campos obligatorios a cumplimentar para poder registrar la Empresa. Ver [REQ\-INT\-0015\-SGEMP\-0020 \- Buscar empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md")

De todos los campos que pudiera tener regsitrados la Entidad en el módulo de Empresas, en el listado de las entidades financiadoras se mostrará:

* Nombre de la entidad
* CIF de la entidad
* Nombre de la subentidad
* Código de la subentidad

  


Asociado a cada una de  las entidades financiadoras, se deberá vincular:

* Fuente de financiación. Ver [Gestión de Fuentes de financiación](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Convocatorias#CSP-Convocatorias-fuentes_financiacion "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Convocatorias#CSP-Convocatorias-fuentes_financiacion")
* Tipo de financiación. Ver  [Gestión de Tipos de financiación](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Convocatorias#CSP-Convocatorias-tipo_financiacion "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Convocatorias#CSP-Convocatorias-tipo_financiacion")
* Porcentaje de financiación.
* Importe de financiación

Es decir, una entidad financiará un proyecto/contrato a través de una fuente de financiación, haciendo uso de un mecanismo de financiación y participando sobre el total del proyecto/contrato con un porcentaje de financiación determinado. Se podrá añadir a un proyecto una misma entidad financiadora varias veces, cada una de ellas con una fuente de financiación diferente. No existirá limitación ni en el número total de entidades financiadoras, ni en en el número de veces que se incluya una misma entidad financiadora.

Al asociar una entidad financiadora no será obligatorio:

* Indicar la fuente de financiación
* Indicar el tipo de tipo de financiación
* Indicar el porcentaje de financiación
* Indicar el importe de financiación

Deberá tenerse en cuenta que el no introducir cualquiera de los datos anteriores restará capacidad de clasificación y consulta posterior de la información de los proyectos/contratos.

Para crear un proyecto/contrato no será obligatorio que se indique ninguna entidad financiadora. Si bien debe tenerse en cuenta que el hecho de no indicar ninguna entidad financiadora supondrá que no pueda introducirse el detalle de financiación del mismo y que determinada información económica procedente del SGE pueda quedar inconexa a efectos de su posterior agrupación para posibles informes. 

Una vez añadida una o varias entidades financiadoras al proyecto/contrato éstas se podrán eliminar (se eliminará la vinculación del proyecto con la Entidad, pero la Entidad seguirá existiendo en el módulo común de Empresas). Del mismo modo se podrán modificar los datos asociados (fuente de financiación, tipo de financiación y/o porcentaje de financiación).

  


Si el proyecto se crea desde la opción disponible en una Solicitud concedida, se copiará la información recogida en la solicitud, teniendo disponible el presupuesto solicitado (en el caso de que se hubiera incluido el desglose del mismo). Este presupuesto recogido desde la solicitud será simplemente informativo. El presupuesto del proyecto válido para realizar el seguimiento económico deberá ser introducido por los ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador desde el apartado Configuración económica \- Presupuesto, donde ya se recogerán las aplicaciones presupuestarias y los importes concedidos.

Si el proyecto no se vincula a una  solicitud pero sí a una convocatoria, se copiará la información de las entidades financiadoras y fuentes de financiación, sin contar con el detalle del presupuesto solicitado.

  


### Equipo

Apartado para recoger el equipo de proyecto. El equipo de proyecto quedará constituido por una serie de miembros, para cada uno de los cuales debe indicarse:

* Rol con el que participará en el equipo de proyecto. Se deberá especificar obligatoriamente un rol para cada uno de los miembros del equipo. Los roles disponibles serán los configurados en la tabla ["rol equipo"](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Solicitudes#CSP-Solicitudes-rol_equipo "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Solicitudes#CSP-Solicitudes-rol_equipo").
* Fecha de inicio y fecha de fin de participación. Es el rango de participación en el proyecto.

La configuración de los tipos de rol (Ver [Configuración roles de equipo de proyecto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-solicitudes/index.md#CSPSolicitudes-Solicitudes-rol_equipo "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-solicitudes/index.md#CSPSolicitudes-Solicitudes-rol_equipo")) marcará el colectivo bajo el que se debe de realizar la búsqueda del personal que puede ejercer el rol.

Los miembros del equipo se añadirán a partir de un buscador. Este buscador devolverá resultados a partir de la integración con el Sistema de gestión de personas corporativo (SGP). Este sistema debe disponer de algún campo que permita identificar en qué conjunto de población universitaria se clasifica cada persona (ejemplo PDI, PAS, Alumnos). En el proceso de implantación del SGI, cada Universidad debe de determinar, a partir de los filtros que se puedan establecer en la integración con el SGP, que grupos de personas deberán estar disponibles en el SGI para ser candidatas a formar parte de los equipos de proyecto. La búsqueda de las personas para cada colectivo debe de quedar resuelta a través del requisito de integración [REQ\-INT\-0020\-SGP\-0010 \- Listar colectivos SGI](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0010-listar-colectivos-sgi.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0010-listar-colectivos-sgi.md") y [REQ \-](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md") [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md") con el/los correspondientes sistemas corporativos de la Universidad.  Si el buscador no devolviese al investigador que desea ser añadido al equipo de proyecto, éste no podrá ser registrado de manera directa en el SGI. Si fuese necesario registrar una nueva persona porque no estuviese aún identificada en los sistemas corporativos, el SGI facilitará los mecanismos de integración correspondientes, [REQ\-INT\-0020\-SGP\-0050 \- Solicitar alta de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0050-solicitar-alta-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0050-solicitar-alta-de-persona.md"), pero será necesario que este registro se realice sobre el sistema corporativo (externo al SGI) que centralice la información de personas con las que la Universidad mantiene algún vínculo.  El módulo de integración del SGI notificará al SGP la "orden" de creación de un nuevo miembro. Para ello desde el SGI (módulo INV) de deben recoger los campos necesarios para remitir esta información en la notificación de registro de nuevo investigador al SGP. La disponibilidad de este nuevo investigador, puede que no sea inmediata, pues la creación debe de ser realizada por el sistema externo, SGP.

  


Las fechas de inicio y fin de participación en el proyecto de cada miembro tomarán por defecto las fechas de inicio y fin del proyecto. Estas fechas podrán ser modificadas, verificando el SGI que nunca se sobrepasen las fechas de inicio y fin del proyecto ni haya solapes de fechas para un mismo miembro que pueda participar en periodos de tiempo diferentes. Un mismo miembro puede participar en el proyecto en diferentes periodo de tiempo, con diferente rol. Se mostrará siempre todo el histórico de composición del equipo.

En caso que el proyecto se cree a partir de la concesión de una solicitud, la información del equipo original se tomará a partir de lo recogido en la solicitud.  En la solicitud los periodos de participación se indican en base a meses, por lo que, al traspasar la información de la solicitud al proyecto,  las fechas de inicio y fin de participación se calcularán a partir de la fecha de inicio del proyecto y los meses de inicio y fin de participación indicados para cada miembro en la solicitud. 

### Responsable económico

En este apartado quedará recogido el responsable económico del proyecto. El responsable económico quedará constituido por:

* Un ACT\-CSP\-001\-Investigador
* Fecha de inicio y fecha de fin de participación. Es el rango de participación en el proyecto.

Las fechas de inicio y fin de participación en el proyecto del responsable económico no podrán sobrepasar las fechas de inicio y fin del proyecto ni se permitirá que haya solapes de fechas. Sólo puede existir un único responsable económico en el mismo instante. Se mostrará siempre todo el histórico de responsables económicos del proyecto.

El responsable económico se añadirá a partir de un buscador. Este buscador devolverá resultados a partir de la integración con el Sistema de gestión de personas corporativo (SGP). Este sistema debe disponer de algún campo que permita identificar en qué conjunto de población universitaria se clasifica cada persona (ejemplo PDI, PAS, Alumnos). En el proceso de implantación del SGI, cada Universidad debe de determinar, a partir de los filtros que se puedan establecer en la integración con el SGP, que grupos de personas deberán estar disponibles en el SGI para ser candidatas a ser responsables económicos de un proyecto. 

Si el buscador no devolviese a la persona que desea ser añadida, éste no podrá ser registrado de manera directa en el SGI. El registro de nuevas personas estará centralizado de forma común en el SGI por medio de la correspondiente integración con el sistema de gestión de personas (SGP) corporativo . Este módulo notificará al SGP la "orden" de creación de una nueva persona. Para ello desde el SGI de deben recoger los campos necesarios para remitir esta información en la notificación de registro de nuevo investigador al SGP. La disponibilidad de este nuevo investigador, puede que no sea inmediata, pues la creación debe de ser realizada por el sistema externo, SGP.

  


### Socios

Este apartado estará disponible si en la Ficha general del proyecto se ha indicado que el proyecto es colaborativo. Se permitirá entonces recoger los socios que participan junto a la Universidad en el desarrollo del proyecto y, para cada uno de ellos, será posible registrar una serie de información adicional.

  


En el caso de que el proyecto haya sido creado desde la concesión de una solicitud la información de los socios colaboradores vendrá cargada a partir de la información incluida en la Solicitud, con la salvedad de las fechas de participación.

#### Listado de socios

Una vez hubieran sido introducidos los socios, se dispondrá de un listado agrupado de los mismos donde se mostrará información de forma resumida:

* Identificador fiscal
* Nombre del socio
* Rol con el que participa en el proyecto
* Número de investigadores
* Fechas de participación

Desde este listado se podrá añadir un nuevo socio. La información de un nuevo socio se agrupa en tres apartados:

* Datos generales
* Equipo
* Periodos de pago
* Periodos de justificación

#### Datos generales

Los socios colaboradores serán Empresas que, al igual que las Entidades gestora/convocante/financiadora del proyecto, estarán centralizadas de forma externa al SGI.  Los sistemas que deberán centralizar la información referente a los socios y sus miembros serán los llamados genéricamente Sistema de gestión de personas (SGP) y/o Sistema de gestión económica (SGE).

El listado de socios (empresas) disponible procederá del módulo Empresas, común a todo el SGI.  Este módulo tendrá establecidos los mecanismos de integración correspondientes, de forma que el SGI proporcionará  un interface de integración para la búsqueda y notificación de creación de nuevos socios. Este interface de integración deberá ser implementado por el SGP y/o SGE correspondientes.

Para referenciar los socios se dispondrá de un buscador. Este buscador resolverá la búsqueda a través del bus de integración contra los sistemas:

* Sistema de gestión económica (SGE). [REQ\-INT\-0015\-SGEMP\-0020 \- Buscar empresa](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0015-sgemp-integracion-con-sistema-de-gestion-de-empresas/req-int-0015-sgemp-0020-buscar-empresa.md")
* Sistema de gestión de personas (SGP).  [REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md")

En primer lugar se realizará la búsqueda contra el SGE, donde el socio podría estar registrado si ya se hubieran establecido relaciones económicas con el mismo. En caso de que la búsqueda no sea satisfactoria, ésta se ampliará al SGP, pues podría darse la situación que el socio ya estuviera registrado como Empresa con la que ya se hubiera mantenido colaboración previa.

Si el buscador no devolviese ninguna referencia para el socio (empresa) buscado, éste no podrá ser registrado de manera directa en el SGI. El registro de un nuevo socio estará centralizado por el módulo de Empresas, común al SGI. Este módulo notificará al SGP la "orden" de creación de una nueva empresa. Para ello facilitará un formulario a través del que se registrarán los campos necesarios. Esta información será remitida al SGP en la notificación de registro de la nueva empresa. La disponibilidad del nuevo socio, puede que no sea inmediata, pues la creación debe de ser realizada por el sistema externo, SGP. Será la integración de este módulo de Empresas con el SGP, la que determine cuándo estará disponible el nuevo socio para poder vincularlo a la solicitud, así como quien determine los campos obligatorios a cumplimentar para poder registrar la Empresa.

Una vez indicado el socio se añadirá la información que lo relaciona con el proyecto/contrato:

* El rol que desempeña. Los roles de los socios de proyecto estarán disponibles a través de la tabla [tipos de roles de socios](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Solicitudes#CSP-Solicitudes-rol_socio "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Solicitudes#CSP-Solicitudes-rol_socio") (ejemplos de valores "líder", "colaborador"). Si en la Ficha de Datos generales del proyecto ya se ha indicado que quien coordina el proyecto es la propia Universidad, todos los socios tendrán por defecto rol "colaborador".
* El número de investigadores que forman parte del equipo de trabajo del socio (que, adicionalmente, podrá ser desglosado en equipo de proyecto).
* El importe al que asciende el presupuesto de su parte del proyecto.
* El importe que le corresponde del concedido dentro del cómputo global del proyecto.
* El periodo de participación. El periodo de participación debe de ser expresado con los datos concretos de fecha de inicio y fecha de fin. Si el proyecto ha sido creado desde la concesión de una solicitud, las fechas de inicio y fin se calculará a partir de la fecha de inicio indicada para el proyecto y los meses de participación indicados para el socio en la solicitud. Si la fecha de inicio del proyecto aún no hubiera sido detallada, o no estuviera disponible la información de los meses de participación del socio, las fechas de participación deberán ser indicadas manualmente.

#### Equipo

Por cada uno de los socios se podrá detallar el equipo de proyecto, sin que sea una información requerida con carácter obligatorio. Para cada miembro se podrá detallar:

* Rol que desempeña. Para ello se utilizará la misma tabla [tipos de rol de equipo](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Solicitudes#CSP-Solicitudes-rol_equipo "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Solicitudes#CSP-Solicitudes-rol_equipo") disponible para el equipo de proyecto propio.
* Fechas de inicio y fin de participación en el proyecto. No son datos obligatorios.

Como ocurre con el equipo propio,  los miembros del equipo se añadirán a partir de un buscador. En este caso, los miembros no serán personal propio. La búsqueda será realizada, a través de los  mecanismos de integración provistos por el SGI, contra el SGP corporativo ([REQ\-INT\-0020\-SGP\-0020 \- Buscar persona en un listado de colectivos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0020-buscar-persona-en-un-listado-de-colectivos.md")). En este caso se debe aplicar la búsqueda sobe el colectivo de personas Externas a la universidad [REQ\-INT\-0020\-SGP\-0010 \- Listar colectivos SGI](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0010-listar-colectivos-sgi.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0010-listar-colectivos-sgi.md"). Si el buscador no devolviese al miembro que desea ser añadido al equipo de proyecto del socio, éste no podrá ser registrado de manera directa en el SGI. El registro de nuevos miembros estará centralizado en el SGP, donde se deberá de identificar con la categorización adecuada que se trata de una persona ajena a la Universidad, con la que no establece una relación directa, sino un vínculo de colaboración. Esta categorización debe de ser definida en el SGP. El SGI simplemente notificará al SGP la "orden" de creación de una nueva persona (ajena a la Universidad), a través del requisito de integración [REQ\-INT\-0020\-SGP\-0050 \- Solicitar alta de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0050-solicitar-alta-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0050-solicitar-alta-de-persona.md"). Desde el SGI se deben recoger los campos necesarios y remitirlos al SGP. La disponibilidad de este nuevo miembro, puede que no sea inmediata, pues la creación debe de ser realizada por el sistema externo, SGP. Serán los mecanismos de integración que facilite este sistema los que determinen cuanto de inmediata será la operación. 

Si el proyecto ha sido creado desde la opción disponible en la Solicitud en estado concedida, las fechas de inicio y fin de participación de cada miembro se calcularán a partir de la fecha de inicio del Proyecto y los meses relativos de participación que se hubieran indicado en el momento de recoger los datos de la Solicitud.  Si la fecha de inicio del proyecto aún no hubiera sido detallada, o no estuviera disponible la información de los meses de participación del socio, las fechas de participación deberán ser indicadas manualmente. 

#### Periodos de pago

Los periodos de pago aplicarán cuando sea la Universidad quien coordine el proyecto colaborativo. Serán los periodos de pago a los que la Universidad se compromete con el socio.  

Los periodos previstos de pago de un socio quedan definidos por:

* Número de periodo. Secuencial calculado por el sistema de acuerdo a la ordenación de la fecha prevista de realización del pago.
* Fecha prevista de realización del pago.
* Importe. Importe a pagar.
* Fecha de realización del pago. Deberá ser informada manualmente.

No será obligatorio indicar los periodos previstos de pago para registrar una solicitud. Si se crea un periodo de pago el dato mínimo obligatorio será la fecha prevista de pago y el importe.

Si el proyecto se crea a partir de la opción disponible sobre la Solicitud concedida, la información será copiada a partir de la registrada en su momento en la solicitud. La fecha prevista de realización del pago se calculará a partir de la fecha de inicio del proyecto y el  mes previsto de pago, relativo a la duración del proyecto, que se hubiera indicado en la Solicitud.

A partir de la fecha prevista de realización del pago indicada el SGI creará un aviso en el módulo [AVI \- Módulo de Avisos / Alertas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md").

#### Periodos de justificación

Los periodos de justificación aplicarán cuando el coordinador del proyecto sea la propia Universidad, y serán los periodos de justificación que se le deben exigir al socio.  Por cada socio existirá un listado de periodos de justificación. Cada periodo de justificación tendrá:

* Datos generales
* Documentos asociados

##### Datos generales

Los periodos de justificación de un socio quedan definidos por:

* Número del periodo. Secuencial calculado por el sistema de acuerdo a la ordenación del mes inicial del periodo a justificar.
* Periodo a justificar. Expresado como fecha de inicio y fin.
* Periodo de solicitud de la justificación. Expresado como fecha inicial y final. Con este periodo se recogerán las fechas en las que estará previsto que se solicite al socio toda la información necesaria para la justificación a la entidad correspondiente.
* Observaciones. Campo para recoger cualquier observación necesaria sobre el periodo de justificación relativo a la relación con el socio colaborador.
* Documentación recibida. Permitirá indicar si ha sido recibida la documentación de justificación. Si en este campo se indica que ha sido recibida la documentación, se permitirá la introducción del campo "fecha de recepción" así como del detalle de "documentación" recibida.
* Fecha de recepción. Permitirá recogerá la fecha en la que ha sido recepcionada la documentación de justificación. Este campo estará disponible para su cumplimentación solo si se ha marcado el check "Documentación recibida".
* Importe justificado. Permitirá recoger el importe que ha justificado el socio en el periodo.

No será obligatorio indicar los periodos de justificación de ningún socio.

En caso de que se hubiesen cumplimentado el periodo de solicitud de la justificación, se tomará como referencia la fecha de inicio de este periodo para generar un aviso en el módulo [AVI \- Módulo de Avisos / Alertas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md").

Si el proyecto ha sido creado a partir de la concesión de una Solicitud, se podrá obtener de manera directa la información relativa a los periodos (número de periodo, periodo a justificar y observaciones).

  


##### Documentos

Si en el apartado Datos generales se ha recogido que la documentación ha sido recibida, este apartado pasará a estar disponible para poder adjuntar la documentación proporcionada por el socio para cada uno de los periodos. Para cada documento que se adjunte se podrá indicar:

* Tipo de documento. El tipo de documento será uno de los disponibles en el modelo de ejecución al que se haya vinculado el proyecto/contrato. No será obligatorio indicar un tipo de documento. El tipo de documento permitirá mostrar de forma agrupada la documentación en el apartado general "Documentos" del proyecto.
* Comentarios al documento. Campo de texto libre para recoger cualquier aclaración sobre el documento.
* Visible al equipo de investigación. Con este check se podrá activar o no la visibilidad del documento para los ACT\- CSP\-001\-Investigador desde su acceso al SGI.

Una vez adjuntado, el documento podrá ser descargado, modificado o eliminado.

### Fases e hitos

En este apartado se centraliza la información relativa a las diferentes fases o hitos que se considere necesario dejar recogidas. Esta información será propia del proyecto, por tanto, no será recuperable de la que pudiera haber sido registrada en la convocatoria y/o solicitud.

#### Fases

En este apartado se incluirán los plazos/fases/etapas generales del proyecto (teniendo en cuenta que los periodos de justificación y de seguimiento científico tendrán sus propios apartados). Los plazos de un proyecto quedan definidos por:

* Fecha de inicio
* Fecha de fin
* Tipo de fase. Los tipos de fase disponibles serán los configurados sobre el modelo de ejecución al que se haya asociado la convocatoria.
* Observaciones
* Genera aviso

Los tipos de fase disponibles serán los que están asociados al modelo de ejecución que se haya indicado en los Datos generales (bien de manera directa en el proyecto, bien a través la convocatoria de origen) . Puede verse el detalle de definición de los modelos de ejecución en [CSP \- Modelo de ejecución](https://confluence.um.es/confluence/pages/viewpage.action?pageId=85633092 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=85633092"). La configuración de las fases podrá ser tan amplia como las Unidades de gestión consideren, de acuerdo a sus procesos internos y/o la cantidad de información que se desee dejar recogida en el SGI.

Los datos obligatorios para añadir un plazo o fase a un proyecto/contrato serán:

* Fecha de inicio
* Fecha de fin
* Tipo de fase

Podrá darse el caso que una fase pueda recogerse en una sola fecha, en este caso se indicaría el mismo valor tanto en fecha de inicio como en fecha de fin. Se comprobará que las fecha de fin sea siempre mayor o igual que la fecha de inicio. O también, para estos casos, podría hacerse uso de los hitos del proyecto/contrato. Los hitos darán la posibilidad de registrar acontecimientos puntuales, asociados exclusivamente a una fecha concreta. 

El campo "genera aviso" permitirá activar o no la creación de un aviso en el módulo [AVI \- Módulo de Avisos / Alertas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/com-modulo-de-comunicados/index.md")

Una vez asociado un periodo o plazo para una fase, sus datos podrán ser modificados y/o podrá eliminarse.

#### Hitos

Los hitos del proyecto permitirán registrar cualquier acontecimiento pasado o futuro que se considere relevante dejar historificado en la información del proyecto/contrato. Un hito queda definido por:

* Tipo de hito. Será seleccionable del listado de hitos configurados sobre el modelo de ejecución al que se ha asociado el proyecto/contrato (bien directamente bien a través de la convocatoria de origen). Los tipos de hitos partirán de la tabla de configuración global al SGI ([IU\-CSP\-0046 \- Gestión de tipos de hito de proyecto](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=_borrar_IU-CSP-0046+-+Gesti%C3%B3n+de+tipos+de+hito+de+proyecto&linkCreation=true&fromPageId=597852939 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=_borrar_IU-CSP-0046+-+Gesti%C3%B3n+de+tipos+de+hito+de+proyecto&linkCreation=true&fromPageId=597852939"))
* Fecha. Fecha concreta en la que ocurre el hito.
* Comentario. Campo de texto de libre introducción.
* Genera aviso. Check que definirá si el hito creará un aviso en el módulo AVI del SGI ([CSP \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/index.md")). Este campos solamente estará disponible si la fecha del hito es una fecha futura.

Con la configuración de los tipos de hitos de proyecto, vinculados al modelo de ejecución, se dota al SGI de un mecanismo dinámico para el registro de fechas, no solo a nivel de implantación por Universidad sino a nivel de modelo de ejecución. Si se define un modelo de ejecución para los proyectos y otro para cada uno de los tipos de contrato, los tipos de hitos se adaptarán a las necesidades de cada uno de ellos. La configuración de estos tipos de hitos está  abierta a los ACT\-CSP\-004\-Administrador de las Unidades de gestión. De esta forma las fechas a registrar en los proyectos/contratos no están limitadas de antemano por el Sistema, dando así libertad en la gestión de proyectos/contratos, a la vez que se mantiene una base común para todas las Unidades de gestión y a todo el SGI (Tipo de hito de proyecto). Esta tipificación común permitirá realizar búsquedas y clasificaciones posteriores en base a criterios homogéneos. 

Por ejemplo, en los contratos, se podrán definir tipos de hitos como "firma por parte de la Universidad", "firma por parte de la empresa", etc. Estos tipos se definirán en el apartado de configuraciones del módulo de CSP, como tipos de hito de proyecto ([IU\-CSP\-0046 \- Gestión de tipos de hito de proyecto](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=_borrar_IU-CSP-0046+-+Gesti%C3%B3n+de+tipos+de+hito+de+proyecto&linkCreation=true&fromPageId=597852939 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=_borrar_IU-CSP-0046+-+Gesti%C3%B3n+de+tipos+de+hito+de+proyecto&linkCreation=true&fromPageId=597852939")). Posteriormente, en el contrato, en el apartado Hitos, se añadirán las fechas concretas en las que suceden ambos acontecimientos, seleccionando los tipos de hitos definidos.

### Seguimiento científico

En este apartado se permitirá mantener historificados los periodos de seguimiento científico. La información disponible para cada periodo será:

* Datos generales
* Documentación asociada

#### Datos generales

Los periodos de seguimiento quedan definidos por:

* Número del periodo. Secuencial calculado por el sistema de acuerdo a la ordenación del mes inicial del periodo de seguimiento.
* Periodo de seguimiento.  Fecha de inicio y fin define el  periodo de seguimiento científico.
* Tipo de seguimiento (periódico, final).
* Plazo de presentación. Expresado como fecha de inicio y fecha de fin. Con este periodo se recogerán las fechas en las que se debe entregar la documentación de seguimiento científico a la entidad convocante (o de manera interna, de acuerdo a los procedimientos que apliquen para el proyecto/contrato).
* Observaciones. Campo para recoger cualquier observación necesaria sobre el periodo de seguimiento.

No se limitará  el número de periodos de seguimiento científico que puedan ser añadidos a un proyecto/contrato. Una vez asociado un periodo de seguimiento a una convocatoria, sus datos podrán ser modificados y/o podrá eliminarse.

No será obligatorio indicar los periodos de seguimiento.

En caso de que se haya cumplimentado el plazo de presentación, se utilizará la fecha de inicio del mismo para generar un aviso en el módulo de comunicados ([CSP \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/index.md")).

Si el proyecto ha sido creado a partir de la concesión de una Solicitud, se podrá obtener de manera directa la información relativa a los periodos.

#### Documentos

Para cada periodo de seguimiento se podrá recoger la documentación asociada. Un periodo podrá tener asociados varios documentos, y por cada documento que se adjunte se podrá indicar:

* Tipo de documento. El tipo de documento será uno de los disponibles en el modelo de ejecución al que se haya vinculado el proyecto/contrato. No será obligatorio indicar un tipo de documento. El tipo de documento permitirá mostrar de forma agrupada la documentación en el apartado general "Documentos" del proyecto.
* Comentarios al documento. Campo de texto libre para recoger cualquier aclaración sobre el documento.
* Visible al equipo de investigación. Con este check se podrá activar o no la visibilidad del documento para los ACT\- CSP\-001\-Investigador desde su acceso al SGI.

Una vez adjuntado, el documento podrá ser descargado, modificado o eliminado.

### Prórrogas

Apartado en el que se podrán recoger las prórrogas o ampliaciones del proyecto/contrato.  Se dispondrá de la historificación de todas las prórrogas registradas. Una prórroga queda definida por:

* Datos generales
* Documentos

#### Datos generales

Los campos disponibles para recoger la información de un prórroga son:

* Número de prórroga. Será un secuencial calculado automáticamente por el Sistema cada vez que se registre una nueva prórroga, y que se irá ordenando de acuerdo a la fecha de concesión.
* Fecha de concesión. Será la fecha en la que se concede la prórroga, bien por la entidad convocante/financiadora bien de manera interna, de acuerdo a la gestión del proyecto/contrato.
* Tipo de prórroga. Desplegable para indicar si la prórroga implica:
	+ Solo ampliación temporal (tipo "Tiempo")
	+ Solo ampliación económica (tipo "Importe")
	+ Ampliación temporal y económica (tipo "Tiempo e Importe")
* Nueva fecha de fin de proyecto. Indicará la nueva fecha de fin que ha sido concedida. Con el valor indicado en este campo se actualizará la fecha de fin del apartado de Datos generales del proyecto. Además, sobre los miembros del equipo cuya fecha de fin de participación coincida con la fecha de fin de proyecto anterior, se producirá automáticamente la actualización de la fecha de fin al nuevo valor de fecha de fin del proyecto.
* Importe concedido. Recogerá el valor del importe concedido en la prórroga. No se producirá ninguna actualización automática del presupuesto del proyecto, debiendo ser éste debidamente actualizado por los ACT\-CSP\-004\-Administrador o ACT\-CSP\-003\-Gestor de la Unidad de gestión responsable.
* Observaciones. Campo de texto libre para recoger cualquier información que pueda resultar relevante referida a la prórroga concedida.

Por cada prórroga se podrán adjuntar los documentos que se considere necesario.

Los campos obligatorios para registrar una prórroga, serán:

* Fecha de concesión
* Tipo de prórroga
* Nueva fecha de fin del proyecto  (en caso que el tipo de prórroga sea "Tiempo" o "Tiempo e importe")
* Importe concedido (en caso que el tipo de prórroga sea "Importe" o "Tiempo e importe")

#### Documentos

Para cada prórroga registrada se podrá recoger la documentación asociada. Un periodo podrá tener asociados varios documentos, y por cada documento que se adjunte se podrá indicar:

* Tipo de documento. El tipo de documento será uno de los disponibles en el modelo de ejecución al que se haya vinculado el proyecto/contrato. No será obligatorio indicar un tipo de documento. El tipo de documento permitirá mostrar de forma agrupada la documentación en el apartado general "Documentos" del proyecto.
* Comentarios al documento. Campo de texto libre para recoger cualquier aclaración sobre el documento.
* Visible al equipo de investigación. Con este check se podrá activar o no la visibilidad del documento para los ACT\- CSP\-001\-Investigador desde su acceso al SGI.

Una vez adjuntado, el documento podrá ser descargado, modificado o eliminado.

### Documentos

En este apartado se podrán visualizar todos los documentos asociados al proyecto desde cualquiera de los apartados en los que se incluya documentación (seguimiento científico, prórrogas, etc.) a la vez que se podrán registrar nuevos documentos. No existirá limitación en el número de documentos. 

  


La información asociado a los documentos de un proyecto será:

* Metadatos del fichero
* Tipo de fase
* Tipo de documento
* Comentarios sobre el documento
* Visible para el equipo de investigación

  


Los metadatos del fichero hacen referencia a la estructura interna y común al SGI a través de la que se resolverá el almacenamiento de documentos en el repositorio del SGI. Reunirá entre otra información el nombre del fichero, el fichero propiamente dicho y la fecha de subida. Es una información obligatoria, inherente a la propia operación de registro del  documento.

Tipo de documento y tipo de fase, se indicarán a través de sendos listados. Los tipos disponibles serán los configurados en el modelo de ejecución (puede verse el detalle de definición de los modelos de ejecución en [CSP \- Modelo de ejecución](https://confluence.um.es/confluence/pages/viewpage.action?pageId=85633092 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=85633092")) al que se haya asociado el proyecto/contrato en el apartado de Datos generales.  Ambos listados serán dependientes de acuerdo a la definición del modelo de ejecución, es decir, de acuerdo al tipo de fase al que se indique que pertenece el documento estarán disponibles unos tipos de documentos. No se limitará el número de documentos de cada tipo de fase\-tipo de documento que se puedan incluir en el proyecto. Ambos tipos, fase y tipo de documento, se utilizarán para clasificar los documentos dentro del proyecto, facilitando así la organización de la información tanto al personal de gestión como al personal de investigación. Sin embargo, no será obligatorio especificar la fase y/o el tipo de documento, pudiendo asociarse a la convocatoria ficheros sin clasificación.

Se podrá añadir un comentario al documento e indicar, a través del campo "Visible para el equipo de investigación" si el documento va ser visible para los ACT\- CSP\-001\-Investigador a través de su acceso al SGI.

  


A excepción de la limitación impuesta por el campo "Visible para el equipo de investigación" que afecta únicamente a la visibilidad por parte del documento por parte de los ACT\- CSP\-001\-Investigador, no existirá vinculaciones de "propiedad" del fichero al usuario concreto que lo hubiera adjuntado. Es decir, los ficheros serán una información más del proyecto/contrato que contarán con las restricciones por el rol y unidad de gestión al igual que el resto de campos.

  


Los documentos quedarán registrados en el repositorio de documentos global del SGI y se mostrarán en formato de árbol manteniendo la jerarquía:

* Nivel 1: Tipo de fase
* Nivel 2: Tipo de documento

Los documentos para los que no se hubiera indicado ninguna fase se mostrarán en un nodo  común "Sin fase". Dentro de este nodo común, habrá a su vez un nodo por cada "Tipo de documento" y otro nodo común "Sin tipo de documento" bajo el que se agruparán todos los documentos para los que no se haya indicado ni fase ni tipo. A su vez para los documentos que hubieran sido adjuntados desde apartados concretos de la gestión del proyecto/contrato, tales como "Seguimiento científico", "Prórrogas" o "Justificación de socios", el tipo de fase irá implícita al propio apartado funcional, aunque no hubiera sido creado un Tipo de fase en el modelo de ejecución correspondiente.

  


Dese el árbol de documentos se podrá seleccionar cualquier documento, y sobre él se permitirá:

* Descargar
* Volver a adjuntar (de manera que no se conservará el fichero anterior)
* Modificar sus datos:
	+ Tipo de fase
	+ Tipo de documento
	+ Comentarios
	+ Visible para el equipo de investigación
* Eliminar el documento (implicará un borrado físico del documento)

  


### Configuración de paquetes de trabajo

Si bien los paquetes de trabajo son propios de la gestión de proyectos europeos, el SGI no establece ninguna restricción para activarlos sobre cualquier tipo de proyecto/contrato. Esta activación se realiza desde la Ficha general del proyecto, a través del campo "Paquetes de trabajo". Si en este campo se recoge  un valor afirmativo, el apartado "Configuración de paquetes de trabajo" estará disponible. Aunque la descomposición en paquetes de trabajo no es imprescindible para habilitar el registro de timesheet sobre el proyecto/contrato (que es un parámetro de configuración independiente, también disponible en la Ficha general del proyecto), sí que están estrechamente vinculados a la gestión de timesheet.

La configuración de paquetes de trabajo incluye:

* Listado de paquetes de trabajo del proyecto

#### Paquetes de trabajo

Un paquete de trabajo queda definido por los siguientes campos:

* Nombre
* Duración. Expresada como:
	+ Fecha de inicio
	+ Fecha de fin
* Personas/mes
* Descripción

  


Los campos obligatorios para la creación de un paquete de trabajo serán:

* Nombre del paquete, que ha de ser único dentro del proyecto.
* Fecha de inicio y fecha de fin, que deben estar incluidas dentro de la duración de la proyecto.
* Personas/mes

  


  


### Configuración económica

Desde este apartado se realizará la configuración de todos los datos económicos del proyecto/contrato/beca/ayuda que, además de formar parte de los datos propiamente dichos del proyecto, serán el nexo de unión entre el SGI y el SGE para establecer los mecanismos de integración necesarios entre ambos sistemas.

Esta configuración incluye:

* Identificación
* Elegibilidad
* Códigos económicos
* Presupuesto
* Agrupaciones de gastos
* Consulta de presupuesto
* Amortización de fondos
* Calendario de facturación
* Calendario de justificaciones

  


![](/attachments/597852939/597874124.png)

  


#### Identificación

En este aparatado se establecerá la correspondencia del proyecto/contrato con el SGE (Sistema de gestión económica). Se debe de registrar el código con el que se va a identificar el proyecto/contrato en el SGE. El formato de este código será dependiente del SGE. Para asegurar la compatibilidad con los SGE, el SGI no partirá de ningún formato preestablecido, sino que admitirá un código alfanumérico. El valor introducido debe ser aquel que permita identificar de manera única al proyecto/contrato en el SGE. Ejemplos de valores posibles:

* Código de proyecto JUSTO (JUSTO es el SGE propio de la Universidad de Murcia)
* Código completo de la orgánica más la funcional (para el caso que el SGE se UXXI\-EC). El formato con el que se compongan la orgánica y la funcional permanecerá ajeno al SGI. Su valor se debe de introducir de forma íntegra en este apartado por los ACT\-CSP\-003\-Gestor de la Unidad de gestión responsable del proyecto.

  


El código de identificación introducido aquí será la base a partir de la que el SGI deberá de poder recuperar todas las operaciones contables configuradas en la integración con el SGE. Si bien lo normal será que cada proyecto/contrato del SGI tenga correspondencia con un solo identificador en el SGE, se permitirá que sean añadidos varios identificadores. En este caso, se recuperarán sobre el mismo proyecto SGI todas las operaciones contables que se registren en el SGE sobre todos los códigos de identificación que se hayan incluido en este apartado.

  


#### Elegibilidad

En este apartado se configurarán los conceptos de gasto del proyecto a tres niveles:

* Conceptos de gasto elegibles o permitidos.
* Identificación de concepto de gasto que representa a los costes indirectos.
* Conceptos de gasto no elegibles o no permitidos.

En este apartado no se está definiendo el presupuesto del proyecto sino que se está realizando la configuración de los conceptos de gasto que van a estar habilitados en el proyecto. El listado de conceptos de gasto disponible para indicar las tres configuraciones anteriores parte de los gastos que hubieran sido configurados de manera general en el SGI por los ACT\-CSP\-004\-Administrador, a través de [Gestión de conceptos de gasto de investigación](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Convocatorias#CSP-Convocatorias-conceptos_gasto "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Convocatorias#CSP-Convocatorias-conceptos_gasto").  

Si el proyecto se ha creado a partir de la concesión de una Solicitud, o en su defecto se ha indicado la convocatoria con la que está vinculado, esta información sería tomada directamente de la convocatoria, en caso contrario deberá ser cumplimentada.

  


##### Conceptos de gasto permitidos

A un proyecto se le podrán asociar tantos conceptos de gasto como sea necesario. Quedarán definidos a través de los siguientes campos:

* Elegibilidad
	+ Concepto de gasto
	+ Importe máximo
	+ Fecha inicio
	+ Fecha fin
	+ Observaciones
* Códigos económicos del SGE

Los conceptos de gasto introducidos en este apartado servirán de referencia para la introducción posterior del presupuesto del proyecto, pero por sí solos no podrán hacer referencia a ningún dato económico de manera directa. Para ello es necesario que cada uno de estos conceptos tenga su correspondencia con los códigos económicos correspondientes del SGE, para, junto con otros datos del proyecto, poder conformar el código de las partidas presupuestarias a partir de las que se establecerá la integración con el SGE, recopilando de este sistema todo el detalle económico de cada proyecto asociado a la convocatoria. 

  


El importe máximo será un dato opcional y permitirá recoger si el proyecto marca un tope sobre el mismo (ya sea porque así lo marque la convocatoria de procedencia o porque sea impuesto por motivos propios del proyecto/contrato cuando éste no proceda de ninguna convocatoria).

Las fechas de inicio y fin definen el rango de fechas en las que el gasto estará permitido. 

Con el campo observaciones se podrá recoger cualquier comentario que aplique de forma concreta a la utilización del concepto de gasto dentro del proyecto.

En el listado de códigos económicos se establecerá la relación entre los conceptos de gasto del proyecto, tanto los permitidos como los no permitidos, con los códigos económicos del SGE. Los códigos económicos del SGE deben de ser recuperados a través del requisitos de integración [REQ\-INT\-0010\-SGE\-0070 \- Listar códigos económicos de gastos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0070-listar-codigos-economicos-de-gastos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0070-listar-codigos-economicos-de-gastos.md")

La relación entre conceptos de gasto de investigación y códigos económicos se establecerá a nivel de proyecto, lo que posibilitará la adaptación en cada una de ellas. Podría haberse optado por hacer esta vinculación con carácter general en todo el SGI, pero esto implicaría que todos los proyectos/convocatorias tuvieran la misma relación concepto de gasto de investigación \- código económico del SGI. 

La relación entre el concepto de gasto de investigación y sus códigos económicos quedará establecida por los siguientes campos:

* Código contable del  SGE, con el que se asocia el concepto de gasto. Los códigos económicos del SGE deberán ser leídos a partir de la integración con este sistema [REQ\-INT\-0010\-SGE\-0070 \- Listar códigos económicos de gastos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0070-listar-codigos-economicos-de-gastos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0070-listar-codigos-economicos-de-gastos.md")
* Fecha de inicio.
* Fecha de fin.

A través de las fechas de inicio y fin se establece la vigencia de la vinculación entre concepto de gasto y código económico. Se contemplan estas fechas para dar cabida a que la correspondencia pueda variar a lo largo de la duración de la convocatoria/proyecto, debido a que en el SGE se registren modificaciones sobre los códigos económicos. Se parte de la base de que el listado de códigos económicos debe de ser leído desde el SGE, y es este sistema el que debe informar de la vigencia de los códigos económicos, de forma que las fechas de vigencia serán las marcadas por la información recogida de los códigos económicos del SGE, a través de [REQ\-INT\-0010\-SGE\-0070 \- Listar códigos económicos de gastos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0070-listar-codigos-economicos-de-gastos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0070-listar-codigos-economicos-de-gastos.md").  Estas fechas no serán obligatorias en el SGI, de forma que si fecha inicio y fecha fin no tienen ningún valor, indicará que la correspondencia está vigente durante toda la duración de la convocatoria/proyecto. Sin embargo, se mantendrán como campos editables en el SGI para dar la posibilidad de cubrir alguna particularidad por la que estas fechas de correspondencia entre el concepto de gasto y el código económico puedan ser independientes de las fechas de vigencia del código económico en el SGE (debiendo ser introducidas en el SGI en cada convocatoria/proyecto por los ACT\-CSP\-003\-Gestor).

Un  mismo concepto de gasto de la convocatoria puede estar vinculado a más de un código del SGE, con esto se cubrirá el hecho de que el SGE definirá sus códigos contables en subconceptos.  También puede darse la situación que un código económico del SGE pueda estar vinculado a varios conceptos de gasto de la convocatoria en un mismo rango de fechas (para estas situaciones se tendrá que elegir de forma manual durante la "Validación del gasto" cual es el concepto de gasto asociado al código económico que llegue del SGE para luego poder mostrar los gastos agrupados por concepto de gasto).

  


##### Conceptos de gasto no permitidos

Los conceptos de gasto no permitidos quedarán definidos de forma similar a los permitidos, a través de los campos:

* Elegibilidad:


	+ Concepto de gasto
	+ Fecha inicio
	+ Fecha fin
	+ Observaciones
* Códigos económicos del SGE

Con el campo observaciones se podrá recoger cualquier comentario que aplique de forma concreta al gasto dentro del proyecto.

Con los campos "fecha inicio" y "fecha fin" se recogerá el rango de fechas durante el que el concepto de gasto no estará permitido.

Un mismo concepto de gasto podrá estar incluido en el listado de gastos permitidos y en el de no permitidos. En el campo observaciones se indicarán las especificaciones marcadas por la convocatoria/proyecto dentro del concepto de gasto que delimitan la elegibilidad para el tipo concreto. Será la vinculación de los conceptos de gastos a los códigos económicos lo que ya determina qué subconceptos están o no permitidos, de acuerdo al desglose que cada SGE realice de los conceptos de gasto.

El listado de conceptos de gasto es configurable por los ACT\-CSP\-004\-Administrador, a través de [Gestión de conceptos de gasto de investigación](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Convocatorias#CSP-Convocatorias-conceptos_gasto "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Convocatorias#CSP-Convocatorias-conceptos_gasto"), por lo que si en algún caso interesase que los conceptos de gasto fuesen de mayor granularidad, de forma que el mismo concepto ya discrimine la elegibilidad para evitar repetir el mismo concepto en los dos apartados (permitidos y no permitidos), también sería posible. No obstante debe tenerse en cuenta que el listado de conceptos de gasto de investigación es común a todo el SGI (y por tanto a todas las convocatorias y proyectos).

La relación entre el concepto de gasto de investigación y sus códigos económicos quedará establecida por los siguientes campos:

* Código contable del  SGE, con el que se asocia el concepto de gasto. Los códigos económicos del SGE deberán ser leídos a partir de la integración con este sistema [REQ\-INT\-0010\-SGE\-0070 \- Listar códigos económicos de gastos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0070-listar-codigos-economicos-de-gastos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0070-listar-codigos-economicos-de-gastos.md")
* Fecha de inicio.
* Fecha de fin.

A través de las fechas de inicio y fin se establece la vigencia de la vinculación entre concepto de gasto y código económico. Se contemplan estas fechas para dar cabida a que la correspondencia pueda variar a lo largo de la duración de la convocatoria/proyecto, debido a que en el SGE se registren modificaciones sobre los códigos económicos. Se parte de la base de que el listado de códigos económicos debe de ser leído desde el SGE, y es este sistema el que debe informar de la vigencia de los códigos económicos, de forma que las fechas de vigencia serán las marcadas por la información recogida de los códigos económicos el SGE, a través de [REQ\-INT\-0010\-SGE\-0070 \- Listar códigos económicos de gastos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0070-listar-codigos-economicos-de-gastos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0070-listar-codigos-economicos-de-gastos.md").  Estas fechas no serán obligatorias en el SGI, de forma que si fecha inicio y fecha fin no tienen ningún valor, indicará que la correspondencia está vigente durante toda la duración de la convocatoria. Sin embargo, se mantendrán como campos editables en el SGI para dar la posibilidad de cubrir alguna particularidad por la que estas fechas de correspondencia entre el concepto de gasto y el código económico puedan ser independientes de las fechas de vigencia del código económico en el SGE (debiendo ser introducidas en el SGI en cada convocatoria/proyecto por los ACT\-CSP\-003\-Gestor).

  


##### Costes indirectos

La configuración de los conceptos de gasto en el SGI (Ver [CSP \- Convocatorias \- Conceptos de gasto](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-convocatorias.md#CSPConvocatorias-conceptos_gastoGesti%C3%B3ndeconceptosdegastodeinvestigaci%C3%B3n "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-convocatorias.md#CSPConvocatorias-conceptos_gastoGesti%C3%B3ndeconceptosdegastodeinvestigaci%C3%B3n")) lleva implícita la especificación de los conceptos de gasto que se utilizan para representar costes indirectos. Por tanto, será suficiente con incluir uno o varios de los conceptos de gasto que representan costes indirectos en el apartado "conceptos de gasto permitidos" para indicar que en el proyecto se pueden considerar costes indirectos. En su defecto, se podría incluir en el apartado "conceptos de gasto no permitidos".

A través de  la vinculación con los  [Códigos económicos](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Convocatorias#CSP-Convocatorias-codigos_economicos "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Convocatorias#CSP-Convocatorias-codigos_economicos"), los costes indirectos tendrán también su correspondencia con el SGE.

#### Partidas presupuestarias

En este apartado se permitirá introducir el listado de partidas o aplicaciones presupuestarias que van a ser utilizadas en la elaboración del presupuesto del proyecto. No será obligatoria su cumplimentación aunque sí imprescindible si se quiere elaborar el presupuesto del proyecto. Los campos disponibles para la introducción de las partidas serán:

* código
* descripción
* tipo de la partida (gastos/ingresos)

Las partidas o aplicaciones presupuestarias serán introducidas manualmente por las unidades de gestión, sin que exista ninguna validación de su existencia contra el Sistema de gestión económica correspondiente. Si se comete algún error en la introducción del código o bien éste no hubiese sido creado aún en el SGE no podrá ser identificado y comunicado a la unidad de gestión. 

Cuando se crea un proyecto vinculándolo a una convocatoria, bien de manera directa bien a través de una solicitud, el proyecto heredará las partidas/aplicaciones presupuestarias que hubieran sido introducidas en la convocatoria. Podrán añadirse nuevas partidas al proyecto o bien modificar o eliminar las partidas heredadas desde la convocatoria a nivel individual en el proyecto, sin que esto afecte a la información de las partidas en la convocatoria ni a las partidas del resto de proyectos de la misma convocatoria.

#### Presupuesto

En este apartado se registrará el presupuesto del proyecto. Será en el presupuesto donde se identifiquen las aplicaciones presupuestarias sobre las que se se va recoger el detalle de operaciones contables desde el SGE. En base a esto serán los ACT\-CSP\-003\-Gestor quienes decidan el detalle con el que realizar el desglose del presupuesto. 

  


En el caso de proyectos procedentes de solicitudes de convocatoria se dispondrá de un acceso al presupuesto que hubiera sido introducido en la fase de solicitud, sin embargo éste no será copiado directamente, pues en el proyecto será necesario especificar el importe realmente concedido junto con las aplicaciones presupuestarias. Además, en el caso del proyecto, el presupuesto no será desglosado por entidad financiadora, ahora ya deben de ser las aplicaciones presupuestarias las que discriminen la procedencia de los ingresos/gastos a partir de las operaciones y documentos contables recuperados desde el SGE. Debe entenderse el presupuesto como la configuración a partir de la que se podrá ver el detalle económico del proyecto/contrato en el SGI, puesto que ningún  dato de la ejecución económica del proyecto va a ser registrado en el SGI sino que deberá ser recuperado del SGE, y esta recuperación se hará a partir de las aplicaciones presupuestarias identificadas en el presupuesto.

  


El presupuesto del proyecto/contrato podrá ser desglosado en anualidades. Este será el primer dato que debe de ser informado al introducir el presupuesto: si existe o no desglose en anualidades. El detalle del presupuesto se estructurará en los siguientes apartados:

* Gastos
* Ingresos

En caso de que exista un desglose por anualidades, la primera información disponible del presupuesto será el listado de anualidades desde el que se mostrará:

* Año de la anualidad
* Fecha de inicio y fin de la anualidad
* Importe total de gastos presupuestado
* Importe total de ingresos presupuestado
* Porcentaje de IVA. El campo para recoger el porcentaje de IVA solo estará disponible en el caso de que en la Ficha de los Datos generales del proyecto se hubiera indicado que sobre el proyecto/contrato aplica el IVA.
* Acceso al detalle de la anualidad (detalle del presupuesto de gastos, de ingresos y resumen)

 

En el caso de que no exista un desglose por anualidades, la primera información disponible del presupuesto será:

* Importe total de gastos presupuestado
* Importe total de ingresos presupuestado
* Porcentaje de IVA. El porcentaje de IVA solo aplicará en el caso de que en la Ficha de los Datos generales del proyecto se hubiera indicado que sobre el proyecto/contrato aplica el IVA.
* Acceso al detalle del presupuesto (detalle del presupuesto de gastos y del presupuesto de ingresos)

 

##### Datos generales de una Anualidad

Si se ha indicado la existencia de anualidades, se deben de introducir todas las anualidades del proyecto. Una anualidad queda definida por:

* Año. Es el año natural con el que se da nombre a la anualidad y que será utilizado para solicitar al SGE el detalle de las operaciones y documentos contables.
* Fecha de inicio y fecha de fin. Se dispondrá de fechas de inicio y fin de la anualidad, puesto que no tiene por qué coincidir con el año natural. Son campos informativos que pueden ser recogidos en el SGI para disponer de esta información visible. No serán utilizados para agrupar los documentos y operaciones contables leídos del SGE. Se parte de la base que el SGE es el sistema donde, de forma natural, se van a agrupar los documentos y operaciones contables en las anualidades correspondientes. En base a esto la solicitud del detalle económico será realizad desde el SGI al SGE en base al valor "año" de la anualidad y será en el SGE donde todas las operaciones contables deban estar debidamente agrupadas.
* Porcentaje de IVA. El campo para recoger el porcentaje de IVA solo estará disponible en el caso de que en la Ficha de los Datos generales del proyecto se hubiera indicado que sobre el proyecto/contrato aplica el IVA.

  


Para cada Anualidad se debe de recoger el detalle del presupuesto tanto para los gastos como para los ingresos (en caso de que se quiera disponer del seguimiento de la ejecución económica procedente del SGE).

##### Gastos

Para la cumplimentación del presupuesto de gastos se tomará la información recogida en el apartado Elegibilidad, sin que ésta sea limitativa para poder incluir conceptos de gasto que no hubieran sido registrados en este apartado (o que directamente este apartado no hubiera sido cumplimentado).

Para añadir un partida de gasto al presupuesto se debe indicar (siendo de obligada cumplimentación todos los campos):

* Elegibilidad Concepto de gasto. Seleccionable desde un listado.
* Código económico. Seleccionable desde un listado.
* Código de la partida/aplicación presupuestaria (según aplique).
* Importe concedido
* Importe presupuesto

  


El listado de conceptos de gasto podrá incluir:

* Solamente los conceptos de gasto incluidos como gastos permitidos en el apartado "Elegibilidad".
* Todos los conceptos de gasto configurados en el SGI (Ver [Gestión de conceptos de gasto de investigación](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Convocatorias#CSP-Convocatorias-conceptos_gasto "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Convocatorias#CSP-Convocatorias-conceptos_gasto")).

Si el concepto de gasto seleccionado es uno de los incluidos en el apartado Elegibilidad, el listado de códigos económicos se rellenará de acuerdo a la configuración indicada en el apartado "Códigos económicos" del proyecto, que tendrá en cuenta el número de mes hasta el que estuviera permitido. Para ello se tendrán en cuenta las fechas de inicio y fin establecidas para la anualidad. El número de mes restrictivo que pudiera tener el concepto de gasto en el campo anualidad, se aplicará desde la fecha de inicio establecida en los Datos generales del proyecto. Se dispondrá de una opción que permita listar todos los códigos económicos disponibles en el SGI. El listado de códigos económicos procederá de la información leída desde el SGE a través del requisito de integración [REQ\-INT\-0010\-SGE\-0070 \- Listar códigos económicos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0070-listar-codigos-economicos-de-gastos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0070-listar-codigos-economicos-de-gastos.md"). En caso que se seleccione  un código económico que hubiera sido configurado como no permitido en los apartados "Elegibilidad" y "Códigos económicos" se mostrará una advertencia, sin embargo, el ACT\-CSP\-003\-Gestor será quien decida en última instancia si se añade o no al presupuesto una partida con ese código económico.

El campo partida o aplicación presupuestaria será dependiente de la configuración de implantación. Entre los parámetros de implantación del SGI se indicará si la introducción de este campo debe ser manual o puede ser compuesto automáticamente a partir del identificador económico del proyecto (indicado en el apartado Configuración económica \- Identificación) y el código económico añadido en el campo previo.

En el caso de una implantación donde el SGE sea UXXI, el identificador económico del proyecto se deberá de corresponder con orgánica\+funcional, con lo que al añadir a estos valores el código económico se obtiene directamente el código de la aplicación presupuestaria a partir de la que ya debe de ser posible que el SGE remita todo el detalle de operaciones y documentos contables de la misma. Como en el apartado "Identificación" se está dando la posibilidad de que un proyecto del SGI tenga varios identificadores económicos, podría darse el caso que se debiera seleccionar la orgánica\+funcional a utilizar para componer la aplicación presupuestaria para la partida que está siendo configurada.

Al introducir el importe de la partida de gasto, en caso que el concepto de gasto haya sido introducido en el apartado Elegibilidad y se haya indicado un importe máximo permitido sobre el mismo, se mostrará un mensaje de advertencia en caso que el importe indicado para la partida supere este importe máximo. El ACT\-CSP\-003\-Gestor será quien decida en última instancia si se añade o no al presupuesto la partida con el importe indicado.

Una vez añadido una partida de gasto en un presupuesto, ésta podrá ser modificada o eliminada, si bien, si existen datos de ejecución económica vinculados se incorporarán determinadas restricciones:

* Si los datos de ejecución económica derivados de la partida no están vinculados aún a ningún periodo de justificación, se mostrará un mensaje de aviso, pero el ACT\-CSP\-003\-Gestor podrá eliminar la partida o modificar sus datos.
* Si los datos de ejecución económica asociados a la partida están vinculado a un periodo de justificación ya cerrado, se mostrará un mensaje de error y no podrán ser eliminados.

##### Ingresos

Para cada anualidad se deberán detallar los ingresos previstos y las aplicaciones presupuestarias sobre las que tendrán lugar. Como en el caso de los gastos, sin éstas no se podrá obtener el detalle de operaciones desde el SGE. Prara cada partida de ingresos se debe recoger:

* Código económico
* Partida o aplicación presupuestaria
* Importe

La selección del código económico se seleccionará del listado de códigos económicos de tipo ingreso que estén disponibles en el SGI de manera global, procedentes del SGE a través del requisito de integración[REQ\-INT\-0010\-SGE\-0070 \- Listar códigos económicos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0070-listar-codigos-economicos-de-gastos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0010-sge-integracion-con-sistema-de-gestion-economica/req-int-0010-sge-0070-listar-codigos-economicos-de-gastos.md").

El campo partida o aplicación presupuestaria será dependiente de la configuración de implantación. Entre los parámetros de implantación del SGI se indicará si la introducción de este campo debe ser manual o puede ser compuesto automáticamente a partir del identificador económico del proyecto (indicado en el apartado Configuración económica \- Identificación) y el código económico añadido en el campo previo.

En el caso de una implantación donde el SGE sea UXXI, el identificador económico del proyecto se deberá de corresponder con orgánica\+funcional, con lo que al añadir a estos valores el código económico se obtiene directamente el código de la aplicación presupuestaria a partir de la que ya debe de ser posible que el SGE remita todo el detalle de operaciones y documentos contables de la misma. Como en el apartado "Identificación" se está dando la posibilidad de que un proyecto del SGI tenga varios identificadores económicos, podría darse el caso que se debiera seleccionar la orgánica\+funcional a utilizar para componer la aplicación presupuestaria para la partida que está siendo configurada.

Una vez añadido una partida de gasto en un presupuesto, ésta podrá ser modificada o eliminada, si bien, si existen datos de ejecución económica vinculados se incorporarán determinadas restricciones:

* Si los datos de ejecución económica derivados de la partida no están vinculados aún a ningún periodo de justificación, se mostrará un mensaje de aviso, pero el ACT\-CSP\-003\-Gestor podrá eliminar la partida o modificar sus datos.

##### Resumen anualidad

Apartado que muestra el resumen de la anualidad, mostrando una tabla con:

* Importe que suma el presupuesto de gastos
* Importe que suma el concedido de gastos
* Importe que suma el presupuesto de de ingresos

Es un apartado solamente informativo, calculado a partir de los datos registrados en los apartados gastos e ingresos de la anualidad.

#### Agrupaciones de gastos

Una agrupación de gasto queda definida simplemente por un nombre. Para cada agrupación de gastos se deberá de indicar el listado de conceptos de gastos del proyecto que estarán incluidos en esta agrupación. Se reserva la utilización de estas agrupaciones de gasto a ACT\-CSP\-001\-Investigador.

#### Consulta de presupuesto

Será un apartado de consulta y visualización del presupuesto, desde el que se podrá obtener el detalle completo del presupuesto para todas las anualidades, agrupando por:

* Anualidad
* Concepto de gasto

El presupuesto será exportable a formato .csv.

  


#### Amortización de fondos

En este apartado se podrán especificar los periodos de amortización previstos para los fondos recibidos. La amortización de fondos se recogerá estructurada de acuerdo a las entidades financiadoras y fuentes de financiación del proyecto. De esta forma se podrán indicar los periodos de amortización para cada una de las entidades financiadoras \- fuente de financiación de las que el proyecto recibe fondos. Un periodo de amortización queda definido por:

* La entidad financiadora, fuente de financiación y tipo de financiación a las que pertenece.
* Anualidad del presupuesto con la que se corresponde el periodo de amortización.
* Importe que queda amortizado en el periodo.
* Fecha límite establecida para la amortización.
* Identificador del proyecto SGE sobre el que se notificará la amortización.  El SGI comunicará al SGE la creación, modificación y/o eliminación de periodos de amortización en un proyecto a través de los correspondientes servicios de integración.

#### Calendario de facturación

Este apartado permitirá recoger en el SGI el calendario de facturación previsto para un contrato. No se establece, porque así se ha definido en los requisitos, una comunicación entre SGI y SGE que permita crear de manera directa la factura en el SGE. En fase de definición de requisitos se establece que la creación de la factura emitida se realizará manualmente en el SGE, por lo que ambos sistemas quedan desvinculados en este punto del flujo. Una vez  creada la factura en el SGE, el estado de la misma sí será leído desde el SGI, siendo visible en el apartado Ejecución Económica \- Facturas emitidas ([CSP \- Ejecución económica](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-ejecucion-economica/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-ejecucion-economica/index.md")).

El registro del ítem de facturación en el SGI será realizado por ACT\-CSP\-003\-Gestor y/o ACTC\-CSP\-004\-Administrador. Se dispondrá de un flujo de aceptación por parte de del responsable del proyecto (rol principal) que deberá validar, con carácter previo, la emisión de la factura (si bien esta validación también podrá ser realizada por ACT\-CSP\-003\-Gestor y/o ACTC\-CSP\-004\-Administrador). Los estados asociados a este flujo de validación son:

* Pendiente. Es el estado inicial del que parte el ítem de facturación una vez ha sido registrado en el SGI.
* Notificada. ACT\-CSP\-003\-Gestor y/o ACTC\-CSP\-004\-Administrador marcarán este estado que será indicativo de que el responsable del proyecto debe validar/rechazar la factura.  El paso a este estado llevará asociado la generación de un comunicado automático [CSP \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/index.md") dirigido al responsable del proyecto.
* Validada. Estado al que puede pasar una factura "notificada". Será responsabilidad de ACT\-CSP\-001\-Investigador marcar este estado, si bien esta gestión también podrá ser realizada por ACT\-CSP\-003\-Gestor y/o ACTC\-CSP\-004\-Administrador. El paso a este estado llevará asociado la generación de un comunicado automático [CSP \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/index.md") dirigido a la unidad de gestión responsables del proyecto. En este proceso de validación será informada la fecha de conformidad.
* Rechazada. Estado al que puede pasar una factura "notificada". Será responsabilidad de ACT\-CSP\-001\-Investigador marcar este estado, si bien esta gestión también podrá ser realizada por ACT\-CSP\-003\-Gestor y/o ACTC\-CSP\-004\-Administrador. Este estado llevará asociado la generación de un comunicado automático [CSP \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/index.md") dirigido a la unidad de gestión responsables del proyecto.

El estado "validada" será indicativo, para la unidad de gestión responsable del contrato, de que puede realizarse la mecanización de la factura en el SGE. Se iniciaría así el flujo correspondiente en este sistema, que será independiente al SGI. Para la creación de la factura en el SGE se deberán mecanizar manualmente algunos datos del ítem de facturación propios del SGI (número de previsión), que serán utilizados para la posterior correspondencia entre el ítem de facturación y la factura emitida. La introducción manual de esta información es debida a la ausencia de un mecanismo de integración en en este punto del flujo (atendiendo a los requisitos establecidos para el SGI). Sí existirá un mecanismo de integración que permitirá al SGI conocer el número de la factura emitida asociado al número de previsión de cada ítem de facturación y asignado por el SGE.

De acuerdo a lo anterior, los datos disponibles para cada ítem de facturación serán:

* Número de previsión. Es un número secuencial interno al proyecto/contrato que no tendrá ninguna implicación en la facturación sino que simplemente representará un orden asociado a la fecha de emisión.
* Fecha de emisión, fecha en la que se debe emitir la factura.
* Importe base. Importe base de la factura.
* Porcentaje de IVA. Porcentaje de IVA a aplicar. Por defecto, se tomará el IVA establecido en los datos generales del proyecto/contrato, si bien podrá ser modificado en cada ítem de facturación.
* Importe total. Valor calculado a partir del importe base y el porcentaje de IVA
* Comentario. Texto libre con el que se podrá dejar cualquier comentario que se considere que debe de ser tenido en cuenta
* Fecha conformidad. Fecha indicada en el proceso de validación por el responsable del proyecto.
* Tipo facturación. Permitirá indicar el concepto con el que se corresponde la factura. Será un listado configurable por implantación.  El listado definido de partida es:
	+ Sin requisito
	+ Informe
	+ Prototipo
	+ Trabajo
	+ Análisis
	+ Memoria
	+ Mitad de trabajo
	+ Hito
* Estado validación IP. Podrá tomar uno de los siguientes valores: pendiente, notificada, validada, rechazada.
* Número factura emitida. Dato recogido por medio de la integración correspondiente con el SGE. Es el número de factura asignado por el SGE una vez que el ítem de facturación del SGI ha sido mecanizado como factura emitida en el SGE.

  


Se almacenará el historial de estados asociado al flujo de validación, de forma que se dispondrá de la fecha en la que se realiza el cambio de estado y el comentario que pudiera haberse introducido.

  


#### Calendario de justificación

Apartado para recoger el calendario de justificaciones del proyecto. Si el proyecto se ha creado a partir de una solicitud concedida o se ha indicado la convocatoria de origen, se cargará el calendario que se hubiera recogido en la misma. Ahora, en la fase de proyecto, se deben de acotar las fechas de inicio y fin de cada periodo puesto que son las que marcarán el periodo exacto de los gastos que pueden ser incluidos en la justificación.

El proyecto/contrato (al igual que la convocatoria) podrá tener tantos periodos de justificación como sea necesario. Cada periodo de justificación queda definido por:

* Número de periodo
* Tipo de periodo: periódico o final.
* Fechas del periodo de ejecución a justificar:
	+ Fecha inicio
	+ Fecha fin
* Periodo de entrega de la justificación:
	+ Fecha inicio
	+ Fecha fin
* Observaciones

Siendo obligatorios:

* Número de periodo
* Tipo de periodo
* Fechas del periodo a justificar: fecha de inicio y fecha de fin

El número de periodo será un secuencial dentro del proyecto que asignará directamente el sistema en función de la ordenación de los meses de los periodos. No existirán dos periodos con el mismo número.

Tipo de periodo, será un dato informativo que indique la naturaleza del periodo de justificación. Los valores disponibles serán "anual", "periódico" y "final". 

El periodo de ejecución a justificar se delimitará por una fecha de inicio y una de fin. Si el proyecto está vinculado a una convocatoria que tenga informados los periodos de justificación, el SGI calculará las fechas de inicio y fin cada periodo teniendo en cuenta la fecha de inicio indicada para el proyecto y los rangos de meses indicados para cada periodo de justificación en la convocatoria. En primera instancia el sistema calculará automáticamente estas fechas, sin embargo, estos valores calculados podrán ser modificados por ACT\-CSP\-003\-Gestor para ajustarlos convenientemente. 

El periodo de presentación de la justificación estará limitado por una fecha de inicio y una fecha de fin y marcará el periodo en el que debe de ser remitida la documentación de justificación a la entidad correspondiente. La fecha de inicio será utilizada para generar un aviso en el módulo general de  comunicados [CSP \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/index.md").

El campo Observaciones es un campo de texto libre para  dejar recogida cualquier información que los ACT\-CSP\-003\-Gestor consideren relevante.

  


Este calendario será la base para el módulo de Justificaciones del apartado Ejecución económica, desde el que ya se realizará la gestión de gastos a incluir en el periodo y se marcará el estado de entrega de la justificación. 

Los datos de un periodo de justificación se podrán modificar o eliminar siempre y cuando no se haya iniciado ya la justificación, es decir, ya hayan sido incluidos datos en el apartado de Justificaciones de la Ejecución económica del proyecto.

### Palabras clave

En este apartado se permitirá consultar las palabras clave asociadas a un proyecto y/o asociar nuevas palabras de forma que luego se puedan buscar proyectos por dichas palabras.

Ver prototipo de pantalla genérica para gestionar las palabras clave asociadas a una entidad [IU\-GEN\-0200 \- Gestión de palabras clave](https://confluence.um.es/confluence/pages/viewpage.action?pageId=94570057 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=94570057") que se adaptará en el menú correspondiente de la gestión de un proyecto.

### Vista ACT\-CSP\-001\-Investigador miembro de equipo

Los ACT\-CSP\-001\-Investigador tendrán acceso a la información de los proyectos en cuyo equipo de trabajo figuren. El listado de proyectos disponible serán los proyectos en  estado que no sea "Borrador" a cuyo equipo pertenezca el ACT\-CSP\-001\-Investigador en la fecha en curso. 

Los ACT\-CSP\-001\-Investigador  que no tengan un rol con categoría "rol principal" o "rol responsable económico", accederán, siempre en modo lectura (sin posibilidad a modificar ningún dato) a los siguientes bloques de información del proyecto:

* Datos generales \- Ficha del proyecto
* Datos generales \- Contexto del proyecto
* Entidades \- Entidad gestora
* Entidades \- Entidades convocantes
* Entidades \- Entidades financiadoras
* Equipo
* Socios. Solo al listado, sin acceso a su vista de detalle
* Seguimiento científico. Solo al listado de periodos, sin acceso a su documentación
* Prórrogas. Solo al listado, sin acceso a su detalle.
* Documentos. Mostrando aquellos que estén marcados con el flag "Visible al equipo de investigación". No podrá adjuntar nuevos documentos.
* Paquetes de trabajo. Listado y distribución de investigadores
* Configuración económica \- Consulta de presupuesto
* Configuración económica \- Calendario de facturación. Sin acceso al detalle de Ejecución económica
* Configuración económica \- Calendario de justificación. Sin acceso al detalle de Ejecución económica

### Vista ACT\-CSP\-001\-Investigador con rol principal

Los ACT\-CSP\-001\-Investigador que participen en el proyecto con un rol principal tendrán una visión más detallada del mismo. Esta visión solo se ofrecerá durante el periodo de tiempo que dispongan de ese rol principal, fuera de ese periodo la vista será la de miembro de equipo. El acceso al listado de  proyectos de un ACT\-CSP\-001\-Investigador será común, mostrándose en el mismo listado tanto los proyectos sobre los que tiene rol principal como sobre los que no.  El listado de proyectos disponible serán los proyectos en estado que no sea "Borrador" a cuyo equipo pertenezca el ACT\-CSP\-001\-Investigador en la fecha en curso.

Los ACT\-CSP\-001\-Investigador que dispongan de un rol con categoría "rol principal" o "rol responsable económico", accederán en modo lectura (sin posibilidad a modificar ningún dato) a los siguientes bloques de información de proyecto:

* Datos generales \- Ficha del proyecto
* Datos generales \- Contexto del proyecto
* Datos generales \- Histórico de estados
* Entidades \- Entidad gestora
* Entidades \- Entidades convocantes
* Entidades \- Entidades financiadoras
* Equipo
* Socios. Con acceso a su detalle:  

	+ Datos generales
	+ Equipo
	+ Periodos de pago
	+ Periodos de justificación
* Seguimiento científico. Listado de periodos, con acceso a su detalle:
	+ Datos generales
	+ Documentación.
* Prórrogas. Listado de prórrogas con acceso a su detalle:
	+ Datos generales
	+ Documentación
* Documentos. Mostrando aquellos que estén marcados con el flag "Visible al equipo de investigación". No podrá adjuntar nuevos documentos.
* Paquetes de trabajo. Listado y distribución de investigadores
* Configuración económica \- Identificador SGE
* Configuración económica \- Elegibilidad
* Configuración económica \- Presupuesto. Listado de anualidades y detalle por anualidad:  

	+ Datos generales
	+ Gastos
	+ Ingresos
	+ Resumen
* Configuración económica \- Consulta de presupuesto
* Configuración económica \- Calendario de facturación. Con acceso al detalle de Ejecución económica
* Configuración económica \- Calendario de justificación. Con acceso al detalle de Ejecución económica

  
  





