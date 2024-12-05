# Hércules : PII \- Modelo lógico \- Documentación



### Entidades del modelo Protección Industrial e Intelectual

#### Invencion

Representa cada una de las invenciones para las que alguien estima oportuno solicitar su protección a través de solicitudes de protección de diferente naturaleza.



 | **ATTRIBUTES** |
| --- |
| id : LongClave primaria. Secuencia. Identificador único del registro dentro de la tabla "Invencion". |
| titulo : StringTexto corto identificativo de la invención. Obligatorio. |
| fechaComunicacion : DateFecha en la que se comunica la solicitud para gestionar la protección de una invención por parte de un investigador o de la propia OTRI. Formato fecha sin hora. Obligatorio. |
| descripcion : StringTexto descriptivo de la invención. Obligatorio. |
| tipoProteccionId : LongReferencia al tipo de protección bajo el cuál se decide clasificar la invención. FK a la tabla TipoProteccion. Obligatorio. |
| proyectoRef : StringReferencia al proyecto de investigación con el que opcionalmente se relaciona la invención como origen de la misma. Opcional. |
| comentarios : StringTexto abierto para aportar comentarios acerca de la invención. Opcional. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionCardinality:\[1] | Target: Public (Class) InvencionIngresoCardinality:\[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionCardinality:\[0\..\*] | Target: Public (Class) TipoProteccionCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionCardinality:\[0\..\*] | Target: Public (Class) ProyectoCardinality:\[0\..1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionCardinality:\[1] | Target: Public (Class) InvencionGastoCardinality:\[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionInventorCardinality:\[1\..\*] | Target: Public (Class) InvencionCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SectorLicenciadoCardinality:\[0\..\*] | Target: Public (Class) InvencionCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) PeriodoTitularidadCardinality:\[0\..\*] | Target: Public (Class) InvencionCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionDocumentoCardinality:\[1\..\*] | Target: Public (Class) InvencionCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProteccionCardinality:\[0\..\*] | Target: Public (Class) InvencionCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionAreaConocimientoCardinality:\[1\..\*] | Target: Public (Class) InvencionCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionSectorAplicacionCardinality:\[1\..\*] | Target: Public (Class) InvencionCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) DatoEconomicoCardinality:\[0\..\*] | Target: Public (Class) InvencionCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionPalabraClaveCardinality:\[0\..\*] | Target: Public (Class) InvencionCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) InformePatentabilidadCardinality:\[0\..\*] | Target: Public (Class) InvencionCardinality:\[1] |

#### **TipoProteccion**

Representa las diferentes modalidades a través de las cuales se puede clasificar una invención y que marcarán además a través de qué vías se podrá solicitar su protección.

Tendrá por defecto los siguientes valores, aunque el usuario podrá modificarlos, añadir otros o dar estos de baja:

* Propiedad Industrial


	+ Patente
	+ Modelo de utilidad
	+ Diseño industrial
	+ Marca
	+ Secreto industrial.
* Propiedad Intelectual


	+ Software
	+ Know\-how



 | **ATTRIBUTES** |
| --- |
| id : LongClave primaria. Secuencia. Identificador único del registro dentro de la tabla "TipoProteccion". |
| tipoPropiedad : StringTipo de propiedad del tipo de protección. Los tipos de protección podrán tener uno de los tipos de propiedad del enumerado TipoPropiedad. Obligatorio. |
| nombre : StringEs el nombre identificativo del tipo, con el que se listará en todos los desplegables.Clave única respecto al resto de tipos del mismo nivel. Obligatorio. |
| descripcion : StringCampo de texto de introducción libre para descripción ampliada. Obligatorio. |
| padreId : LongIdentificador al tipo de protección padre en el caso de tenerlo. Aunque el modelo soporta varios niveles, el SGI actualmente solo soportará 2 por pantalla. Opcional. |
| activo : Boolean\= TrueIndicador de si el registro está activo o no en el SGI. Obligatorio. Por defecto tendrá valor True. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) TipoProteccionCardinality:\[0\..\*] | Target: Public (Enumeration) TipoPropiedadCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) TipoProteccionCardinality:\[0\..\*] | Target: Public (Class) TipoProteccionCardinality:\[0\..1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionCardinality:\[0\..\*] | Target: Public (Class) TipoProteccionCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) TipoProteccionCardinality:\[0\..\*] | Target: Public (Class) TipoProteccionCardinality:\[0\..1] |

#### InvencionSectorAplicacion

Representa la relación entre una invención y un sector de aplicación. Una invención debe tener al menos un sector de aplicación asociado.



 | **ATTRIBUTES** |
| --- |
| id : LongClave primaria. Secuencia. Identificador único del registro dentro de la tabla "InvencionSectorAplicacion". |
| invencionId : LongInvención a la que pertenece el registro. Es una FK a la tabla "Invencion". Obligatorio. |
| sectorAplicacionId : LongSector de aplicación al que pertenece el registro. Es una FK a la tabla "SectorAplicacion". Obligatorio. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionSectorAplicacionCardinality:\[0\..\*] | Target: Public (Class) SectorAplicacionCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionSectorAplicacionCardinality:\[1\..\*] | Target: Public (Class) InvencionCardinality:\[1] |

#### **SectorAplicacion**

