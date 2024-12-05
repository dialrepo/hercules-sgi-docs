# Hércules : Solicitudes











## Sistema de Gestión Investigación

### Entidades



| Entidad | Descripción |
| --- | --- |
| Solicitud | Contiene los datos generales de una solicitud. |
| Estado | Contiene los datos del estado de una solicitud. |
| SolicitudProyecto | Contiene la extensión de datos para las solicitudes de tipo Proyecto. |
| AreaTematica | Contiene los datos de un área temática. |
| SolicitudAreaConocimiento | Contiene la relación entre una solicitud y un área de conocimiento para las solicitudes de tipo Proyecto. |
| SolicitudClasificacion | Contiene la relación entre una solicitud y una clasificación para las solicitudes de tipo Proyecto. |

### Enumerados



| Entidad | Descripción |
| --- | --- |
| TipoFormularioSolicitud | Puede tomar los siguientes valores:* PROYECTO * GRUPO * RRHH |
| TipoSolicitudGrupo | Puede tomar los siguientes valores:* MODIFICACION (Modificación grupo) * CONSTITUCION (Constitución de grupo) |
| TipoEstadoSolicitud | Puede tomar los siguientes valores:* ADMITIDA\_DEFINITIVA * ADMITIDA\_PROVISIONAL * ALEGACION\_FASE\_ADMISION * ALEGACION\_FASE\_PROVISIONAL * BORRADOR * CONCEDIDA * CONCEDIDA\_PROVISIONAL * CONCEDIDA\_PROVISIONAL\_ALEGADA * CONCEDIDA\_PROVISIONAL\_NO\_ALEGADA * DENEGADA * DENEGADA\_PROVISIONAL * DENEGADA\_PROVISIONAL\_ALEGADA * DENEGADA\_PROVISIONAL\_NO\_ALEGADA * DESISTIDA * EXCLUIDA\_DEFINITIVA * EXCLUIDA\_PROVISIONAL * FIRMADA * NEGOCIACION * PRESENTADA\_SUBSANACION * RECURSO\_FASE\_ADMISION * RECURSO\_FASE\_CONCESION * RENUNCIADA * RESERVA * RESERVA\_PROVISIONAL * SOLICITADA * SUBSANACION |
| TipoPresupuesto | Puede tomar los siguientes valores:* GLOBAL (El presupuesto del proyecto solicitado se indicará de manera global, sin distinguir el presupuesto para cada entidad financiadora) * INDIVIDUAL (Se detallará el presupuesto solicitado a cada una de las entidades financiadoras, tanto las entidades que participan en la convocatoria como e otras entidades ajenas a la convocatoria a las que se solicite financiación) * MIXTO (Se detallará un presupuesto único para todas las entidades financiadoras de la convocatoria y un presupuesto individual por cada entidad financiadora ajena a la convocatoria. El presupuesto de las entidades financiadoras de la convocatoria se asociará a la entidad que figure como entidad gestora de la convocatoria) |

### Modelo lógico

[CSP\-SOL \- Modelo lógico \- Diagrama](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=CSP-SOL+-+Modelo+l%C3%B3gico+-+Diagrama "/confluence/pages/createpage.action?spaceKey=TEMP001&title=CSP-SOL+-+Modelo+l%C3%B3gico+-+Diagrama")

### API

Características generales que todas las API REST deben de cumplir:

* [Consultas filtradas y paginadas](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=Consultas+filtradas+y+paginadas "/confluence/pages/createpage.action?spaceKey=TEMP001&title=Consultas+filtradas+y+paginadas")
* [Formatos de datos API](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=Formatos+de+datos+API "/confluence/pages/createpage.action?spaceKey=TEMP001&title=Formatos+de+datos+API")

#### Definición de los objetos

