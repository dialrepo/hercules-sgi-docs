# Hércules : CSP\-PPEX: Servicios API



### Autorización



| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| POST | /autorizaciones | AutorizacionInput | AutorizacionOutput | CSP\-AUT\-INV\-C | Crea Autorización |
| PUT | /autorizaciones/{id} | AutorizacionInput | AutorizacionOutput | CSP\-AUT\-INV\-ER, CSP\-AUT\-E | Actualiza Autorización |
| GET | /autorizaciones/{id} | id: identificador de la Autorización | AutorizacionOutput | CSP\-AUT\-INV\-ER, CSP\-AUT\-E, CSP\-AUT\-V | Datos de la autorización |
| PATCH | /autorizaciones/{id}/cambiar\-estado | id: identificador de la AutorizaciónEstadoAutorizacion: el estado al que se desea cambiar | AutorizacionOutput | CSP\-AUT\-INV\-ER, CSP\-AUT\-E | Devuelve AutorizacionOutput con el EstadoAutorizacion Actualizado |
| PATCH | /autorizaciones/{id}/presentar | AutorizacionOutput: Autorización a presentar | AutorizacionOutput | CSP\-AUT\-INV\-C, CSP\-AUT\-INV\-ER | Devuelve AutorizacionOutput con el EstadoAutorizacion "Presentada" |
| HEAD | /autorizaciones/{id}/presentable | id: identificador de la Autorización | AutorizacionOutput | CSP\-AUT\-INV\-C, CSP\-AUT\-INV\-ER, CSP\-AUT\-E, CSP\-AUT\-V | Comprueba si la Autorización es "presentable" |
| GET | /autorizaciones | q\+s | Page\<AutorizacionOutput\> | CSP\-AUT\-E, CSP\-AUT\-V | Devuelve todas las Autorizaciones activas |
| DELETE | /autorizaciones/{id) | id: identificador de la Autorización | void | CSP\-AUT\-B, CSP\-AUT\-INV\-BR | Elimina la autorización correspondiente al id pasado por parámetro |
| GET | /autorizaciones/investigador | q\+s | Page\<AutorizacionOutput\> | CSP\-AUT\-INV\-C, CSP\-AUT\-INV\-ER | Devuelve una lista paginada y filtrada de  las Autorizaciones que puede visualizar un investigador |
| HEAD | /autorizaciones/{id}/vinculacionesnotificacionesproyectosexternos | id: identificador de la Autorización | void | CSP\-AUT\-E, CSP\-AUT\-INV\-C, CSP\-AUT\-INV\-ER, CSP\-AUT\-V | Comprueba si existen datos vinculados a Autorizacion de   NotificacionProyectoExternoCVN |
| GET | /autorizaciones/{id}/estados | id: identificador de la Autorización | Page\<EstadoAutorizacion\>\> | CSP\-AUT\-E , CSP\-AUT\-INV\-C , CSP\-AUT\-INV\-ER , CSP\-AUT\-V | Devuelve una lista paginada y filtrada de  los EstadoAutorizacion de la Autorización |
| GET | /autorizaciones/{id}/certificados | Id: identificador de la Autorización | Page\<CertificadoAutorizacion\> | CSP\-AUT\-E , CSP\-AUT\-INV\-C , CSP\-AUT\-INV\-ER , CSP\-AUT\-V | Devuelve una lista paginada y filtrada de  los CertificadoAutorizacion de la Autorización |
| GET | /autorizaciones/{id}/hascertificadoautorizacionvisible | Id: identificador de la Autorización | Void | CSP\-AUT\-E , CSP\-AUT\-INV\-C , CSP\-AUT\-INV\-ER , CSP\-AUT\-V | Comprueba si la Autorización tiene asociado algún CertificadoAutorizacion con el campo visible a 'true'. |
| GET | /autorizaciones/{id}/certificadoautorizacionvisible | Id: identificador de la Autorización | CertificadoAutorizacionOutput | CSP\-AUT\-INV\-ER | Devuelve el certificado autorizacion Visible de la autorizacion |
| GET | /autorizaciones/{id}/notificacionproyecto | Id: identificador de la Autorización | NotificacionProyectoExternoCVNOutput | CSP\-AUT\-E , CSP\-AUT\-INV\-C , CSP\-AUT\-INV\-ER , CSP\-AUT\-V | Devuelve una  NotificacionProyectoExternoCVN asociada a la autorizacion facilitada. |
| GET | /autorizaciones/{id}/convocatoria | Id: identificador de la Autorización | ConvocatoriaTituloOutput | CSP\-AUT\-INV\-ER | Devuelve la  Convocatoria asociada a la  Autorizacion}con el id indicado si el usuario que realiza la petición es el solicitante de la Autorizacion |
| GET | /autorizaciones/modificadas\-ids | q\+sLa query estará formada por:* fechaModificacion | Lista\[Long] |  | Listado de Identificadores de Autorizaciones cuyo estado actual sea "autorizada" y la fecha de dicho estado  sea igual o superior a la fecha recibida como parámetro de entrada.Ejemplo:* fechaModificacion\=ge\="2021\-08\-18T22:00:00Z" |

  