Representa la lista de sectores empresariales que podrían estar interesados en la invención. No se utilizan los códigos CNAE porque no se dispondrá de información tan detallada, por lo que será información de más alto nivel y distinta a la que se presenta a la hora de seleccionar clasificaciones CNAE. Se pueden asociar más de uno. Será obligatorio añadir al menos uno asociado a una invención.



 | **ATTRIBUTES** |
| --- |
| id : LongClave primaria. Secuencia. Identificador único del registro dentro de la tabla "SectorAplicacion". |
| nombre : StringNombre identificativo del sector de aplicación, con el que se listará en todos los desplegables. Obligatorio. Clave única. |
| descripcion : StringCampo de texto de introducción libre para descripción ampliada. Obligatorio. |
| activo : Boolean\= TrueIndicador de si el registro está activo o no en el SGI. Obligatorio. Por defecto tendrá valor True. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionSectorAplicacionCardinality:\[0\..\*] | Target: Public (Class) SectorAplicacionCardinality:\[1] |

#### InvencionAreaConocimiento

Representa la relación entre una invención y un área de conocimiento. Una invención debe tener al menos un área de conocimiento asociada. A efectos del usuario final, se denominan "Áreas de procedencia". Obligatorio.



| **ATTRIBUTES** |
| --- |
| id : LongClave primaria. Secuencia. Identificador único del registro dentro de la tabla "InvencionAreaConocimiento". |
| invencionId : LongInvención a la que pertenece el registro. Es una FK a la tabla "Invencion". Obligatorio. |
| areaConocimientoRef : StringReferencia al área de conocimiento asociada a la invención. Es una FK al modelo de datos del SGO. Obligatorio. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionAreaConocimientoCardinality:\[0\..\*] | Target: Public (Class) AreaConocimientoCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionAreaConocimientoCardinality:\[1\..\*] | Target: Public (Class) InvencionCardinality:\[1] |

#### InvencionDocumento

Representa la relación entre una invención y un documento. Una invención deberá tener al menos asociado el documento de "Comunicación de invención" que el investigador entrega a la OTRI para solicitar que se proteja la misma.



 | **ATTRIBUTES** |
| --- |
| id : LongClave primaria. Secuencia. Identificador único del registro dentro de la tabla "InvencionDocumento". |
| invencionId : LongInvención a la que pertenece el registro. Es una FK a la tabla "Invencion". Obligatorio. |
| documentoRef : StringReferencia al documento asociado a la invención. Clave ajena a otro modelo, el del SGDOC. Obligatorio. |
| nombre : StringNombre que se quiere usar para identificar al documento. Obligatorio. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionDocumentoCardinality:\[1\..\*] | Target: Public (Class) InvencionCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionDocumentoCardinality:\[0\..1] | Target: Public (Class) DocumentoCardinality:\[1] |

#### InvencionPalabraClave

Representa la relación enter una invención y una palabra clave.



 | **ATTRIBUTES** |
| --- |
| id : LongClave primaria. Secuencia. Identificador único del registro dentro de la tabla "InvencionPalabraClave". |
| invencionId : LongInvención a la que pertenece el registro. Es una FK a la tabla "Invencion". Obligatorio. |
| palabraClave : StringValor de la palabra clave con la que se asocia la invención. Será una clave ajena al modelo del SGO. Obligatorio. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionPalabraClaveCardinality:\[0\..\*] | Target: Public (Class) PalabraClaveCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionPalabraClaveCardinality:\[0\..\*] | Target: Public (Class) InvencionCardinality:\[1] |

#### **InvencionInventor**

Representa la relación entre una invención y un autor/inventor de la misma. Cada invención debe tener reflejado en el SGI la lista completa de autores, esto es, el % de participación de todos los autores que se asocien a ella debe sumar el 100%.



 | **ATTRIBUTES** |
| --- |
| id : LongClave primaria. Secuencia. Identificador único del registro dentro de la tabla "InventorInvencion". |
| invencionId : LongInvención a la que pertenece el registro. Es una FK a la tabla "Invencion". Obligatorio. |
| inventorRef : StringReferencia al inventor/autor de la invención. Es una clave ajena al modelo SGP que se encuentra en otro esquema de BBDD.Obligatorio. |
| participacion : DecimalPorcentaje de participación de autoría en la invención del miembro del equipo inventor. Podrá tener un valor mayor que 0 y menor o igual que 100\. Numérico decimal con 2 decimales. Obligatorio. |
| repartoUniversidad : BooleanIndicador de si al miembro del equipo inventor se le hará el reparto de resultados por parte de la Universidad o no. Obligatorio. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionInventorCardinality:\[1\..\*] | Target: Public (Class) InvencionCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionInventorCardinality:\[0\..\*] | Target: Public (Class) PersonaCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) RepartoEquipoInventorCardinality:\[0\..\*] | Target: Public (Class) InvencionInventorCardinality:\[1] |

#### PeriodoTitularidad

Representa cada uno de los intervalos de tiempo durante los que un grupo de empresas determinado regenta la titularidad de una invención. No se podrán solapar unos períodos con otros.



 | **ATTRIBUTES** |
| --- |
| id : LongClave primaria. Secuencia. Identificador único del registro dentro de la tabla "PeriodoTitularidad". |
| invencionId : LongInvención a la que pertenece el registro. Es una FK a la tabla "Invencion". Obligatorio. |
| fechaInicio : DateFecha de inicio del periodo de titularidad. Formato fecha sin hora. Obligatorio. |
| fechaFin : DateFecha de fin del periodo de titularidad. Formato fecha sin hora. Opcional. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) PeriodoTitularidadCardinality:\[0\..\*] | Target: Public (Class) InvencionCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) PeriodoTitularidadTitularCardinality:\[0\..\*] | Target: Public (Class) PeriodoTitularidadCardinality:\[1] |

