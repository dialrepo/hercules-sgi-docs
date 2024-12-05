# Hércules : CSP\-PRO \- Modelo lógico \- Documentación



  


### Entidades del modelo lógico Proyecto

Con la entidad "Proyecto" y sus relaciones se cubre el ciclo de gestión de los proyectos de investigación, contratos artículo 83, becas y ayudas.  

Con el objetivo de conseguir la máxima estandarización y homogeneidad, la entidad Proyecto es común para cualquier tipología de proyectos y contratos. A través de los modelos de ejecución y la asignación de los mismos a las diferentes Unidades de gestión, se permite una particularización de diferentes listados y tipologías utilizados para recoger la información del proyecto. De esta forma, el SGI no parte de una clasificación de proyectos/contratos limitada y se permite que esta clasificación pueda ser la necesaria de acuerdo a la organización interna de cada Universidad a la vez que escalable para futuras necesidades. 

Un proyecto/contrato/beca/ayuda puede ser registrado en el SGI a partir de la concesión de una solicitud, o puede ser registrado directamente, sin que exista el flujo previo de convocatoria \- solicitud (como es en la mayoría de los casos de contratos del artículo 83\). 

Debido a la elevada cantidad de información que tiene un proyecto/contrato ésta se muestra de forma estructurada en diferentes apartados, agrupada de acuerdo a la naturaleza de la misma. A continuación se enumeran los apartados y subapartados en los que se estructura la información: 

* Datos generales
* Ficha general (se recoge en la tabla “proyecto”)
* Contexto del proyecto (se recoge en la tabla “contexto proyecto”)
* Áreas de conocimiento (se recoge en la tabla “proyecto área”)
* Clasificaciones (se recoge en la tabla “proyecto clasificación”)
* Histórico de estados (se recoge en la tabla “estado proyecto”)
* Relaciones (se recoge en la tabla “relación”)
* Entidades 
	+ Entidad gestora (se recoge en la tabla “proyecto entidad gestora”)
	+ Entidades convocantes (se recoge en la tabla “proyecto entidad convocante”)
	+ Entidades financiadoras (se recoge en la tabla “proyecto entidad financiadora”)
* Equipo y responsable económico 
	+ Equipo (se recoge en la tabla “proyecto equipo”)
	+ Responsable económico (se recoge en la tabla “proyecto responsable económico”)
* Socios: Listado de socios que participan en el proyecto (se recoge en la tabla “proyecto socio”)  Por cada socio se dispondrá de los siguientes apartados: 
	+ Miembros del equipo (se recoge en la tabla “proyecto socio equipo”)
	+ Periodos de pago (se recoge en la tabla “proyecto socio periodo pago”)
	+ Periodos justificación. Por cada periodo de justificación: 
		- Datos generales (se recoge en la tabla “proyecto socio periodo justificación”)
		- Documentación (se recoge en la tabla “socio periodo justificación documento”)
* Fases e hitos 
	+ Listado de fases y fechas (se recoge en la tabla “proyecto fase”)
	+ Listado de hitos del proyecto (se recoge en la tabla “proyecto hito”)
* Seguimiento científico. Por cada periodo de seguimiento: 
	+ Datos generales (se recoge en la tabla “proyecto periodo seguimiento”)
	+ Documentación (se recoge en la tabla “proyecto periodo seguimiento documento”)
* Prórrogas del proyecto. Por cada prórroga del proyecto: 
	+ Datos generales (se recoge en la tabla “proyecto prórroga”)
	+ Documentación (se recoge en la tabla “proyecto prórroga documento”)
* Documentos. Árbol de documentos del proyecto (se recoge en la tabla “proyecto documento”)
* Paquetes de trabajo (se recoge en la tabla “proyecto paquete trabajo”)
* Configuración económica. Apartado para realizar la configuración de los datos y seguimiento económico. 
	+ Identificación (se recoge en la tabla “proyecto proyecto SGE”)
	+ Elegibilidad (se recoge en las tablas “proyecto concepto gasto” y “proyecto concepto gasto código económico”)
	+ Partidas presupuestarias (se recoge en la tabla “proyecto partida”)
	+ Presupuesto (se recoge en las tablas “proyecto anualidad”, “anualidad gasto” y “anualidad ingreso”)
	+ Agrupaciones de gastos (se recoge en las tablas “proyecto agrupación gasto” y “agrupación gasto concepto”)
	+ Calendario de facturación (se recoge en las tablas “proyecto facturación” y “estado validación IP”)
	+ Calendario de justificaciones (se recoge en las tablas “proyecto periodo justificación” y “estado proyecto periodo justificación”)

#### Entidad Proyecto

Entidad principal del modelo lógico de Proyectos. Representa cualquier tipología de contrato, proyecto o ayuda en general. Puede ser creado a partir de la concesión de una solicitud, o puede ser registrado directamente, sin que exista el flujo previo de convocatoria \- solicitud (como será en la mayoría de los casos de contratos del artículo 83\).