##### Solicitud



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| createdBy | String | Referencia al usuario creador del registro en los sistemas de la Universidad. |
| creationDate | Fecha \+ Hora | Fecha y hora de creación del registro.Formato UTC. |
| lastModifiedBy | String | Referencia al último usuario que modificó el registro en los sistemas de la Universidad. |
| lastModifiedDate | Fecha \+ Hora | Fecha y hora de creación del registro.Formato UTC. |
| id | Long | Identificador único de la solicitud |
| titulo | String | Título de la solicitud |
| convocatoriaId | Long | Identificador de la convocatoria a la que corresponde la solicitud. |
| codigoExterno | String | Código externo de la solicitud. Será el código de registro de la solicitud en la entidad convocante, en caso que la solicitud se haya registrado/presentado de forma paralela en la entidad convocante. |
| codigoRegistroInterno | String | Código de registro interno de la solicitud en el SGI. |
| estado | Estado | Estado actual de la solicitud. |
| creadorRef | String | Referencia al usuario creador de la solicitud en los sistemas de la Universidad. |
| solicitanteRef | String | Referencia a la persona solicitante de la solicitud en los sistemas de la Universidad. |
| observaciones | String | Observaciones relativas a la solicitud. |
| convocatoriaExterna | String | Código o referencia de la convocatoria externa (no registrada en el SGI) sobre la que se presenta la solicitud. |
| unidadGestionRef | String | Referencia a la unidad de gestión a la que corresponde la solicitud. |
| formularioSolicitud | String | Discrimina el tipo de solicitud. Toma un valor del enumerado TipoFormularioSolicitud. |
| tipoSolicitudGrupo | String | Subtipo de la solicitud en caso de que la solicitud sea de tipo grupo (valor del campo formularioSolicitud). Es un valor del enumerado TipoSolicitudGrupo. |
| activo | Booleano | Indicador de si la solicitud está activa o no en el SGI. |



**Solicitud** Ampliar origen



```
{
	"createdBy": null,
	"creationDate": null,
	"lastModifiedBy": "03839481",
	"lastModifiedDate": "2022-03-30T13:12:07.166Z",
	"id": 1,
	"titulo": "Solicitud 1",
	"convocatoriaId": 1,
	"codigoExterno": "COD-001",
	"codigoRegistroInterno": "SGI_SLC1202102011617",
	"estado": {
		"createdBy": "03839481",
		"creationDate": "2022-03-30T13:12:04.440Z",
		"lastModifiedBy": "03839481",
		"lastModifiedDate": "2022-03-30T13:12:04.440Z",
		"id": 8,
		"solicitudId": 1,
		"estado": "CONCEDIDA",
		"fechaEstado": "2022-03-30T13:12:01.304Z",
		"comentario": ""
	},
	"creadorRef": "09020119",
	"solicitanteRef": "01889311",
	"observaciones": "",
	"convocatoriaExterna": "",
	"unidadGestionRef": "3",
	"formularioSolicitud": "PROYECTO",
	"tipoSolicitudGrupo": null,
	"activo": true
}
```


##### Estado



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| createdBy | String | Referencia al usuario creador del registro en los sistemas de la Universidad. |
| creationDate | Fecha \+ Hora | Fecha y hora de creación del registro.Formato UTC. |
| lastModifiedBy | String | Referencia al último usuario que modificó el registro en los sistemas de la Universidad. |
| lastModifiedDate | Fecha \+ Hora | Fecha y hora de creación del registro.Formato UTC. |
| id | Long | Identificador único del estado de la solicitud. |
| solicitudId | Long | Referencia a la solicitud a la que corresponde el estado. |
| estado | String | Estado de la solicitud. Toma un valor del enumerado TipoEstadoSolicitud. |
| fechaEstado | Fecha \+ Hora | Fecha en la que la solicitud alcanza el estado.Formato UTC. |
| comentario | String | Comentario incluido al realizar el cambio de estado. |



**Estado** Ampliar origen



```
{
	"createdBy": "03839481",
	"creationDate": "2022-03-30T13:12:04.440Z",
	"lastModifiedBy": "03839481",
	"lastModifiedDate": "2022-03-30T13:12:04.440Z",
	"id": 8,
	"solicitudId": 1,
	"estado": "CONCEDIDA",
	"fechaEstado": "2022-03-30T13:12:01.304Z",
	"comentario": ""
}
```