#### PeriodoTitularidadTitular

Representa la relación entre cada uno de los períodos de titularidad y cada titular de la invención.



 | **ATTRIBUTES** |
| --- |
| id : LongClave primaria. Secuencia. Identificador único del registro dentro de la tabla "PeriodoTitularidadTitular". |
| periodoTitularidadId : LongPeríodo de titularidad al que pertenece el registro. Es una FK a la tabla "PeriodoTitularidad". Obligatorio. |
| titularRef : StringReferencia a la entidad titular de la invención. Es una FK al modelo del SGEMP. Obligatorio. |
| participacion : DecimalPorcentaje de participación en la titularidad en la invención. Podrá tener un valor mayor o igual que 0 (indicando así que una entidad deja de ser titular por ejemplo) y menor o igual que 100\. Obligatorio. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) PeriodoTitularidadTitularCardinality:\[0\..\*] | Target: Public (Class) PeriodoTitularidadCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) PeriodoTitularidadTitularCardinality:\[0\..\*] | Target: Public (Class) EmpresaCardinality:\[1] |

#### InformePatentabilidad

Representa cada uno de los informes que se pueden emitir sobre una invención evaluando su posible "patentabilidad" o la viabilidad de que se apruebe una solicitud de protección para la misma.



 | **ATTRIBUTES** |
| --- |
| id : LongClave primaria. Secuencia. Identificador único del registro dentro de la tabla "InformePatentabilidad". |
| invencionId : LongInvención a la que pertenece el registro. Es una FK a la tabla "Invencion". Obligatorio. |
| fecha : DateFecha a dar al informe de patentabilidad asociado a la invención. Fecha sin hora. Obligatorio. |
| nombre : StringNombre a dar al informe de patentabilidad asociado a la invención. Obligatorio. |
| documentoRef : StringReferencia al documento de informe de patentabilidad que se asocia a la invención. FK al modelo del SGDOC. Obligatorio. |
| resultadoId : LongResultado asociado al informe de patentabilidad. Es una FK a la tabla "ResultadoInformePatentabilidad". Obligatorio. |
| entidadCreadoraRef : StringReferencia a la entidad/empresa que ha realizado el informe. Será una FK al modelo del SGEMP. Obligatorio. |
| contactoEntidadCreadora : StringPersona de contacto de la entidad creadora del informe de patentabilidad. Obligatorio. |
| contactoExaminador : StringContacto del examinador del informe de patentabilidad. Obligatorio. |
| comentarios : StringComentarios acerca del informe de patentabilidad. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) InformePatentabilidadCardinality: \[0\..\*] | Target: Public (Class) EmpresaCardinality: \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) InformePatentabilidadCardinality: \[0\..\*] | Target: Public (Class) ResultadoInformePatentabilidadCardinality: \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) InformePatentabilidadCardinality: \[0\..1] | Target: Public (Class) DocumentoCardinality: \[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) InformePatentabilidadCardinality: \[0\..\*] | Target: Public (Class) InvencionCardinality: \[1] |

#### **ResultadoInformePatentabilidad**

Representa cada uno de los posibles resultados que se pueden asociar a un informe de patentabilidad. Tendrá por defecto los siguientes valores: Favorable, Desfavorable, pero se podrán modificar, dar de baja o añadir otros por parte del usuario.



 | **ATTRIBUTES** |
| --- |
| id : LongClave primaria. Secuencia. Identificador único del registro dentro de la tabla "ResultadoInformePatentabilidad". |
| nombre : StringEs el nombre identificativo del resultado de informe de patentabilidad, con el que se listará en todos los desplegables. Clave única. Obligatorio. |
| descripcion : StringCampo de texto de introducción libre para descripción ampliada. Obligatorio. |
| activo : Boolean\= TrueIndicador de si el registro está activo o no en el SGI. Obligatorio. Por defecto tendrá valor True. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) InformePatentabilidadCardinality:\[0\..\*] | Target: Public (Class) ResultadoInformePatentabilidadCardinality:\[1] |

#### **SolicitudProteccion**

Representa cada una de las solicitudes para proteger una invención que se presentan tanto a organismos públicos como privados o incluso internos a la propia Universidad.



 | **ATTRIBUTES** |
