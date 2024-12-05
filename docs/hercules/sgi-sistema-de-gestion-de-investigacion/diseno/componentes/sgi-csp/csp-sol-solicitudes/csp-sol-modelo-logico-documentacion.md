# Hércules : CSP\-SOL \- Módelo lógico \- Documentación



  


### Entidades del modelo de solicitud genérica

#### Entidad Solicitud

Entidad principal del modelo CSP Solicitud. Representa una solicitud genérica y contiene los datos básicos de la misma. 

Según el tipo de solicitud, esta entidad se complementará o no con otra entidad que particulariza los datos de acuerdo al tipo. 

Los tipos de solicitudes implementados en el SGI se encuentran identificados por el enumerado "Tipo formulario solicitud": 

* Proyecto
* Grupo
* RRHH

La entidad convocatoria dispone de un atributo "tipo formulario solicitud" que permite discriminar con qué tipo de solicitud se dará cobertura a las solicitudes de la convocatoria y en qué entidades se recogerían sus datos. 

  

Para el tipo de solicitud "proyecto" los datos de la solicitud se complementan con la tabla "solicitud proyecto" y todas sus relaciones. 

Para el tipo de solicitud "grupo" los datos de la solicitud se complementan únicamente con la tabla "solicitud grupo" .

  




| **ATTRIBUTES** |
| --- |
| activo : Boolean  Private Flag con el que se da cobertura al borrado lógico de los registros de esta tabla. Una solicitud solo puede ser eliminada mientras su estado sea "borrador". |
| codigoExterno : String  Private Identificador, código o referencia asignado a la solicitud por la entidad convocante. No es un valor dependiente del SGI.  En el caso de solicitudes del plan propio este campo podría corresponderse con el código asignado al presentar la solicitud en el Registro Universitario. El valor de este campo será heredado por el proyecto en el campo "código externo". |
| codigoRegistroInterno : String  Private Código generado automáticamente por el SGI al crear la solicitud. Está formado por un sufijo concatenado a la fecha y hora de la creación, por tanto, será único y permitirá identificar de manera única a la solicitud. |
| convocatoria : Convocatoria  Private Identificador de la convocatoria del SGI a la que pertenece la solicitud. Es una FK a la tabla "convocatoria" incluida en el modelo lógico CSP Convocatoria. |
| convocatoriaExterna : String  Private Código o referencia de la convocatoria externa (no registrada en el SGI) sobre la que se presenta la solicitud.  El SGI admite que se creen solicitudes sin necesidad de haber creado la convocatoria asociada en el SGI. Este campo permite identificar la convocatoria a la que pertenece la solicitud. A nivel de interface de usuario del SGI es obligatorio que una solicitud o bien esté vinculada a una convocatoria del SGI (campo "convocatoria" de esta tabla) o bien tenga informado este campo "convocatoria externa". |
| estado : EstadoSolicitud  Private Estado actual de la solicitud. Es una FK a la tabla "estado solicitud" |
| formularioSolicitud : TipoFormularioSolicitud  Private Discrimina el tipo de solicitud. Toma un valor del enumerado "tipo formulario solicitud". En función del valor los datos de la solicitud genérica se complementan con otras entidades de este modelo. * Proyecto: los datos de la solicitud se complementan con la entidad "solicitud proyecto" y todas sus relaciones. * Grupo: s datos de la solicitud se complementan con la entidad "solicitud grupo". * RRHH |
| id : Long  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| observaciones : String  Private Texto libre para recoger cualquier información complementaria de la solicitud. |
| solicitanteRef : String  Private Titular de la solicitud. Es el identificador de la persona en el sistema de gestión de personas corporativo. Una solicitud puede ser creada en el SGI directamente por su solicitante o por la unidad de gestión. Para identificar al creador de la solicitud se utilizará el campo de auditoría "created by" (disponible modelo físico). |
| tipoSolicitudGrupo : TipoSolicitudGrupo  Private Subtipo de la solicitud en caso de que la solicitud sea de tipo grupo ("formulario solicitud"). Es un valor del enumerado "tipo solicitud grupo" |
| titulo : String  Private Título de la solicitud. En el caso de las solicitudes de tipo proyecto se corresponderá con el título del proyecto, en el caso de las solicitudes de grupo con el nombre del grupo. |
| unidadGestionRef : String  Private  Identificador de la unidad de gestión responsable de la solicitud. En caso que la solicitud se vincule a una convocatoria registrada en el SGI la unidad de gestión se corresponderá con la de la convocatoria. Es una FK a la tabla "unidad" incluida en el modelo lógico SGI USR. |

 



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) Solicitud  Cardinality:  \[1] | Target: Public (Class) SolicitudDocumento  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Solicitud  Cardinality:  \[1] | Target: Public (Class) SolicitudProyecto  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Solicitud  Cardinality:  \[1] | Target: Public (Class) Petición Evaluación Proyecto  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Solicitud  Cardinality:  \[1] | Target: Public (Class) Cuestionario Valoración Ética  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Solicitud  Cardinality:  \[1] | Target: Public (Class) Proyecto  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Solicitud  Cardinality:  \[1] | Target: Public (Class) SolicitudPalabraClave  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Solicitud  Cardinality:  \[1] | Target: Public (Class) SolicitudModalidad  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Solicitud  Cardinality:  \[1] | Target: Public (Class) SolicitudGrupo  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Solicitud  Cardinality:  \[1] | Target: Public (Class) EstadoSolicitud  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Solicitud | Target: Public (Class) Programa |
| Association (direction: Unspecified) | |
| Source: Public (Class) Solicitud | Target: Public (Enumeration) TipoFormularioSolicitud |
| Association (direction: Unspecified) | |
| Source: Public (Class) Solicitud | Target: Public (Class) Persona |
| Association (direction: Unspecified) | |
| Source: Public (Class) Solicitud  Cardinality:  \[1] | Target: Public (Class) SolicitudHito  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Unidad  Cardinality:  \[1] | Target: Public (Class) Solicitud  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Investigador  Cardinality:  \[1] | Target: Public (Class) Solicitud  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Enumeration) TipoSolicitudGrupo | Target: Public (Class) Solicitud |
| Association (direction: Unspecified) | |
| Source: Public (Class) Convocatoria  Cardinality:  \[1] | Target: Public (Class) Solicitud  Cardinality:  \[0\..\*] |

  


#### Entidad Histórico de estados de una solicitud: "EstadoSolicitud"

Estado actual e histórico de estados por los que ha pasado la solicitud. El estado actual será el referenciado desde el campo "estado" de la entidad "solicitud". Los estados posibles se recogen en el enumerado "tipo estado solicitud". 

  




| **ATTRIBUTES** |
| --- |
| comentario : String  Private Comentario incluido al realizar el cambio de estado. Texto libre. |
| estado : TipoEstadoSolicitud  Private Valor del estado. Es un valor del enumerado "tipo estado solicitud" |
| fechaEstado : Date  Private Fecha en la que la solicitud alcanza el estado. Es un formato fecha \+ hora. |
| id : Long  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| solicitudId : Long  Private Solicitud a la que pertenece el estado. Es una FK a la tabla "solicitud". |

 

  




| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) EstadoSolicitud  Cardinality:  \[0\..\*] | Target: Public (Enumeration) TipoEstadoSolicitud  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Solicitud  Cardinality:  \[1] | Target: Public (Class) EstadoSolicitud  Cardinality:  \[0\..\*] |

  


  


#### Entidad Documentos de una solicitud: "SolicitudDocumento"

Documentos de la solicitud. 

  




