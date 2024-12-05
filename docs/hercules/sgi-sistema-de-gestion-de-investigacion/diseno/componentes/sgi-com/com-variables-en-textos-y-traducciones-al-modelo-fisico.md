# Hércules : COM \- Variables en textos y traducciones al modelo físico



### Comunicados CSP

#### Variables



| Variable | Traducción en el modelo |
| --- | --- |
| **dd/MM/aaaa\_HITO** | Campo fecha tabla ProyectoHito/ConvocatoriaHito/SolicitudHito según el caso (solo fecha) |
| **hh:mm\_HITO** | Campo fecha tabla ProyectoHito/ConvocatoriaHito/SolicitudHito según el caso (solo horas y minutos) |
| **TIPO\_DE\_HITO** | Campo "nombre" tabla TipoHito |
| **TITULO\_CONVOCATORIA** | Campo "titulo" tabla Convocatoria |
| **TITULO\_SOLICITUD** | Campo "titulo" tabla Solicitud |
| **CONVOCATORIA\_EXTERNA** | Campo "convocatoriaExterna" de la tabla Solicitud |
| **TITULO\_CONVOCATORIA\_SOLICITUD** | Campo "titulo" tabla Convocatoria con la que la solicitud está relacionada, ya que para convocatorias que no se gestionan en el SGI no es posible crear hitos. |
| **TITULO\_PROYECTO, TITULO\_PROYECTO1, TITULO\_PROYECTO2, ...** | Campo "titulo" tabla Proyecto |
| **dd/MM/aaaa\_INICIO\_FASE** | Campo fechaInicio tabla ProyectoFase/ConvocatoriaFase según el caso (solo fecha) |
| **hh:mm\_INICIO\_FASE** | Campo fechaInicio tabla ProyectoFase/ConvocatoriaFase según el caso (solo horas y minutos) |
| **dd/MM/aaaa\_FIN\_FASE** | Campo fechaFin tabla ProyectoFase/ConvocatoriaFase según el caso (solo fecha) |
| **hh:mm\_FIN\_FASE** | Campo fechaFin tabla ProyectoFase/ConvocatoriaFase según el caso (solo horas y minutos) |
| **TIPO\_DE\_FASE** | Campo "nombre" tabla TipoFase |
| **CODIGO\_SOLICITUD\_EVAETI** | 2 opciones:1. Campo codigo de tabla PeticionEvaluacion donde campo id de esa tabla \= campo peticionEvaluacionRef de tabla Solicitud de la solicitud que se está tratando 2. Campo codigo de tabla PeticionEvaluacion donde campo solicitudConvocatoriaRef de esa tabla \= campo id de la solicitud que se está tratando |
| **CODIGO\_SOLICITUD\_CONVOCATORIA** | Campo codigo de la tabla Convocatoria donde el campo idSolicitud sea el de la solicitud que se está tratando |
| **dd/MM/aaaa\_ESTADO\_SOL** | Campo fechaEstado de tabla EstadoSolicitud donde solicitudId es igual al identificador de la solicitud que se está tratando y el estado coincide con el actual de la solicitud. Si hay varios estados iguales en el histórico, obtener siempre el más reciente. |
| **NOMBRE\_APELLIDOS\_SOLICITANTE** | Concatenación de campos nombre \+ apellidos de la personaUM (personaRef) \= solicitanteRef de la tabla Solicitud con el id que se está tratando |
| **FECHA\_PUBLICACION\_CONVOCATORIA** | Campo fechaPublicacion de la tabla Convocatoria donde el id de la Convocatoria \= convocatoriaId de la tabla Solicitud con el id que se está tratando |
| **CODIGO\_INTERNO\_SOLICITUD** | Campo codigoRegistroInterno de la tabla Solicitud que se está tratando |
| **FECHA\_PROVISIONAL\_CONVOCATORIA** | Campo fechaProvisional de la tabla Convocatoria donde el id de la Convocatoria \= convocatoriaId de la tabla Solicitud con el id que se está tratando |
| * **TIPO\_ENLACE1: DESCRIPCION\_ENLACE1 (link a URL\_ENLACE1\)** * **TIPO\_ENLACE2: DESCRIPCION\_ENLACE2 (link a URL\_ENLACE2\)** * **...** | Listado de enlaces asociados a la convocatoria de la solicitud que se está tratanto.Para cada elemento de la tabla ConvocatoriaEnlace donde convocatoriaId sea el de la convocatoria con id \= convocatoriaId de la tabla Solicitud con el id que se está tratando:* DESCRIPCION\_ENLACEX: campo descripcion de tabla ConvocatoriaEnlace * TIPO\_ENLACEX: campo nombre de tabla TipoEnlace donde id \= idTipoEnlace de tabla ConvocatoriaEnlace * URL\_ENLACEX:  campo url de tabla ConvocatoriaEnlace |
| **FECHA\_CONCESION\_CONVOCATORIA** | Campo fechaConcesion de la tabla Convocatoria donde el id de la Convocatoria \= convocatoriaId de la tabla Solicitud con el id que se está tratando |
| **FECHA\_PREVISTA\_PAGO\_A\_SOCIO** | Campo fechaPrevistaPago de tabla ProyectoSocioPeriodoPago |
| **NOMBRE\_ENTIDAD\_COLABORADORA** | Pasos para obtener el nombre de la entidad colaboradora:1. Campo proyectoSocio de la tabla ProyectoSocioPeriodoPago con la fechaPrevistaPago que cumpla las condiciones para enviar el aviso 2. Campo nombre de la entidad Empresa con el empresaRef de la tabla ProyectoSocio donde id sea igual al id del proyectoSocio del punto 1 3. Llamar al servicio de integración del SGEMP para a partir del empresaRef obtener el nombre de la empresa |
| **FECHA\_INICIO\_PRESJUST\_SOCIO** | Campo fechaInicioPresentacion de tabla ProyectoSocioPeriodoJustificacion que cumpla las condiciones para el envío del aviso y tenga el valor de docRecibida de esa misma tabla a "false". |
| **NUM\_PERIODO\_JUSTSOCIO** | Campo numPeriodo de tabla ProyectoSocioPeriodoJustificacion del período de justificación cuya fechaInicioPresentacion cumpla las condiciones para el envío del primer o del segundo aviso respectivamente y tenga el valor de docRecibida de esa misma tabla a "false". |
| **FECHA\_FIN\_PRESJUST\_SOCIO** | Campo fechaFinPresentacion de tabla ProyectoSocioPeriodoJustificacion que cumpla las condiciones para el envío del aviso y tenga el valor de docRecibida de esa misma tabla a "false". |
| **NOMBRE\_MES** | enero, febrero, marzo ... |
| **AÑO** | 2022, 2023, ... |
| **FECHA\_INICIO\_PRESJUSTGASTO\_PROYECTO1,** **FECHA\_INICIO\_PRESJUSTGASTO\_PROYECTO2,** **FECHA\_INICIO\_PRESJUSTGASTO\_PROYECTO3, ...** | Campo fechaInicioPresentación de tabla ProyectoPeriodoJustificacion de cada uno de los proyectos que cumplan el criterio de que tienen períodos de justificación cuyo valor del campo fechaInicioPresentacion está dentro del mes para el que se está enviando el aviso. |
| **FECHA\_FIN\_PRESJUSTGASTO\_PROYECTO1,** **FECHA\_FIN\_PRESJUSTGASTO\_PROYECTO2,** **FECHA\_FIN\_PRESJUSTGASTO\_PROYECTO3, ...** | Campo fechaFinPresentación de tabla ProyectoPeriodoJustificacion de cada uno de los proyectos que cumplan el criterio de que tienen períodos de justificación cuyo valor del campo fechaInicioPresentacion está dentro del mes para el que se está enviando el aviso. |
| **FECHA\_FIN\_PRESJUSTSEGCIEN,****FECHA\_FIN\_PRESJUSTSEGCIEN\_PROYECTO1**,**FECHA\_FIN\_PRESJUSTSEGCIEN\_PROYECTO2,****FECHA\_FIN\_PRESJUSTSEGCIEN\_PROYECTO3, ...** | Campo fechaFinPresentación de tabla ProyectoPeriodoSeguimiento del proyecto o de cada uno de los proyectos, según el caso, que cumpla/n el criterio de que tiene/n períodos de seguimiento cuyo valor del campo fechaInicioPresentacion está dentro del mes para el que se está enviando el aviso. |
| **FECHA\_INICIO\_PRESJUSTSEGCIEN,****FECHA\_INICIO\_PRESJUSTSEGCIEN\_PROYECTO1,****FECHA\_INICIO\_PRESJUSTSEGCIEN\_PROYECTO2,****FECHA\_INICIO\_PRESJUSTSEGCIEN\_PROYECTO3, ...** | Campo fechaInicioPresentacion de tabla ProyectoPeriodoSeguimiento del proyecto o de cada uno de los proyectos, según el caso, que cumpla/n las condiciones para el envío del aviso. |
| **NUM\_PERIODO\_SEGCIEN** | Campo numPeriodo de tabla ProyectoPeriodoSeguimiento del período de seguimiento cuya fechaInicioPresentacion o fechaFinPresentacion cumpla las condiciones para el envío del primer o del segundo aviso respectivamente. |
| **APELLIDOS\_DESTINATARIO** | Campo apellidos de la entidad Persona donde personaRef es uno de los destinatarios del email de aviso. |
| **LISTA\_ENTIDADES\_FINANCIADORAS** | Para cada elemento de la lista de entidadesRef de la tabla ProyectoEntidadFinanciadora asociadas al Proyecto (con idProyecto) que se está tratando, componer un texto del siguiente modo:Campo Nombre Empresa 1 \+ ", " Campo Nombre Empresa 2 ", "\+...\+" y "\+ Campo Nombre Empresa N |
| **LISTA\_CODIGOS\_SGE** | Para cada elemento de la lista de proyectosSGERef de la tabla ProyectoProyectoSGE asociados al Proyecto (con idProyecto) que se está tratando, componer un texto del siguiente modo:Campo proyectoSGERef1 \+ ", " proyectoSGERef2 ", "\+...\+" y "\+ proyectoSGERefN |
| **TIPO\_FACTURACION** | Campo nombre de la tabla TipoFacturacion asociado al item de facturación (registro de ProyectoFacturacion) que se está validando o rechazando.El campo tipocomunicado servirá para determinar qué plantilla de email usar entre el tipo de facturación "Sin requisito" y los demás tipos de facturación. |
| **NUM\_PREV** | Campo numeroPrevision de la tabla ProyectoFacturacion con el id del item de facturación que se está validando o rechazando. |
| **PRORROGA** | Texto "de la prórroga", en caso de ser una prórroga, o "" (vacío) si no es una prórroga. |
| **NOMBRE\_APELLIDOS\_VALIDADOR** | Concatenación de campos nombre \+ apellidos de la personaUM (personaRef) que está validando el item de facturación (registro de ProyectoFacturacion).personaRef \= Campo usuarioModificacion de la auditoria |
| **NUM\_PREVISION** | Campo numeroPrevision de la tabla ProyectoFacturacion con el id del item de facturación que se está validando o rechazando. |
| **MOTIVO\_RECHAZO\_FACTURA** | Campo comentario de la tabla EstadoValidacionIP asociado al item de facturación (registro de ProyectoFacturacion) que se está rechazando. |
| **dd/MM/aaaa\_PRESENTACIÓN\_SOLPEXT** | Campo fecha de la tabla EstadoAutorizacion del registro de estado que se acaba de dar de alta por primera vez asociado a una Autorizacion (fecha de presentación de la solicitud de autorización). |
| **TITULO\_PROYECTO\_EXTERNO** | Campo tituloProyecto de la tabla Autorizacion |
| **NOMBRE\_APELLIDOS\_SOLICITANTE\_PEXT** | Concatenación de campos nombre \+ apellidos de la personaUM que presenta la solicitud de autorización \- Campo solicitanteRef de la tabla Autorizacion |
| **FECHA\_ESTADO\_SOLICITUD\_PEXT** | Campo fecha de la tabla EstadoAutorizacion del registro de estado al que se cambia una Autorizacion. |
| **ESTADO\_SOLICITUD\_PEXT** | Texto que se resuelve con el enumerado a partir del valor del campo estado de la tabla EstadoAutorizacion del registro de estado al que se cambia una Autorizacion. |
| **ENLACE\_APLICACION** | URL de acceso al SGI en el entorno donde se encuentre desplegada la aplicación. |
| **dd/MM/aaaa\_CREACIÓN\_PEXTCVN** | Campo fechaCreacion de la tabla NotificacionProyectoExternoCVN |
| **TITULO\_PROYECTO\_EXTERNO\_NOTIF** | Campo titulo de la tabla NotificacionProyectoExternoCVN |
| **NOMBRE\_APELLIDOS\_CREADOR\_PEXT** | Campo solicitanteRef de la tabla NotificacionProyectoExternoCVN |
| **ENLACE\_APLICACION\_MENU\_VALIDACION\_TUTOR** | URL de acceso al SGI en el entorno donde se encuentre desplegada la aplicación a la opción de menú de "Validación como tutor/a" |