| --- |
| id : LongClave primaria. Secuencia. Identificador único del registro dentro de la tabla "SolicitudProteccion". |
| invencionId : LongInvención a la que pertenece el registro. Es una FK a la tabla "Invencion". Obligatorio. |
| titulo : StringTítulo de la solicitud de protección. Obligatorio. |
| fechaPrioridadSolicitud : DateFecha de la solicitud que, en caso de primera solicitud que NO sea Extensión internacional, esto es, que su vía de protección asociada sea del tipo extensión internacional \= "Sí" (PCT p.ej.), será además la fecha de inicio de la prioridad. Formato fecha sin hora. Obligatorio. |
| fechaFinPriorPresFasNacRec : DateFecha de finalización de la prioridad de la solicitud o de fin del plazo de presentación de solicitudes en fases nacionales/regionales. Si la solicitud NO es la primera solicitud de la invención, este campo no estará informado salvo que la vía de protección sea del tipo extensión internacional \= "Sí" (PCT p.ej.). Solo se podrá informar para la protección industrial y, en ese caso, será obligatorio. Formato fecha sin hora. |
| viaProteccionId : LongReferencia a la vía de protección asociada a la solicitud de protección. FK a la tabla ViaProteccion. Obligatorio. |
| paisProteccionRef : StringReferencia al identificador del país para el que se hace la solicitud de protección en el caso de que la solicitud tenga una vía de protección asociada que tenga opción de presentarse en varios países (variosPaises \= true en tabla ViaProteccion).Es una FK a la tabla "Pais" del modelo del módulo SGO. Obligatorio si se selecciona una vía de protección del tipo indicado, opcional en otro caso. |
| numeroSolicitud : StringNúmero de la solicitud que es comunicada por el organismo donde se solicita. Obligatorio. |
| numeroRegistro : StringNúmero del registro que es comunicada por el organismo que concede la protección. Solo se podrá informar para la protección intelectual y, en ese caso, será opcional. |
| estado : StringEstado de la solicitud. Las solicitudes podrán tener uno de los estados del enumerado EstadoSolicitudProteccion. Al crear la solicitud se establecerá por defecto el valor "Solicitada" para su estado de manera implícita. Solo estará informado para la protección industrial y, en ese caso, será obligatorio. |
| fechaPublicacion : DateFecha de publicación de la solicitud de invención. Solo se podrá informar para la propiedad industrial y, en ese caso, será opcional. Formato fecha sin hora. |
| numeroPublicacion : StringNúmero de la publicación que es comunicada por el organismo donde se publica. Solo se podrá informar para la propiedad industrial y, en ese caso, será opcional. |
| fechaConcesion : DateFecha de concesión de la solicitud de protección. Solo se podrá informar para la propiedad industrial y, en ese caso, será opcional.Formato fecha sin hora. |
| numeroConcesion : StringNúmero de la concesión que es comunicada por el organismo que concede la protección. Solo se podrá informar para la propiedad industrial y, en ese caso, será opcional. |
| fechaCaducidad : DateFecha de caducidad de la solicitud de invención. Solo estará informada para la protección industrial y si el estado es o se cambia a "Caducada" y, en ese caso, será obligatorio indicarla. Formato fecha sin hora. |
| agentePropiedad : agentePropiedadRefAgente de la propiedad asociado a la solicitud de protección. Referencia a una entidad dentro del modelo del SGEMP. Solo podrá estar informada para la propiedad industrial y, en ese caso, será opcional. |
| tipoCaducidadId : LongReferencia al tipo de caducidad de la solicitud de invención. FK a TipoCaducidad. Solo estará informada para la propiedad industrial y si el estado es o se cambia a "Caducada" y, en ese caso, será obligatorio indicarla. |
| comentarios : StringCampo de texto abierto con comentarios a la solicitud de protección. Opcional. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProteccionCardinality:\[0\..\*] | Target: Public (Enumeration) EstadoSolicitudProteccionCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProteccionCardinality:\[1] | Target: Public (Class) PaisValidadoCardinality:\[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProteccionCardinality:\[0\..\*] | Target: Public (Class) EmpresaCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProteccionCardinality:\[0\..\*] | Target: Public (Class) PaisCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProteccionCardinality:\[0\..\*] | Target: Public (Class) InvencionCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProteccionCardinality:\[1] | Target: Public (Class) InvencionGastoCardinality:\[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProteccionCardinality:\[0\..\*] | Target: Public (Class) TipoCaducidadCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProcedimientoCardinality:\[0\..\*] | Target: Public (Class) SolicitudProteccionCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ViaProteccionCardinality:\[1] | Target: Public (Class) SolicitudProteccionCardinality:\[0\..\*] |

#### **ViaProteccion**

Representa los diferentes mecanismos o vías por las que se puede solicitar proteger / explotar una invención.Las vías de protección posibles irán acorde al tipo de propiedad asociado al tipo de protección que tenga la invención, es por ello que existirá una lista de vías de protección asociada a "Propiedad intelectual" y otra a "Propiedad industrial".

A priori esta lista tendrá los siguientes valores:

* Protecciones de tipo "Protección industrial":


	+ España
	+ PCT
	+ Europea
	+ País específico
* Protecciones de tipo "Protección intelectual":


	+ Registro autonómico
	+ Acta notarial
	+ Registro interno

En todo caso, esta lista es configurable en el SGI.

Si se selecciona una vía de protección con el indicador de que dicha vía es por país \= "Sí" (País específico p.ej.), se deberá informar además el campo pais en la solicitud de protección.



 | **ATTRIBUTES** |
| --- |
| id : LongClave primaria. Secuencia. Identificador único del registro dentro de la tabla "ViaProteccion". |
| nombre : StringEs el nombre identificativo del tipo, con el que se listará en todos los desplegables. Clave única. Obligatorio. |
| descripcion : StringCampo de texto de introducción libre para descripción ampliada. Obligatorio. |
| tipoPropiedad : StringTipo de propiedad de la vía de protección. Las vías de protección podrán tener uno de los tipos de propiedad del enumerado TipoPropiedad. Obligatorio. |
| mesesPrioridad : IntegerMeses de prioridad a aplicar cuando la solicitud es la primera de una invención o de plazo para la entrada a las fases nacionales / regionales en el caso concreto de solicitudes que sean extensión internacional (p.ej. vía PCT). Solo aplicará al Tipo de propiedad "Propiedad industrial". Numérico entero. Obligatorio. |
| paisEspecifico : BooleanIndicador de si al ser seleccionada esta vía para una solicitud de protección ha de mostrarse el desplegable de países para elegir uno concreto. Opcional. |
| extensionInternacional : BooleanIndicador de si al ser seleccionada esta vía para una solicitud de protección se ha de gestionar la solicitud como una extensión a varios países (p.e. como una PCT). Opcional. |
| variosPaises : BooleanIndicador de si al asociar esta vía a una solicitud de protección se pueden informar un listado de países en los que se ha validado la invención a través de la misma. Opcional. |
| activo : Boolean\= TrueIndicador de si el registro está activo o no en el SGI. Obligatorio. Por defecto tendrá valor True. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ViaProteccionCardinality:\[0\..\*] | Target: Public (Enumeration) TipoPropiedadCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ViaProteccionCardinality:\[1] | Target: Public (Class) SolicitudProteccionCardinality:\[0\..\*] |

#### **TipoCaducidad**

Representa los diferentes tipos de caducidad por los que puede dejar de estar en proceso de tramitación pasado un tiempo una solicitud de protección. Por defecto estará precargada con los valores:

* Abandono
* Retirada
* Denegación

No será gestionada por el usuario final pero sí se podrán añadir, eliminar o modificar valores por BBDD.



 | **ATTRIBUTES** |
| --- |
| id : LongClave primaria. Secuencia. Identificador único del registro dentro de la tabla "TipoCaducidad". |
| descripcion : StringDescripción identificativa del tipo de caducidad con el que se presentará en los desplegables. Obligatorio. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProteccionCardinality:\[0\..\*] | Target: Public (Class) TipoCaducidadCardinality:\[1] |

#### PaisValidado

Representa cada uno de los países en los que se ha validado el uso de una licencia de una invención a través de una solicitud de protección de vía Europea.



 | **ATTRIBUTES** |
| --- |
| id : LongClave primaria. Secuencia. Identificador único del registro dentro de la tabla "PaisValidado". |
| fechaValidacion : DateFecha en la que se valida el uso de una licencia de una invención, a través de una solicitud de protección, en un país concreto. Formato fecha sin hora. Obligatorio. |
| paisRef : StringReferencia al identificador del país para el que se valida el uso de una licencia de invención a través de una solicitud de protección.Es una FK a la tabla "Pais" del modelo del módulo SGO. Obligatorio. |
| codigoInvencion : StringCódigo identificativo de la licencia de uso de una invención en un país. Obligatorio. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) PaisValidadoCardinality:\[0\..\*] | Target: Public (Class) PaisCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProteccionCardinality:\[1] | Target: Public (Class) PaisValidadoCardinality:\[0\..\*] |

#### **Procedimiento**

Representa cada una de las anotaciones que se quieren registrar a lo largo del tiempo relacionadas con una solicitud de protección y de las que se quiere dejar constancia de documentación, acciones a tomar y los comentarios que se consideren oportunos.



 | **ATTRIBUTES** |
| --- |
| id : LongClave primaria. Secuencia. Identificador único del registro dentro de la tabla "Procedimiento". |
| solicitudProteccionId : LongSolicitud de protección a la que pertenece el registro. Es una FK a la tabla "SolicitudProteccion". Obligatorio. |
| fecha : DateFecha de registro del procedimiento asociado a la solicitud. Formato fecha sin hora. Obligatorio. |
| tipoId : LongTipo de procedimiento al que se asocia el registro. Es una FK a la tabla "TipoProcedimiento". Obligatorio. |
| accionATomar : StringAcciones a tomar en el procedimiento asociado a la solicitud. Opcional. |
| fechaLimiteAccion : DateFecha límite del procedimiento asociado a la solicitud. Será obligatorio únicamente si el campo aviso está a True. Esta fecha será utilizada para programar el envío de un aviso en el módulo de comunicados. Formato fecha sin hora. Opcional. |
| aviso : BooleanIndicador de si el procedimiento ha de generar un aviso o no una vez se alcance la fecha límite para realizar la acción indicada en el procedimiento. Opcional. |
| observaciones : StringCampo de texto abierto con observaciones al procedimiento. Opcional. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProcedimientoCardinality:\[1] | Target: Public (Class) ProcedimientoDocumentoCardinality:\[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProcedimientoCardinality:\[0\..\*] | Target: Public (Class) SolicitudProteccionCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProcedimientoCardinality:\[0\..\*] | Target: Public (Class) TipoProcedimientoCardinality:\[1] |

#### **TipoProcedimiento**

Representa los diferentes tipos de procedimiento que se podrán asociar a los procedimientos.



 | **ATTRIBUTES** |
| --- |
| id : LongClave primaria. Secuencia. Identificador único del registro dentro de la tabla "TipoProcedimiento". |
| nombre : StringNombre identificativo del tipo de procedimiento, con el que se listará en todos los desplegables. Clave única. Obligatorio. |
| descripcion : StringDescripción del tipo de procedimiento. Obligatorio. |
| activo : Boolean\= TrueIndicador de si el registro está activo o no en el SGI. Obligatorio. Por defecto tendrá valor True. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProcedimientoCardinality:\[0\..\*] | Target: Public (Class) TipoProcedimientoCardinality:\[1] |

#### ProcedimientoDocumento

Representa la relación de un procedimiento con un documento en el Sistema de Gestión de Documentos (SGDOC).



 | **ATTRIBUTES** |
| --- |
| id : LongClave primaria. Secuencia. Identificador único del registro dentro de la tabla "ProcedimientoDocumento". |
| procedimientoId : LongProcedimiento al que pertenece el registro. Es una FK a la tabla "Procedimiento". Obligatorio. |
| documentoRef : StringReferencia al documento de procedimiento al que se asocia el mismo. FK al modelo del SGDOC. Obligatorio. |
| nombre : StringNombre identificativo del documento asociado al procedimiento. Obligatorio. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProcedimientoDocumentoCardinality:\[0\..1] | Target: Public (Class) DocumentoCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) ProcedimientoCardinality:\[1] | Target: Public (Class) ProcedimientoDocumentoCardinality:\[0\..\*] |

#### **InvencionGasto**

Representa la relación entre una invención y cada uno de los gastos incluidos en los diferentes procesos de reparto de la misma.



 | **ATTRIBUTES** |
| --- |
| id : LongClave primaria. Secuencia. Identificador único del registro dentro de la tabla "InvencionGasto". |
| invencionId : LongInvención a la que pertenece el registro. Es una FK a la tabla "Invencion". Obligatorio. |
| gastoRef : StringReferencia al gasto. FK al modelo del Sistema de Gestión Económica de la Protección Industrial e Intelectual (SGEPII). Obligatorio. |
| estado : StringEstado del gasto asociado a la invención dentro del proceso de reparto en el que se incluye. Tomará uno de los valores del enumerado EstadoInvencionGasto. Obligatorio. |
| importePendienteDeducir : DecimalImporte que queda por deducir del gasto. Obligatorio. |
| solicitudProteccion : solicitudProteccionIdReferencia al la solicitud de protección con la que opcionalmente se relaciona el gasto por ser origen del mismo. FK a SolicitudProteccion. Opcional. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionGastoCardinality:\[0\..\*] | Target: Public (Class) TipoGastoCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionGastoCardinality:\[0\..\*] | Target: Public (Enumeration) EstadoInvencionGastoCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionGastoCardinality:\[1] | Target: Public (Class) RepartoGastoCardinality:\[1\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionGastoCardinality:\[0\..1] | Target: Public (Class) DatoEconomicoCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProteccionCardinality:\[1] | Target: Public (Class) InvencionGastoCardinality:\[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionCardinality:\[1] | Target: Public (Class) InvencionGastoCardinality:\[0\..\*] |

#### **SectorLicenciado**

Representa cada uno de los sectores en los que a través de contratos de regalías o de explotación de invenciones se conceden licencias de uso de una invención para un país y por un plazo de tiempo establecido.



 | **ATTRIBUTES** |
| --- |
| id : LongClave primaria. Secuencia. Identificador único del registro dentro de la tabla "SectorLicenciado". |
| invencionId : LongInvención a la que pertenece el registro. Es una FK a la tabla "Invencion".Obligatorio. |
| contratoRef : StringReferencia al contrato asociado a la licencia por país, sector y plazo. Es una FK a la tabla "Proyecto" del modelo del módulo CSP. |
| sectorId : LongSector de aplicación a la que pertenece el registro. Es una FK a la tabla "SectorAplicacion". Obligatorio. |
| paisRef : StringReferencia al identificador del país al que corresponde la licencia del sector de aplicación.Es una FK a la tabla "Pais" del modelo del módulo SGO. Obligatorio. |
| exclusividad : BooleanIndicador de si la licencia es en exclusiva o no. Valores: true o false. Obligatorio. |
| fechaInicioLicencia : DateFecha de inicio de la vigencia de la licencia para el sector y país indicado. Obligatorio. |
| fechaFinLicencia : DateFecha de fin de la vigencia de la licencia para el sector y país indicado. Obligatorio. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) SectorLicenciadoCardinality:\[0\..\*] | Target: Public (Class) Convocatorias, Ayudas, Proyectos, Contratos :: ContratoCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SectorLicenciadoCardinality:\[0\..\*] | Target: Public (Class) InvencionCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SectorLicenciado Cardinality:\[0\..\*] | Target: Public (Class) PaisCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) SectorLicenciado | Target: Public (Class) Clasificacion |

#### **InvencionIngreso**

Representa la relación entre una invención y cada uno de los ingresos incluidos en los diferentes procesos de reparto de la misma.



 | **ATTRIBUTES** |
| --- |
| id : LongClave primaria. Secuencia. Identificador único del registro dentro de la tabla "InvencionIngreso". |
| invencionId : LongInvención a la que pertenece el registro. Es una FK a la tabla "Invencion". Obligatorio. |
| ingresoRef : StringReferencia al ingreso. FK al modelo del Sistema de Gestión Económica de la Protección Industrial e Intelectual (SGEPII). Obligatorio. |
| estado : StringEstado del ingreso asociado a la invención dentro del proceso de reparto en el que se incluye. Tomará uno de los valores del enumerado EstadoInvencionIngreso. Obligatorio. |
| importePendienteRepartir : DecimalImporte que queda por repartir del ingreso. Obligatorio. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionIngresoCardinality:\[1] | Target: Public (Class) RepartoIngresoCardinality:\[1\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionIngresoCardinality:\[0\..\*] | Target: Public (Enumeration) EstadoInvencionIngresoCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionIngresoCardinality:\[0\..1] | Target: Public (Class) FacturaCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionIngresoCardinality:\[0\..1] | Target: Public (Class) DatoEconomicoCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionCardinality:\[1] | Target: Public (Class) InvencionIngresoCardinality:\[0\..\*] |

#### Reparto

Representa cada uno de los actos de reparto del beneficio de la explotación de invenciones a través de licencias que realizarán los usuarios gestores del SGI.



 | **ATTRIBUTES** |
| --- |
| id : LongClave primaria. Secuencia. Identificador único del registro dentro de la tabla "Reparto". |
| invencionId : LongInvención a la que pertenece el registro. Es una FK a la tabla "Invencion". Obligatorio. |
| fecha : DateFecha en la que se crea el reparto. Formato fecha \+ hora. Obligatorio. |
| importeUniversidad : DecimalImporte que se asigna a la universidad en el reparto. Obligatorio. |
| importeEquipoInventor : DecimalImporte que se asigna al equipo inventor en el reparto. Obligatorio. |
| estado : StringEstado del reparto. Será uno de los posibles valores del enumerado "EstadoReparto". Mientras el reparto esté en estado "Pendiente de ejecutar" se podrán realizar modificaciones en él. En el estado "Ejecutado" ya no se podrá modificar. Obligatorio. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) RepartoCardinality:\[1] | Target: Public (Class) RepartoIngresoCardinality:\[1\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) RepartoCardinality:\[1] | Target: Public (Class) RepartoEquipoInventorCardinality:\[0\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) RepartoCardinality:\[0\..\*] | Target: Public (Enumeration) EstadoRepartoCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) RepartoGastoCardinality:\[1\..\*] | Target: Public (Class) RepartoCardinality:\[1] |