| **ATTRIBUTES** |
| --- |
| comentario : String  Private  Texto libre incluido como comentario sobre el documento. |
| documentoRef : String  Private  Identificador o referencia del documento físico en el repositorio o sistema de almacenamiento propio o con el que se integre el SGI. |
| id : Long  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| nombre : String  Private Nombre del documento. Es un nombre interno al SGI, independiente del propio nombre el fichero. |
| solicitud : Solicitud  Private Identificador de la solicitud a la que pertenece el documento. Es una FK a la tabla "solicitud.. |
| tipoDocumento : TipoDocumento  Private  Clasificación del documento de acuerdo a la tipología propia "tipo documeto" definida en el SGI.  Si la solicitud está vinculada a una convcatoria registada en el SGI, los tipos de documento disponibles en una solicitud son los tipos asociados a la fase configurada en la convocatoria como fase de "presentación de solicitudes" (tabla "configuración solicitud" de convocatoria).  Si la solicitud no está asociada a una convocatoria del SGI sino a una referencia externa (campo "convocatoria externa") el tipo documento no estará disponible. Es una FK a la tabla "tipo documento" incluida en el modelo CSP Modelo Ejecución. |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudDocumento | Target: Public (Class) Documento |
| Association (direction: Unspecified) | |
| Source: Public (Class) Solicitud  Cardinality:  \[1] | Target: Public (Class) SolicitudDocumento  Cardinality:  \[0\..\*] |

  


#### Entidad Hitos de una solicitud: "SolicitudHito"

Hitos de la solicitud. Se define hito de forma genérica como cualquier acontecimiento/evento que resulte de interés mantener identificado en el historial de la solicitud. La disponibilidad de los tipos de hito es dependiente del modelo de ejecución al que se vincula la convocatoria a la que pertenece la solicitud. Los hitos pueden registrarse a pasado o a futuro. Si se registran a futuro podrán conllevar la generación de un comunicado. 

  




| **ATTRIBUTES** |
| --- |
| aviso : SolicitudHitoAviso  Private Relación con el aviso que haya podido generar el Hito si se ha marcado el flag "Generar aviso". El valor de este flag lo establece la unidad de gestión a través del interface de usuario en la propia pantalla de creación/modificación del hito. Es una FK a la tabla “solicitud hito aviso”. |
| comentario : String  Private Campo de texto libre para recoger cualquier comentario sobre el hito. |
| fecha : Date  Private Fecha en la que se produce el hito. Podrá ser una fecha a pasado o a futuro. |
| id : int  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| solicitud : Solicitud  Private Solicitud a la que pertenece el hito. Es una FK a la tabla solicitud. |
| tipoHito : TipoHito  Private Identificador del tipo de hito. Es una FK a la tabla "tipo hito" incluida en el modelo lógico "CSP Modelo ejecución". Los tipos de hitos disponibles para la solicitud son dependientes del modelo de ejecución de la convocatoria al que se asocia la solicitud. Si l a solicitud no se asocia a una convocatoria registrada en el SGI sino que solamente se especifica el nombre de una convocatoria externa (campo "convocatoria externa"), la solicitud no tendrá disponible el apartado hitos. |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudHito  Cardinality:  \[1] | Target: Public (Class) SolicitudHitoAviso  Cardinality:  \[0\..1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudHito  Cardinality:  \[0\..\*] | Target: Public (Class) TipoHito  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Solicitud  Cardinality:  \[1] | Target: Public (Class) SolicitudHito  Cardinality:  \[0\..\*] |

  


#### Entidad Avisos para un hito de solicitud: "SolicitudHitoAviso"

Configuración del aviso asociado a un hito de una solicitud. Solo los hitos creados sobre una fecha futura podrán originar comunicado. Los comunicados se generan automáticamente mediante tarea programada (modelo lógico SGI TP) y se remiten vía mail. En el caso de los hitos de solicitudes se permite configurar, a nivel de comunicado, si éste se debe remitir a los/as IP de la solicitud. 

  




| **ATTRIBUTES** |
| --- |
| comunicadoRef : String  Private  Referencia o identificador del comunicado que se generará asociado al hito de solicitud. La tabla "email" está incluida en el modelo lógico SGI COM. Al ser una tabla de otro servicio no se establece FK. |
| id : Long  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| incluirIPsSolicitud : boolean  Private Flag que indica si el comunicado debe remitirse a los/las IP de la solicitud. El valor de este flag lo establece la unidad de gestión a través del interface de usuario en la propia pantalla de creación/modificación del hito. |
| tareaProgramadaRef : String  Private  Referencia o identificador de la tarea programada que gestionará el envío de los mails asociados al comunicado. La entidad asociada ("bean method task") está incluida en el modelo lógico SGI TP. Al ser una entidad de un servicio independiente a CSP no se establece una FK. |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudHito  Cardinality:  \[1] | Target: Public (Class) SolicitudHitoAviso  Cardinality:  \[0\..1] |

  


  


#### Entidad Modalidad de una solicitud: "SolicitudModalidad"

Programa al que se acoge la solicitud por cada entidad convocante. Las entidades convocantes proceden de la convocatoria. 

  




| **ATTRIBUTES** |
| --- |
| entidadRef : String  Private Identificador o referencia de la entidad (empresa) en el sistema de gestión de empresas corporativo. |
| id : Long  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| solicitud : Solicitud  Private  Solicitud a la que pertenece el registro. Es una FK a la tabla "solicitud". |
| programaConvocatoria : Programa PrivatePrograma con el que está asociada la entidad convocante en la convocatoria de origen de la solicitud (tabla "convocatoria entidad convocante"). Es una FK a la tabla "programa" (modelo lógico "CSP Convocatoria"). |
| programa : Programa  Private Programa al que se acoge la solicitud para la entidad convocante. Será un nodo hijo de "programa convocatoria". Es una FK a la tabla "programa" (modelo lógico "CSP Convocatoria"). |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) Solicitud  Cardinality:  \[1] | Target: Public (Class) SolicitudModalidad  Cardinality:  \[0\..\*] |

  


#### Entidad Palabras clave de una solicitud: "SolicitudPalabraClave"

Palabras clave asociadas a la solicitud. El catálogo de palabras clave común al SGI se implementa en la tabla "palabra clave" del ESB (modelo SGO) 



| **ATTRIBUTES** |
| --- |
| id : Long  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| palabraClave : String  Private Palabra clave asociada a la solicitud. Es una referencia a la tabla "palabra clave" del modelo ESB SGO. Al ser una tabla de un módulo independiente a CSP no se establece una FK. |
| solicitudId : Long  Private  Solicitud a la que pertenece el registro. Es una FK a la tabla "solicitud". |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudPalabraClave  Cardinality:  \[0\..\*] | Target: Public (Class) PalabraClave  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Solicitud  Cardinality:  \[1] | Target: Public (Class) SolicitudPalabraClave  Cardinality:  \[0\..\*] |

  


  


### Enumerados del modelo de solicitud genérica

#### Enumerado Listado de estados de solicitud: "TipoEstadoSolicitud"

Listado de estados por lo que puede pasar una solicitud. Enumerado con los siguientes valores: 

* ADMITIDA\_DEFINITIVA
* ADMITIDA\_PROVISIONAL
* ALEGACION\_FASE\_ADMISION
* ALEGACION\_FASE\_PROVISIONAL
* BORRADOR
* CONCEDIDA
* CONCEDIDA\_PROVISIONAL
* CONCEDIDA\_PROVISIONAL\_ALEGADA
* CONCEDIDA\_PROVISIONAL\_NO\_ALEGADA
* DENEGADA
* DENEGADA\_PROVISIONAL
* DENEGADA\_PROVISIONAL\_ALEGADA
* DENEGADA\_PROVISIONAL\_NO\_ALEGADA
* DESISTIDA
* EXCLUIDA\_DEFINITIVA
* EXCLUIDA\_PROVISIONAL
* FIRMADA
* NEGOCIACION
* PRESENTADA\_SUBSANACION
* RECURSO\_FASE\_ADMISION
* RECURSO\_FASE\_CONCESION
* RENUNCIADA
* RESERVA
* RESERVA\_PROVISIONAL
* SOLICITADA
* SUBSANACION

  




| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) EstadoSolicitud  Cardinality:  \[0\..\*] | Target: Public (Enumeration) TipoEstadoSolicitud  Cardinality:  \[1] |

  


  


### Entidades del modelo Solicitudes de tipo proyecto

#### Entidad Solicitud de tipo proyecto: "solicitudProyecto"

Extensión de los datos de la solicitud genérica para particularizarla a una solicitud de tipo "proyecto". 

  




| **ATTRIBUTES** |
| --- |
| acronimo : String  Private  Acrónimo del proyecto. |
| areaTematica : AreaTematica  Private  Identificador del área temática con la que se vincula la solicitud. Es una FK a la tabla "área temática" incluida en el modelo lógico "CSP Convocatoria". |
| checklistRef : String  Private Identificador o referencia del registro de autoevaluación de ética. Es la referencia al registro de la tabla "checklist" incluida en el modelo lógico de Ética. Al pertenecer a otro esquema de BD no se establece FK. |
| codExterno : String  Private Código alfanumérico que la entidad convocante asigna al proyecto solicitado. A partir de este campo se informa el campo "código externo" de la tabla "proyecto" (modelo lógico CSP Proyecto). |
| colaborativo : Boolean  Private  \= False  Indica si un proyecto coordinado es además colaborativo (alguno de los socios participantes es una empresa privada). |
| coordinado : Boolean  Private  Indica si el proyecto se realizará de forma coordinada con otros socios. Un valor "true" en este campo activará la disponibilidad de los campos: * coordinador externo * colaborativo * y del apartado "socios proyecto" |
| coordinadorExterno : Boolean  Private Indica qué socio (entidad) actuará como coordinador del proyecto solicitado. Un valor "false" indica que será la propia Universidad quien actuará en calidad de coordinador del proyecto. Un valor "true" indicará que el coordinador será uno de los socios que participará en el proyecto. |
| duracion : Integer  Private Duración del proyecto solicitado expresada en meses. |
| id : Long  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| importePresupuestado : BigDecimal  Private Importe presupuestado para el proyecto solicitado correspondiente únicamente a la Universidad (no al resto de socios) y asociado a conceptos de gasto que no representan costes indirectos. Este valor está desvinculado del presupuesto detallado del proyecto solicitado que se haya podido introducir (tabla "solicitud proyecto presupuesto"). El campo es de utilidad en caso de el usuario prefiera no introducir el detalle del presupuesto. |
| importePresupuestadoCostesIndirectos : BigDecimal  Private Importe presupuestado para el proyecto solicitado correspondiente únicamente a la Universidad (no al resto de socios) y asociado a conceptos de gasto que representan costes indirectos. Este valor está desvinculado del presupuesto detallado del proyecto solicitado que se haya podido introducir (tabla "solicitud proyecto presupuesto"). El campo es de utilidad en caso de el usuario prefiera no introducir el detalle del presupuesto.) |
| importePresupuestadoSocios : BigDecimal  Private Es el importe presupuestado para el proyecto solicitado para el total del resto socios (adicionales a la Universidad) que participarán en el proyecto. Es un valor desvinculado de la información que podría haberse introducido de manera individual para cada uno de los socios (campo "importe presupuestado" de la tabla "solicitud proyecto socio"). Este campo es de utilidad en caso de que el usuario prefiera no indicar el desglose del importe para cada uno de los socios. |
| importeSolicitado : BigDecimal  Private Importe que se solicita a las entidades financiadoras para el proyecto solicitado correspondiente únicamente a la Universidad (no al resto de socios) y asociado a conceptos de gasto que no representan costes indirectos. Este valor está desvinculado del presupuesto detallado del proyecto solicitado que se haya podido introducir (tabla "solicitud proyecto presupuesto"). El campo es de utilidad en caso de el usuario prefiera no introducir el detalle del presupuesto. |
| importeSolicitadoCostesIndirectos : BigDecimal  Private Importe que se solicita a las entidades financiadoras para el proyecto solicitado correspondiente únicamente a la Universidad (no al resto de socios) y asociado a conceptos de gasto que representan costes indirectos. Este valor está desvinculado del presupuesto detallado del proyecto solicitado que se haya podido introducir (tabla "solicitud proyecto presupuesto"). El campo es de utilidad en caso de el usuario prefiera no introducir el detalle del presupuesto. |
| importeSolicitadoSocios : BigDecimal  Private Es el importe que se solicita a las entidades financiadoras para el proyecto solicitado de manera global por el resto socios (adicionales a la Universidad) que participarán en el proyecto. Es un valor desvinculado de la información que podría haberse introducido de manera individual para cada uno de los socios (campo "importe solicitado" de la tabla "solicitud proyecto socio"). Este campo es de utilidad en caso de que el usuario prefiera no indicar el desglose del importe para cada uno de los socios. |
| intereses : String  Private Texto libre para recoger los intereses perseguidos con el proyecto solicitado. |
| objetivos : String  Private Texto libre para recoger los objetivos del proyecto. |
| peticionEvaluacionRef : String  Private Es el identificador o referencia de la solicitud de petición de evaluación de ética creada a partir de la solicitud del proyecto de investigación. La petición de evaluación de ética se crea automáticamente en caso de que cualquiera de las preguntas del formulario de autoevaluación de ética (campo "checklist") tome valor afirmativo. Es el identificador del registro creado en la tabla "petición evaluación" incluida en el modelo lógico de Ética. A ser una tabla de otro esquema no se establece una FK. |
| resultadosPrevistos : String  Private Texto libre para recoger los resultados esperados del proyecto. |
| solicitud : Solicitud  Private Solicitud genérica a la que pertenece el registro. Es una FK a la tabla "solicitud". |
| tipoPresupuesto : TipoPresupuesto  Private Indica la forma en la que se va a detallar el presupuesto del proyecto solicitado. Toma un valor del enumerado "tipo presupuesto". |
| totalImportePresupuestado : BigDecimal  Private Es el importe total presupuestado para el proyecto solicitado incluyendo tanto el presupuesto de la Universidad como el del resto de socios participantes. Este valor está desvinculado del presupuesto detallado del proyecto que se hubiera podido introducir (tabla "solicitud proyecto presupuesto"). El campo es de utilidad en caso de el usuario prefiera no introducir el detalle del presupuesto. |
| totalImporteSolicitado : BigDecimal  Private Es el importe total que se solicita a las entidades financiadoras para el proyecto solicitado incluyendo tanto el presupuesto de la Universidad como el del resto de socios participantes. Este valor está desvinculado del presupuesto detallado del proyecto que se hubiera podido introducir (tabla "solicitud proyecto presupuesto"). El campo es de utilidad en caso de el usuario prefiera no introducir el detalle del presupuesto |

  


  




| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyecto  Cardinality:  \[1] | Target: Public (Class) SolicitudProyectoSocio  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyecto  Cardinality:  \[0\..\*] | Target: Public (Class) ConvocatoriaAreaTematica  Cardinality:  \[0\..1] |
| AssociationClass (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyecto  Cardinality:  \[0\..\*] | Target: Public (Class) AreaTematica  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyecto  Cardinality:  \[1] | Target: Public (Class) SolicitudProyectoArea  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyecto  Cardinality:  \[1] | Target: Public (Class) SolicitudProyectoEquipo  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyecto  Cardinality:  \[1] | Target: Public (Class) SolicitudProyectoClasificacion  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyecto  Cardinality:  \[1] | Target: Public (Class) SolicitudProyectoResponsableEconomico  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) Solicitud  Cardinality:  \[1] | Target: Public (Class) SolicitudProyecto  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyectoEntidadFinanciadoraAjena  Cardinality:  \[0\..\*] | Target: Public (Class) SolicitudProyecto  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Enumeration) TipoPresupuesto | Target: Public (Class) SolicitudProyecto |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyectoEntidad  Cardinality:  \[0\..\*] | Target: Public (Class) SolicitudProyecto  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyectoPresupuesto  Cardinality:  \[0\..\*] | Target: Public (Class) SolicitudProyecto  Cardinality:  \[0\..1] |

  


  


