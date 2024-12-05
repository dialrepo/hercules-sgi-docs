# Hércules : ESB \- SGI \- Convocatorias











## Sistema de Gestión Investigación

### Entidades



| Entidad | Descripción |
| --- | --- |
| Convocatoria | Contiene los datos generales de una convocatoria. |
| AreaTematica | Contiene los datos generales de las áreas temáticas que se pueden relacionar con las convocatorias. |
| ConvocatoriaAreaTematica | Contiene los datos de la asociación de un área temática con una convocatoria. |
| ConvocatoriaDocumento | Contiene los datos de la asociación de un documento con una convocatoria. |
| ConvocatoriaEntidadConvocante | Contiene los datos de la asociación de una entidad convocante con una convocatoria. |
| ConvocatoriaEntidadFinanciadora | Contiene los datos de la asociación de una entidad financiadora con una convocatoria. |
| Documento | Contiene los datos de un documento. |
| FuenteFinanciacion | Contiene los datos de una fuente de financiación. |
| ModeloEjecucion | Contiene los datos de un modelo de ejecución. |
| ModeloTipoDocumento | Contiene los datos de la asociación de un tipo de documento con un modelo de ejecución. |
| ModeloTipoFase | Contiene los datos de la asociación de un tipo de fase con un modelo de ejecución. |
| ModeloUnidad | Contiene los datos de la asociación de una unidad de gestión con un modelo de ejecución. |
| Programa | Contiene los datos de un programa. |
| TipoFinanciacion | Contiene los datos de un tipo de financiación. |
| UnidadGestion | Contiene los datos de una unidad de gestión. |

### Modelo lógico