#### **TramoReparto**

Representa la configuración de cómo se propondrá por defecto por parte del SGI realizar la distribución del reparto en % de beneficios de las invenciones entre Universidad e inventores, en función del tramo en el que se encuentre el valor de ese beneficio.



 | **ATTRIBUTES** |
| --- |
| id : LongClave primaria. Secuencia. Identificador único del registro dentro de la tabla "TramoReparto". |
| orden : IntegerOrden del tramo entre 1 y el número de tramos siendo el 1 indicador de que es el primer tramo y el máximo de que es el último. Se utiliza para su presentación por pantalla de forma ordenada de menor a mayor valor del límite superior del tramo. Obligatorio. |
| desde : IntegerValor inicial del intervalo entre el que debe estar el beneficio del reparto para que el reparto de % de este tramo aplique. Obligatorio. |
| hasta : IntegerValor final del intervalo entre el que debe estar el beneficio del reparto para que el reparto de % de este tramo aplique. Obligatorio. |
| porcentajeUniversidad : DecimalValor del % de reparto a la Universidad que aplica cuando el beneficio esté dentro del tramo. Obligatorio. |
| porcentajeInventores : DecimalValor del % de reparto a los miembros del equipo inventor que aplica cuando el beneficio esté dentro del tramo. Obligatorio. |
| tipoTramo : StringIndicador de si es necesario indicar para el tramo los límites superior, inferior o ambos. Utiliza para ello los valores del enumerado TipoTramo. Obligatorio. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) TramoRepartoCardinality:\[0\..\*] | Target: Public (Enumeration) TipoTramoCardinality:\[1] |