| **ATTRIBUTES** |
| --- |
| acronimo : String  Private Referencia o nombre corto por el que se conoce al proyecto. |
| activo : Boolean  Private Campo interno al SGI con el que se da cobertura al borrado lógico. El valor "true" será indicativo de que el registro (proyecto) está activo mientras que un valor "false" será indicativo de que el registro (proyecto) ha sido eliminado a nivel de usuario. |
| ambitoGeografico : TipoAmbitoGeografico  Private Clasificación del proyecto a nivel geográfic. Es una FK a la tabla "ámbito geográfico". |
| anualidades : Boolean  Private Indica si en el presupuesto del proyecto se va a desglosar por anualidades. |
| causaExencion : CausaExencion  Private   Causa de exención de aplicación de IVA. La causa de exención de IVA se trata en el SGI como un enumerado, con los siguientes valores: * NO\_SUJETO * NO\_SUJETO\_CON\_DEDUCCION * NO\_SUJETO\_SIN\_DEDUCCION * SUJETO\_EXENTO |
| clasificacionCVN : ClasificacionCVN  Private   Indica el apartado del CVN en el que será incluido el proyecto. Los valores posibles están definidos en el enumerado Clasificación CVN que tiene los siguientes valores: * AYUDAS * COMPETITIVOS * NO\_COMPETITIVOS * INSTITUCIONAL\_AYUDAS * INSTITUCIONAL\_COMPETITIVOS * INSTITUCIONAL\_NO\_COMPETITIVOS |
| codExterno : String  Private   Código o referencia con el que se identifica el proyecto en la entidad convocante externa (en caso de existir). |
| colaborativo : Boolean  Private Indica si un proyecto coordinado es además colaborativo (alguno de los socios participantes es una empresa privada). |
| confidencial : Boolean  Private Indica si el proyecto es confidencial. Si toma valor "true" el proyecto no estará disponible para las consultas realizadas desde el sistema de CVN. |
| convocatoria : Convocatoria  Private Identificador de la Convocatoria del SGI, en caso de que el proyecto surga de una convocatoria del SGI. FK a la tabla "Convocatoria". |
| convocatoriaExterna : String  Private Nombre o identificación externa de la convocatoria que financia el proyecto. Este campo se utilizará cuando la convocatoria con la que se corresponde el proyecto no ha sido registrada en el SGI. Es un campo informativo que no establece ningún vínculo con la tabla "convocatoria" del SGI. |
| coordinado : Boolean  Private Indica si el proyecto se realizará de forma coordinada con otros socios. |
| coordinadorExterno : Boolean  Private Indica qué socio (entidad) actúa como coordinador del proyecto. Un valor "false" indica que es la propia Universidad quien actúa en calidad de coordinador del proyecto. Un valor "true" indica que el coodinador será uno de los socios que participa en el proyecto. |
| estado : EstadoProyecto  Private  Estado actual en el que se encuentra el proyecto/contrato. Es una FK a la tabla "estado proyecto". |
| excelencia : Boolean  Private Indica si el proyecto procede de una convocatoria que tiene la consideración de "convocatoria de excelencia". Es un valor heredable desde la convocatoria si bien puede ser modificado a nivel individual en cada proyecto. |
| fechaFin : date  Private Fecha de fin del proyecto. Campo obligatorio. Se preserva en este campo el valor de la fecha de fin prevista inicialmente, de forma que este campo no es alterado automáticamente ante una prórroga o rescisión/renuncia del proyecto. |
| fechaFinDefinitiva : date  Private   Fecha de fin definitiva del proyecto. Si este campo está informado será considerado como la fecha de finalización del proyecto, de forma que prevalece sobre el campo "fecha fin". Aunque puede ser informado manualmente a través del interface de usuario, el SGI alimenta automáticamente su valor a partir de las prórrogas registradas y/o partir de la fecha de estado asociada a los estados rescindido y renunciado. Su valor puede ser menor o mayor que la fecha de fin prevista. |
| fechaInicio : date  Private Fecha de inicio del proyecto. Campo obligatorio. |
| finalidad : TipoFinalidad  Private Clasificación del proyecto de acuerdo a la naturaleza de la actividad de investigación que representa. Los tipos de finalidad disponible para un proyecto quedan determinados por el modelo de ejecución al que se asocia el proyecto. Es una FK sobre la tabla "tipo finalidad". |
| id : Long  Private Clave primaria. Secuencia. Identificador único del registro dentro de la tabla "proyecto". |
| importeConcedido : BigDecimal  Private Importe concedido a la Universidad para el desarrollo del proyecto, asociado a conceptos de gasto que no representan costes indirectos. Este valor está desvinculado del presupesto del proyecto (tabla "anualidad gasto"). El campo es de utilidad en caso de el usuario prefiera no introducir el detalle del presupuesto. |
| importeConcedidoCostesIndirectos : BigDecimal  Private Importe concedido a la Universidad para el desarrollo del proyecto, asociado a conceptos de gasto que representan costes indirectos. Es el valor introducido manualmente a través del interface de usuario. Este valor está desvinculado del presupuesto del proyecto (tabla "anualidad gasto"). El campo es de utilidad en caso de el usuario prefiera no introducir el detalle del presupuesto. |
| importeConcedidoSocios : BigDecimal  Private Importe concedido para el desarrollo del proyecto al conjunto de socios que participan en el mismo (adicionales a la propia Universidad). Es un valor desvinculado de la información que podría haberse introducido de manera individual para cada uno de los socios (campo "importe concedido" de la tabla "proyecto socio"). Este campo es de utilidad en caso de que el usuario prefiera no realizar el desglose del importe concedido a cada uno de los socios. |
| importePresupuesto : BigDecimal  Private Importe considerado finalmente en el presupuesto del proyecto correspondiente únicamente a la Universidad (no al resto de socios) y asociado a conceptos de gasto que no representan costes indirectos. Este valor está desvinculado del presupuesto detallado del proyecto que se hubiera podido introducir (tabla "anualidad gasto"). El campo es de utilidad en caso de el usuario prefiera no introducir el detalle del presupuesto. |
| importePresupuestoCostesIndirectos : BigDecimal  Private Importe finalmente considerado en el presupuesto del proyecto correspondiente únicamente a la Universidad (no al resto de socios) y asociado a conceptos de gasto que representan costes indirectos. Este valor está desvinculado del presupuesto detallado del proyecto que se hubiera podido introducir (tabla "anualidad gasto"). El campo es de utilidad en caso de el usuario prefiera no introducir el detalle del presupuesto. |
| importePresupuestoSocios : BigDecimal  Private Es el importe con el que cuenta el presupuesto del proyecto para el total del resto socios (adicionales a la Universidad) que participan en el proyecto. Es un valor desvinculado de la información que podría haberse introducido de manera individual para cada uno de los socios (campo "importe presupuesto" de la tabla "proyecto socio"). Este campo es de utilidad en caso de que el usuario prefiera no realizar el desglose del importe concedido a cada uno de los socios. |
| iva : ProyectoIVA  Private Indica el porcentaje de IVA aplicable en el momento actual para el proyecto. En líneas generales solo los registros de la tabla proyecto que representen contratos del artículo 83 tendrán este campo informado. Es una FK a la tabla "proyecto iva". |
| modeloEjecucion : ModeloEjecucion  Private Identificador del Modelo de ejecución del proyecto. Es un campo obligatorio. FK a la tabla "modelo ejecución". |
| observaciones : String  Private Texto libre para recoger cualquier observación del proyecto. |
| paquetesTrabajo : Boolean  Private Indica si el proyecto requiere la introducción de paquetes de trabajo. |
| solicitud : Solicitud  Private Identificador de la Solicitud concedida de la que surgió el proyecto. Solo estará informado en caso que la solicitud esté registrada en el SGI. Es una FK a la tabla "solicitud". |
| titulo : String  Private Título del proyecto. Es un campo obligatorio. |
| totalImporteConcedido : BigDecimal  Private Es el importe total concedido para el desarrollo del proyecto, considerando el importe concedido a la Universidad y al total del resto de socios participantes. Este valor está desvinculado del presupuesto detallado del proyecto que se hubiera podido introducir (tabla "anualidad gasto"). El campo es de utilidad en caso de el usuario prefiera no introducir el detalle del presupuesto. |
| totalImportePresupuesto : BidDecimal  Private Es el importe total considerado en el presupuesto del proyecto incluyendo tanto el presupuesto de la Universidad como el del resto de socios participantes. Este valor está desvinculado del presupuesto detallado del proyecto que se hubiera podido introducir (tabla "anualidad gasto"). El campo es de utilidad en caso de el usuario prefiera no introducir el detalle del presupuesto. |
| unidadGestionRef : Unidad  Private Identificador de la Unidad de gestión (OTRI, OPE, UGI, etc.) responsable de la gestión del proyecto. Es un campo obligatorio. Es un campo heredable desde la convocatoria. FK a la tabla Unidad. |

  


  




| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoHito  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[0\..\*] | Target: Public (Class) ModeloEjecucion  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[0\..1] | Target: Public (Class) Producción cientifica  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoClasificacion  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoPeriodoSeguimiento  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) EstadoProyecto  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoPartida  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoPeriodoJustificacion  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoResponsableEconomico  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoIVA  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) Datos ejecución económica  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto | Target: Public (Class) ProduccionCientifica |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) Hoja registro tiempo  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoFase  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ContextoProyecto  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoEquipo  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoEquipo  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[0\..\*] | Target: Public (Class) Convocatoria  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoFacturacion  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[0\..\*] | Target: Public (Class) TipoAmbitoGeografico  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoAgrupacionGasto  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[0\..\*] | Target: Public (Class) Actividad científica  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto | Target: Public (Class) Oportunidad |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoEntidadConvocante  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoEntidadFinanciadora  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoProrroga  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoSocio  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoEntidadGestora  Cardinality:  \[0\..1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoArea  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[0\..\*] | Target: Public (Enumeration) CausaExencion  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoAnualidad  Cardinality:  \[0\..\*] | Target: Public (Class) Proyecto  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Enumeration) ClasificacionCVN  Cardinality:  \[1] | Target: Public (Class) Proyecto  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoDocumento  Cardinality:  \[0\..\*] | Target: Public (Class) Proyecto  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Solicitud Producto  Cardinality:  \[1\..\*] | Target: Public (Class) Proyecto  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) TipoRegimenConcurrencia  Cardinality:  \[1] | Target: Public (Class) Proyecto  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoConceptoGasto  Cardinality:  \[0\..\*] | Target: Public (Class) Proyecto  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) NotificacionProyectoExternoCVN  Cardinality:  \[0\..\*] | Target: Public (Class) Proyecto  Cardinality:  \[0\..1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Oportunidad | Target: Public (Class) Proyecto |
| Association (direction: Unspecified) | |
| Source: Public (Class) Stock Proyecto  Cardinality:  \[1] | Target: Public (Class) Proyecto  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Solicitud  Cardinality:  \[1] | Target: Public (Class) Proyecto  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoProyectoSGE  Cardinality:  \[0\..\*] | Target: Public (Class) Proyecto  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Grupo Investigación  Cardinality:  \[0\..\*] | Target: Public (Class) Proyecto  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) RepartoEquipoInventor  Cardinality:  \[0\..\*] | Target: Public (Class) Proyecto  Cardinality:  \[0\..1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoPalabraClave  Cardinality:  \[0\..\*] | Target: Public (Class) Proyecto  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) TipoFinalidad  Cardinality:  \[1] | Target: Public (Class) Proyecto  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Invención  Cardinality:  \[1\..\*] | Target: Public (Class) Proyecto  Cardinality:  \[0\..1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoPaqueteTrabajo  Cardinality:  \[0\..\*] | Target: Public (Class) Proyecto  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Invencion  Cardinality:  \[0\..\*] | Target: Public (Class) Proyecto  Cardinality:  \[0\..1] |

  


  


#### Entidad Contexto de un proyecto: "ContextoProyecto"

Tabla adicional para recoger campos de información secundaria del proyecto. 



| **ATTRIBUTES** |
| --- |
| areaTematica : AreaTematica  Private  Identificador del área temática en el que se enmarca el proyecto. Un proyecto solo puede estar asociado a un área temática. Este área temática pertenecerá a un listado de áreas temáticas concreto. El listado de áreas temáticas y área temática "padre", dentro de este listado, disponibles para el proyecto pueden venir delimitados por la convocatoria a la que se vincula el proyecto. Es una FK a la tabla "área temática", incluida en el modelo CSP Convocatoria. |
| id : Long  Private Identificador único del registro. Secuencia. Clave primaria. |
| intereses : String  Private Texto libre para recoger los motivos que justifican el desarrollo del proyecto y/o los intereses del mismo. Es un campo que puede ser heredado de la solicitud. |
| objetivos : String  Private Texto libre para recoger los objetivos del proyecto. Es un campo que puede provenir de la solicitud. |
| propiedadResultados : TipoPropiedadResultados  Private Permite recoger quién es el propietario de los resultados generados en el proyecto. Tomará un valor del enumerado "tipo propiedad resultados". |
| proyecto : Proyecto  Private Proyecto al que pertenece el registro. Es una FK a la tabla "proyecto". |
| resultadosPrevistos : String  Private Texto libre para recoger los resultados esperados del proyecto. Es un campo que puede provenir de la solicitud. |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ContextoProyecto  Cardinality:  \[0\..\*] | Target: Public (Enumeration) TipoPropiedadResultados  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ContextoProyecto  Cardinality:  \[0\..\*] | Target: Public (Class) ConvocatoriaAreaTematica  Cardinality:  \[0\..1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ContextoProyecto  Cardinality:  \[1] |

  


  


#### Entidad Estados de un proyecto: "EstadoProyecto"

Histórico de estados por los pasa el proyecto. El estado actual será el registro más reciente. 



| **ATTRIBUTES** |
| --- |
| comentario : String  Private Comentario que se pude añadir cuando se produce el cambio de estado para recoger cualquier observación. |
| estado : TipoEstadoProyecto  Private Es un valor del enumerado "tipo estado proyecto". |
| fecha : date  Private Fecha en la que se alcanzó el estado. |
| id : Long  Private Identificador único del registro. Secuencia. Clave primaria. |
| proyectoId : Long  Private  Proyecto al que pertenece el registro. Es una FK a la tabla "proyecto". |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) EstadoProyecto | Target: Public (Enumeration) TipoEstadoProyecto |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) EstadoProyecto  Cardinality:  \[0\..\*] |

  