#### Entidad Roles de miembro de equipo: "RolProyecto"

Roles disponibles para su utilización en la composición de los equipos de proyecto (tanto en solicitud como en el propio proyecto) y grupos de investigación. Esta tabla no admite configuración a nivel de interface de usuario sino que debe ser configurada en implantación. 

Cada rol definido puede estar asociado a uno o varios colectivos de personas. Un colectivo agrupará a un conjunto de personas. La naturaleza de estos conjuntos de personas y la granularidad de los mismos debe de ser determinada en cada implantación de acuerdo a las directrices marcadas por la Universidad, sin bien lo más común es que hagan referencia a la categorización del vínculo con la universidad (alumnado, pdi, pas, etc). El colectivo al que pertenece cada persona debe de poder ser determinado por el sistema de gestión de personas corporativo. 

  




| **ATTRIBUTES** |
| --- |
| abreviatura : String  Private Abreviatura identificativa del rol |
| activo : Boolean  Private  \= True Flag a través del que se implementa el borrado lógico de esta tabla. Los registros para los que este flag tome valor "false" no estarán disponibles para la definición de equipos de proyecto/grupo. |
| baremablePRC : Boolean  Private Flag que indica si el rol de proyecto recibirá puntuación en el proceso de baremación de la producción científica. Sobre los ítems de producción científica aplican unos determinados criterios de baremación, en función de su tipología. La puntuación obtenida se reparte, a nivel de grupo de investigación, entre los/las autores/as del ítem miembros del grupo. Para que se reciba puntuación por la autoría de un ítem el/la autor/a debe participar en el grupo con un rol que tenga el flag "baremable" a "true" (se toma como referencia el rol desempañado a fecha 31/12 del año que se está baremando). |
| descripcion : String  Private Descripción del rol. |
| equipo : TipoEquipoProyecto  Private Clasificación del equipo al que pertenece el rol. Es un valor del enumerado "tipo equipo proyecto." |
| id : Long  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| nombre : String  Private Nombre identificativo del rol. Es el nombre visible en los desplegables del interface de usuario. |
| orden : TipoOrden  Private Campo que marca la prioridad del rol principal. Es un campo de configuración utilizado internamente en la lógica del SGI. Es un parámetro que se utiliza internamente en el SGI para dar visibilidad a algunas partes de la aplicación.  Al ser los roles de proyecto configurables por implantación el SGI precisa saber cuál es el rol que identifica la figura de IP. Para el SGI el rol IP (independientemente del nombre que se dé en cada implantación) será el registro de esta tabla que tenga el flag "principal" a "true" y para el que el campo "orden" tome el valor "primario". Un rol con el flag principal a "true" y orden "secundario" también será considerado "IP" pero el SGI precisa esta distinción para incluir de forma automática al solicitante en el equipo de proyecto de las solicitudes de tipo proyecto. Es un valor del enumerado "tipo orden". |
| rolPrincipal : Boolean  Private Flag que permite indicar los roles que tendrán la categoría de "principal" (roles que representen las figuras de IP o Co\-IP por ejemplo). Es un parámetro que se utiliza internamente en el SGI para dar visibilidad a algunas partes de la aplicación.  Al ser los roles de proyecto configurables por implantación el SGI precisa saber cuál es el rol que identifica la figura de IP. Para el SGI el rol IP (independientemente del nombre que se dé en cada implantación) será el registro de esta tabla que tenga el flag "principal" a "true" y para el que el campo "orden" tome el valor "primario". Un rol con el flag principal a "true" y orden "secundario" también será considerado "IP" pero el SGI precisa esta distinción para incluir de forma automática al solicitante en el equipo de proyecto de las solicitudes de tipo proyecto. |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) RolProyecto | Target: Public (Enumeration) TipoOrden |
| Association (direction: Unspecified) | |
| Source: Public (Class) RolProyecto | Target: Public (Enumeration) TipoEquipoProyecto |
| Association (direction: Unspecified) | |
| Source: Public (Class) RolProyecto  Cardinality:  \[1] | Target: Public (Class) RolProyectoColectivo  Cardinality:  \[1\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProyectoEquipo  Cardinality:  \[0\..\*] | Target: Public (Class) RolProyecto  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyectoEquipoSocio  Cardinality:  \[0\..\*] | Target: Public (Class) RolProyecto  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyectoEquipo  Cardinality:  \[0\..\*] | Target: Public (Class) RolProyecto  Cardinality:  \[1] |

  


  


#### Entidad Colectivos para un rol de equipo: "RolProyectoColectivo"

Colectivos que pueden desempeñar un rol de proyecto/grupo determinado. 

Un colectivo agrupará a un conjunto de personas. La naturaleza de estos conjuntos de personas y la granularidad de los mismos debe de ser determinada en cada implantación de acuerdo a las directrices marcadas por la Universidad, sin bien lo más común es que hagan referencia a la categorización del vínculo con la universidad (alumnado, pdi, pas, etc). El colectivo al que pertenece cada persona debe de poder ser determinado por el sistema de gestión de personas corporativo. 

 El buscador de personas implementado en el SGI utiliza los colectivos para acotar el conjunto de personas sobre el que se realiza la búsqueda, limitando así las personas que estarán disponibles para la asignación al equipo con un rol determinado.  

  




| **ATTRIBUTES** |
| --- |
| colectivoRef : String  Private Identificador o referencia del colectivo en el sistema de gestión personas de corporativo. |
| id : Long  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| rolProyecto : RolProyecto  Private Identificador del rol al que se vincula el colectivo. Es una FK a la tabla "rol proyecto". |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) RolProyectoColectivo  Cardinality:  \[0\..\*] | Target: Public (Class) Colectivo  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) RolProyecto  Cardinality:  \[1] | Target: Public (Class) RolProyectoColectivo  Cardinality:  \[1\..\*] |

  


  


#### Entidad Roles de  socio de proyecto: "RolSocio"

Tabla de configuración de los roles de participación de los socios (entidades o empresas) que participan en el proyecto. Es una tabla cuya configuración no está disponible a nivel de usuario. Debe configurarse n en tiempo de implantación. Ejemplos de valores: socio, coordinador, tercera parte, partner organization, etc. 

  




| **ATTRIBUTES** |
| --- |
| abreviatura : String  Private  Abreviatura identificativa del rol. |
| activo : Boolean  Private  \= True Flag que da cobertura al borrado lógico de los registros de esta tabla. |
| coordinador : Boolean  Private Flag que permite identificar si el rol definido se utilizará para identificar al socio coordinador del proyecto (para aquellos casos en los que el proyecto no sea coordinado por la propia Universidad). |
| descripcion : String  Private Descripción del rol. |
| id : Long  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| nombre : String  Private Nombre identificativo del rol. Es el nombre visible en los desplegables del interface de usuario. |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyectoSocio  Cardinality:  \[0\..\*] | Target: Public (Class) RolSocio  Cardinality:  \[1] |

  


  


#### Entidad Áreas de conocimiento de una solicitud de proyecto: "SolicitudProyectoArea"

Área o áreas de conocimiento con las que se asocia la solicitud de proyecto. El SGI no limita la vinculación de un proyecto solicitado al área de conocimiento a la que está adscrito su IP. La unidad de gestión podrá decidir vincular la solicitud a una o varias áreas independientemente del área de pertenencia de su IP. Es una clasificación que puede o no ser utilizada. El listado de áreas disponible se obtiene del ESB, pudiendo proceder de integración con el sistema corporativo correspondiente o ser un listado configurado en tiempo de implantación. 

  