### NotificacionProyectoExternoCVN



| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| POST | /notificacionesproyectosexternoscvn | NotificacionProyecto |  | Recibe como parámetro los campos necesarios para crear un registro en el SGI de un proyecto notificado desde el CVNSe creará un registro en la tabla NotificacionProyectoExternoCVN con los siguientes valores:* proyectoCVNId: campo "proyectoCVNId" de la entidad pasada como parámetro "NotificacionProyecto". Dato obligatorio * solicitanteRef: campo "solicitanteRef" de la entidad pasada como parámetro "NotificacionProyecto". Dato obligatorio * autorizacionId: campo "autorizacionId" de la entidad pasada como parámetro "NotificacionProyecto" * titulo: campo "titulo" de la entidad pasada como parámetro "NotificacionProyecto". Dato obligatorio * codExterno: campo "codExterno" de la entidad pasada como parámetro "NotificacionProyecto" * fechaInicio: campo "fechaInicio" de la entidad pasada como parámetro "NotificacionProyecto". Dato obligatorio * fechaFin: campo "fechaFin" de la entidad pasada como parámetro "NotificacionProyecto". Dato obligatorio * ambitoGeografico: campo "ambitoGeografico" de la entidad pasada como parámetro "NotificacionProyecto" * gradoContribucion: campo "gradoContribucion" de la entidad pasada como parámetro "NotificacionProyecto" * responsableRef: campo "responsableRef" de la entidad pasada como parámetro "NotificacionProyecto" * datosResponsable: se cogerá el campo "datosResponsable" de la entidad pasada como parámetro "NotificacionProyecto" si "responsableRef" es null * entidadParticipacionRef: campo "entidadParticipacionRef" de la entidad pasada como parámetro "NotificacionProyecto" * datosEntidadParticipacion: se cogerá el campo "datosEntidadParticipacion" de la entidad pasada como parámetro "NotificacionProyecto" si "entidadParticipacionRef" es null * nombrePrograma: campo "nombrePrograma" de la entidad pasada como parámetro "NotificacionProyecto" * importeTotal: campo "importeTotal" de la entidad pasada como parámetro "NotificacionProyecto" * porcentajeSubvencion: campo "porcentajeSubvencion" de la entidad pasada como parámetro "NotificacionProyecto" * documentoRef: campo "documentRef" de la entidad pasada como parámetro "NotificacionProyecto" * urlDocumentoAcreditacion: campo "urlDocumentoAcreditacion" de la entidad pasada como parámetro "NotificacionProyecto"  Los campos obligatorios son: proyectoCVNId, solicitanteRef, titulo, fechaInicio y fechaFinPor cada registro de la lista "entidadesFinanciadoras" de la entidad pasada como paŕametro "NotificacionProyecto" crear un registro en la tabla "NotificacionCVNEntidadFinanciadora" con los campos:* entidadFinanciadoraRef: campo "entidadFinanciadoraRef" de la entidad pasada como parámetro "EntidadFinanciadora" dentro de la lista de "entidadesFinanciadoras" * datosEntidadFinanciadora: se cogerá el campo "datosEntidadFinanciadora" de la entidad pasada como parámetro "EntidadFinanciadora" dentro de la lista de "entidadesFinanciadoras" si el campo "entidadFinanciadoraRef" es null |

  


  