#### Entidad Documentos de una prórroga de proyecto: "ProrrogaDocumento"

Documentación asociada a una prórroga de un proyecto. 

  




| **ATTRIBUTES** |
| --- |
| comentario : String  Private Campo de texto libre para recoger cualquier aclaración sobre el documento. |
| documentoRef : String  Private Referencia o Identificador del documento almacenado en el repositorio de documentos global del SGI. |
| id : Long  Private Clave primaria. Identificador de la tabla. |
| nombre : String  Private Nombre del documento, para identificarlo dentro del SGI. |
| proyectoProrroga : ProyectoProrroga  Private Identificador de la prórroga del proyecto a la que pertenece el documento. Es una FK a la tabla "proyecto prórroga". |
| tipoDocumento : TipoDocumento  Private El tipo de documento es uno de los disponibles en el modelo de ejecución al que se haya vinculado el proyecto/contrato. El tipo de documento permite mostrar de forma agrupada la documentación del proyecto. |
| visible : boolean  Private Indica si el documento va a estar visible o no para los investigadores que forman parte del equipo del proyecto desde su acceso al SGI. |

  


  




| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoProrroga  Cardinality:  \[1] | Target: Public (Class) ProrrogaDocumento  Cardinality:  \[0\..\*] |

  


#### Entidad Áreas de conocimiento de un proyecto: "ProyectoArea"

Área o áreas de conocimiento con las que se asocia el proyecto. El SGI no limita la vinculación de un proyecto al área de conocimiento a la que está adscrito su IP. La unidad de gestión podrá decidir vincular el proyecto a una o varias áreas independientemente del área de pertenencia de su IP. Es una clasificación que puede o no ser utilizada. El listado de áreas disponible se obtiene del ESB, pudiendo proceder de integración con el sistema corporativo correspondiente o ser un listado configurado en tiempo de implantación. 

  




| **ATTRIBUTES** |
| --- |
| codAreaRef : String  Private Identificador o referencia al área de conocimiento en el sistema corporativo universitario correspondiente. |
| id : Long  Private Clave primaria. Identificador de la tabla. |
| proyecto : Proyecto  Private Identificador del proyecto al que pertenece el registro. Es una FK a la tabla "proyecto". |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoArea  Cardinality:  \[0\..\*] | Target: Public (Class) AreaConocimiento  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoArea  Cardinality:  \[0\..\*] |

  


#### Entidad Clasificaciones de un proyecto: "ProyectoClasificacion"

Tabla que recoge todas las clasificaciones del proyecto. El SGI dispone de una estructura genérica "clasificación" , en forma de árbol, que permite, en tiempo de implantación, configurar los listados bajo los que resulte de interés clasificar el proyecto. No se establecen límites al respecto. En cada implantación se definirán las clasificaciones a utilizar. Esta estructura clasificación reside en el ESB, de forma que cada uno de los listados asociados a cada clasificación podrá ser alimentado desde un sistema de gestión corporativo (de forma genérica en el SGI se hace referencia a este posible sistema como SGO, sistema de gestión de la organización), a través del servicio de integración correspondiente, o bien ser configurados en tiempo de implantación. 

Algunas clasificaciones tipo serían: 

* Clasificación de códigos UNESCO.
* Clasificación de códigos NABS.
* Clasificación de códigos CNAE

  




| **ATTRIBUTES** |
| --- |
| codClasificacionRef : String  Private Elemento dentro de una clasificación con el que se vincula el proyecto. La referencia es el identificador del elemento dentro de la tabla "clasificación" incluida en modelo lógico del SGO (sistema de gestión de la organización). |
| id : Long  Private Identificador único del registro. Secuencia. Clave primaria. |
| proyecto : Proyecto  Private Proyecto al que pertenece el registro. Es una FK a la tabla "proyecto". |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoClasificacion  Cardinality:  \[0\..\*] | Target: Public (Class) Clasificacion  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoClasificacion  Cardinality:  \[0\..\*] |

  


#### Entidad Documentos de un proyecto: "ProyectoDocumento"

Documentos asociados a un proyecto. Los documentos quedarán registrados en el repositorio de documentos global del SGI. 



| **ATTRIBUTES** |
| --- |
| comentario : String  Private Comentario de texto libre asociado al documento. |
| documentoRef : String  Private Referencia identificativa del documento en el repositorio de documentos global del SGI. |
| id : Long  Private Identificador único del registro. Secuencia. Clave primaria. |
| nombre : String  Private Nombre del documento a nivel de usuario. No es ningún atributo del archivo físico. |
| proyecto : Proyecto  Private Identificador del proyecto al que pertenece eldocumento. Es una FK sobre la tabla "proyecto". |
| tipoDocumento : TipoDocumento  Private Clasificación del documento según tipología del SGI. Es una FK a la tabla "tipo documento" del modelo lógico de "modelo de ejecución". |
| tipoFase : TipoFase  Private Fase a la que pertenece el documento. Es una FK a la tabla "tipo fase" del modelo lógico de "modelo de ejecución". |
| visible : boolean  Private Indica si el documento va a ser visible para el perfil de investigación a través de su acceso al SGI. |

  


  




| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoDocumento  Cardinality:  \[0\..\*] | Target: Public (Class) Proyecto  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoDocumento | Target: Public (Class) Documento |

  


#### Entidad Entidades convocantes de un proyecto: "ProyectoEntidadConvocante"

Entidades convocantes de un proyecto. 

  




| **OUTGOING STRUCTURAL RELATIONSHIPS** |
| --- |
| Generalization from  ProyectoEntidadConvocante to  Entidad \[ Direction is 'Source \-\> Destination'. ] |
| Aggregation from  ProyectoEntidadConvocante to  EmpresaEconomica \[ Direction is 'Source \-\> Destination'. ] |

  


  




| **ATTRIBUTES** |
| --- |
| entidadRef : String  Private Referencia de la entidad/empresa. Es el identificador de la entidad/empresa en el sistema de gestión de empresas corporativo. |
| id : Long  Private Identificador del registro. Secuencia. Clave primaria. |
| programa : Programa  Private Programa con el que se asocia el proyecto para la entidad convocante. Será un nodo hijo de "programa convocatoria", siempre que éste se haya definido. En caso contrario podrá ser cualquier elemento del árbol de programas. Es una FK a la tabla "programa" (modelo lógico "CSP Convocatoria"). |
| programaConvocatoria : Programa  Private Programa establecido a nivel de convocatoria bajo el que participa la entidad convocante. Es un campo heredado de la convocatoria. Es una FK a la tabla "programa" (modelo lógico "CSP Convocatoria"). |
| proyecto : Proyecto  Private Proyecto al que pertenece el registro. Es una FK a la tabla "proyecto". |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoEntidadConvocante  Cardinality:  \[0\..\*] | Target: Public (Class) Programa  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoEntidadConvocante  Cardinality:  \[0\..\*] |

  


#### Entidad Entidades financiadoras de un proyecto: "ProyectoEntidadFinanciadora"

Entidades financiadoras de un proyecto. 

  




| **OUTGOING STRUCTURAL RELATIONSHIPS** |
| --- |
| Generalization from  ProyectoEntidadFinanciadora to  Entidad \[ Direction is 'Source \-\> Destination'. ] |

  


  




| **ATTRIBUTES** |
| --- |
| ajena : Boolean  Private Indicador de entidad ajena a la convocatoria. Si su valor es "sí" la entidad financia el proyecto de manera independiente a la convoctoria de la que éste derive. |
| entidadRef : String  Private Referencia de la entidad financiadora. Identificador de la entidad/empresa en el sistema de gestión de empresas corporativo. |
| fuenteFinanciacion : FuenteFinanciacion  Private Fuente de financiación con la que la entidad participa en el proyecto. Es una FK a la tabla "fuente financiación" incluida en el modelo lógico CSP Convocatoria. |
| id : Long  Private Identificador único del registro. Secuencia. Clave primaria |
| importeFinanciacion : BigDecimal  Private Importe con el que la entidad financia el proyecto. |
| porcentajeFinanciacion : BigDecimal  Private Porcentaje sobre la financiación total del proyecto aportado por la entidad. |
| proyecto : Proyecto  Private Proyecto al que pertenece el registro. Es una FK a la tabla "proyecto". |
| tipoFinanciacion : TipoFinanciacion  Private Clasificación de la financiación aportada por la entidad en el proyecto. Es una FK a la tabla "tipo de financiación" incluida en el modelo lógico CSP Convocatoria. |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoEntidadFinanciadora  Cardinality:  \[1] | Target: Public (Class) ProyectoPeriodoAmortizacion  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoEntidadFinanciadora  Cardinality:  \[0\..\*] |

  


  