| **ATTRIBUTES** |
| --- |
| areaConocimientoRef : String  Private  Identificador o referencia al área de conocimiento en el sistema corporativo universitario correspondiente. |
| id : Long  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| solicitudProyecto : SolicitudProyecto  Private  Solicitud proyecto a la que pertenece el registro. Es una FK a la tabla "solicitud proyecto". |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyectoArea  Cardinality:  \[0\..\*] | Target: Public (Class) AreaConocimiento  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyecto  Cardinality:  \[1] | Target: Public (Class) SolicitudProyectoArea  Cardinality:  \[0\..\*] |

  


  


#### Entidad Clasificaciones de una solicitud de proyecto: "SolicitudProyectoClasificacion"

Tabla que recoge todas las clasificaciones del proyecto solicitado. El SGI dispone de una estructura genérica "clasificación", en forma de árbol, que permite, en tiempo de implantación, configurar los listados bajo los que resulte de interés clasificar el proyecto. No se establecen límites al respecto. En cada implantación se definirán las clasificaciones a utilizar. Esta estructura clasificación reside en el ESB, de forma que cada uno de los listados asociados a cada clasificación podrá ser alimentado desde un sistema de gestión corporativo (de forma genérica en el SGI se hace referencia a este posible sistema como SGO, sistema de gestión de la organización), a través del servicio de integración correspondiente, o bien ser configurados en tiempo de implantación. 

Algunas clasificaciones tipo serían: 

* Clasificación de códigos UNESCO.
* Clasificación de códigos NABS.
* Clasificación de códigos CNAE

  




| **ATTRIBUTES** |
| --- |
| codigoClasificacionRef : String  Private Elemento dentro de una clasificación con el que se vincula el proyecto solicitado. La referencia es el identificador del elemento dentro de la tabla "clasificación" incluida en modelo lógico del SGO (sistema de gestión de la organización). |
| id : Long  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| solicitudProyecto : SolicitudProyecto  Private Solicitud\-proyecto a la que pertenece la clasificación. Es una FK a la tabla "solicitud proyecto". |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyectoClasificacion  Cardinality:  \[0\..\*] | Target: Public (Class) Clasificacion  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyecto  Cardinality:  \[1] | Target: Public (Class) SolicitudProyectoClasificacion  Cardinality:  \[0\..\*] |

  


#### Entidad Entidades financiadoras de una solicitud de proyecto: "SolicitudProyectoEntidad"

Entidades propuestas para la financiación del proyecto solicitado. Los proyectos solicitados tomarán las entidades financiadoras configuradas en la convocatoria de procedencia (siempre que se vinculen a una convocatoria registrada en el SGI). Adicionalmente se podrán incluir entidades financiadoras ajenas a la convocatoria (tabla "solicitud proyecto entidad financiadora ajena"). En esta tabla se unifica la referencia a todas las entidades financiadoras de la solicitud proyecto. 

  




