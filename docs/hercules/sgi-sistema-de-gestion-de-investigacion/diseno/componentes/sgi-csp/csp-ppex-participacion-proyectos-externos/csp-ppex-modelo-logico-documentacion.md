# Hércules : CSP\-PPEX \- Modelo lógico \- Documentación



### 

### Entidades del modelo Participación en proyectos externos

#### Entidad Solicitud de autorización de participación en proyecto externo: "autorizacion"

Entidad que representa las solicitudes de autorización de participación en proyectos externos.



| ATTRIBUTES |
| --- |
| id : Long  PrivateIdentificador único. Secuencial. Clave primaria. |
| convocatoria : Convocatoria  PrivateSi la convocatoria bajo la que se realizará el proyecto externo está registrada en el SGI se establecerá la relación a través de este campo (en caso contrario la convocatoria se recogerá a través del campo "datos convocatoria"). Es una FK a la tabla convocatoria. |
| tituloProyecto : String  PrivateTítulo del proyecto externo para el se solicita autorización de participación. |
| entidadRef : String  PrivateReferencia de la entidad con la solicita participar en el proyecto externo. Es el identificador de la entidad en el sistema de gestión de empresas corporativo. Durante el ciclo de aprobación de la solicitud de participación la entidad externa podría no estar aún referenciada contra el sistema de gestión de empresas corporativo, en este caso los datos de la entidad de participación estarán recogidos en el campo "dato entidad" como un literal de texto. |
| responsableRef : String  PrivateReferencia de la persona que actuará como IP del proyecto externo para el que se solicita autorización. Es el identificador de la persona en el sistema de gestión de personas corporativo. Durante el ciclo de aprobación de la solicitud puede que la persona responsable aún no haya sido dada de alta en el sistema de gestión de personas corporativo, en este caso, los datos de la persona IP del proyecto estarán especificados como un literal de texto en en el campo "datos responsable". |
| horasDedicacion : int  PrivateHoras totales que la persona solicitante dedicará al proyecto externo. |
| datosEntidad : String  PrivateDatos de identificación, nombre y/o CIF, de la entidad/universidad en la que realizará el proyecto externo para el que se solicita autorización. La entidad externa podría estar dada de alta en el sistema de gestión de empresas corporativo en cuyo caso la referencia a la entidad de participación estaría recogida en el campo "entidad ref". Sin embargo, si la entidad aún no está registrada en el sistema de empresas, los datos se recogerán en este campo. La doble existencia de estos dos campos (datos entidad y entidad ref) se debe a que en primera instancia una solicitud de autorización de participación en proyecto externo es registrada en el SGI por el personal investigador (solicitante) que no tiene permisos para solicitar el alta de una nueva entidad en el sistema de gestión de empresas. Si en el momento de creación de la solicitud, la entidad de partipación aún no existe en el sistema de empresas corporativo, la persona solicitante podrá seguir registrando la solicitud indicando en modo texto los datos de la entidad. Será la unidad de gestión, en la fase de validación de la solicitud, quien podrá solicitar el alta de la entidad en el sistema de empresas. |
| datosResponsable : String  PrivateDatos personales, nombre y apellidos, de la persona que actuará como IP en el proyecto externo para el que se solicita la autorización de participación. La persona responsable podría estar dada de alta en el sistema de gestión de personas corporativo en cuyo caso la referencia a la persona responsable estaría recogida en el campo "reponsable ref". Sin embargo, si la persona responsable aún no está registrada en el sistema de personas, los datos personales se recogerán en este campo. La doble existencia de estos dos campos (datos responsable y resposable ref) se debe a que en primera instancia una solicitud de autorización de participación en proyecto externo es registrada en el SGI por el personal investigador (solicitante) que no tiene permisos para solicitar el alta de una nueva persona en el sistema de gestión de personas. Si en el momento de creación de la solicitud, la persona que se indica como IP del proyecto externo aún no existe en el SGP corporativo, la persona solicitante podrá seguir registrando la solicitud indicando en modo texto el nombre y apellidos de la persona IP. Será la unidad de gestión, en la fase de validación de la solicitud, quien podrá solicitar el alta de la persona IP en el SGP, pasando, en este caso a quedar cumplimentado el campo "responsable ref". |
| observaciones : String  PrivateCampo de texto libre para recoger cualquier observación que aplique sobre la solicitud de participación en proyecto externo. |
| estado : EstadoAutorizacion  PrivateEstado actual de la solicitud de participación en proyecto externo. Es un FK a la entidad "estado autorización". |
| datosConvocatoria : String  PrivateNombre o título de la convocatoria bajo la que se realizará el proyecto externo para el que se solicita autorización. Esta convocatoria podría estar dada de alta ya en el SGI en cuyo caso el identificador de la misma estaría recogido en el campo "convocatoria". Sin embargo, si la convocatoria no estuviese registrada en el SGI, el nombre de la misma se recogerá en este campo. La doble existencia de estos dos campos (datos convocatoria y convocatoria) se debe a que en primera instancia una solicitud de autorización de participación en proyecto externo es registrada en el SGI por el personal investigador (solicitante) que no tiene permisos para crear una convocatoria en el SGI. Si en el momento de creación de la solicitud, la convocatoria no existe en el SGI, la persona solicitante podrá seguir registrando la solicitud indicando en modo texto los datos de la convocatoria. Será la unidad de gestión, en la fase de validación de la solicitud, quien decidirá si registra la convocatoria en el SGI. |
| solicitanteRef : String  PrivateReferencia de la persona que solicita autorización para participar en proyecto externo. Se corresponde con el identificador de la persona en el sistema de gestión de personas corporativo. |