##### SolicitudProyecto



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| createdBy | String | Referencia al usuario creador del registro en los sistemas de la Universidad. |
| creationDate | Fecha \+ Hora | Fecha y hora de creación del registro.Formato UTC. |
| lastModifiedBy | String | Referencia al último usuario que modificó el registro en los sistemas de la Universidad. |
| lastModifiedDate | Fecha \+ Hora | Fecha y hora de creación del registro.Formato UTC. |
| id | Long | Identificador único de la solicitud. |
| acronimo | String | Acrónimo del proyecto solicitado. |
| codExterno | String | Código alfanumérico que la entidad convocante asigna al proyecto solicitado. A partir de este campo se informa el campo "código externo" de la tabla "proyecto" (modelo lógico CSP Proyecto). |
| duracion | Numérico entero | Duración del proyecto solicitado expresada en meses. |
| colaborativo | Booleano | Indica si un proyecto coordinado es además colaborativo (alguno de los socios participantes es una empresa privada). |
| coordinadorExterno | Booleano | Indica qué socio (entidad) actuará como coordinador del proyecto solicitado. Un valor "false" indica que será la propia Universidad quien actuará en calidad de coordinador del proyecto. Un valor "true" indicará que el coordinador será uno de los socios que participará en el proyecto. |
| coordinado | Booleano | Indica si el proyecto se realizará de forma coordinada con otros socios. Un valor "true" en este campo activará la disponibilidad de los campos: * coordinador externo * colaborativo * y del apartado "socios proyecto" |
| objetivos | String | Objetivos del proyecto solicitado. |
| intereses | String | Intereses perseguidos con el proyecto solicitado. |
| resultadosPrevistos | String | Resultados esperados del proyecto. |
| areaTematica | AreaTematica | Área temática con la que se vincula el proyecto solicitado. |
| checklistRef | String | Identificador o referencia del registro de autoevaluación de ética. |
| peticionEvaluacionRef | String | Identificador o referencia de la solicitud de petición de evaluación de ética creada a partir de la solicitud del proyecto de investigación. |
| tipoPresupuesto | String | Indica la forma en la que se va a detallar el presupuesto del proyecto solicitado. Toma un valor del enumerado TipoPresupuesto. |
| importeSolicitado | BigDecimal | Importe que se solicita a las entidades financiadoras para el proyecto solicitado correspondiente únicamente a la Universidad (no al resto de socios) y asociado a conceptos de gasto que no representan costes indirectos. Este valor está desvinculado del presupuesto detallado del proyecto solicitado que se haya podido introducir. El campo es de utilidad en caso de el usuario prefiera no introducir el detalle del presupuesto. |
| importeSolicitadoCostesIndirectos | BigDecimal | Importe que se solicita a las entidades financiadoras para el proyecto solicitado correspondiente únicamente a la Universidad (no al resto de socios) y asociado a conceptos de gasto que representan costes indirectos. Este valor está desvinculado del presupuesto detallado del proyecto solicitado que se haya podido introducir. El campo es de utilidad en caso de el usuario prefiera no introducir el detalle del presupuesto. |
| importePresupuestado | BigDecimal | Importe presupuestado para el proyecto solicitado correspondiente únicamente a la Universidad (no al resto de socios) y asociado a conceptos de gasto que no representan costes indirectos. Este valor está desvinculado del presupuesto detallado del proyecto solicitado que se haya podido introducir. El campo es de utilidad en caso de el usuario prefiera no introducir el detalle del presupuesto. |
| importePresupuestadoCostesIndirectos | BigDecimal | Importe presupuestado para el proyecto solicitado correspondiente únicamente a la Universidad (no al resto de socios) y asociado a conceptos de gasto que representan costes indirectos. Este valor está desvinculado del presupuesto detallado del proyecto solicitado que se haya podido introducir. El campo es de utilidad en caso de el usuario prefiera no introducir el detalle del presupuesto.) |
| importeSolicitadoSocios | BigDecimal | Es el importe que se solicita a las entidades financiadoras para el proyecto solicitado de manera global por el resto socios (adicionales a la Universidad) que participarán en el proyecto. Es un valor desvinculado de la información que podría haberse introducido de manera individual para cada uno de los socios. Este campo es de utilidad en caso de que el usuario prefiera no indicar el desglose del importe para cada uno de los socios. |
| importePresupuestadoSocios | BigDecimal | Es el importe presupuestado para el proyecto solicitado para el total del resto socios (adicionales a la Universidad) que participarán en el proyecto. Es un valor desvinculado de la información que podría haberse introducido de manera individual para cada uno de los socios. Este campo es de utilidad en caso de que el usuario prefiera no indicar el desglose del importe para cada uno de los socios. |
| totalImporteSolicitado | BigDecimal | Es el importe total que se solicita a las entidades financiadoras para el proyecto solicitado incluyendo tanto el presupuesto de la Universidad como el del resto de socios participantes. Este valor está desvinculado del presupuesto detallado del proyecto que se hubiera podido introducir. El campo es de utilidad en caso de el usuario prefiera no introducir el detalle del presupuesto |
| totalImportePresupuestado | BigDecimal | Es el importe total presupuestado para el proyecto solicitado incluyendo tanto el presupuesto de la Universidad como el del resto de socios participantes. Este valor está desvinculado del presupuesto detallado del proyecto que se hubiera podido introducir. El campo es de utilidad en caso de el usuario prefiera no introducir el detalle del presupuesto. |