#### Traducciones de modelo lógico / AF al modelo físico / Diseño\-Implementación



| Comprobación a realizar | Campos a comprobar |
| --- | --- |
| IPs de proyecto | Personas en la tabla "proyectoEquipo" asociadas al proyecto en cuestión con un registro en "rolProyecto" con rolPrincipal\=true donde la fecha actual sea mayor que la de fechaInicio y menor que la fechaFin (o bien que la fechaFin sea null). Pueden ser varias personas. |
| Responsable económico de proyecto | Persona en la tabla "proyectoResponsableEconomico" donde la fecha actual sea mayor que la de fechaInicio y menor que la fechaFin (o bien que la fechaFin sea null). Aunque el modelo permite que haya varias personas que cumplan estos criterios, desde la aplicación solo se permite que haya una vigente en cada momento, por lo que en caso de existir, será siempre 1\. |
| Investigador solicitante de la autorización de participación en proyecto externo | Campo solicitanteRef de la tabla autorizacion del proyecto en cuestión. |
| Comprobación de que una convocatoria es propia | Una convocatoria será propia si tiene activo el flag "Tramitar solicitudes SGI" \= Sí (true) |
| Cálculo de días "hábiles" | Se entenderá como día hábil a efectos del SGI cualquier día de la semana de lunes a viernes. No se contempla gestionar festivos de ningún tipo.Para comprobar los comunicados a enviar con una antelación de X días hábiles, en el caso del SGI, siempre serán 3 días hábiles, a partir del día de la semana en el que estemos, se aplicará el siguiente algoritmo:* Los lunes se comprobará si se cumplen las condiciones para enviar los comunicados de eventos que ocurran los jueves (lunes \+ 3 días naturales) * Los martes se comprobará si se cumplen las condiciones para enviar los comunicados de eventos que ocurran los viernes, sábado y domingo (martes \+3, \+4 y \+5 días naturales respectivamente) * Los miércoles se comprobará si se cumplen las condiciones para enviar los comunicados de eventos que ocurran los lunes (miércoles \+5 días naturales) * Los jueves se comprobará si se cumplen las condiciones para enviar los comunicados de eventos que ocurran los martes (jueves \+5 días naturales) * Los viernes se comprobará si se cumplen las condiciones para enviar los comunicados de eventos que ocurran los miércoles (viernes \+5 días naturales) * El sábado y el domingo no es necesario comprobar si se cumplen las condiciones de cualquier otro día de la semana, ya estarían cubiertos con las comprobaciones anteriores.  El lanzamiento de las comprobaciones se realizará a las 00:00:00 del día indicado, esto es, por ejemplo, en el caso del lunes, se comprobará en el cambio de día de domingo a lunes justo a las 00:00:00 de la noche.La comprobación de que en un día se den las condiciones para que se genere el comunicado de un evento que ocurre ese un día abarcará todo ese día, esto es, por ejemplo, cuando el lunes se comprueba si el jueves ocurre algún evento que precise enviar comunicado, comprobará desde las 00:00:00 del jueves hasta las 23:59:59 de dicho jueves, las 24 horas de ese día. |