[CSP \- CONV \- Modelo lógico](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-csp/csp-con-convocatorias/csp-con-modelo-logico-diagrama.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-csp/csp-con-convocatorias/csp-con-modelo-logico-diagrama.md")

### API

Características generales que todas las API REST deben de cumplir:

* [Consultas filtradas y paginadas](/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/consultas-filtradas-y-paginadas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/consultas-filtradas-y-paginadas.md")
* [Formatos de datos API](/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/formatos-de-datos-api.md "/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/formatos-de-datos-api.md")

#### Definición de los objetos

##### Convocatoria



| **Nombre** | **Tipo** | **Requerido (alta/modificación)** | **Descripción** |
| --- | --- | --- | --- |
| unidadGestionRef | String | (tic) | Identificador de la unidad de gestión |
| titulo | String | (tic) | Titulo de la convocatoria |
| formularioSolicitud | String \[PROYECTO, GRUPO] | (tic) | Tipo de solicitud SGI |
| modeloEjecucion | ModeloEjecucion |  | Modelo de ejecución |
| fechaProvisional | String |  | Fecha provisional |
| observaciones | String |  | Observaciones de la convocatoria |



**Convocatoria request datos mínimos** Ampliar origen



```
{
	"unidadGestionRef": "1",
	"titulo": "Titulo",
	"formularioSolicitud": "PROYECTO",
    "modeloEjecucion": {
        "id": 2
    },
    "fechaProvisional": "2022-03-18T23:00:00Z",
    "observaciones": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas metus leo, aliquam consectetur elementum at, iaculis ac nunc."
}
```




**Convocatoria response** Ampliar origen



```
{
    "createdBy": "03839481",
    "creationDate": "2022-03-30T14:29:13.529Z",
    "lastModifiedBy": "03839481",
    "lastModifiedDate": "2022-03-30T14:29:13.529Z",
    "id": 8,
    "unidadGestionRef": "1",
    "modeloEjecucion": {
        "createdBy": null,
        "creationDate": null,
        "lastModifiedBy": null,
        "lastModifiedDate": null,
        "id": 2,
        "nombre": "Facturación",
        "descripcion": "Facturación",
        "activo": true,
        "externo": false,
        "contrato": true
    },
    "codigo": null,
    "fechaPublicacion": null,
    "fechaProvisional": "2022-03-18T23:00:00Z",
    "fechaConcesion": null,
    "titulo": "Titulo",
    "objeto": null,
    "observaciones": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas metus leo, aliquam consectetur elementum at, iaculis ac nunc.",
    "finalidad": null,
    "regimenConcurrencia": null,
    "estado": "BORRADOR",
    "duracion": null,
    "ambitoGeografico": null,
    "clasificacionCVN": null,
    "activo": true,
    "excelencia": null,
    "formularioSolicitud": "PROYECTO"
}
```


##### AreaTematica



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador único del área temática. |
| nombre | String | Nombre del área temática a presentar por pantalla en los componentes visuales árbol o selector. |
| descripcion | String | Descripción del área temática. |
| padre | Long | Identificador del área temática de la que depende jerárquicamente, del padre. Si está nulo, se entiende que el área temática es raíz o de primer nivel, no tiene área temática padre. |
| activo | Boolean | Indica si el área temática está activa o no. |



**AreaTematica** Ampliar origen



```
{
	"createdBy": null,
	"creationDate": null,
	"lastModifiedBy": null,
	"lastModifiedDate": null,
	"id": 10,
	"nombre": "EYA",
	"descripcion": "Economía y sus aplicaciones",
	"padre": {
		"createdBy": null,
		"creationDate": null,
		"lastModifiedBy": null,
		"lastModifiedDate": null,
		"id": 9,
		"nombre": "ECO",
		"descripcion": "Economía",
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


##### ConvocatoriaAreaTematica



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | Long | Identificador |
| convocatoriaId | Long | Identificador de la convocatoria |
| areaTematica | AreaTematica | Área temática |
| observaciones | String | Observaciones |



**ConvocatoriaAreaTematica** Ampliar origen



```
{
	"createdBy": "03839481",
	"creationDate": "2022-03-28T15:58:44.678Z",
	"lastModifiedBy": "03839481",
	"lastModifiedDate": "2022-03-28T15:58:44.678Z",
	"id": 3,
	"convocatoriaId": 5,
	"areaTematica": {
		"createdBy": null,
		"creationDate": null,
		"lastModifiedBy": null,
		"lastModifiedDate": null,
		"id": 10,
		"nombre": "EYA",
		"descripcion": "Economía y sus aplicaciones",
		"padre": {
			"createdBy": null,
			"creationDate": null,
			"lastModifiedBy": null,
			"lastModifiedDate": null,
			"id": 9,
			"nombre": "ECO",
			"descripcion": "Economía",
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
	"observaciones": null
}
```


##### ConvocatoriaDocumento



| **Nombre** | **Tipo** | **Requerido** | **Descripción** |
| --- | --- | --- | --- |
| convocatoriaId | Long | (tic) | Identificador de la convocatoria |
| nombre | String | (tic) | Nombre del documento |
| documentoRef | String | (tic) | Identificador del documento en el sgdoc |
| tipoFase | TipoFase |  | Tipo de fase |
| tipoDocumento | TipoDocumento |  | Tipo de documento |
| publico | Boolean |  | Indica si es un documento publico |
| observaciones | String |  | Observaciones del documento |



**ConvocatoriaDocumento** Ampliar origen



```
{
	"convocatoriaId": 5,
	"nombre": "Documento",
	"documentoRef": "f86ec1c0-5f9d-4dc7-8a51-a6c5aa306ada",
	"tipoFase": {
		"id": 1
	},
	"tipoDocumento": {
		"id": 13
	},
	"publico": true,
	"observaciones": "Observaciones"
}
```


##### ConvocatoriaEntidadConvocante



| **Nombre** | **Tipo** | **Requerido** | **Descripción** |
| --- | --- | --- | --- |
| id | Long |  | Identificador |
| convocatoriaId | Long | (tic) | Identificador de la convocatoria |
| entidadRef | String | (tic) | Identificador de la empresa |
| programa | Programa |  | Programa |



**ConvocatoriaEntidadConvocante** Ampliar origen



```
{
    "createdBy": "03839481",
    "creationDate": "2022-03-04T08:26:13.329Z",
    "lastModifiedBy": "03839481",
    "lastModifiedDate": "2022-03-04T08:26:13.329Z",
    "id": 65,
    "convocatoriaId": 97,
    "entidadRef": "00071039",
    "programa": {
        "createdBy": null,
        "creationDate": null,
        "lastModifiedBy": null,
        "lastModifiedDate": null,
        "id": 82,
        "nombre": "msca",
        "descripcion": null,
        "padre": {
            "createdBy": null,
            "creationDate": null,
            "lastModifiedBy": null,
            "lastModifiedDate": null,
            "id": 81,
            "nombre": "ciencia excelente",
            "descripcion": null,
            "padre": {
                "createdBy": null,
                "creationDate": null,
                "lastModifiedBy": null,
                "lastModifiedDate": null,
                "id": 80,
                "nombre": "H2020",
                "descripcion": "",
                "padre": null,
                "activo": true
            },
            "activo": true
        },
        "activo": true
    }
}
```


##### ConvocatoriaEntidadFinanciadora



| **Nombre** | **Tipo** | **Requerido** | **Descripción** |
| --- | --- | --- | --- |
| convocatoriaId | Long | (tic) | Identificador de la convocatoria |
| entidadRef | String | (tic) | Identificador de la empresa |
| fuenteFinanciacion | FuenteFinanciacion |  | Fuente de financiación |
| tipoFinanciacion | TipoFinanciacion |  | Tipo de financiación |
| porcentajeFinanciacion | Long |  | Porcentaje de financiación |
| importeFinanciacion | Long |  | Importe de financiación |



**ConvocatoriaEntidadFinanciadora** Ampliar origen



```
{
	"entidadRef": "00071039",
	"convocatoriaId": 1,
	"fuenteFinanciacion": {
		"id": 4
	},
	"tipoFinanciacion": {
		"id": 3
	},
	"porcentajeFinanciacion": 50,
	"importeFinanciacion": 60000
}
```


##### PalabraClave



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | Long | Identificador único autogenerado de la palabra clave. |
| convocatoriaId | Long | Identificador de la convocatoria a la que se asocia la palabra clave. |
| palabraClaveRef | String | Referencia a la palabra clave. Coincide con el texto de la palabra clave por ser único en el diccionario de todo el SGI. |



**PalabraClave** Ampliar origen



```
{
	"id": 12,	
	"convocatoriaId": 1,
	"palabraClaveRef": "Tratamiento experimental"
}
```


##### Documento



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| documentoRef | String | Identificador del documento |
| nombre | String | Nombre del documento |
| version | Long | Versión del documento |
| fechaCreacion | String | Fecha de creación |
| tipo | String | Tipo de fichero |
| autorRef | String | Autor |



**Documento** Ampliar origen



```
{
    "documentoRef": "6712829d-ea85-4b10-be25-5130dbb264fa",
    "nombre": "archivo4.pdf",
    "version": 1,
    "fechaCreacion": "2022-03-07T10:15:52.527",
    "tipo": "application/pdf",
    "autorRef": "anonymous"
}
```


##### FuenteFinanciacion



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | Long | Identificador de la fuente de financiación |
| nombre | String | Nombre de la fuente de financiación |
| descripcion | String | Descripción de la fuente de financiación |
| fondoEstructural | Boolean | Indica si es un fondo estructural |
| tipoAmbitoGeografico | TipoAmbitoGeografico | Tipo de ámbito geográfico |
| tipoOrigenFuenteFinanciacion | TipoOrigenFuenteFinanciacion | Tipo de origen de la fuente de financiación |
| activo | Boolean | Indica si esta activo o no |



**FuenteFinanciacion** Ampliar origen



```
{
	"id": 4,
	"nombre": "Horizonte 2020",
	"descripcion": null,
	"fondoEstructural": true,
	"tipoAmbitoGeografico": {
		"id": 5,
		"nombre": "Europeo"
	},
	"tipoOrigenFuenteFinanciacion": {
		"id": 1,
		"nombre": "Público"
	},
	"activo": true
}
```


##### ModeloEjecucion



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | Long | Identificador del modelo de ejecución. |
| createdBy | String | Nombre del usuario que ha creado la entidad. |
| creationDate | String | Fecha de la creación de la entidad. |
| lastModifiedBy | String | Nombre del usuario que ha modificado por última vez la entidad. |
| lastModifiedDate | String | Fecha de la última modificación de la entidad. |
| nombre | String | Nombre |
| descripcion | String | Descricpión |
| externo | Boolean | Indica si la participación del personal investigador del proyecto o contrato se realizará a través de una entidad externa |
| contrato | Boolean | Indica si es un modelo de ejecución para Contrato / Convenio |
| activo | Boolean | Indica si esta activo o no |



**ModeloEjecucion** Ampliar origen



```
{
	"createdBy": null,
	"creationDate": null,
	"lastModifiedBy": null,
	"lastModifiedDate": null,
	"id": 2,
	"nombre": "Facturación",
	"descripcion": "Facturación",
	"activo": true,
	"externo": false,
	"contrato": true
}
```


##### ModeloTipoDocumento



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | Long | Identificador del modelo tipo documento. |
| createdBy | String | Nombre del usuario que ha creado la entidad. |
| creationDate | String | Fecha de la creación de la entidad. |
| lastModifiedBy | String | Nombre del usuario que ha modificado por última vez la entidad. |
| lastModifiedDate | String | Fecha de la última modificación de la entidad. |
| tipoDocumento | TipoDocumetno | Tipo de documento |
| modeloEjecucion | ModeloEjecucion | El modelo de ejecución |
| modeloTipoFase | ModeloTipoFase | El modelo tipo fase |
| activo | Boolean | Indica si esta activo o no |



**ModeloTipoDocumento** Ampliar origen



```
    {
    	"createdBy": null,
    	"creationDate": null,
    	"lastModifiedBy": null,
    	"lastModifiedDate": null,
    	"id": 12,
    	"tipoDocumento": {
    		"createdBy": null,
    		"creationDate": null,
    		"lastModifiedBy": null,
    		"lastModifiedDate": null,
    		"id": 13,
    		"nombre": "CVA",
    		"descripcion": null,
    		"activo": true
    	},
    	"modeloEjecucion": {
    		"createdBy": null,
    		"creationDate": null,
    		"lastModifiedBy": null,
    		"lastModifiedDate": null,
    		"id": 1,
    		"nombre": "Subvención",
    		"descripcion": "Subvención",
    		"activo": true,
    		"externo": false,
    		"contrato": false
    	},
    	"modeloTipoFase": {
    		"createdBy": null,
    		"creationDate": null,
    		"lastModifiedBy": null,
    		"lastModifiedDate": null,
    		"id": 2,
    		"tipoFase": {
    			"createdBy": null,
    			"creationDate": null,
    			"lastModifiedBy": null,
    			"lastModifiedDate": null,
    			"id": 1,
    			"nombre": "Presentación interna solicitudes",
    			"descripcion": null,
    			"activo": true
    		},
    		"modeloEjecucion": {
    			"createdBy": null,
    			"creationDate": null,
    			"lastModifiedBy": null,
    			"lastModifiedDate": null,
    			"id": 1,
    		},
    		"solicitud": false,
    		"convocatoria": true,
    		"proyecto": false,
    		"activo": true
    	},
    	"activo": true
    }
```


##### ModeloTipoFase



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | Long | Identificador del modelo tipo fase. |
| createdBy | String | Nombre del usuario que ha creado la entidad. |
| creationDate | String | Fecha de la creación de la entidad. |
| lastModifiedBy | String | Nombre del usuario que ha modificado por última vez la entidad. |
| lastModifiedDate | String | Fecha de la última modificación de la entidad. |
| tipoFase | TipoFase | Tipo fase |
| modeloEjecucion | ModeloEjecucion | El modelo de ejecución |
| solicitud | Boolean | Indica si se puede usar en solicitudes |
| convocatoria | Boolean | Indica si se puede usar en convocatorias |
| proyecto | Boolean | Indica si se puede usar en proyectos |
| activo | Boolean | Indica si esta activo o no |



**ModeloTipoFase** Ampliar origen



```
{
	"createdBy": null,
	"creationDate": null,
	"lastModifiedBy": null,
	"lastModifiedDate": null,
	"id": 2,
	"tipoFase": {
		"createdBy": null,
		"creationDate": null,
		"lastModifiedBy": null,
		"lastModifiedDate": null,
		"id": 1,
		"nombre": "Presentación interna solicitudes",
		"descripcion": null,
		"activo": true
	},
	"modeloEjecucion": {
		"createdBy": null,
		"creationDate": null,
		"lastModifiedBy": null,
		"lastModifiedDate": null,
		"id": 1,
		"nombre": "Subvención",
		"descripcion": "Subvención",
		"activo": true,
		"externo": false,
		"contrato": false
	},
	"solicitud": false,
	"convocatoria": true,
	"proyecto": false,
	"activo": true
}
```


##### ModeloUnidad



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | Long | Identificador del modelo unidad. |
| createdBy | String | Nombre del usuario que ha creado la entidad. |
| creationDate | String | Fecha de la creación de la entidad. |
| lastModifiedBy | String | Nombre del usuario que ha modificado por última vez la entidad. |
| lastModifiedDate | String | Fecha de la última modificación de la entidad. |
| unidadGestionRef | String | Identificador de la unidad de gestión |
| modeloEjecucion | ModeloEjecucion | El modelo de ejecución |
| activo | Boolean | Indica si esta activo o no |



**ModeloUnidad** Ampliar origen



```
{
	"createdBy": null,
	"creationDate": null,
	"lastModifiedBy": null,
	"lastModifiedDate": null,
	"id": 4,
	"unidadGestionRef": "1",
	"modeloEjecucion": {
		"createdBy": null,
		"creationDate": null,
		"lastModifiedBy": null,
		"lastModifiedDate": null,
		"id": 2,
		"nombre": "Facturación",
		"descripcion": "Facturación",
		"activo": true,
		"externo": false,
		"contrato": true
	},
	"activo": true
}
```


##### Programa



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador del programa. |
| createdBy | String | Nombre del usuario que ha creado la entidad. |
| creationDate | String | Fecha de la creación de la entidad. |
| lastModifiedBy | String | Nombre del usuario que ha modificado por última vez la entidad. |
| lastModifiedDate | String | Fecha de la última modificación de la entidad. |
| nombre | String | Nombre del programa. |
| descripcion | String | Descripción del programa. |
| padre | Programa | Entidad que representa el programa padre |



**Convocatoria** Ampliar origen



```
{
	"createdBy": null,
	"creationDate": null,
	"lastModifiedBy": null,
	"lastModifiedDate": null,
	"id": 81,
	"nombre": "ciencia excelente",
	"descripcion": null,
	"padre": {
		"createdBy": null,
		"creationDate": null,
		"lastModifiedBy": null,
		"lastModifiedDate": null,
		"id": 80,
		"nombre": "H2020",
		"descripcion": "",
		"padre": null,
		"activo": true
	},
	"activo": true
}
```


##### TipoFinanciacion



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | Long | Identificador del tipo de financiacion. |
| createdBy | String | Nombre del usuario que ha creado la entidad. |
| creationDate | String | Fecha de la creación de la entidad. |
| lastModifiedBy | String | Nombre del usuario que ha modificado por última vez la entidad. |
| lastModifiedDate | String | Fecha de la última modificación de la entidad. |
| nombre | String | Nombre del tipo de financiación |
| descripcion | String | Descripción del tipo de financiación |
| activo | Boolean | Indica si esta activo o no |



**TipoFinanciacion** Ampliar origen



```
{
	"createdBy": null,
	"creationDate": null,
	"lastModifiedBy": null,
	"lastModifiedDate": null,
	"id": 3,
	"nombre": "Facturación",
	"descripcion": null,
	"activo": true
}
```


##### UnidadGestion



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | Long | Identificador de la unidad de gestión. |
| createdBy | String | Nombre del usuario que ha creado la entidad. |
| creationDate | String | Fecha de la creación de la entidad. |
| lastModifiedBy | String | Nombre del usuario que ha modificado por última vez la entidad. |
| lastModifiedDate | String | Fecha de la última modificación de la entidad. |
| nombre | String | Nombre de la unidad de gestión |
| acronimo | String | Acronimo de la unidad de gestión |
| descripcion | String | Descripción de la unidad de gestión |
| activo | Boolean | Indica si esta activa o no |



**UnidadGestion** Ampliar origen



```
{
	"createdBy": null,
	"creationDate": null,
	"lastModifiedBy": null,
	"lastModifiedDate": null,
	"id": 1,
	"nombre": "OTRI",
	"acronimo": "OTRI",
	"descripcion": "Oficina de Transferencia de Resultados de Investigación",
	"activo": true
}
```


#### Servicios

Para componer la URL llamada completa, se debe anteponer a lo indicado en la columna URL lo siguiente: **{HOST}/api/sgicsp**, donde **{HOST}** de deberá sustituir el dominio correspondiente al entorno al que se está accediendo y dicho acceso será por http o https según el caso.

Se definen en primer lugar una lista de servicios organizados paso a paso para llevar a cabo el proceso de dar de alta e una convocatoria en el SGI con los datos generales mínimos por parte de terceros y de modificarla a continuación para asociarle el resto de información.

Finalmente, se incluye el listado de aquellos métodos de consulta que no fueron descritos en los apartados anteriores.

##### Crear convocatoria



| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| GET | Servicio /unidades del API de Usuarios.Ver URL en [ESB \- SGI \- Usuarios](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/esb-sgi/esb-sgi-usuarios/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/esb-sgi/esb-sgi-usuarios/index.md") | q\+s (query \+ sort) | Lista\[UnidadGestion] | Listado de unidades de gestión |
| GET | /modelounidades | q\+s (query \+ sort)La query estará formada por:* unidadGestionRef | ModeloUnidad | Listado de ModeloUnidad de la unidad de gestión indicada*Ejemplo*:unidadGestionRef\=\="1" |
| POST | /convocatorias | Convocatoria | Convocatoria | Crea la convocatoria.Los siguientes campos se rellenan con los datos obtenidos de los endpoints anteriores:* unidadGestionRef: Se corresponde con el campo id de UnidadGestion obtenida de /sgiusr/unidades * modeloEjecucion: Se corresponde con el campo modeloEjecucion obtenida de /modelounidades filtrando por la unidad gestión que se indique en el campo unidadGestionRef de la convocatoria |

##### Asociar entidades convocantes



| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| GET | Servicio /empresas del API del Sistema de Gestión de Empresas.Ver URL en [SGI \- ESB \- SGEMP](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/index.md") | q\+s (query \+ sort)La query estará formada por:* nombre * razonSocial * numeroIdentificacion | Lista\[Empresas] | Listado de Empresa.*Ejemplo*:numeroIdentificacion\=ik\="123",nombre\=ik\="123",razonSocial\=ik\="123" |
| GET | /programas/plan |  | Programa | Listado de planes (programas sin padre) |
| GET | /programas/{id}/hijos | id | Programa | Listado de programas que tienen como padre el programa indicado |
| POST | /convocatoriaentidadconvocantes | ConvocatoriaEntidadConvocante | ConvocatoriaEntidadConvocante | Crea la entidad convocante de la convocatoria.Los siguientes campos se rellenan con los datos obtenidos de los endpoints anteriores:* convocatoriaId: Identificador de una convocatoria creada previamente mediante /convocatorias * entidadRef: Se corresponde con el campo id de una Empresa obtenida de /sgemp/empresas * programa: Programa obtenido con /programas/plan o con /programas/{id}/hijos |

##### Asociar entidades financiadoras



| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| GET | Servicio /empresas del API del Sistema de Gestión de Empresas.Ver URL en [SGI \- ESB \- SGEMP](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/index.md") | q\+s (query \+ sort)La query estará formada por:* nombre * razonSocial * numeroIdentificacion | Lista\[Empresas] | Listado de Empresa.*Ejemplo*:numeroIdentificacion\=ik\="123",nombre\=ik\="123",razonSocial\=ik\="123" |
| GET | /tipofinanciaciones |  | TipoFinanciacion | Listado de planes (programas sin padre) |
| GET | /fuentesfinanciacion |  | FuenteFinanciacion | Listado de programas que tienen como padre el programa indicado |
| POST | /convocatoriaentidadconvocantes | ConvocatoriaEntidadFinanciadora | ConvocatoriaEntidadFinanciadora | Crea la entidad financiadora de la convocatoria.Los siguientes campos se rellenan con los datos obtenidos de los endpoints anteriores:* convocatoriaId: Identificador de una convocatoria creada previamente mediante /convocatorias * entidadRef: Se corresponde con el campo id de una Empresa obtenida de /sgemp/empresas * fuenteFinanciacion: Fuente de financiación obtenida con /fuentesfinanciacion * tipoFinanciacion: Tipo obtenido con /tipofinanciaciones |

##### Asociar documentos



| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| GET | /modeloejecuciones/{id}/modelotipofases | q\+s (query \+ sort)La query estará formada por:* tipoFase.activo * convocatoria | Lista\[ModeloTipoFase] | Listado de tipos de fase del modelo de ejecución de la convocatoria.*Ejemplo*:tipoFase.activo\=\="true";convocatoria\=\="true" |
| GET | /modeloejecuciones/{id}/modelotipodocumentos | q\+s (query \+ sort)La query estará formada por:* tipoDocumento.activo * modeloTipoFase.tipoFase.id | Lista\[ModeloTipoDocumento] | Listado de tipos de documento del modelo de ejecución de la convocatoria y del tipo de fase si se selecciona una.*Ejemplo*:tipoDocumento.activo\=\="true";modeloTipoFase.tipoFase.id\=\="1" |
| POST | Servicio/documentos del API del Sistema de Gestión de Documentos.Ver URL en [SGI \- ESB \- SGDOC](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgdoc/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgdoc/index.md"). | (multipart/form\-data) * archivo: ficherobinario | Documento | Guarda el documento en el sgdoc |
| POST | /convocatoriadocumentos | ConvocatoriaDocumento | ConvocatoriaDocumento | Crea la entidad documento de la convocatoria.Los siguientes campos se rellenan con los datos obtenidos de los endpoints anteriores:* convocatoriaId: Identificador de una convocatoria creada previamente mediante /convocatorias * documentoRef: Se corresponde con el campo documentoRef obtenido al crear un nuevo documento con /sgdoc/documentos * tipoFase: Se corresponde con el campo tipoFase del ModeloTipoFase obtenido con /modeloejecuciones/{id}/modelotipofases * tipoDocumento: Se corresponde con el campo tipoDocumento del ModeloTipoDocumento obtenido con /modeloejecuciones/{id}/modelotipodocumentos |

##### Consultar convocatorias



| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| GET | /convocatorias | q\+s (query \+ sort)La query estará formada por:* cualquiera de los campos del objeto Convocatoria | Lista\[Convocatoria] | Listado de convocatorias.*Ejemplo*:fechaProvisional\=ge\="2022\-02\-28T23:00:00Z";fechaProvisional\=le\="2022\-03\-31T21:59:59Z" |
| GET | /convocatorias/{id}/convocatoriaareatematicas |  | Lista\[ConvocatoriaAreaTematica] | Listado de las asociaciones de áreas temáticas con la convocatoria. |
| GET | /convocatorias/{id}/convocatoriadocumentos |  | Lista\[ConvocatoriaDocumento] | Listado de asociaciones entre documentos y la convocatoria |
| GET | /convocatorias/{id}/convocatoriaentidadconvocantes |  | Lista\[ConvocatoriaEntidadConvocante] | Listado de asociaciones entre entidades convocantes y la convocatoria |
| GET | /convocatorias/{id}/convocatoriaentidadfinanciadoras |  | Lista\[ConvocatoriaEntidadFinanciadora] | Listado de asociaciones entre entidades financiadoras y la convocatoria |
| GET | /convocatorias/{id}/palabrasclave |  | Lista\[PalabraClave] | Listado de palabras clave de la convocatoria |
|  | | | | |
| GET | /areatematicas | q\+s (query \+ sort)La query estará formada por:* padreId | Lista\[AreaTematica] | Listado de AreaTematica  (sólo devuelve los registros activos).Nota: en el caso de no recibirse un padreId en la query, se devolverán todas las áreas temáticas y en caso de indicarse en la query que se quieren solo las que tengan un padreId con valor "null" se devolverán únicamente las de primer nivel o nivel raíz.*Ejemplo de query para obtener solo áreas de conocimiento raíz (su padre es null)*:padreId\=na\= |
| GET | /areatematicas/{id} |  | AreaTematica | Datos de un área temática específica. |

  


  