**SolicitudProyecto** Ampliar origen



```
{
    "createdBy": null,
    "creationDate": null,
    "lastModifiedBy": "03839481",
    "lastModifiedDate": "2022-05-12T12:47:56.671Z",
    "id": 3,
    "acronimo": "PS1OPE1",
    "codExterno": null,
    "duracion": 36,
    "colaborativo": true,
    "coordinadorExterno": false,
    "coordinado": true,
    "objetivos": null,
    "intereses": null,
    "resultadosPrevistos": null,
    "areaTematica": {
        "createdBy": null,
        "creationDate": null,
        "lastModifiedBy": null,
        "lastModifiedDate": null,
        "id": 63,
        "nombre": "BMC",
        "descripcion": "Biología molecular y celular",
        "padre": {
            "createdBy": null,
            "creationDate": null,
            "lastModifiedBy": null,
            "lastModifiedDate": null,
            "id": 61,
            "nombre": "BIO",
            "descripcion": "Biociencias y biotecnología",
            "padre": {
                "createdBy": null,
                "creationDate": null,
                "lastModifiedBy": null,
                "lastModifiedDate": null,
                "id": 1,
                "nombre": "AEI",
                "descripcion": "Estructura de áreas y paneles científico técnicos de la Agencia Estatal de Investigación",
                "padre": null,
                "activo": true
            },
            "activo": true
        },
        "activo": true
    },
    "checklistRef": "6",
    "peticionEvaluacionRef": "19",
    "tipoPresupuesto": "GLOBAL",
    "importeSolicitado": null,
    "importeSolicitadoCostesIndirectos": null,
    "importePresupuestado": null,
    "importePresupuestadoCostesIndirectos": null,
    "importeSolicitadoSocios": null,
    "importePresupuestadoSocios": null,
    "totalImporteSolicitado": null,
    "totalImportePresupuestado": null
}
```


##### PalabraClave



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | Long | Identificador único autogenerado de la palabra clave. |
| solicitudId | Long | Identificador de la solicitud a la que se asocia la palabra clave. |
| palabraClaveRef | String | Referencia a la palabra clave. Coincide con el texto de la palabra clave por ser único en el diccionario de todo el SGI. |



**PalabraClave** Ampliar origen



```
{
	"id": 12,	
	"solicitudId": 1,
	"palabraClaveRef": "Tratamiento experimental"
}
```


##### AreaTematica



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| createdBy | String | Referencia al usuario creador del registro en los sistemas de la Universidad. |
| creationDate | Fecha \+ Hora | Fecha y hora de creación del registro.Formato UTC. |
| lastModifiedBy | String | Referencia al último usuario que modificó el registro en los sistemas de la Universidad. |
| lastModifiedDate | Fecha \+ Hora | Fecha y hora de creación del registro.Formato UTC. |
| id | Long | Identificador único del área temática. |
| nombre | String | Nombre del área temática. Será el campo mostrado en los árboles y tablas donde se presente. |
| descripcion | String | Descripción del área temática. |
| padre | AreaTematica | Área temática padre en el caso de que disponga de uno (si no es un nodo raíz). |
| activo | Booleano | Indicador de si el área temática está activa o no en el SGI. |



**AreaTematica** Ampliar origen



```
{
    "createdBy": null,
    "creationDate": null,
    "lastModifiedBy": null,
    "lastModifiedDate": null,
    "id": 63,
    "nombre": "BMC",
    "descripcion": "Biología molecular y celular",
    "padre": {
        "createdBy": null,
        "creationDate": null,
        "lastModifiedBy": null,
        "lastModifiedDate": null,
        "id": 61,
        "nombre": "BIO",
        "descripcion": "Biociencias y biotecnología",
        "padre": {
            "createdBy": null,
            "creationDate": null,
            "lastModifiedBy": null,
            "lastModifiedDate": null,
            "id": 1,
            "nombre": "AEI",
            "descripcion": "Estructura de áreas y paneles científico técnicos de la Agencia Estatal de Investigación",
            "padre": null,
            "activo": true
        },
        "activo": true
    },
    "activo": true
}
```