### Comunicados PII



| Variable | Traducción en el modelo |
| --- | --- |
| **NUMERO\_MESES\_HASTA\_FIN\_PRIORIDAD****NUMERO\_MESES\_HASTA\_FIN\_EFNR** | Diferencia en meses entre la fecha de fin de prioridad (No  PCT)/fecha de fin de entrada a fases nacionales regionales (PCT) y la fecha de envío del comunicado, esto es, entre campo fechaFinPriorPresFasNacRec de la tabla SolicitudProteccion y la fecha en la que se programa el envío para la solicitud que cumpla los criterios para enviarse el comunicado. |
| **FECHA\_FIN\_PRIORIDAD****FECHA\_FIN\_EFNR** | Campo fechaFinPriorPresFasNacRec de la tabla SolicitudProteccion de la solicitud que cumple los criterios para el envío de un comunicado. |
| **TITULO\_SOLICITUD** | Campo titulo de la tabla SolicitudProteccion cuya fechaFinPriorPresFasNacRec cumple los criterios para el envío de un comunicado. |
| **FECHA\_LIMITE** | Campo fechaLimiteAccion de la tabla Procedimiento. |
| **TIPO\_PROCEDIMIENTO** | Campo descripcion de la tabla TipoProcedimiento asociado a un Procedimiento que cumple los criterios para el envío de un comunicado (cercanía de la fechaLimiteAccion). |
| **ACCIONES\_A\_TOMAR** | Campo accionATomar de la tabla Procedimiento. |