| ASSOCIATIONS | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) AutorizacionCardinality:  \[1] | Target: Public (Class) EstadoAutorizacionCardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) AutorizacionCardinality:  \[0\..\*] | Target: Public (Class) EmpresaCardinality:  \[0\..1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) AutorizacionCardinality:  \[0\..1] | Target: Public (Class) NotificacionProyectoExternoCVNCardinality:  \[0\..1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) AutorizacionCardinality:  \[1] | Target: Public (Class) CertificadoAutorizacionCardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) AutorizacionCardinality:  \[0\..\*] | Target: Public (Class) PersonaCardinality:  \[0\..1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) AutorizacionCardinality:  \[0\..\*] | Target: Public (Class) ConvocatoriaCardinality:  \[0\..1] |

  


  


#### Entidad Certificados de autorización una solicitud de participación en proyecto externo: "CcertificadoAutorización"

Documentos acreditativos (certificados) correspondientes a una solicitud de autorización de participación en proyecto externo. Para poder generar el certificado, la autorización ha de estar en estado "autorizada".



| ATTRIBUTES |
| --- |
| id : Long  PrivateIdentificador único. Secuencial. Clave primaria. |
| visible : Boolean  PrivateFlag que indica si el certificado de autorización está disponible para la persona solicitante a través de su acceso al SGI. |
| documentoRef : String  PrivateReferencia al fichero físico que contiene el documento de certificado. Es un identificador del sistema de archivos o sistesma de gestión documental a través del que SGI implementa la gestión de documentos (según implantación). |
| nombre : String  PrivateNombre del documento. |
| autorizacion : Autorizacion  PrivateRegistro de la tabla autorización al que pertenece el certificado. Es una FK a la tabla "autorización". |



| ASSOCIATIONS | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) CertificadoAutorizacionCardinality:  \[1] | Target: Public (Class) DocumentoCardinality:  \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) AutorizacionCardinality:  \[1] | Target: Public (Class) CertificadoAutorizacionCardinality:  \[0\..\*] |

#### Entidad Estados de una autorización: "EstadoAutorizacion"

Estado actual e histórico de estados de una solicitud de autorización de participación en proyecto externo.

  