#### Entidad Entidad gestora de un proyecto: "ProyectoEntidadGestora"

Entidad gestora de un proyecto. Se dispone de una tabla si bien a nivel de interface solo se permite añadir una única entidad gestora al proyecto. 

  




| **OUTGOING STRUCTURAL RELATIONSHIPS** |
| --- |
| Aggregation from  ProyectoEntidadGestora to  EmpresaEconomica \[ Direction is 'Source \-\> Destination'. ] |
| Generalization from  ProyectoEntidadGestora to  Entidad \[ Direction is 'Source \-\> Destination'. ] |



| **ATTRIBUTES** |
| --- |
| entidadRef : String  Private Referencia de la entidad. Es el identificador de la entidad/empresa en el sistema de gestión de empresas corporativo. |
| id : Long  Private Identificador único del registro. Secuencia. Clave primaria. |
| proyecto : Proyecto  Private Proyecto al que pertenece el registro. Es una FK a la tabla "proyecto". |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoEntidadGestora  Cardinality:  \[0\..1] |

  


  


#### Entidad Miembros del equipo de un proyecto: "ProyectoEquipo"

Listado con los miembros del equipo del proyecto. 

  




| **ATTRIBUTES** |
| --- |
| fechaFin : Date  Private Fecha de inicio para la participación del miembro del equipo de proyecto con el rol seleccionado. Por defecto se inicializa con la fecha de fin del proyecto. |
| fechaInicio : Date  Private Fecha de inicio para la participación del miembro del equipo de proyecto con el rol seleccionado. Por defecto se inicializa con la fecha de inicio del proyecto. |
| horasDedicacion : Double  Private Horas totales de dedicación al proyecto. Se utiliza para realizar la propuesta de distribución del timesheet. |
| id : Long  Private Clave primaria. Identificador de la tabla. |
| personaRef : String  Private Identificador o Referencia de la persona miembro del equipo de proyecto. Es el identificador de la persona en el sistema de personas de la Universidad. |
| proyecto : Proyecto  Private Identificador del Proyecto. FK. |
| rolProyecto : RolProyecto  Private Identificador del Rol de Proyecto. FK. |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoEquipo | Target: Public (Class) Persona |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoEquipo  Cardinality:  \[0\..\*] | Target: Public (Class) RolProyecto  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoEquipo  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) PaqueteTrabajoInvestigadores  Cardinality:  \[0\..\*] | Target: Public (Class) ProyectoEquipo  Cardinality:  \[1] |

  


#### Entidad Fases de un proyecto: "ProyectoFase"

Fases o plazos generales del proyecto (teniendo en cuenta que los periodos de justificación y de seguimiento científico tendrán sus propias tablas). La disponibilidad de los tipos de fase es dependiente del modelo de ejecución al que se vincula el proyecto. Las fases pueden registrarse a pasado o a futuro. Si se registran a futuro podrán conllevar la generación de un comunicado. 

  




| **ATTRIBUTES** |
| --- |
| fechaFin : Timestamp  Private Fecha de fin de la fase o plazo. |
| fechaInicio : Timestamp  Private Fecha de inicio de la fase definida para el proyecto. |
| generaAviso : boolean  Private Indica si la fase conllevará la generación de un comunicado (envío de mail informativo de manera automática desde el SGI). |
| id : Long  Private Identificador único del registro. Secuencia. Clave primaria. |
| observaciones : String  Private Texto libre. |
| proyecto : Proyecto  Private Proyecto al que pertenece el registro de la fase. Es una FK a la tabla "proyecto". |
| tipoFase : TipoFase  Private Identificador del tipo de fase. Es una FK a la tabla "tipo fase" incluida en el modelo lógico "CSP Modelo ejecución". Los tipos de fase disponibles para el proyecto son dependientes del modelo de ejecución bajo el que se crea. |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoFase  Cardinality:  \[0\..\*] |

  


#### Entidad Hitos de un proyecto: "ProyectoHito"

Hitos del proyecto. Se define hito de forma genérica como cualquier acontecimiento/evento que resulte de interés mantener identificado en el historial del proyecto. La disponibilidad de los tipos de hito es dependiente del modelo de ejecución al que se vincula el proyecto. Los hitos pueden registrarse a pasado o a futuro. Si se registran a futuro podrán conllevar la generación de un comunicado. 

  




| **ATTRIBUTES** |
| --- |
| comentario : String  Private Campo de texto libre. |
| fecha : Date  Private Fecha en la que se produce el hito. Podrá ser una fecha a pasado o a futuro. |
| generaAviso : boolean  Private Indica si el hito debe desencadenar la generación de un comunicado automático. Es un campo de introducción a nivel de usuario que solamente podrá ser introducido si el hito se registra sobre una fecha futura. |
| id : Long  PrivateIdentificador del registro. Secuencia. Clave primaria. |
| proyecto : Proyecto  Private Proyecto al que pertenece el hito. Es una FK a la tabla "proyecto". |
| tipoHito : TipoHito  Private Identificador del tipo de hito. Es una FK a la tabla "tipo hito" incluida en el modelo lógico "CSP Modelo ejecución". Los tipos de hitos disponibles para el proyecto son dependientes del modelo de ejecución bajo el que se crea. |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoHito  Cardinality:  \[0\..\*] |

  


#### Entidad Histórico de IVA de un proyecto: "ProyectoIVA"

Histórico de los diferentes porcentajes de IVA que hubieran podido aplicar durante la durante toda la duración del proyecto/contrato. 

  




| **ATTRIBUTES** |
| --- |
| fechaFin : Timestamp  Private Fecha de fin en la que deja de aplicarse el porcentaje de IVA al que refiere el registro. |
| fechaInicio : Timestamp  Private Fecha de inicio en la que empieza a aplicarse el porcentaje de IVA al que refiere el registro. |
| id : Long  Private Identificador único del registro. Secuencia. Clave primaria. |
| iva : Integer  Private Valor del porcentaje del IVA. |
| proyectoId : Long  Private Proyecto al que pertenece el registro. Es una FK a la tabla "proyecto". |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoIVA  Cardinality:  \[0\..\*] |

  


#### Entidad Palabras clave de un proyecto: "ProyectoPalabraClave"

Palabras clave asociadas al proyecto. El catálogo de palabras clave común al SGI se implementa en la tabla "palabra clave" del ESB (modelo SGO).



| **ATTRIBUTES** |
| --- |
| id : Long  Private Identificador único del registro. Secuencia. Clave primaria. |
| palabraClave : String  Private Palabra clave asociada al proyecto. Es una FK a la tabla "palabra clave" del modelo ESB\-SGO. |
| proyectoId : Long  Private Proyecto al que pertenece la palabra clave. Es una FK a la tabla "proyecto". |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoPalabraClave  Cardinality:  \[0\..\*] | Target: Public (Class) Proyecto  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoPalabraClave  Cardinality:  \[0\..\*] | Target: Public (Class) PalabraClave  Cardinality:  \[1] |

  


#### Entidad Paquetes de trabajo de un proyecto: "ProyectoPaqueteTrabajo"

Paquetes de trabajo en los que se desglosa un proyecto. Sin uso actualmente al no haberse desarrollado la funcionalidad de timesheet. 



| **ATTRIBUTES** |
| --- |
| descripción : String  Private Descripción del paquete de trabajo. |
| fechaFin : Date  Private Fecha de fin del paquete de trabajo. |
| fechaInicio : Date  Private Fecha de inicio del paquete de trabajo |
| id : Long  Private Identificador único del registro. Secuencia. Clave primaria. |
| nombre : String  Private Nombre del paquete de trabajo. |
| personaMes : Double  Private Esfuerzo total comprometido en el paquete de trabajo. |
| proyecto : Proyecto  Private Proyecto al que pertenece el paquete de trabajo. Es una FK a la tabla "proyecto". |

  


  




| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoPaqueteTrabajo  Cardinality:  \[0\..\*] | Target: Public (Class) Proyecto  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoPaqueteTrabajo  Cardinality:  \[1] | Target: Public (Class) PaqueteTrabajoInvestigadores  Cardinality:  \[0\..\*] |

  


  


#### Entidad Periodos de seguimiento de un proyecto: "ProyectoPeriodoSeguimiento"

Periodos de seguimiento científico de un proyecto. 

  