##### SolicitudAreaConocimiento



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| createdBy | String | Referencia al usuario creador del registro en los sistemas de la Universidad. |
| creationDate | Fecha \+ Hora | Fecha y hora de creación del registro.Formato UTC. |
| lastModifiedBy | String | Referencia al último usuario que modificó el registro en los sistemas de la Universidad. |
| lastModifiedDate | Fecha \+ Hora | Fecha y hora de creación del registro.Formato UTC. |
| id | Long | Identificador único del estado de la solicitud. |
| solicitudProyectoId | Long | Referencia a la extensión de información para una solicitud de tipo proyecto. |
| areaConocimientoRef | String | Referencia al área de conocimiento en los sistemas de la Universidad. |



**SolicitudAreaConocimiento** Ampliar origen



```
 {
    "createdBy": "03839481",
    "creationDate": "2022-05-12T12:30:48.741Z",
    "lastModifiedBy": "03839481",
    "lastModifiedDate": "2022-05-12T12:30:48.741Z",
    "id": 7,
    "solicitudProyectoId": 3,
	"areaConocimientoRef": "030"
}
```


##### SolicitudClasificacion



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| createdBy | String | Referencia al usuario creador del registro en los sistemas de la Universidad. |
| creationDate | Fecha \+ Hora | Fecha y hora de creación del registro.Formato UTC. |
| lastModifiedBy | String | Referencia al último usuario que modificó el registro en los sistemas de la Universidad. |
| lastModifiedDate | Fecha \+ Hora | Fecha y hora de creación del registro.Formato UTC. |
| id | Long | Identificador único del estado de la solicitud. |
| solicitudProyectoId | Long | Referencia a la extensión de información para una solicitud de tipo proyecto. |
| clasificacionRef | String | Referencia a la clasificación en los sistemas de la Universidad o en el SGI, según el caso. |



**SolicitudClasificacion** Ampliar origen



```
{
	"createdBy": "03839481",
    "creationDate": "2022-05-12T12:23:55.643Z",
    "lastModifiedBy": "03839481",
    "lastModifiedDate": "2022-05-12T12:23:55.643Z",
    "id": 3,
    "solicitudProyectoId": 3,
    "clasificacionRef": "2576"
}
```


#### Servicios

Para componer la URL llamada completa, se debe anteponer a lo indicado en la columna URL lo siguiente: **{HOST}/api/sgicsp**, donde **{HOST}** de deberá sustituir el dominio correspondiente al entorno al que se está accediendo y dicho acceso será por http o https según el caso.#### Consultar solicitudes



| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| GET | /solicitudes | q\+s (query \+ sort)La query estará formada por:* cualquiera de los campos del objeto Solicitud | Lista\[Solicitud] | Listado de solicitudes.*Ejemplo*:/solicitudes/todos?q\=formularioSolicitud\=\=PROYECTO;codigoExterno\=ik\=COD;solicitanteRef\=\=01889311 |
| GET | /solicitudes/{id} |  | Solicitud | Detalle de la solicitud.*Ejemplo*:/solicitud/1 |
| GET | /solicitudproyecto/{id} |  | SolicitudProyecto | Detalle extendido de la solicitud con los datos generales adicionales para las solicitudes de tipo proyecto.*Ejemplo*:/solicitudproyecto/1 |
| GET | /solicitudes/{id}/palabrasclave |  | Lista\[PalabraClave] | Listado de palabras clave de una solicitud de tipo proyecto. |
|  | | | | |
| GET | /solicitudes/{id}/solicitud\-proyecto\-areas\-conocimiento |  | Lista\[SolicitudAreaConocimiento] | Listado de las áreas de conocimiento de la solicitud. |
| GET | /solicitudes/{id}/solicitud\-proyecto\-clasificaciones |  | Lista\[SolicitudClasificacion] | Listado de las clasificaciones de la solicitud. |
| GET | /solicitudes/eliminadas\-ids | q\+sLa query estará formada por:* fechaEliminacion | Lista\[Long] | Listado de Identificadores de Solicitudes que han sido eliminadas (campo activo \= false) a partir de una fecha.Se utilizará el siguiente parámetro en la llamada al servicio:* fechaEliminacion: se le pasará la fecha a partir de la cual se quieren ver las solicitudes eliminadas o bien un rango entre las que se quiere buscar  Ejemplo1:* fechaEliminacion\=ge\="2024\-01\-01T22:00:00Z";  Ejemplo2:* fechaEliminacion\=ge\="2024\-01\-01T22:00:00Z";fechaEliminacion\=le\="2024\-12\-31T22:00:00Z" |