| ATTRIBUTES |
| --- |
| id : Long  PrivateIdentificador único. Secuencial. Clave primaria |
| estado : TipoEstadoAutorizacion  PrivateEstado de la solicitud de autorizazión. Es un valor del enumerado "tipo estado autorización". |
| fecha : Timestamp  PrivateFecha en la que la solicitud de autorización pasa al estado recogido en el campo "estado". |
| comentario : String  PrivateCampo de texto libre para recoger cualquier comentario relativo al estado de la solicitud de participación en proyecto externo. |
| autorizacionId : Long  PrivateIdentificador de la solicitud de autorización a la que pertenece el registro de Estado. Es una FK a la tabla "autorización". |



| ASSOCIATIONS | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) EstadoAutorizacion | Target: Public (Enumeration) TipoEstadoAutorizacion |
| Association (direction: Unspecified) | |
| Source: Public (Class) AutorizacionCardinality:  \[1] | Target: Public (Class) EstadoAutorizacionCardinality:  \[0\..\*] |

  


  


#### Entidad Notificación de registro de proyecto/contrato de CVN: "NotificacionProyectoExternoCVN"

Desde el sistema de gestión de CVN corporativo se notificarán al SGI los ítems aportados manualmente en el CVN en los apartados 050\.020\.010\.000 Proyectos de I\+D\+i financiados en convocatorias competitivas de administraciones o entidades públicas y privadas y 050\.020\.020\.000 Contratos, convenios o proyectos de I\+D\+i no competitivos con administraciones o entidades públicas y privadas. Esta entidad almacenará los datos de las notificaciones recibidas del sistema CVN

  