| **ATTRIBUTES** |
| --- |
| convocatoriaPeriodoSeguimientoId : Long  Private Identificador del periodo de seguimiento definido en la convocatoria del que procede el periodo de seguimiento de la convocatoria. Campo utilizado para comparar los datos definidos en el proyecto respecto a los de partida de la convocatoria y mostrar la correspondiente advertencia en el interface de usuario. |
| fechaFin : Date  Private Fecha final del periodo de seguimiento, entendiendo éste como el periodo dentro de la duración total del proyecto cuya ejecución se debe justificar en este periodo de seguimiento. |
| fechaFinPresentacion : Timestamp  Private Fecha en la que finaliza el plazo disponible para presentar a la entidad la documentación de justificación científico\-técnica correspondiente al periodo de seguimiento. |
| fechaInicio : Date  Private Fecha de inicio del periodo de seguimiento, entendiendo éste como el periodo dentro de la duración total del proyecto cuya ejecución se debe justificar en este periodo de seguimiento. |
| fechaInicioPresentacion : Timestamp  Private Fecha en la que comienza el plazo disponible para presentar a la entidad la documentación de justificación científico\-técnica correspondiente al periodo de seguimiento. |
| id : Long  Private Identificador único del registro. Clave primaria. Secuencia. |
| numPeriodo : Integer  Private Número del periodo de acuerdo a un orden secuencial de los periodos de seguimiento del proyecto en función de la fecha de inicio de los mismos. Es asignado de manera automática por el sistema. |
| observaciones : String  Private Texto libre para introducir observaciones del periodo de seguimiento científico. |
| proyecto : Proyecto  Private Proyecto al que pertenece el periodo. Es una FK a la tabla "proyecto". |
| tipoSeguimiento : TipoSeguimiento  Private Tipo del periodo de seguimiento de acuerdo al enumerado "tipo periodo seguimiento" |
| fechaPresentacionDocumentacion: Timestamp PrivateFecha en la que se realiza la presentación de la documentación asociada al periodo de seguimiento científico. Se recoge en formato fecha \+ hora. |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoPeriodoSeguimiento | Target: Public (Enumeration) TipoSeguimiento |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoPeriodoSeguimiento  Cardinality:  \[1] | Target: Public (Class) ProyectoPeriodoSeguimientoDocumento  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoPeriodoSeguimiento  Cardinality:  \[0\..\*] |

  


  


#### Entidad Documentos de un periodo de seguimiento de un proyecto: "ProyectoPeriodoSeguimientoDocumento"

Documentación asociada a los periodos de seguimiento. 

  




| **ATTRIBUTES** |
| --- |
| comentario : String  Private Comentarios del documento. |
| documentoRef : String  Private Referencia o Identificador del documento almacenado en el repositorio de documentos global del SGI. |
| id : Long  Private Clave primaria. Identificador de la tabla. |
| nombre : String  Private Nombre del documento, para identificarlo dentro del SGI. |
| proyectoPeriodoSeguimiento : ProyectoPeriodoSeguimiento  Private Identificador del periodo de seguimiento al que pertenece el documento. Es una FK a la tabla “proyecto periodo seguimiento”. |
| tipoDocumento : TipoDocumento  Private Identificador del tipo de documento. Es una FK a la tabla "tipo documento" incluida en el modelo lógico "CSP Convocatoria". |
| visible : boolean  Private  Flag que determina si el documento estará visible para el personal investigador a través de su acceso al SGI. |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoPeriodoSeguimiento  Cardinality:  \[1] | Target: Public (Class) ProyectoPeriodoSeguimientoDocumento  Cardinality:  \[0\..\*] |

  


#### Entidad Prórrogas de un proyecto: "ProyectoProrroga"

Prórrogas o ampliaciones del proyecto/contrato. Una prórroga podrá afectar a la duración del proyecto, a su importe o a ambos parámetros. 

  




| **ATTRIBUTES** |
| --- |
| fechaConcesion : Date  Private Fecha en la que se concede la prórroga. |
| fechaFin : Date  Private Nueva fecha de fin que pasará a tener el proyecto en caso de que la prórroga afecte a la duración del mismo. Este valor alimentará el campo "fecha fin definitiva" de la tabla "proyecto". |
| id : Long  Private Identificador único del registro. Secuencia. Clave primaria. |
| importe : BigDecimal  Private  Valor del importe concedido en la prórroga en caso que la prórroga afecte a este parámetro. No se realiza ninguna actualización automática del presupuesto del proyecto. |
| numProrroga : Integer  Private Número secuencial que establece un orden de las prórrogas del proyecto. Es asignado automáticamente por el sistema en función del campo "fecha de concesión" de la prórroga. |
| observaciones : String  Private Campo de texto libre. |
| proyecto : Proyecto  Private Proyecto al que pertenece la prórroga. Es una FK a la tabla "proyecto". |
| tipoProrroga : TipoProrroga  Private  Valor del enumerado Tipo prórroga. En función del tipo de prórroga el sistema exigirá la introducción de la fecha de fin, el importe o ambos para poder registrar la prórroga. |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoProrroga | Target: Public (Enumeration) TipoProrroga |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoProrroga  Cardinality:  \[1] | Target: Public (Class) ProrrogaDocumento  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoProrroga  Cardinality:  \[0\..\*] |

  


#### Entidad Histórico de responsables económicos de un proyecto: "ProyectoResponsableEconomico"

Responsable económico actual del proyecto e histórico de los mismos. Cada proyecto solo puede un responsable económico en un momento determinado. 

  




| **ATTRIBUTES** |
| --- |
| fechaFin : Date  Private Fecha en la que finaliza la participación en el proyecto como responsable económico. |
| fechaInicio : Date  Private Fecha en la que comienza la participación en el proyecto como responsable económico. |
| id : Long  Private Identificador único del registro. Secuencia. Clave primaria. |
| personaRef : String  Private Referencia de la persona que actúa como responsable económico del proyecto. Es el identificador de la persona en el sistema de gestión de personas corporativo. |
| proyecto : Proyecto  Private Identificador del proyecto al que pertenece el registro responsable económico. Es una FK a la tabla proyecto. |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoResponsableEconomico  Cardinality:  \[0\..\*] |

  


#### Entidad Socios de un proyecto: "ProyectoSocio"

Listado de socios (entidades) que participan en el desarrollo proyecto. 

A nivel de interface gráfico la opción de añadir socios al proyecto solo estará disponible si el campo "coordinado" de la tabla "proyecto" toma valor "true". 

  




| **ATTRIBUTES** |
| --- |
| empresaRef : String  Private Referencia de la entidad que participa como socio en el proyecto. Es el identificador de la entidad en el sistema de gestión de empresas corporativo. |
| fechaFin : Date  Private Fecha en la que finaliza la colaboración del socio en el proyecto. |
| fechaInicio : Date  Private Fecha en la que comienza la colaboración del socio en el proyecto. |
| id : Long  Private Identificador único del registro en la tabla "socio". Secuencia. Clave primaria. |
| importeConcedido : BigDecimal  Private Importe que le ha sido concedido al socio para el desarrollo del proyecto. |
| importePresupuesto : BigDecimal  Private  Importe considerado en el presupuesto del proyecto correspondiente al socio. |
| numInvestigadores : Integer  Private Número de miembros que forman parte del equipo de proyecto por parte del socio. |
| proyecto : Proyecto  Private Identificador del proyecto al que pertenece el registro de la tabla "socio proyecto". Es una FK a la tabla "proyecto". |
| rolSocio : RolSocio  Private Rol que desempeña el socio en el desarrollo del proyecto. Es una FK a la tabla "rol socio". |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoSocio  Cardinality:  \[1] | Target: Public (Class) ProyectoSocioEquipo  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoSocio  Cardinality:  \[1] | Target: Public (Class) ProyectoSocioPeriodoPago  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoSocio  Cardinality:  \[1] | Target: Public (Class) ProyectoSocioPeriodoJustificacion  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoSocio  Cardinality:  \[0\..\*] |

  


  


#### Entidad Miembros de equipo de un socio de proyecto: "ProyectoSocioEquipo"

Equipo de proyecto de un socio. 

  




| **ATTRIBUTES** |
| --- |
| fechaFin : Date  Private Fecha en la que finaliza la participación del miembro con un rol determinado en el equipo de proyecto del socio. |
| fechaInicio : Date  Private Fecha en la que comienza la participación del miembro con un rol determinado en el equipo de proyecto del socio. |
| id : Long  Private Identificador único del registro en la tabla "equipo socio". Clave primaria. |
| personaRef : String  Private Referencia del miembro de equipo del socio. Es el identificador de la persona en el sistema de gestión de personas corporativo. |
| proyectoSocio : ProyectoSocio  Private Identificador del socio al que pertenece el miembro de equipo. Es una FK. a la tabla "proyecto socio" |
| rolProyecto : RolProyecto  Private Rol que desempeña el miembro en el equipo del socio en un periodo determinado. Es una FK a la tabla "rol proyecto". |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoSocio  Cardinality:  \[1] | Target: Public (Class) ProyectoSocioEquipo  Cardinality:  \[0\..\*] |

  


  


#### Entidad Periodos de justificación de un socio de proyecto: "ProyectoSocioPeriodoJustificacion"

Periodos de justificación a los que se compromete el socio con la Universidad. Los periodos de justificación aplicarán cuando el coordinador del proyecto sea la Universidad (campo "coordinador externo" de la tabla "proyecto" toma el valor "false"). 

  