#### Traducciones de modelo lógico / AF al modelo físico / Diseño\-Implementación



| Cálculos para programación de tareas | Pasos |
| --- | --- |
| Cálculo de programación de avisos de fin de prioridad de solicitud NO PCT | 1. Calcular la fecha en el que hay que programar cada tarea de envío de email yendo hacia atrás desde la fecha de fin de prioridad: 	1. Fecha/hora del primer aviso \= **(fecha/hora fin prioridad) \- 6 meses**. 	2. Fecha/hora del segundo aviso \= **(fecha/hora fin prioridad) \- 3 meses**. 	3. Fecha/hora del tercer aviso \= **(fecha/hora fin prioridad) \- 1 mes**. 2. En el caso extremo en el que en el cálculo de alguna de las fechas de aviso diese como resultado una fecha/hora pasada, no se programaría el envío de ese aviso ni se crearían el comunicado correspondiente. 3. Programar las 3 tareas en el módulo de tareas programadas y preparar los comunicados asociados a las mismas en el módulo de comunicados. |
| Cálculo de programación de avisos de fin de plazo de presentación a fases nacionales/regionales de solicitud PCT | 1. Calcular la fecha en el que hay que programar cada tarea de envío de email yendo hacia atrás desde la fecha de fin de plazo de presentación a fases nacionales/regionales: 	1. Fecha/hora del primer aviso \= **(fecha/hora fin de plazo de presentación a fases nacionales/regionales) \- 12 meses**. 	2. Fecha/hora del segundo aviso \= **(fecha/hora fin de plazo de presentación a fases nacionales/regionales) \- 6 meses**. 	3. Fecha/hora del tercer aviso \= **(fecha/hora fin de plazo de presentación a fases nacionales/regionales) \- 2 meses**. 2. En el caso extremo en el que en el cálculo de alguna de las fechas de aviso diese como resultado una fecha/hora pasada, no se programaría el envío de ese aviso ni se crearían el comunicado correspondiente. 3. Programar las 3 tareas en el módulo de tareas programadas y preparar los comunicados asociados a las mismas en el módulo de comunicados. |