#### RepartoGasto

Representa cada uno de los gastos que se han incluido en un reparto.



 | **ATTRIBUTES** |
| --- |
| id : LongClave primaria. Secuencia. Identificador único del registro dentro de la tabla "RepartoGasto". |
| repartoId : LongReparto al que pertenece el registro. Es una FK a la tabla "Reparto". Obligatorio. |
| invencionGastoId : LongGasto de la invención concreto al que se asocia el registro. Es una FK a la tabla "InvencionGasto". Obligatorio. |
| importeADeducir : DecimalValor del importe del gasto a deducir. Obligatorio. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) RepartoGastoCardinality:\[1\..\*] | Target: Public (Class) RepartoCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionGastoCardinality:\[1] | Target: Public (Class) RepartoGastoCardinality:\[1\..\*] |

#### RepartoIngreso

Representa cada uno de los ingresos que se han incluido en un reparto.



 | **ATTRIBUTES** |
| --- |
| id : LongClave primaria. Secuencia. Identificador único del registro dentro de la tabla "RepartoIngreso". |
| repartoId : LongReparto al que pertenece el registro. Es una FK a la tabla "Reparto".Obligatorio. |
| invencionIngresoId : LongIngreso de la invención concreto al que se asocia el registro. Es una FK a la tabla "InvencionIngreso". Obligatorio. |
| importeARepartir : DecimalValor del importe del ingreso a repartir. Obligatorio. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionIngresoCardinality:\[1] | Target: Public (Class) RepartoIngresoCardinality:\[1\..\*] |
| Association (direction: Unspecified) | |
| Source: Public (Class) RepartoCardinality:\[1] | Target: Public (Class) RepartoIngresoCardinality:\[1\..\*] |