| **ATTRIBUTES** |
| --- |
| docRecibida : boolean  Private Indica si la Universidad ha recibido la documentación de justificación por parte del socio. |
| fechaFin : Date  Private Fecha fin del periodo que debe de justificar el socio. El SGI permite la posibilidad de que se definan periodos de justificación con cada socio de manera independiente a los periodos de justificación que tenga establecidos el proyecto y que se corresponderían con los periodos comprometidos por la Universidad como coordinador del proyecto con las entidades financiadoras. |
| fechaFinPresentacion : Timestamp  Private Fecha y hora de fin del plazo que dispone el socio para presentar la información de justificación a la Universidad. |
| fechaInicio : Date  Private Fecha de inicio del periodo que debe de justificar el socio. El SGI permite la posibilidad de que se definan periodos de justificación con cada socio de manera independiente a los periodos de justificación que tenga establecidos el proyecto y que se corresponderían con los periodos comprometidos por la Universidad como coordinador del proyecto con las entidades financiadoras. |
| fechaInicioPresentacion : Timestamp  Private Fecha y hora de fin del plazo que dispone el socio para presentar la información de justificación a la Universidad. |
| fechaRecepcion : Date  Private Fecha en la que ha sido recepcionada por parte de la Universidad la documentación correspondiente al periodo de justificación. |
| id : Long  Private Identificador único del registro en la tabla. Secuencia. Clave primaria. |
| importeJustificado : BigDecimal  Private Importe total justificado en el periodo por parte del socio. |
| numPeriodo : Integer  Private Número secuencial dentro de los periodos de justificación del socio que asignará directamente el sistema en función de la ordenación de la fecha de inicio de todos los periodos. |
| observaciones : String  Private  Campo abierto que permite introducir cualquier observación sobre el periodo de justificación del socio. |
| proyectoSocio : ProyectoSocio  Private Identificador del socio dentro del proyecto al que pertenece el periodo de justificación. Es una FK a la tabla "proyecto socio". |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoSocioPeriodoJustificacion  Cardinality:  \[1] | Target: Public (Class) SocioPeriodoJustificacionDocumento  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoSocio  Cardinality:  \[1] | Target: Public (Class) ProyectoSocioPeriodoJustificacion  Cardinality:  \[0\..\*] |

  


#### Entidad Periodos de pago de un socio de proyecto: "ProyectoSocioPeriodoPago"

Periodos de pago a los que se compromete la Universidad con el socio. Los periodos de pago aplicarán cuando el coordinador del proyecto sea la Universidad (campo "coordinador externo" de la tabla "proyecto" toma el valor "false"). 

  




| **ATTRIBUTES** |
| --- |
| fechaPago : Timestamp  Private Fecha en la que ha sido realizado el pago al socio para el periodo concreto. |
| fechaPrevistaPago : Timestamp  Private Fecha en la que está previsto que la Universidad realice el pago al socio correspondiente al periodo concreto. |
| id : Long  Private Identificador único del registro en la tabla. Secuencia. Clave primaria. |
| importe : BigDecimal  Private Importe a pagar al socio correspondiente al periodo determinado. |
| numPeriodo : Integer  Private Número secuencial dentro del proyecto que asignará directamente el sistema al periodo de acuerdo a la ordenación de todos los periodos de pago en base a su fecha de inicio. |
| proyectoSocio : ProyectoSocio  Private Socio dentro del proyecto al que corresponde el periodo de pago. Es una FK a la tabla "proyecto socio". |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoSocio  Cardinality:  \[1] | Target: Public (Class) ProyectoSocioPeriodoPago  Cardinality:  \[0\..\*] |

  


  


#### Entidad Documentos de un periodo de justificación de un socio de proyecto: "SocioPeriodoJustificacionDocumento"

Documentación asociada a un periodo de justificación de un socio del proyecto. 



| **ATTRIBUTES** |
| --- |
| comentario : String  Private Comentarios del documento. |
| documentoRef : String  Private Referencia al fichero almacenado en el repositorio de documentos global del SGI. |
| id : Long  Private Identificador único del registro en la tabla. Secuencia. Clave primaria. |
| nombre : String  Private Nombre del documento para identificarlo dentro del SGI. |
| proyectoSocioPeriodoJustificacion : ProyectoSocioPeriodoJustificacion  Private Periodo de justificación del socio de proyecto con el que se corresponde el registro. Es una FK a la tabla "periodo justificación socio". |
| tipoDocumento : TipoDocumento  Private Clasificación del documento de acuerdo a los tipos definidos en el SGI. Es una FK a la tabla "tipo documento". |
| visible : boolean  Private  Indica si el documento va a a estar visible o no para los investigadores que forman parte del equipo del proyecto desde su acceso al SGI. |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoSocioPeriodoJustificacion  Cardinality:  \[1] | Target: Public (Class) SocioPeriodoJustificacionDocumento  Cardinality:  \[0\..\*] |

  


  


### Enumerados del modelo lógico Proyecto

#### Enumerado Causa de exención de IVA: "CausaExencion"

Indica la causa de exención de IVA. 

Enumerado con los siguientes valores: 

* NO\_SUJETO
* NO\_SUJETO\_CON\_DEDUCCION
* NO\_SUJETO\_SIN\_DEDUCCION
* SUJETO\_EXENTO

  




| **ATTRIBUTES** |
| --- |
| Sujeto y exento :   Public |
| No sujeto (arts. 7, 14 y otros) :   Public |
| No sujeto por reglas de localización. Sin derecho a deducción :   Public |
| No sujeto por reglas de localización. Con derecho a deducción :   Public |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[0\..\*] | Target: Public (Enumeration) CausaExencion  Cardinality:  \[1] |

  


  


#### Enumerado Tipo de estados de un proyecto: "TipoEstadoProyecto"

Enumerado que contiene los estados por los que puede pasar un proyecto. Contiene los siguientes valores: 

* BORRADOR
* CONCEDIDO
* RENUNCIADO
* RESCINDIDO

  




| **ATTRIBUTES** |
| --- |
| Borrador :   Public |
| Concedido :   Public |
| Renunciado :   Public |
| Rescindido :   Public |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) EstadoProyecto | Target: Public (Enumeration) TipoEstadoProyecto |

  


#### Enumerado Tipo de propiedad de los resultados de un proyecto: "TipoPropiedadResultados"

Enumerado que contiene el listado para identificar el propietario de los resultados generados en el proyecto. Contiene los valores: 

* COMPARTIDA
* ENTIDAD\_FINANCIADORA
* SIN\_RESULTADOS
* UNIVERSIDAD

  




| **ATTRIBUTES** |
| --- |
| Sin resultados :   Public |
| Universidad :   Public |
| Entidad financiadora :   Public |
| Compartida :   Public |

  


  




| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ContextoProyecto  Cardinality:  \[0\..\*] | Target: Public (Enumeration) TipoPropiedadResultados  Cardinality:  \[1] |

  


#### Enumerado Tipos de prórroga de proyecto: "TipoProrroga"

Enumerado en base al que se tipifican las prórrogas.  

Valores: 

* IMPORTE
* TIEMPO
* TIEMPO\_IMPORTE

  




| **ATTRIBUTES** |
| --- |
| Tiempo :   Public |
| Importe :   Public |
| Tiempo e importe :   Public |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoProrroga | Target: Public (Enumeration) TipoProrroga |

  


  


### Entidades del modelo lógico Configuración económica

#### Entidad Conceptos de gasto de una agrupación de gasto "AgrupacionGastoConcepto"

Conceptos de gasto incluidos en una agrupación de gastos de un proyecto. 



| **ATTRIBUTES** |
| --- |
| conceptoGasto : ConceptoGasto  Private Identificador del concepto de gasto. Es una FK a la tabla "concepto gasto" incluida en el modelo CSP Convocatoria. |
| id : int  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| proyectoAgrupacionGasto : ProyectoAgrupacionGasto  Private Agrupación de gasto de un proyecto concreto al que pertenece el registro. Es una FK a la tabla "proyecto agrupación gasto". |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoAgrupacionGasto  Cardinality:  \[1\..] | Target: Public (Class) AgrupacionGastoConcepto  Cardinality:  \[0\..\*] |

  


  


  


#### Entidad Conceptos de gasto incluidos en una anualidad de un presuppuesto de proyecto "AnualidadGasto"

Detalle del presupuesto de gastos por anualidad de un proyecto. En caso de que no existan anualidades todos los gastos estarán ligados a la misma anualidad (se crea una anualidad por defecto sin informar el año de la anualidad, se considera que la anualidad estará activa toda la duración del proyecto). El presupuesto de una anualidad puede ser desglosado a nivel de concepto de gasto \- código económico \- partida/aplicación presupuestaria, si bien el código económico no es obligatorio. 

  

Las tablas anualidad proyecto, anualidad gasto y anualidad ingreso conforme el presupuesto de un proyecto. 

  




| **ATTRIBUTES** |
| --- |
| anualidad : ProyectoAnualidad  Private Identificador de la anualidad a la que está asociado el registro. Es una FK a la tabla "anualidad proyecto". |
| codigoEconomicoRef : String  Private Identificador o referencia del código económico del SGE con el que se corresponde el registro. Es opcional. El desglose del presupuesto puede llegar a detallarse a nivel de código económico del SGE, si bien es opcional. |
| conceptoGasto : ConceptoGasto  Private Concepto de gasto al que se asocia el registro. Es una FK a la tabla "concepto gasto" incluida en modelo lógico CSP Convocatoria. |
| id : Long  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| importeConcedido : BigDecimal  Private Importe que ha sido concedido para la partida de gasto a la que refiere el registro. |
| importePresupuesto : BigDecimal  Private Importe incluido en el presupuesto del proyecto para la partida de gasto a la que refiere el registro. |
| proyectoPartida : ProyectoPartida  Private Partida presupuestaria del proyecto con la que se corresponde el registro. Será una partida de tipo "gasto". Es una FK a la tabla "proyecto partida". |
| proyectoSGERef : String  Private El SGI cubre la posibilidad de que un proyecto SGI esté asociado a varios proyectos SGE. Para ello es necesario identificar para cada elemento del desglose de presupuesto el proyecto SGE con el que se corresponde. Este campo se corresponde con el identificador del proyecto en el SGE. |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoAnualidad  Cardinality:  \[1] | Target: Public (Class) AnualidadGasto  Cardinality:  \[0\..\*] |

  