### Comunicados ETI



| Variable | Traducción en el modelo |
| --- | --- |
| **(el/la o del/de la)** **NOMBRE\_INVESTIGACION** | Campo nombreInvestigacion de la tabla Comite. Si en el mensaje concreto lleva el artículo delante, se deberá poner el correspondiente al género del comité, campo Genero de esa misma tabla Comite con uno de los valores del enumerado M (masculino) o F (femenino). |
| **(el/la o del/de la)** **COMITE** | Campo comite de la tabla Comite. Si en el mensaje concreto lleva el artículo delante, se deberá poner el correspondiente al género del comité, campo Genero de esa misma tabla Comite con uno de los valores del enumerado M (masculino) o F (femenino). |
| **DIA\_SEMANA** | Día de la semana en texto (lunes, martes, miércoles ... ) de la fecha de convocatoria de reunión de evaluación. Campo fechaEvaluacion de tabla ConvocatoriaReunion. |
| **DIA\_EVALUACION** | Día (1, 2, 3,  ...) de la fecha de convocatoria de reunión de evaluación. Campo fechaEvaluacion de tabla ConvocatoriaReunion. |
| **MES\_EVALUACION** | Mes en texto (enero, febrero, marzo, ...) de la fecha de convocatoria de reunión de evaluación. Campo fechaEvaluacion de tabla ConvocatoriaReunion. |
| **hh:MM\_INICIO\_PRIMERA\_CONVOCATORIA** | Composición hecha de los campos horaInicio y minutoInicio de tabla ConvocatoriaReunion de la forma que se muestren con el caracter ":" enmedio, horainicio:minutoInicio. |
| **hh:MM\_INICIO\_SEGUNDA\_CONVOCATORIA** | Composición hecha de los campos horaInicioSegunda y minutoInicioSegunda de tabla ConvocatoriaReunion de la forma que se muestren con el caracter ":" enmedio, horainicioSegunda:minutoInicioSegunda. |
| **ORDEN\_DEL\_DIA** | Campo ordenDia de la tabla ConvocatoriaReunion. |
| **REFERENCIA\_MEMORIA** | Campo numReferencia de la tabla Memoria. |
| **TIPO\_ACTIVIDAD** | Si el campo tipoActividad del TipoActividad asociado a la PeticionEvaluacion que se está tratando es DISTINTO DE "Investigación tutelada" (Valor del enumerado TipoActividad equivalente)Se resolverá con el valor del campo nombre de la tabla TipoActividadEn otro caso ("Investigación tutelada") se deberá ir a buscar el valor de tipoInvestigacionTutelada asociada de la tabla PeticionEvaluacion y de él resolver al campo nombre de la tabla TipoInvestigacionTutelada |
| **TITULO\_SOLICITUD\_EVALUACION** | Campo titulo de la tabla PeticionEvaluacion. |
| **ENLACE\_APLICACION** | URL de acceso al SGI en el entorno donde se encuentre desplegada la aplicación. |
| **CODIGO\_ORGANO\_COMPETENTE\_MEMORIA** | Campo codigoOrganoCompetente de tabla Memoria. |
| **DIAS\_ARCHIVADA\_PENDIENTE\_CORRECCIONES** | Valor del campo de tabla de Configuracion con la clave dias\_archivada\_pendiente\_correcciones. |
| **DIAS\_LIMITE\_EVALUADOR** | Valor del campo de tabla de Configuracion con la clave dias\_limite\_evaluador. |
| **MESES\_ARCHIVADA\_INACTIVO** | Valor del campo de tabla de Configuracion con la clave meses\_archivada\_inactivo. |
| **DIAS\_AVISO\_RETROSPECTIVA** | Valor del campo de tabla de Configuracion con la clave dias\_aviso\_retrospectiva. |