| **ATTRIBUTES** |
| --- |
| convocatoriaEntidadFinanciadora : ConvocatoriaEntidadFinanciadora  Private  Identificador de una de las entidades financiadoras procedentes de la convocatoria a la que se vincula la solicitud de proyecto. Es una FK a la tabla "convocatoria entidad financiadora" incluida en el modelo lógico CSP Convocatoria. |
| convocatoriaEntidadGestora : ConvocatoriaEntidadGestora  Private Identificador de la entidad gestora de la convocatoria a la que se vincula la solicitud de proyecto. Es una FK a la tabla "convocatoria entidad gestora" incluida en el modelo lógico CSP Convocatoria. |
| id : Long  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| solicitudProyecto : SolicitudProyecto  Private Solicitud de proyecto a la que pertenece la entidad. Es una FK a la tabla "solicitud proyecto". |
| solicitudProyectoEntidadFinanciadoraAjena : SolicitudProyectoEntidadFinanciadoraAjena  Private Identificador de la entidad financiadora ajena que participará en la financiación del proyecto solicitado. Es una FK a la tabla "solicitud proyecto entidad financiadora ajena". |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyectoEntidad  Cardinality:  \[1] | Target: Public (Class) SolicitudProyectoEntidadFinanciadoraAjena  Cardinality:  \[0\..1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyectoEntidad  Cardinality:  \[0\..\* | Target: Public (Class) SolicitudProyecto  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyectoPresupuesto  Cardinality:  \[0\..\*] | Target: Public (Class) SolicitudProyectoEntidad  Cardinality:  \[0\..1] |

  


#### Entidad Entidad financiadoras de una ajenas a la convocatoria de una solicitud de proyecto: "SolicitudProyectoEntidadFinanciadoraAjena"

Entidades financiadoras incorporadas al proyecto solicitado de forma ajena a las entidades financiadoras de la convocatoria. 

  




| **ATTRIBUTES** |
| --- |
| entidadRef : String  Private Referencia o identificador de la entidad en el sistema de gestión de empresas corporativo. |
| fuenteFinanciacion : fuenteFinanciacion  Private Fuente de financiación a través de la que la entidad financiará el proyecto solicitado. Es una FK a la tabla "fuente financiación". |
| id : int  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| importeFinanciacion : BigDecimal  Private Importe de financiación aportado por la entidad al proyecto solicitado. |
| porcentajeFinanciacion : BigDecimal  Private Porcentaje respecto al total de financiación que recibiría el proyecto solicitado correspondiente a la entidad. |
| solicitudProyecto : SolicitudProyecto  Private Solicitud proyecto a la que pertenece la entidad ajena. Es una FK a la tabla "solicitud proyecto". |
| tipoFinanciacion : tipoFinanciacion  Private Tipo de financiación a través del que la entidad financiará el proyecto solicitado. Es una FK a la tabla "tipo financiación" |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyectoEntidadFinanciadoraAjena  Cardinality:  \[0\..\*] | Target: Public (Class) SolicitudProyecto  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyectoEntidad  Cardinality:  \[1] | Target: Public (Class) SolicitudProyectoEntidadFinanciadoraAjena  Cardinality:  \[0\..1] |

  


  


#### Entidad Miembros de equipo de una solicitud de proyecto: "SolicitudProyectoEquipo"

Equipo propuesto para el proyecto solicitado. Se podrá especificar qué personas está previsto que participen en el proyecto, con qué rol y durante qué periodo. 

  




| **ATTRIBUTES** |
| --- |
| id : Long  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| mesFin : Integer  Private Mes final de la participación prevista para una persona del equipo. En la fase de solicitud del proyecto los periodos se especifican en meses relativos a la duración total propuesta. |
| mesInicio : Integer  Private Mes de inicio de la participación prevista para una persona del equipo. En la fase de solicitud del proyecto los periodos se especifican en meses relativos a la duración total propuesta. |
| personaRef : String  Private Referencia de la persona que se incluyen en el equipo propuesto para el proyecto solicitado. Es el identificador de la persona en el sistema de gestión de personas corporativo |
| rolProyecto : RolProyecto  Private  Rol con el que participará en el equipo propuesto la persona. Es una FK a la tabla "rol proyecto". |
| solicitudProyecto : SolicitudProyecto  Private Solicitud proyecto al que pertenece el miembro de equipo. Es una FK a la tabla "solicitud proyecto". |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyectoEquipo | Target: Public (Class) Persona |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyectoEquipo  Cardinality:  \[1\..\*] | Target: Public (Class) Investigador  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyectoEquipo  Cardinality:  \[0\..\*] | Target: Public (Class) RolProyecto  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyecto  Cardinality:  \[1] | Target: Public (Class) SolicitudProyectoEquipo  Cardinality:  \[0\..\*] |

  


  


#### Entidad Miembros de equipo de un socio para una solicitud de proyecto: "SolicitudProyectoEquipoSocio"

Equipo de proyecto previsto de los socios (empresas o entidades) que participarán en el proyecto solicitado. 



| **ATTRIBUTES** |
| --- |
| id : Long  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| mesFin : Integer  Private  Mes final de la participación prevista del miembro de equipo del socio (empresa o entidad) en el proyecto solicitado. |
| mesInicio : Integer  Private Mes inicial de la participación prevista del miembro de equipo del socio (empresa o entidad) en el proyecto solicitado. |
| personaRef : String  Private Referencia del miembro de equipo propuesto del socio (empresa o entidad). Es el identificador de la persona en el sistema de gestión de personas corporativo |
| rolProyecto : RolProyecto  Private  Identificador del socio al que pertenece el miembro de equipo. Es una FK a la tabla "solicitud proyecto socio" |
| solicitudProyectoSocio : SolicitudProyectoSocio  Private Socio de la solicitud proyecto a la que pertenece el miembro de equipo. Es una FK a la tabla "solicitud proyecto socio". |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyectoEquipoSocio  Cardinality:  \[0\..\*] | Target: Public (Class) RolProyecto  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyectoEquipoSocio | Target: Public (Class) Persona |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyectoSocio  Cardinality:  \[1] | Target: Public (Class) SolicitudProyectoEquipoSocio  Cardinality:  \[0\..\*] |

  


#### Entidad Periodos de justificación de un socio para una solicitud de proyecto: "SolicitudProyectoPeriodoJustificacion"

Periodos de justificación a los que está previsto que se comprometa el socio con la Universidad. Los periodos de justificación aplicarán cuando el coordinador del proyecto sea la Universidad (campo "coordinador externo" de la tabla "proyecto" toma el valor "false"). 



| **ATTRIBUTES** |
| --- |
| fechaFin : Timestamp  Private Fecha de fin prevista del plazo de presentación a la Universidad de la documentación asociada al periodo justificación por parte del socio que participará en el proyecto solicitado. |
| fechaInicio : Timestamp  Private  Fecha de inicio prevista del plazo de presentación a la Universidad de la documentación asociada al periodo justificación por parte del socio que participará en el proyecto solicitado. |
| id : Long  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| mesFinal : Integer  Private Mes final del periodo de justificación definido con el socio. Es relativo a la duración total del proyecto solicitado. |
| mesInicial : Integer  Private  Mes inicial del periodo de justificación definido con el socio. Es relativo a la duración total del proyecto solicitado. |
| numPeriodo : Integer  Private Número secuencial asignado automáticamente por el sistema ordenando los periodos de justificación de un socio en un proyecto de acuerdo al mes inicial. |
| observaciones : String  Private Texto libre |
| SolicitudProyectoSocio : SolicitudProyectoSocio  Private Identificador del socio que participa en el proyecto al que pertenece el periodo. Es una FK a la tabla "solicitud proyecto socio". |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyectoSocio  Cardinality:  \[1] | Target: Public (Class) SolicitudProyectoPeriodoJustificacion  Cardinality:  \[0\..\*] |

  


  


#### Entidad Periodos de pago de un socio para una solicitud de proyecto: "SolicitudProyectoPeriodoPago"

Periodos de pago a los que se compromete la Universidad con el socio (empresa o entidad). Los periodos de pago aplicarán cuando el coordinador del proyecto sea la Universidad (campo "coordinador externo" de la tabla "solicitud proyecto" toma el valor "false"). 



| **ATTRIBUTES** |
| --- |
| id : Long  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| importe : BigDecimal  Private Importe previsto a pagar en un periodo determinado al socio (empresa o entidad) . |
| mes : Integer  Private Mes en el que está previsto que se realice el pago al socio (empresa o entidad) por parte de la Universidad. |
| numPeriodo : Integer  Private Número secuencial asignada automáticamente por el sistema de acuerdo a la ordenación por el número de mes de todos los periodos de pago creados para el socio. |
| solicitudProyectoSocio : SolicitudProyectoSocio  Private Socio dentro de una solicitud de tipo proyecto al que pertenece el registro. Es una FK a la tabla "solicitud proyecto socio". |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyectoPeriodoPago  Cardinality:  \[0\..\*] | Target: Public (Class) SolicitudProyectoSocio  Cardinality:  \[1] |

  


  


#### Entidad Presupuesto para una solicitud de proyecto: "SolicitudProyectoPresupuesto"

Presupuesto del proyecto solicitado. El presupuesto se podrá desglosar por entidad financiadora (de acuerdo al valor del campo “tipo presupuesto” de la tabla “solicitud proyecto”) y dentro de cada una de éstas por anualidad y concepto de gasto. 



| **ATTRIBUTES** |
| --- |
| anualidad : Integer  Private Anualidad a la que pertenece el registro del desglose de presupuesto. |
| conceptoGasto : ConceptoGasto  Private Identificador del concepto de gasto detallado en el presupuesto. Es una FK a la tabla “concepto gasto” incluida en el modelo CSP Convocatoria. |
| entidadRef : String  Private Identificador o referencia de la entidad financiadora con la que se vincula el registro del presupuesto. Es la referencia de la entidad en el sistema de gestión de empresas corporativo. |
| financiacionAjena : Boolean  Private Flag que distingue si la entidad financiadora es ajena a la convocatoria. |
| id : Long  Private Identificador único de la tabla.  Secuencia. Clave primaria. |
| importePresupuestado : BigDecimal  Private  Importe presupuestado para el concepto de gasto en el presupuesto correspondiente a una entidad financiadora determinada. |
| importeSolicitado : BigDecimal  Private Importe solicitado a la entidad financiadora a la que pertenece el presupuesto para un concepto de gasto determinado. |
| observaciones : String  Private Texto libre |
| solicitudProyecto : SolicitudProyecto  Private Identificador de la solicitud de proyecto a la que pertenece el presupuesto. Es una FK a la tabla “solicitud proyecto”. |
| solicitudProyectoEntidad : SolicitudProyectoEntidad  Private Identificador de la entidad dentro de una solicitud de proyecto a la que pertenece el presupuesto. Es una FK a la tabla “solicitud proyecto entidad”. |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyectoPresupuesto  Cardinality:  \[0\..\*] | Target: Public (Class) ConvocatoriaEntidadFinanciadora  Cardinality:  \[0\..1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyectoPresupuesto  Cardinality:  \[0\..\*] | Target: Public (Class) SolicitudProyecto  Cardinality:  \[0\..1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyectoPresupuesto  Cardinality:  \[0\..\*] | Target: Public (Class) SolicitudProyectoEntidad  Cardinality:  \[0\..1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyectoPresupuesto  Cardinality:  \[0\..\*] | Target: Public (Class) ConceptoGasto  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) EntidadPagadora  Cardinality:  \[0\..1] | Target: Public (Class) SolicitudProyectoPresupuesto  Cardinality:  \[0\..\*] |

  


  


#### Entidad Responsable económico para una solicitud de proyecto: "SolicitudProyectoResponsableEconomico"

Responsable económico propuesto para el proyecto solicitado. Podrían existir varios responsables económicos a lo largo de toda la duración del proyecto solicitado pero cada uno en un periodo concreto.  



| **ATTRIBUTES** |
| --- |
| id : Long  Private  Identificador único de la tabla. Secuencia. Clave primaria. |
| mesFin : Integer  Private Mes final de la participación prevista para la persona que actuará como responsable económico en el proyecto solicitado. En la fase de solicitud del proyecto los periodos se especifican en meses relativos a la duración total propuesta. |
| mesInicio : Integer  Private Mes de inicio de la participación prevista para la persona que actuará como responsable económico en el proyecto solicitado. En la fase de solicitud del proyecto los periodos se especifican en meses relativos a la duración total propuesta. |
| personaRef : String  Private Referencia de la persona que se propone como responsable económico del proyecto solicitado. Es el identificador de la persona en el sistema de gestión de personas corporativo. |
| solicitudProyecto : SolicitudProyecto  Private Solicitud proyecto a la que pertenece el equipo. Es una FK a la tabla "solicitud proyecto". |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyecto  Cardinality:  \[1] | Target: Public (Class) SolicitudProyectoResponsableEconomico  Cardinality:  \[0\..\*] |

  


  


#### Entidad Socios para una solicitud de proyecto: "SolicitudProyectoSocio"

Listado de socios (entidades o empresas) que participarán en el desarrollo proyecto solicitado. A nivel de interface gráfico la opción de añadir socios al proyecto solo estará disponible si el campo "coordinado" de la tabla "solicitud proyecto" toma valor "true". 



| **ATTRIBUTES** |
| --- |
| empresaRef : String  Private Referencia de la entidad (empresa) que participa como socio en el proyecto. Es el identificador de la entidad en el sistema de gestión de empresas corporativo. |
| id : Long  Private Identificador único de la tabla. Secuencia. Clave primaria. |
| importePresupuestado : BigDecimal  Private Importe presupuestado por el socio para el proyecto en solicitado. |
| importeSolicitado : BigDecimal  Private Importe solicitado por el socio a las entidades financiadoras para el proyecto en solicitado. |
| mesFin : Integer  Private Mes final de la colaboración del socio en el proyecto solicitado tomando como referencia la duración planteada para el mismo. |
| mesInicio : Integer  Private Mes inicial de la colaboración del socio en el proyecto solicitado tomando como referencia la duración planteada para el mismo. |
| numInvestigadores : Integer  Private  Número de investigadores que forman parte del equipo del socio. |
| rolSocio : rolSocio  Private  Rol con el que participa el socio en el proyecto. Es una FK a la tabla rol socio. |
| solicitudProyecto : SolicitudProyecto  Private  Identificador de la "solicitud proyecto" a la que pertenece el socio. Es una FK a la tabla "solicitud proyecto". |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyectoSocio  Cardinality:  \[0\..\*] | Target: Public (Class) EmpresaEconomica  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyectoSocio  Cardinality:  \[1] | Target: Public (Class) SolicitudProyectoPeriodoJustificacion  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyectoSocio  Cardinality:  \[1] | Target: Public (Class) SolicitudProyectoEquipoSocio  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyectoSocio  Cardinality:  \[0\..\*] | Target: Public (Class) RolSocio  Cardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyecto  Cardinality:  \[1] | Target: Public (Class) SolicitudProyectoSocio  Cardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProyectoPeriodoPago  Cardinality:  \[0\..\*] | Target: Public (Class) SolicitudProyectoSocio  Cardinality:  \[1] |

  


  


### Enumerado del modelo solicitudes tipo proyecto

#### Enumerado Tipos de equipo: "TipoEquipoProyecto"

Clasificación de los roles. Enumerado con los siguientes valores: 

* INVESTIGACION
* TRABAJO



| **ATTRIBUTES** |
| --- |
| Equipo Trabajo :   Public |
| Equipo Investigación :   Public |

  


  




| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) RolProyecto | Target: Public (Enumeration) TipoEquipoProyecto |

  


#### Enumerado Tipos de orden para un rol de equipo: "TipoOrden"

De utilización en la configuración de los roles. Enumerado con los valores: 

* PRIMARIO
* SECUNDARIO

 

Al ser los roles de proyecto configurables por implantación, el SGI precisa saber cuál es el rol que identifica la figura de IP. Para el SGI el rol IP (independientemente del nombre que se dé en cada implantación) será el registro de la tabla "rol proyecto" que tenga el flag "principal" a "true" y para el que el campo "orden" tome el valor "primario". Un rol con el flag principal a "true" y orden "secundario" también será considerado "IP" pero el SGI precisa esta distinción para incluir de forma automática al solicitante en el equipo de proyecto de las solicitudes de tipo proyecto. 



| **ATTRIBUTES** |
| --- |
| Primario :   Public |
| Secundario :   Public |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) RolProyecto | Target: Public (Enumeration) TipoOrden |

  


  


#### Enumerado Tipos de presupuesto para una solicitud: "TipoPresupuesto"

Parámetro del SGI que identifica el método de introducción del presupuesto del proyecto solicitado. Enumerado con los siguientes valores: 

* GLOBAL
* INDIVIDUAL
* MIXTO

GLOBAL: El presupuesto del proyecto solicitado se indicará de manera global, sin distinguir el presupuesto para cada entidad financiadora. 

INDIVIDUAL: Se detallará el presupuesto solicitado a cada una de las entidades financiadoras, tanto las entidades que participan en la convocatoria como e otras entidades ajenas a la convocatoria a las que se solicite financiación. 

MIXTO: Se detallará un presupuesto único para todas las entidades financiadoras de la convocatoria y un presupuesto individual por cada entidad financiadora ajena a la convocatoria. El presupuesto de las entidades financiadoras de la convocatoria se asociará a la entidad que figure como entidad gestora de la convocatoria. 

  




| **ATTRIBUTES** |
| --- |
| Global :   Public |
| Mixto :   Public |
| Individual :   Public |

  


  




| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Enumeration) TipoPresupuesto | Target: Public (Class) SolicitudProyecto |

  


  


### Entidades del modelo de solicitudes de tipo grupo

#### Entidad Solicitud de tipo grupo: "SolicitudGrupo"

Extensión de los datos de la solicitud genérica para particularizarla a una solicitud de tipo "grupo". Solamente se creará esta extensión para las solicitudes de tipo "modificación de datos de grupo" ("tipo formulario solicitud" \= "grupo" y "tipo solicitud grupo" \= "modificación grupo")  



| **ATTRIBUTES** |
| --- |
| grupo : Grupo  Private |
| id : Long  Private |
| solicitud : Solicitud  Private |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) Solicitud  Cardinality:  \[1] | Target: Public (Class) SolicitudGrupo  Cardinality:  \[1] |

  


  