#### Entidad Concpetos de ingreso incluidos en una anualidad de un presupuesto de proyecto"AnualidadIngreso"

Presupuesto de ingresos por anualidad de un proyecto. En caso de que no existan anualidades todos los ingresos estarán ligados a la misma anualidad (se crea una anualidad por defecto sin informar el año de la anualidad, se considera que la anualidad estará activa toda la duración del proyecto). 

Las tablas anualidad proyecto, anualidad gasto y anualidad ingreso conforme el presupuesto de un proyecto. 



| **ATTRIBUTES** |
| --- |
| anualidad : ProyectoAnualidad  Private Identificador de la Anualidad. FK. |
| codigoEconomicoRef : String  Private Identificador o referencia del código económico en el Sistema de gestión económico. |
| id : Long  Private Clave primaria. Identificador de la tabla. |
| importeConcedido : Bigdecimal  Private Importe concedido de la partida de ingreso. |
| proyectoPartida : ProyectoPartida  Private Identificador del Proyecto Partida (Una de las partidas presupuestarias de tipo Ingreso del proyecto). FK. |
| proyectoSGERef : String  Private Identificador del proyecto en el Sistema de gestión económica. |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoAnualidad  Cardinality:  \[1] | Target: Public (Class) AnualidadIngreso  Cardinality:  \[0\..\*] |

#### Entidad Estado de un periodo de justificación de un proyecto "EstadoProyectoPeriodoJustificacion"

Estado actual e histórico de estados por los que va pasando un periodo de justificación de un proyecto, en referencia a la presentación del mismo a la entidad correspondiente. 



| **ATTRIBUTES** |
| --- |
| comentario : String  Private Comentario añadido cuando se produce el cambio de estado. |
| estado : TipoEstadoPeriodoJustificacion  Private Es un valor del enumerado "tipo estado periodo justificación". |
| fechaEstado : Date  Private Fecha en la que el periodo de justificación adquiere este estado. |
| id : Long  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| proyectoPeriodoJustificacionId : Long  Private Perido de justifación dentro de un proyecto concreto al que pertenece el registro de estado. Es una FK a la tabla "proyecto periodo justificación". |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) EstadoProyectoPeriodoJustificacion | Target: Public (Enumeration) TipoEstadoPeriodoJustificacion |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoPeriodoJustificacion  Cardinality:  \[1] | Target: Public (Class) EstadoProyectoPeriodoJustificacion  Cardinality:  \[1\..\*] |

  


  


#### Entidad Estado de validación IP de un ítem de facturación "EstadoValidacionIP"

Estado actual e histórico de estados del ítem de facturación. Los estados son referentes al ciclo de validación con el responsable del contrato. 



| **ATTRIBUTES** |
| --- |
| comentario : String  Private Comentario añadido cuando se produce el cambio de estado. |
| estado : TipoEstadoValidacion  Private Estado asociado al ciclo de validación del ítem de facturación por parte del responsable de proyecto/contrato. Es un valor del enumerado "tipo estado validación". |
| fecha : TimeStamp  Private Fecha en la que se produce el cambio de estado. |
| id : Long  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| proyectoFacturacionId : Long  Private Ítem de facturación de un proyecto concreto al que está vinculado el estado. Es una FK a la tabla "proyecto facturación". |

  


  




| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) EstadoValidacionIP | Target: Public (Enumeration) TipoEstadoValidacion |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoFacturacion  Cardinality:  \[1] | Target: Public (Class) EstadoValidacionIP  Cardinality:  \[0\..\*] |

  


#### Entidad Agrupaciones de gasto de un proyecto "ProyectoAgrupacionGasto"

Agrupación lógica de conceptos de gastos que solamente tiene efecto de cara a representar la información en las pantallas de ejecución económica del SGI. 



| **ATTRIBUTES** |
| --- |
| id : int  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| nombre : String  Private Nombre de la agrupación de gastos. |
| proyecto : Proyecto  Private  Proyecto al que pertenece la agrupación de gastos. Es una FK a la tabla "proyecto". |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoAgrupacionGasto  Cardinality:  \[1\..] | Target: Public (Class) AgrupacionGastoConcepto  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoAgrupacionGasto  Cardinality:  \[0\..\*] |

  


#### Entidad Anualidades del presupuesto de un proyecto "ProyectoAnualidad"

Anualidades de un proyecto. En caso de que no existan anualidades todos los gastos e ingresos estarán ligados a la misma anualidad (se crea una anualidad por defecto sin informar el año de la anualidad, se considera que la anualidad estará activa toda la duración del proyecto). 

Las tablas anualidad proyecto, anualidad gasto y anualidad ingreso conforme el presupuesto de un proyecto. 

  




| **ATTRIBUTES** |
| --- |
| anio : Integer  Private  Año natural con el que se da nombre a la anualidad y que será utilizado para solicitar al SGE el detalle de las operaciones y documentos contables. En caso de que en el proyecto no se quiera definir anualidades, tomará el valor null. |
| enviadoSGE : Boolean  Private Flag que indica si el presupuesto para la anualidad ha sido notificado o no al sistema de gestión económica. |
| fechaFin : Date  Private Fecha de fin de la anualidad, puesto que no tiene por qué coincidir con el año natural. Para la anualidad genérica (cuando no hay desglose por anualidades de un proyecto) no tendrá valor. |
| fechaInicio : Date  Private Fecha de inicio de la anualidad, puesto que no tiene por qué coincidir con el año natural. Para la anualidad genérica (cuando no hay detalle de anualidades en un proyecto) este campo no tendrá valor. |
| id : Long  Private  Identificador único de la tabla. Secuencia. Clave primaria. |
| presupuestar : Boolean  Private Flag que indica si el presupuesto asociado a la anualidad debe ser notificado o no al sistema de gestión económica. Es un valor informado a través del interface de usuario. |
| proyecto : Proyecto  Private Proyecto al que pertene la anualidad. Es una FK a la tabla "proyecto". |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoAnualidad  Cardinality:  \[1] | Target: Public (Class) AnualidadIngreso  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoAnualidad  Cardinality:  \[1] | Target: Public (Class) ProyectoPeriodoAmortizacion  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoAnualidad  Cardinality:  \[1] | Target: Public (Class) AnualidadGasto  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoAnualidad  Cardinality:  \[0\..\*] | Target: Public (Class) Proyecto  Cardinality:  \[1] |

  


#### Entidad Items de facturación de un proyecto "ProyectoFacturación"

Previsión de la facturación de un proyecto (que en este caso se correspondería con un contrato). Los registros almacenados no se pueden considerar facturas sino más bien ítems previstos de facturación. Estos ítems contienen los datos básicos para crear posteriormente la factura a generar. La creación de esta factura tendrá lugar en el SGE y se realizará de manera ajena al SGI (aunque el SGI permitirá tener mapeados estos ítems de facturación con la factura finalmente registrada en el SGE). 

  




| **ATTRIBUTES** |
| --- |
| comentario : String  Private Texto libre para recoger cualquier observación sobre el ítem de facturación. |
| estadoValidacionIP : estadoValidacionIP  Private Estado, referente al flujo de validación por parte del responsable del proyecto/contrato, en el que se encuentra actualmente el ítem de facturación. Es una FK a la tabla "estado valicación ip". |
| fechaConformidad : Timestamp  Private Fecha indicativa de que el ítem de facturación puede ser registrado en el SGE (este registro se realiza de manera ajena al SGI). Esta fecha se inicializa con la fecha en la que el responsable del proyecto/contrato valida el ítem de facturación aunque la unidad de gestión pueda modificarla posteriomente. |
| fechaEmision : Timestamp  Private Fecha prevista de emisión de la factura. |
| id : Long  Private Identificador único del registro. Secuencia. Clave primaria. |
| importeBase : BigDecimal  Private Importe base del ítem de facturación. |
| numeroPrevision : Integer  Private Número del ítem de facturación asignado automáticamente por el SGI en base a la fecha en la que se crea el ítem en el SGI. |
| porcentajeIva : Integer  Private  Porcentaje de IVA que se debe de aplicar en la factura posterior. Inicialmente toma el valor del IVA actual configurado en el proyecto (contrato), si bien puede ser modificado a nivel de ítem. |
| proyecto : Proyecto  Private Proyecto al que pertenece el ítem de facturación. Es una FK a la tabla "proyecto". |
| tipoFacturacion : TipoFacturacion  Private   Tipo asociado al ítem de facturación. La naturaleza de esta tipología podría adaptarse a las necesidades de cada Universidad pues se trata de una tabla configurable en tiempo de implantación. Puede ser un tipo que haga referencia al tipo de trabajo a facturar. Es una FK a la tabla "tipo facturación". |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoFacturacion  Cardinality:  \[1] | Target: Public (Class) EstadoValidacionIP  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoFacturacion  Cardinality:  \[0\..\*] | Target: Public (Class) TipoFacturacion  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoFacturacion  Cardinality:  \[0\..\*] |

  


  