#### **RepartoEquipoInventor**

Representa cómo se desglosa por cada inventor y concepto el importe que en el reparto asociado se ha destinado al equipo inventor.



 | **ATTRIBUTES** |
| --- |
| id : LongClave primaria. Secuencia. Identificador único del registro dentro de la tabla "RepartoEquipoInventor". |
| repartoId : LongReparto al que pertenece el registro. Es una FK a la tabla "Reparto". Obligatorio. |
| invencionInventorId : LongMiembro del equipo inventor al que pertenece el registro. Es una FK a la tabla "InvencionInventor". Obligatorio. |
| importeNomina : DecimalImporte correspondiente al reparto para el miembro del equipo inventor que se va a realizar al miembro del equipo inventor en nómina. Opcional. |
| importeProyecto : DecimalImporte correspondiente al reparto para el miembro del equipo inventor que se va a repercutir hacia un proyecto. Opcional. |
| importeOtros : DecimalImporte correspondiente al reparto para el miembro del equipo inventor que se va a retribuir en cualquier otra forma que no sea en nómina o a un proyecto.Contempla por ejemplo el caso de los repartos de regalías a miembros del equipo inventor que ya no tienen vinculación con la Universidad pero ésta sí sigue teniendo obligación de realizarles estos pagos de repartos. Opcional. |
| proyectoRef : StringProyecto al que se asocia el registro. Es una FK a la tabla "Proyecto" perteneciente a otro esquema de BBDD, al del módulo CSP.Será el proyecto al que destinar la parte del reparto indicado en el campo Importe a proyecto.Este campo podrá estar informado si se indica un valor \> 0 en el campo Importe a proyecto. Opcional. |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) RepartoEquipoInventorCardinality:\[0\..\*] | Target: Public (Class) ProyectoCardinality:\[0\..1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) RepartoEquipoInventorCardinality:\[0\..\*] | Target: Public (Class) PersonaCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) RepartoEquipoInventorCardinality:\[0\..\*] | Target: Public (Class) InvencionInventorCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) RepartoCardinality:\[1] | Target: Public (Class) RepartoEquipoInventorCardinality:\[0\..\*] |