#### Traducciones de modelo lógico / AF al modelo físico / Diseño\-Implementación



| Comprobación a realizar | Campos a comprobar |
| --- | --- |
| Investigador solicitante de la petición de evaluación de ética | Campo personaRef de la tabla PeticionEvaluacion (Evaluacion.memoria.peticionEval.personaRef). |
| Ha pasado un año desde la fecha en la se ha dado un dictamen favorable a una evaluación de memoria de un investigador y éste no ha realizado aún el informe de seguimiento anual. | Memoria.evaluacion.dictamen.nombre \= (MEMORIA) favorable (Enum) y Evaluacion.fechadictamen \- 1 año\>0 y Memoria está en estado "Fin evaluación". |
| Ha pasado un año desde la fecha de fin de la petición de evaluación del proyecto de un investigador, hay una evaluación de seguimiento anual favorable, y este no ha realizado el informe de seguimiento final. | Memoria.evaluacion.dictamen.nombre \= (SEG\-ANUAL) favorable (Enum) y PeticionEvaluacion.fechaFin \- 1 año \> 0 y la Memoria está en estado "Fin evaluación seguimiento anual". |
| Memoria de tipo CEEA que tenga marcado que requiere retrospectiva, se acerca dicha fecha de retrospectiva y no se ha presentando el informe de retrospectiva. | Memoria.comite.comite \= CEEA y Memoria.requiereRetrospectiva \= true y NO tiene asociado un y Memoria.retrospectiva.estadoRetrospectiva \= Pendiente y Memoria.retrospectiva.fechaRetrospectiva \- hoy \= **DIAS\_AVISO\_RETROSPECTIVA.** |