#### Entidad Partidas de un proyecto "ProyectoPartida"

Partidas o aplicaciones presupuestarias del proyecto. Se utilizan en la definición del presupuesto del proyecto. 



| **ATTRIBUTES** |
| --- |
| codigo : String  Private Código alfanumérico que identifica la partida o aplicación presupuestaria. |
| convocatoriaPartidaId : Long  Private Las partidas de un proyecto se heredan de la convocatoria, si estas fueron informadas. Las partidas que el proyecto hereda de la convocatoria pueden ser modificadas de manera independiente. A través de este campo se mantiene la correspondencia de la partida del proyecto con la original de la convocatoria. Este campo es una FK a la tabla "convocatoria partida" incluida en ell modelo lógico CSP Convocatoria. |
| descripcion : String  Private Nombre o descripción de la partida o aplicación presupuestaria. |
| id : Long  Private Identificador único del registro. Secuencia. Clave primaria. |
| proyecto : Proyecto  Private Proyecto al que pertenece la partida o aplicación presupuestaria. Es una FK a la tabla "proyecto". |
| tipoPartida : TipoPartida  Private Tipo de la partida de acuerdo al enumerado "Tipo partida" |

  


  




| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoPartida | Target: Public (Enumeration) TipoPartida |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoPartida  Cardinality:  \[0\..\*] |

  


#### Entidad Periodos de amortización de un proyecto "ProyectoPeriodoAmortización"

 Periodos de amortización de la financiación recibida para un proyecto. Se desglosan por anualidad y por entidad financiadora del proyecto (que conllevará su posible vínculo con la correspondiente fuente de financiación). 

  




| **ATTRIBUTES** |
| --- |
| fechaLimiteAmortizacion : Date  Private Fecha límite para la amortización. |
| id : Long  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| importe : BigDecimal  Private Importe a amortizar. |
| proyectoAnualidad : ProyectoAnualidad  Private Anualidad del proyecto con la que se corresponde el registro de amortización. Es una FK a la tabla "proyecto anualidad". |
| proyectoEntidadFinanciadora : ProyectoEntidadFinanciadora  Private Procendencia de los fondos a los que refiere la amortización. Procederán de una entidad financiadora concreta con una fuente de financiación concreta, es decir, de un registro de la tabla "proyecto entidad financiadora". Es una FK a la tabla "proyecto entidad financiadora" incluida en el modelo lógico CSP Proyecto. |
| proyectoSGERef : String  Private El SGI permite que un proyecto SGI esté vinculado a más de un proyecto SGE. Este campo identifica el proyecto SGE al que está asociada la amortización. Es el identifidador del proyecto en el sistema de gestión económica corporativo. |

  


  




| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoAnualidad  Cardinality:  \[1] | Target: Public (Class) ProyectoPeriodoAmortizacion  Cardinality:  \[0\..\* |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoEntidadFinanciadora  Cardinality:  \[1] | Target: Public (Class) ProyectoPeriodoAmortizacion  Cardinality:  \[0\..\* |

  


  


#### Entidad Periodos de justificación de un proyecto "ProyectoPeriodoJustificacion"

Calendario de justificación económica del proyecto. 



| **ATTRIBUTES** |
| --- |
| convocatoriaPeriodoJustificacionId : Long  Private Identificador del periodo de justificación definido en la convocatoria del que procede el periodo de justificación del proyecto. Campo utilizado para comparar los datos definidos en el proyecto respecto a los de partida de la convocatoria y mostrar la correspondiente advertencia en el interface de usuario. |
| estado : EstadoProyectoPeriodoJustificacion  Private Estado actual en el que se encuentra el periodo de justificación en referencia a la presentación del mismo a la entidad correspondiente. |
| fechaFin : Date  Private Fecha que delimita el final del periodo de justificación, entendiendo éste como el periodo dentro de la duración total del proyecto en el que se han debido de ejecutar los gastos para incluirlos en este periodo de justificación. |
| fechaFinPresentacion : Timestamp  Private Fecha en la que finaliza el plazo disponible para presentar a la entidad la documentación de justificación económica correspondiente a este periodo. Se recoge en formato fecha \+ hora. |
| fechaInicio : Date  Private Fecha de inicio del periodo de justificación, entendiendo éste como el periodo dentro de la duración total del proyecto en el que se han debido de ejecutar los gastos para incluirlos en este periodo de justificación. |
| fechaInicioPresentacion : Timestamp  Private  Fecha de inicio del plazo disponible para presentar a la entidad la documentación de justificación económica correspondiente a este periodo. Se recoge en formato fecha \+ hora. |
| id : Long  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| numPeriodo : Integer  Private Número del periodo de acuerdo a un orden secuencial de los periodos de justificación del proyecto en función de la fecha de inicio de los mismos. Es asignado de manera automática por el sistema. |
| observaciones : String  Private Campo de texto libre para recoger cualquier anotación. No almacena históricos. |
| proyecto : Proyecto  Private Proyecto al que pertenece el periodo de justificación. Es una FK a la tabla "proyecto". |
| tipoJustificacion : TipoJustificacion  Private Tipo del periodo de justificación de acuerdo al enumerado "tipo periodo seguimiento" |
| fechaPresenrtacionJustificacion: Timestamp PrivateFecha en la que se realiza la presentación de la documentación de justificación económica asociada al periodo. Se recoge en formato fecha \+ hora. |

  


  




| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoPeriodoJustificacion | Target: Public (Enumeration) TipoJustificacion |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoPeriodoJustificacion  Cardinality:  \[1] | Target: Public (Class) EstadoProyectoPeriodoJustificacion  Cardinality:  \[1\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Proyecto  Cardinality:  \[1] | Target: Public (Class) ProyectoPeriodoJustificacion  Cardinality:  \[0\..\*] |

  


#### Entidad Relación entre proyectos SGE y proyectos SGI "ProyectoProyectoSGE"

 Correspondencia entre proyectos SGI y proyectos SGE (sistema de gestión económica). El SGI cubre la posibilidad de que esta relación sea de N a N. 



| **ATTRIBUTES** |
| --- |
| id : Long  Private Identificador único del registro. Secuencia. Clave primaria. |
| proyecto : Proyecto  Private Identificador del proyecto SGI. Es una FK a la tabla "proyecto". |
| proyectoSGERef : String  Private Referencia o identificador del proyecto en el sistema de gestión económica. |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoProyectoSGE  Cardinality:  \[0\..\*] | Target: Public (Class) Proyecto  Cardinality:  \[1] |

  


#### Entidad Tipos de facturación "TipoFacturacion"

 Permite configurar la tipología utilizada para los ítems de facturación. Esta tabla no dispone de interface de usuario por lo que el listado de tipos debe ser definido en tiempo de implantación. La naturaleza a la que atienda la tipificación puede ser definida por cada Universidad. Un ejemplo de uso podría ser recoger una tipología basada en la naturaleza del trabajo con el que se corresponderá la factura en la que derive finalmente el ítme de facturación (ejemplo realización de un informe, de un análisis, de un prototipo, ...) 



| **ATTRIBUTES** |
| --- |
| activo : Boolean  Private  \= True Flag a través del que se implementa el borrado lógico de los registros de esta tabla. Los registros no activos no estarán disponibles en el desplegable disponible en la pantalla de gestión de un ítem de facturación. |
| id : Long  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| nombre : String  Private Nombre descriptivo del tipo de facturación, será visible en el desplegable correspondiente de la pantalla de gestión del ítem de facturación. |
| tipoComunicado : String  Private Tipo de comunicado que desencadenará el ítem de facturación en su ciclo de validación. |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoFacturacion  Cardinality:  \[0\..\*] | Target: Public (Class) TipoFacturacion  Cardinality:  \[1] |

  


  


### Enumerados del modelo lógico de Configuración económica de proyecto

#### Enumerado Tipos de estado de los periodos de justificación "TipoEstadoPeriodoJustificacion"

Enumerado que identifica los estados por los que puede pasar un periodo de justificación. Dispone de los siguientes valores: 

* PENDIENTE
* ELABORACION
* ENTREGADA
* SUBSANACION
* CERRADA



| **ATTRIBUTES** |
| --- |
| Pendiente :   Public |
| Elaboración :   Public |
| Entregada :   Public |
| Subsanación :   Public |
| Cerrada :   Public |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) EstadoProyectoPeriodoJustificacion | Target: Public (Enumeration) TipoEstadoPeriodoJustificacion |

  


#### Enumerado Tipos de estado de la validación IP de los items de facturación "TipoEstadoVlidacion"

Enumerado correspondiente a los estados por los que puede pasar un ítem de facturación, referentes al flujo de validación por parte del resposable del proyecto/contrato. Toma los siguientes valores: 

* PENDIENTE
* NOTIFICADA
* VALIDADA
* RECHAZADA



| **ATTRIBUTES** |
| --- |
| Pendiente :   Public |
| Notificada :   Public |
| Validada :   Public |
| Rechazada :   Public |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) EstadoValidacionIP | Target: Public (Enumeration) TipoEstadoValidacion |

  


  


  