### **Enumerados**

#### TipoPropiedad

Enumerado que contiene los posibles tipos de protección con los que se puede asociar una invención. Valores:

* Propiedad industrial
* Propiedad intelectual

  




 | **ATTRIBUTES** |
| --- |
| Propiedad industrial : Long |
| Propiedad intelectual : Long |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) ViaProteccionCardinality:\[0\..\*] | Target: Public (Enumeration) TipoPropiedadCardinality:\[1] |
| Association (direction: Unspecified) | |
| Source: Public (Class) TipoProteccionCardinality:\[0\..\*] | Target: Public (Enumeration) TipoPropiedad Cardinality:\[1] |

#### EstadoSolicitudProteccion

Enumerado que contiene los posibles estados de las solicitudes de protección. Valores:

* Solicitada
* Publicada
* Concedida
* Caducada

  




 | **ATTRIBUTES** |
| --- |
| Solicitada : Long |
| Publicada : Long |
| Concedida : Long |
| Caducada : Long |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) SolicitudProteccionCardinality:\[0\..\*] | Target: Public (Enumeration) EstadoSolicitudProteccion Cardinality:\[1] |

#### EstadoReparto

Enumerado que contiene los posibles estados del reparto de beneficios de las licencias de explotación de las invenciones. Valores:

* Pendiente de ejecutar: aún no se ha realizado el pago del reparto.
* Ejecutado: ya se ha llevado a cabo el pago del reparto.



 | **ATTRIBUTES** |
| --- |
| Pendiente de ejecutar : Long |
| Ejecutado : Long |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) RepartoCardinality:\[0\..\*] | Target: Public (Enumeration) EstadoRepartoCardinality:\[1] |

#### EstadoInvencionGasto

Enumerado que contiene los posibles estados de los gastos en su relación con una invención. Valores:

* Sin deducir: aún no se ha deducido este gasto dentro de ningún proceso de reparto.
* Parcialmente deducido: se ha deducido parcialmente este gasto dentro de un proceso de reparto, aún le queda parte de importe sin deducir.
* Deducido:se ha deducido totalmente este gasto dentro de un proceso de reparto.



 | **ATTRIBUTES** |
| --- |
| Sin deducir (No) : Long |
| Parcialmente deducido (Parcialmente) : Long |
| Deducido (Sí) : Long |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionGastoCardinality:\[0\..\*] | Target: Public (Enumeration) EstadoInvencionGasto Cardinality:\[1] |

#### EstadoInvencionIngreso

Enumerado que contiene los posibles estados de los ingresos en su relación con una invención. Valores:

* Sin repartir: aún no se ha repartido este ingreso dentro de ningún proceso de reparto.
* Parcialmente repartido: se ha repartido parcialmente este ingreso dentro de un proceso de reparto, aún le queda parte de importe sin repartir.
* Repartido:se ha repartido totalmente este ingreso dentro de un proceso de reparto.

  




 | **ATTRIBUTES** |
| --- |
| Sin repartir (No) : Long |
| Parcialmente repartido (Parcialmente) : Long |
| Repartido (Sí) : Long |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) InvencionIngresoCardinality:\[0\..\*] | Target: Public (Enumeration)EstadoInvencionIngreso Cardinality:\[1] |

#### TipoTramo

Enumerado que contiene los tipos de tramo de reparto de beneficios de las licencias de explotación de las invenciones. Valores:

* Inicial: el límite inferior se considera por defecto 1, aunque no es necesario indicarlo expresamente.
* Intermedio: tiene valor tanto en el campo desde como en hasta, ambos límites están especificados.
* Final: no tiene límite superior, aplicará a cualquier beneficio \> desde



 | **ATTRIBUTES** |
| --- |
| Inicial : Long |
| Intermedio : Long |
| Final : Long |



  | **ASSOCIATIONS** | |
| --- | --- |
| Association (direction: Unspecified) | |
| Source: Public (Class) TramoRepartoCardinality:\[0\..\*] | Target: Public (Enumeration) TipoTramoCardinality:\[1] |