| ATTRIBUTES |
| --- |
| id : Long  PrivateIdentificador único. Secuencial. Clave primaria. |
| solicitanteRef : String  PrivateReferencia de la persona que registra el ítem proyecto/contrato en su CVN. Es el identificador de la persona en el sistema de gestión de personas corporativo. |
| titulo : String  PrivateCampo título del ítem proyecto/contrato registrado en el sistema de CVN. La correspondencia con la norma FECYT de CVN es: se corresponderá con el campo 050\.020\.010\.010 \- Nombre del proyecto, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.010 \- Nombre del proyecto, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| responsableRef : String  PrivateReferencia o identificador en el sistema de gestión de personas corporativo asociado a la persona indicada como responsable (IP) del proyecto/contrato en el sistema de CVN. La correspondencia con la norma FECYT de CVN es: se corresponderá con el campo 050\.020\.010\.140 Nombre del/de la investigador/a principal (IP, Co\-IP,...), en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.250 Nombre del/de la investigador/a principal (IP, Co\-IP,...), en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| fechaInicio : Date  PrivateFecha de inicio del proyecto/contrato recogida en el sistema de CVN. La correspondencia con la norma FECYT de CVN es: se corresponderá con el campo 050\.020\.010\.270 \- Fecha de inicio del proyecto, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.180 \- Fecha de inicio del proyecto, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| fechaFin : Date  PrivateFecha de fin del proyecto o contrato recogida en el sistema de CVN. La correspondencia con la norma FECYT de CVN es: se corresponderá con el campo 050\.020\.010\.410 \- Fecha de finalización, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas. En el caso de que el proyecto se registre bajo el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas, este campo no estará disponible, al no estar contemplado en la norma CVN. |
| ambitoGeografico : String  PrivateÁmbito geográfico del proyecto/contrato recogido en el sistema de CVN. La correspondencia con la norma FECYT de CVN es: se corresponde con el campo 050\.020\.010\.040 \- Ámbito del proyecto, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.040 Ámbito del proyecto, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| gradoContribucion : String  PrivateTipo de participación en el proyecto/contrato recogido en el sistema de CVN. La correspondencia con la norma FECTY de CVN es: se corresponde con el campo 050\.020\.010\.170 \- Grado de contribución, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas y con el campo 050\.020\.020\.280 \- Grado de contribución, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| datosEntidadParticipacion : String  PrivateNombre de la entidad de participación recogida sobre el campo "Entidad donde se desarrolla" en el sistema CVN. La correspondencia con la norma FECYT será: campo 050\.020\.010\.100 Entidad donde se desarrolla, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.370 Entidad donde se desarrolla, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas.En caso que el sistema de CVN no se pueda recoger la referencia correspondiente a la entidad de participación en el Sistema de gestión de empresas corporativo, se remitirán en este campo los datos de la entidad (nombre y/o CIF) como cadena de texto. |
| importeTotal : Bigdecimal  PrivateImporte total del proyecto/programa recogido en el sistema de CVN. Se corresponde con el campo 050\.020\.010\.290 Financiación del proyecto, cuantía total, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.200 Financiación del proyecto, cuantía total, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| porcentajeSubvencion : Bigdecimal  PrivatePorcentaje subvencionado recogido en el sistema de CVN. Se corresponde con el campo 050\.020\.010\.310 Financiación del proyecto, porcentaje en subvención, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.220 Financiación del proyecto, porcentaje en subvención, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| documentoRef : String  PrivateDocumento que acredita la concesión/realización del proyecto/contrato. Es el identificador del documento en el sistema de archivos o SGDOC según implantación del SGI. |
| autorizacion : Autorizacion  PrivateSolicitud de autorización de participación en proyecto externo con la que se vincula el ítem de CVN. El sistema de CVN habrá consultado previamente al SGI las solicitudes de participación en proyectos externos autorizadas, de forma que al registrar un nuevo ítem proeycto/contrato en el sistema de CVN, pueda vincularse en este sistema con la solicitud de participación con la que se corresponde, Es una FK a la tabla "autorización". |
| proyecto : Proyecto  PrivateProyecto del SGI con el que se asocia la notificación de CVN. Es una FK a la tabla "proyecto". |
| datosResponsable : String  PrivateNombre de la persona que ocupa el cargo de IP del proyecto/contrato, recogida en el sistema de CVN. La correspondencia con la norma FECYT de CVN es: se corresponderá con el campo 050\.020\.010\.140 Nombre del/de la investigador/a principal (IP, Co\-IP,...), en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.250 Nombre del/de la investigador/a principal (IP, Co\-IP,...), en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas.En caso que desde el sistema de CVN no se pueda recoger la referencia correspondiente a la persona responsable (IP) del proyecto/contrato en el Sistema de gestión de personas corporativo, se remitirán en este campo los datos personales (nombre y apellidos) como cadena de texto. |
| entidadParticipacionRef : String  PrivateReferencia a la entidad dentro del Sistema de gestión de empresas corporativo asociada a la entidad recogida sobre el campo "Entidad donde se desarrolla" del sistema de CVN. La correspondencia con la norma FECYT será: campo 050\.020\.010\.100 Entidad donde se desarrolla, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.370 Entidad donde se desarrolla, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| codExterno : String  PrivateReferencia que se le ha dado el proyecto en la entidad convocante/financiadora recogida en el sistema de CVN. La correspondencia con la norma FECYT de CVN es: se corresponderá con el campo 050\.020\.010\.260 \- Código de proyecto según la entidad financiadora, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.110 \- Código de proyecto según la entidad financiadora, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| nombrePrograma : String  PrivateNombre del programa de financiación recogido en el sistema de CVN. Se corresponde con el campo 050\.020\.010\.250 Nombre del programa de financiación, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.170 Nombre del programa asociado al proyecto, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| proyectoCVNId : String  PrivateIdentificador del ítem (proyecto/contrato) en el sistema de CVN. |
| urlDocumentoAcreditacion : String  PrivateURL en la que está contenida la acreditación de la realización/concesión del proyecto/contrato. |