### Enumerados del modelo de solicitudes de tipo grupo

#### Enumerado Tipos de solicitudes de grupo: "TipoSolicitudGrupo"

Subtipo de solicitud cuando ésta es una solicitud de grupo. Enumerado con los valores: 

* Modificación grupo
* Constitución grupo

  




| **ATTRIBUTES** |
| --- |
| Constitución nuevo grupo :   Public |
| Modificación datos grupo :   Public |



| **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Enumeration) TipoSolicitudGrupo | Target: Public (Class) Solicitud |

  


### Entidades del modelo de solicitudes de tipo RRHH

#### Entidad Solicitud de tipo RRHH: "SolicitudRRRHH"

Extensión de los datos de la solicitud genérica para particularizarla a una solicitud de tipo "rrhh". 

  




| ATTRIBUTES |
| --- |
| id : Long  PrivateIdentificador único de la tabla. Secuencia. Clave primaria. |
| solicitud : Solicitud  PrivateSolicitud genérica a la que pertenece el registro. Es una FK a la tabla "solicitud". |
| universidadRef : String  PrivateCampo para recoger la referencia de la Universidad a la que pertenece el solicitante. Esta referencia se corresponde con el identificador de la entidad que representa a la Universidad en el sistema de gestión de empresas corporativo. |
| areaANEPRef : String  PrivateÁrea ANEP especificada en la solicitud. Las áreas ANEP se implementan como una Clasificación (modelo lógico ESB\-SGO). Se corresponde con el identificador del área en la tabla Clasificación. |
| universidad : String  PrivateNombre de la universidad a la que pertenece la persona que realiza la solicitud (solicitante). Si la solicitud es introducida directamente por la persona solicitante, no dispondrá en el interface gráfico del buscador de entidades (a través del que quedaría cumplimentado el campo "universidad ref") sino que debe introducir el nombre de la universidad como un literal. Será la unidad de gestión, en el proceso de validación de la solicitud, quien traducirá ese texto a la referencia de la entidad universidad (campo "universidad ref"), a través del buscador de entidades. |
| tutorRef : String  PrivateReferencia a la persona especificada como tutor/a en la solicitud. Es el identificador de la persona en el sistema de gestión de personas corporativo. |
| tituloTrabajo : String  PrivateTítulo del trabajo con el que se opta a la solicitud. Este campo está incluido en el apartado Memoria del interface gráfico. |
| resumen : String  PrivateCampo de texto para recoger el resumen del trabajo con el que se opta a la solicitud (incluido en el apartado memoria del interface gráfico). |
| observaciones : String  PrivateCampo de texto libre para incluir cualquier observación sobre el trabajo propuesto en la solicitud (incluido en el apartado memoria del interface gráfico). |