### Comunicados PRC



| Variable | Traducción en el modelo |
| --- | --- |
| **NOMBRE\_EPIGRAFE** | Campo epigrafeCVN de la tabla ProduccionCientifica (la traducción del enumerado) |
| **TITULO\_ITEM** | Si el item tiene en el campo epigrafeCVN el valor "060\.010\.010\.000" se mostrará el campo valor de orden 1 de la tabla ValorCampo del campoProduccionCientifica que tenga en el campo codigoCVN el valor "060\.010\.010\.030"Si el item tiene en el campo epigrafeCVN el valor "060\.010\.020\.000" se mostrará el campo valor de orden 1 de la tabla ValorCampo del campoProduccionCientifica que tenga en el campo codigoCVN el valor "060\.010\.020\.030"Si el item tiene en el campo epigrafeCVN el valor "050\.020\.030\.000" se mostrará el campo valor de orden 1 de la tabla ValorCampo del campoProduccionCientifica que tenga en el campo codigoCVN el valor "050\.020\.030\.020"Si el item tiene en el campo epigrafeCVN el valor "060\.030\.030\.000" se mostrará el campo valor de orden 1 de la tabla ValorCampo del campoProduccionCientifica que tenga en el campo codigoCVN el valor "060\.030\.030\.010"Si el item tiene en el campo epigrafeCVN el valor "030\.040\.000\.000" se mostrará el campo valor de orden 1 de la tabla ValorCampo del campoProduccionCientifica que tenga en el campo codigoCVN el valor "030\.040\.000\.030"Si el item tiene en el campo epigrafeCVN el valor "060\.020\.030\.000" se mostrará el campo valor de orden 1 de la tabla ValorCampo del campoProduccionCientifica que tenga en el campo codigoCVN el valor "060\.020\.030\.010" |
| **FECHA\_ITEM** | Si el item tiene en el campo epigrafeCVN el valor "060\.010\.010\.000" se mostrará el campo valor de orden 1 de la tabla ValorCampo del campoProduccionCientifica que tenga en el campo codigoCVN el valor "060\.010\.010\.140"Si el item tiene en el campo epigrafeCVN el valor "060\.010\.020\.000" se mostrará el campo valor de orden 1 de la tabla ValorCampo del campoProduccionCientifica que tenga en el campo codigoCVN el valor "060\.010\.020\.190"Si el item tiene en el campo epigrafeCVN el valor "050\.020\.030\.000" se mostrará el campo valor de orden 1 de la tabla ValorCampo del campoProduccionCientifica que tenga en el campo codigoCVN el valor "050\.020\.030\.120"Si el item tiene en el campo epigrafeCVN el valor "060\.030\.030\.000" se mostrará el campo valor de orden 1 de la tabla ValorCampo del campoProduccionCientifica que tenga en el campo codigoCVN el valor "060\.030\.030\.140"Si el item tiene en el campo epigrafeCVN el valor "030\.040\.000\.000" se mostrará el campo valor de orden 1 de la tabla ValorCampo del campoProduccionCientifica que tenga en el campo codigoCVN el valor "030\.040\.000\.140"Si el item tiene en el campo epigrafeCVN el valor "060\.020\.030\.000" se mostrará el campo valor de orden 1 de la tabla ValorCampo del campoProduccionCientifica que tenga en el campo codigoCVN el valor "060\.020\.030\.160" |
| **ANIO** | Campo anio de la tabla ConvocatoriaBaremacion |
| **TEXTO\_ERROR** | Descripción de la excepción capturada en el proceso de baremación |

#### Traducciones de modelo lógico / AF al modelo físico / Diseño\-Implementación



| Comprobación a realizar | Campos a comprobar |
| --- | --- |
| Investigadores principales y personas autorizadas de los grupos de investigación encargados de validar/rechazar el item. | Personas en la tabla "grupoEquipo" asociadas al grupo en cuestión con un registro en "rolProyecto" con rolPrincipal\=true donde la fecha actual sea mayor que la de fechaInicio y menor que la fechaFin (o bien que la fechaFin sea null) y personas en la tabla "grupoPersonaAutorizada" donde la fecha actual sea mayor que la de fechaInicio y menor que la fechaFin (o bien que la fechaFin sea null). Pueden ser varias personas. |