| ASSOCIATIONS | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) NotificacionProyectoExternoCVNCardinality:  \[1] | Target: Public (Class) DocumentoCardinality:  \[0\..1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) NotificacionProyectoExternoCVNCardinality:  \[0\..\*] | Target: Public (Class) ProyectoCardinality:  \[0\..1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) NotificacionProyectoExternoCVNCardinality:  \[1] | Target: Public (Class) NotificacionCVNEntidadFinanciadoraCardinality:  \[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) NotificacionProyectoExternoCVN | Target: Public (Class) Persona |
| Association (direction: Unspecified) | |
| Source: Public (Class) AutorizacionCardinality:  \[0\..1 | Target: Public (Class) NotificacionProyectoExternoCVNCardinality:  \[0\..1] |

  


#### Entidad Entidades financiadoras del proyecto/contrato registrado en CVN: "NotificaciónCVNEntidadFinanciadora"

Listado de entidades financiadoras incluidas en los datos del proyecto/contrato notificado desde el sistema de gestión de CVN corporativo.



| ATTRIBUTES |
| --- |
| id : Long  PrivateIdentificador único de la tabla. Secuencial. Clave primaria. |
| entidadFinanciadoraRef : String  PrivateReferencia a la entidad dentro del Sistema de gestión de empresas corporativo correspondiente a la entidad financiadora recogida en el sistema de CVN. Se corresponde con el campo 050\.020\.010\.190 Entidad/es financiadora/s, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.120 Nombre/s entidad/es financiadora/s, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas. |
| datosEntidadFinanciadora : String  PrivateNombre de la entidad financiadora recogida en el sistema CVNSe corresponde con el campo 050\.020\.010\.190 Entidad/es financiadora/s, en el caso de que el proyecto se registre en el epígrafe 050\.020\.010\.000 \- Proyectos de I\+D\+i financiados en convocatorias competitivas de Administraciones o entidades públicas y privadas, o con el campo 050\.020\.020\.120 Nombre/s entidad/es financiadora/s, en el caso de que el proyecto se registre en el epígrafe 050\.020\.020\.000 \- Contratos, convenios o proyectos de I\+D\+i no competitivos con Administraciones o entidades públicas o privadas.En caso que el sistema de CVN no se pueda recoger la referencia correspondiente a la entidad en el Sistema de gestión de empresas corporativo, se remitirán en este campo los datos de la entidad (nombre y/o CIF) como cadena de texto. |
| notificacionCVN : NotificacionProyectoExternoCVN  PrivateNotificación CVN a la que pertenece el registro. Es una FK a la tabla "notificación CVN". |



| ASSOCIATIONS | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) NotificacionCVNEntidadFinanciadora | Target: Public (Class) Empresa |
| Association (direction: Unspecified) | |
| Source: Public (Class) NotificacionProyectoExternoCVNCardinality:  \[1] | Target: Public (Class) NotificacionCVNEntidadFinanciadoraCardinality:  \[0\..\*] |

  


### Enumerados del modelo Participación en proyectos externos

#### Enumerado Estado de solicitud de autorización de participación en proyecto externo: "TipoEstadoAutorizacion"

Enumerado que contiene los posibles estados por los que puede pasar una solicitud de autorización de participación en proyecto externo. Los valores son:

* Borrador (estado inicial, el que toma durante su creación).
* Presentada (la persona solicitante pondrá la solicitud en este estado para que sea revisada por la unidad de gestión).
* Revisión (la unidad de gestión indicará con este estado que la solicitud está en proceso de revisión).
* Autorizada (estado final, será la unidad de gestión quien marque este estado).

  




| ATTRIBUTES |
| --- |
| Borrador :   Public\[ Stereotype is «enum». Is static False. Containment is Not Specified. ] |
| Presentada :   Public\[ Stereotype is «enum». Is static False. Containment is Not Specified. ] |
| Autorizada :   Public\[ Stereotype is «enum». Is static False. Containment is Not Specified. ] |
| Revisión :   Public\[ Stereotype is «enum». Is static False. Containment is Not Specified. ] |

  


  




| ASSOCIATIONS | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) EstadoAutorizacion | Target: Public (Enumeration) TipoEstadoAutorizacion |

  


  


  