| ASSOCIATIONS | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudRRHHCardinality:  \[1] | Target: Public (Class) SolicitudRRHHRequisitoCategoriaCardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudRRHHCardinality:  \[1] | Target: Public (Class) SolicitudRRHHRequisitoNivelAcademicoCardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudRRHHCardinality:  \[0\..\*] | Target: Public (Class) ClasificacionCardinality:  \[0\..1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudCardinality:  \[1] | Target: Public (Class) SolicitudRRHHCardinality:  \[1] |

  


#### Entidad Categorías de convocatoria para una solicitud de RRHH: "SolicitudRRRHHRequisitoCategoría"

Entidad para almacenar la respuesta proporcionada en la solicitud de RRHH relativos al cumplimiento de los requisitos de categoría especificados en la convocatoria.



| ATTRIBUTES |
| --- |
| id : Long  PrivateIdentificador único de la tabla. Secuencia. Clave primaria. |
| solicitudRRHH : SolicitudRRHH  PrivateSolicitud de RRHH a la que pertenece el registro. Es una FK a la tabla Solicitud RRHH. |
| requisitoIPCategoria : RequisitoIPCategoria  PrivateIdentificador del requisito de categoría que debe cumplir la persona solicitante de acuerdo a la configuración establecida en la convocatoria. Es una FK a la tabla "requisito IP categoría" incluida en el modelo lógico CSP Convocatoria. |
| documentoRef : String  PrivateIdentificador o referencia del documento físico en el repositorio o sistema de almacenamiento propio o con el que se integre el SGI. |



| ASSOCIATIONS | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudRRHHCardinality:  \[1] | Target: Public (Class) SolicitudRRHHRequisitoCategoriaCardinality:  \[0\..\*] |

  


#### Entidad Niveles académicos de convocatoria para una solicitud de RRHH: "SolicitudRRRHHRequisitoNivelAcadémico"

Entidad para almacenar la respuesta proporcionada en la solicitud de RRHH relativos al cumplimiento de los requisitos de nivel académico especificados en la convocatoria.

  




| ATTRIBUTES |
| --- |
| id : Long  PrivateIdentificador único de la tabla. Secuencia. Clave primaria. |
| solicitudRRHH : SolicitudRRHH  PrivateSolicitud de RRHH a la que pertenece el registro. Es una FK a la tabla Solicitud RRHH. |
| requisitoIPNivelAcademico : RequisitoIPNivelAcademico  PrivateIdentificador del requisito de nivel académico que debe cumplir la persona solicitante de acuerdo a la configuración establecida en la convocatoria. Es una FK a la tabla "requisito IP nivel académico" incluida en el modelo lógico CSP Convocatoria. |
| documentoRef : String  PrivateIdentificador o referencia del documento físico en el repositorio o sistema de almacenamiento propio o con el que se integre el SGI. |



| ASSOCIATIONS | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudRRHHCardinality:  \[1] | Target: Public (Class) SolicitudRRHHRequisitoNivelAcademicoCardinality:  \[0\..\*] |

  


  


#### Entidad Solicitante externo para una solicitud: "SolicitanteExterno"

Entidad que recoge los datos de la persona solicitante cuando se trata de una persona externa que no figura en el sistema de gestión de personas corporativo.

  




| ATTRIBUTES |
| --- |
| id : Long  PrivateIdentificador único de la tabla. Secuencia. Clave primaria. |
| solicitud : Solicitud  PrivateSolicitud a la que pertenece el registro. Es una FK a la tabla Solicitud. |
| nombre : String  PrivateNombre de la persona solicitante (externa). |
| apellidos : String  PrivateApellidos de la persona solicitante (externa). |
| tipoDocumentoRef : String  PrivateTipo de documento de identificación personal bajo el que se especifica el número de documento en el formulario de solicitud. Los tipos de documento de identificación personal se recogen a través de integración con el sistema de gestión corporativo. Es una referencia a la tabla Tipo documento incluida en el modelo lógico ESB SGP |
| numeroDocumento : String  PrivateNúmero de documento de identificación personal de la persona solicitante (externa). |
| sexoRef : String  PrivateSexo de la persona solicitante (externa). El listado de sexos disponible será proporcionado a través de integración con el sistema de gestión de personas. Es una referencia al identificador correspondiente en el sistema de gestión de personas. |
| fechaNacimiento : TimeStamp  PrivateFecha de nacimiento de la persona solicitante (externa). |
| paisNacimientoRef : String  PrivatePaís de nacimiento de la persona solicitante (externa). El listado de países disponible será proporcionado a través de integración con el sistema de gestión de personas. Es una referencia al identificador correspondiente en el sistema de gestión de personas. |
| telefono : String  PrivateCampo que recoge el teléfono de contacto de la persona solicitante (externa). |
| email : String  PrivateDirección de emial de la persona solicitante (externa). |
| direccion : String  PrivateDirección postal de la persona solicitante (externa). |
| paisContactoRef : String  PrivatePaís de contacto de la persona solicitante (externa). El listado de países disponible será proporcionado a través de integración con el sistema de gestión de personas. Es una referencia al identificador correspondiente en el sistema de gestión de personas. |
| comAutonomaRef : String  PrivateComunidad autónoma de la persona solicitante (externa). El listado de países disponible será proporcionado a través de integración con el sistema de gestión de personas. Es una referencia al identificador correspondiente en el sistema de gestión de personas. |
| provinciaRef : String  PrivateProvincia de la persona solicitante (externa). El listado de provincias disponible será proporcionado a través de integración con el sistema de gestión de personas. Es una referencia al identificador correspondiente en el sistema de gestión de personas. |
| ciudad : String  PrivateCiudad de la persona solicitante (externa). |
| codigoPostal : String  PrivateCódigo postal de la persona solicitante (externa). |

  


  




| ASSOCIATIONS | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudCardinality:  \[1] | Target: Public (Class) SolicitanteExternoCardinality:  \[0\..1] |

  


#### Entidad solicitud externa: "SolicitudExterna"

Entidad para identificar las solicitudes que se crean  desde el acceso público (usuarios/as externos/as). Cuando un/a usuario/a externo/a crea una solicitud se generará un código único (UUID). Este UUID será el ID de esta tabla, desde la que se referenciará a la solicitud correspondiente (tabla solicitud).



| ATTRIBUTES |
| --- |
| id : long  PrivateIdentificador único de la tabla. Clave primaria. Es el UUID generado como identificador único de la solicitud creada desde el acceso público (usuario/a externo/a). |
| solicitud : Solicitud  PrivateSolicitud con la que se corresponde el UUID. Es una FK a la tabla Solicitud. |



| ASSOCIATIONS | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudExternaCardinality:  \[0\..1] | Target: Public (Class) SolicitudCardinality:  \[1] |

  


  





