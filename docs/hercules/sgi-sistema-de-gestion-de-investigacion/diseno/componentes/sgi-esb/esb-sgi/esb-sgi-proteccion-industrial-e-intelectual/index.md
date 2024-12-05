# Hércules : ESB \- SGI \- Protección Industrial e Intelectual



## Sistema de Gestión Investigación

### Entidades



| Entidad | Descripción |
| --- | --- |
| Invencion | Entidad que representa a la invención cara a poder ser presentada en listas de valores con su título. |
| TipoProteccion | Entidad que representa a uno de los posibles tipos de protección con los que se puede proteger una invención. |
| SectorAplicacion | Entidad que representa a uno de los sectores de aplicación que se pueden asociar a una invención o para el que se puede licenciar a través de una solicitud de protección. |
| AreaConocimiento | Entidad que representa a una de las áreas de conocimiento (áreas temáticas cara al usuario funcional) que se pueden asociar a una invención. |
| PalabraClave | Entidad que representa cada una de las relaciones entre una palabra clave y una invención. |
| Inventor | Entidad que representa a uno de los miembros del equipo inventor de una invención. |
| PeriodoTitularidad | Entidad que representa a uno de los periodos de titularidad asociados a una invención. |
| Titular | Entidad que representa a uno de los titulares asociados a una invención. |
| ViaProteccion | Entidad que representa a una de las posibles vías de protección que estarán asociadas las solicitudes de protección. |
| SolicitudProteccion | Entidad que representa a una solicitud de protección que estará asociada a una invención. |

### Enumerados



| Entidad | Descripción |
| --- | --- |
| TipoPropiedad | Puede tomar los siguientes valores:* INDUSTRIAL (Propiedad industrial) * INTELECTUAL (Propiedad intelectual) |

### Modelo lógico

![](/attachments/597853838/597873945.png)

### API

Características generales que todas las API REST deben de cumplir:

* [Consultas filtradas y paginadas](https://confluence.um.es/confluence/display/HERCULES/Consultas+filtradas+y+paginadas "https://confluence.um.es/confluence/display/HERCULES/Consultas+filtradas+y+paginadas")
* [Formatos de datos API](https://confluence.um.es/confluence/display/HERCULES/Formatos+de+datos+API "https://confluence.um.es/confluence/display/HERCULES/Formatos+de+datos+API")

#### Definición de los objetos

##### Invencion



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | String | Identificador único de la invención. |
| titulo | String | Título de la invención. |
| fechaComunicacion | Fecha \+ hora | Fecha de comunicación de la invención.Formato UTC. |
| descripcion | String | Descripción de la invención. |
| tipoProteccion | TipoProteccion | Tipo de protección de la invención. |
| proyectoRef | Texto | Identificador de proyecto de investigación del SGI asociado a la invención. |
| comentarios | Texto largo | Comentarios a añadir acerca de la invención. |
| activo | Boolean | Indicador de si la invención está activa o no en el SGI. |



**Invencion** Ampliar origen



```
{
	"id": 114,
	"titulo": "Patente de un sistema de captura de insectos",
	"fechaComunicacion": "2022-03-09T23:00:00Z",
	"descripcion": "Un ejemplo",
	"comentarios": "comentarios",
	"proyectoRef": null,
	"tipoProteccion": {
		"id": 1,
		"nombre": "Patente",
		"padre": null,
		"tipoPropiedad": "INDUSTRIAL"
	},
	"activo": true
}
```


##### TipoProteccion



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | Long | Identificador único del tipo de protección. |
| nombre | String | Nombre del tipo de protección.Puede tomar uno de los siguientes valores que van predefinidos en el SGI, si bien pueden variar al ser configurables:* + Patente 	+ Modelo de utilidad 	+ Diseño industrial 	+ Marca 	+ Secreto industrial 	+ Software 	+ Know\-how |
| descripcion | String | Descripción del tipo de protección. |
| padreId | Long | Identificador del tipo padre. Estará informado cuando el tipo de protección es un subtipo. |
| tipoPropiedad | String | Tipo de propiedad del tipo de protección.Puede tomar uno de los siguientes valores que son fijos en el SGI:* INDUSTRIAL (Propiedad industrial) * INTELECTUAL (Propiedad intelectual) |
| activo | Boolean | Indicador de si el tipo de protección está activa o no en el SGI. |



**TipoProteccion** Ampliar origen



```
{
	"id": 1,
	"nombre": "Patente",
	"descripcion": "Derecho de impedir temporalmente a otros la fabricación, venta o utilización comercial en España de la invención protegida.",
	"padreId": null,
	"tipoPropiedad": "INDUSTRIAL",
	"activo": true
}
```


##### SectorAplicacion



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | Long | Identificador único del sector de aplicación. |
| invencionId | Long | Identificador de la invención a la que se asocia el sector de aplicación. |
| sectorAplicacion | SectorAplicacion | Sector de aplicación de la invención. |



**SectorAplicacion** Ampliar origen



```
{
	"id": 1,
    "invencionId": 111,
    "sectorAplicacion": {
    	"id": 1,
        "nombre": "Energía y medio ambiente",
        "descripcion": "Aplicación en energía y medio ambiente",
        "activo": true
    }
}
```


##### AreaConocimiento



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | Long | Identificador único del área de conocimiento en el SGI. |
| invencionId | Long | Identificador de la invención a la que se asocia el área de conocimiento. |
| areaConocimientoRef | String | Identificador del área de conocimiento en los sistemas de la Universidad. |



**AreaConocimiento** Ampliar origen



```
{
	"id": 7,
	"invencionId": 1,
	"areaConocimientoRef": "123"
}
```


##### PalabraClave



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | Long | Identificador único autogenerado de la palabra clave. |
| invencionId | Long | Identificador de la invención a la que se asocia la palabra clave. |
| palabraClaveRef | String | Referencia a la palabra clave. Coincide con el texto de la palabra clave por ser único en el diccionario de todo el SGI. |



**PalabraClave** Ampliar origen



```
{
	"id": 12,	
	"invencionId": 1,
	"palabraClaveRef": "Tratamiento experimental"
}
```


##### Inventor



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | Long | Identificador único del inventor. |
| invencionId | Long | Identificador de la invención a la que se asocia el inventor. |
| inventorRef | String | Identificador del inventor en los sistemas de la Universidad. |
| participacion | Numérico decimal | Porcentaje de participación del inventor en la invención.Decimal con dos decimales. |
| repartoUniversidad | Booleano | Indicador de si al miembro del equipo inventor se le hará el reparto de resultados por parte de la Universidad o no. |
| activo | Booleano | Indicador de si el inventor está activo o no en el SGI. |



**Inventor** Ampliar origen



```
{
	"id": 7,
	"invencionId": 1,
	"inventorRef": "48128840",
	"participacion": 50,
	"repartoUniversidad": false,
	"activo": true
}
```


##### PeriodoTitularidad



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | Long | Identificador único del periodo de titularidad. |
| invencionId | Long | Identificador de la invención a la que se asocia el periodo de titularidad. |
| fechaInicio | Fecha \+ hora | Fecha de inicio del periodo de titularidad del titular.Formato UTC. |
| fechaFin | Fecha \+ hora | Fecha de fin del periodo de titularidad del titular.Formato UTC. |



**PeriodoTitularidad** Ampliar origen



```
{
	"id": 7,
	"invencionId": 1,
	"fechaInicio": "2022-03-30T15:55:37.846Z",
	"fechaFin": "2022-04-30T21:59:59Z"
}
```


##### Titular



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | Long | Identificador único del titular. |
| periodoTitularidadId | Long | Identificador del periodo de titularidad al que se asocia el titular. |
| titularRef | String | Identificador de la entidad/empresa titular de la invención en los sistemas de la Universidad. |
| participacion | Numérico decimal | Porcentaje de participación del titular en la invención.Decimal con dos decimales. |



**Titular** Ampliar origen



```
{
	"id": 15,
	"periodoTitularidadId": 7,
	"titularRef": "00158046",
	"participacion": 25
}
```


##### ViaProteccion



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | Long | Identificador único de la vía de protección. |
| nombre | String | Nombre identificativo de la vía de protección, con el que se listará en todos los desplegables. |
| descripcion | String | Campo de texto de introducción libre para descripción ampliada de la vía de protección. |
| tipoPropiedad | String | Tipo de propiedad a la que se asocia la vía de protección.Puede tomar los siguientes valores:* INDUSTRIAL (Propiedad industrial) * INTELECTUAL (Propiedad intelectual) |
| paisEspecifico | Booleano | Indicador de si la vía de protección exige seleccionar un país concreto. |
| mesesPrioridad | Numérico entero | Meses de prioridad a aplicar cuando la solicitud es la primera de una invención o de plazo para la entrada a las fases nacionales / regionales en el caso concreto de solicitudes que sean extensión internacional (p.ej. vía PCT).Este campo solo estará informado en el caso de Tipos de propiedad "Propiedad industrial". |
| extensionInternacional | Booleano | Indicador de si la vía de protección es una extensión internacional. |
| variosPaises | Booleano | Indicador de si la vía de protección permite indicar un listado de países en los que se ha validado la invención a través de la solicitud de protección. |



**ViaProteccion** Ampliar origen



```
{
	"id": 3,
	"nombre": "Europea",
	"descripcion": "Tipo de vía de protección en Europa",
	"tipoPropiedad": "INDUSTRIAL",
	"paisEspecifico": false,
	"mesesPrioridad": 1,
	"extensionInternacional": false,
	"variosPaises": true
}
```


##### SolicitudProteccion



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | Long | Identificador único de la solicitud de protección. |
| invencion | Invencion (Reducida) | Invención a la que pertenece la solicitud de protección. |
| titulo | String | Título de la solicitud de protección. |
| fechaPrioridadSolicitud | Fecha \+ hora | Fecha de la solicitud o fecha de prioridad.Formato UTC. |
| fechaFinPriorPresFasNacRec | Fecha \+ hora | Fecha de finalización de la prioridad de la solicitud o de fin del plazo de presentación de solicitudes en fases nacionales/regionales.Formato UTC. |
| fechaPublicacion | Fecha \+ hora | Fecha de publicación de la solicitud de invención.Formato UTC. |
| fechaConcesion | Fecha \+ hora | Porcentaje de participación del titular en la invención.Formato UTC. |
| fechaCaducidad | Fecha \+ hora | Porcentaje de participación del titular en la invención.Formato UTC. |
| viaProteccion | ViaProteccion | A priori esta lista tendrá los siguientes valores:* Protecciones de tipo "Propiedad industrial": 	+ España 	+ PCT 	+ Europea 	+ País específico * Protecciones de tipo "Propiedad intelectual": 	+ Registro autonómico 	+ Acta notarial 	+ Registro interno |
| numeroSolicitud | String | Número de la solicitud que es comunicada por el organismo donde se solicita. |
| numeroRegistro | String | Número del registro que es comunicada por el organismo que concede la protección. |
| numeroPublicacion | String | Número de la publicación que es comunicada por el organismo donde se publica. |
| numeroConcesion | String | Número de la concesión que es comunicada por el organismo que concede la protección. |
| estado | String | Estado de la solicitud.Las solicitudes podrán tener los siguientes estados:* Solicitada * Publicada * Concedida * Caducada |
| tipoCaducidad | String | Tipo de caducidad  de la solicitud de invención. Tendrá un valor de los siguientes:* Abandono * Retirada * Denegación |
| agentePropiedadRef | String | Identificador en los sistemas de la Universidad de la entidad/empresa que actúa como agente de la propiedad asociado a la solicitud de protección. |
| paisProteccionRef | String | Este campo estará informado en las vías de protección con países asociados (País específico p.ej.). |
| comentarios | String | Comentarios a la solicitud de protección. |
| activo | Booleano | Indicador de si la solicitud de protección está activa o no en el SGI. |



**SolicitudProteccion** Ampliar origen



```
{
	"id": 5,
	"invencion": {
		"id": 114,
		"tipoProteccion": {
			"id": 1,
			"tipoPropiedad": "INDUSTRIAL"
		},
		"activo": true
	 },
	"titulo": "Solicitud de protección Europea de la Patente de un sistema de captura de insectos",
	"fechaPrioridadSolicitud": "2022-02-28T23:00:00Z",
	"fechaFinPriorPresFasNacRec": "2022-03-31T22:00:00Z",
	"fechaPublicacion": null,
	"fechaConcesion": null,
	"fechaCaducidad": null,
	"viaProteccion": {
		"id": 3,
		"nombre": "Europea",
		"descripcion": "Tipo de vía de protección en Europa",
		"tipoPropiedad": "INDUSTRIAL",
		"paisEspecifico": false,
		"mesesPrioridad": 1,
		"extensionInternacional": false,
		"variosPaises": true
	},
	"numeroSolicitud": "123XTP",
	"numeroPublicacion": "",
	"numeroConcesion": "",
	"numeroRegistro": "",
	"estado": "SOLICITADA",
	"tipoCaducidad": null,
	"agentePropiedadRef": "00065350",
	"paisProteccionRef": null,
	"comentarios": "",
	"activo": true
}
```


#### Servicios

Para componer la URL llamada completa, se debe anteponer a lo indicado en la columna URL lo siguiente: **{HOST}/api/sgipii**, donde **{HOST}** de deberá sustituir el dominio correspondiente al entorno al que se está accediendo y dicho acceso será por http o https según el caso.

| Servicio | Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- | --- |
| [ESB \- SGI \- Invenciones \- Sectores de aplicación \- Listar](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853421 "/confluence/pages/viewpage.action?pageId=597853421") | GET | /sectoresaplicacion | q\+s (query \+ sort)La query estará formada por:* cualquiera de los campos del objeto [SectorAplicacion](https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292943#ESBSGIProtecci%C3%B3nIndustrialeIntelectual-SectorAplicacion "https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292943#ESBSGIProtecci%C3%B3nIndustrialeIntelectual-SectorAplicacion") | Lista\[[SectorAplicacion](https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292943#ESBSGIProtecci%C3%B3nIndustrialeIntelectual-SectorAplicacion "https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292943#ESBSGIProtecci%C3%B3nIndustrialeIntelectual-SectorAplicacion")] | Listado de sectores de aplicación.*Ejemplo*:id\=ik\=1 |
| [ESB \- SGI \- Invenciones \- Vías de protección \- Listar](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853413 "/confluence/pages/viewpage.action?pageId=597853413") | GET | /viasproteccion | q\+s (query \+ sort)La query estará formada por:* cualquiera de los campos del objeto [ViaProteccion](https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292943#ESBSGIProtecci%C3%B3nIndustrialeIntelectual-ViaProteccion "https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292943#ESBSGIProtecci%C3%B3nIndustrialeIntelectual-ViaProteccion") | Lista\[[ViaProteccion](https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292943#ESBSGIProtecci%C3%B3nIndustrialeIntelectual-ViaProteccion "https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292943#ESBSGIProtecci%C3%B3nIndustrialeIntelectual-ViaProteccion")] | Listado de vías de protección.*Ejemplo*:nombre\=ik\=europea |
| [ESB \- SGI \- Invenciones \- Tipos de protección \- Listar](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853411 "/confluence/pages/viewpage.action?pageId=597853411") | GET | /tiposproteccion | q\+s (query \+ sort)La query estará formada por:* cualquiera de los campos del objeto [TipoProteccion](https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292943#ESBSGIProtecci%C3%B3nIndustrialeIntelectual-TipoProteccion "https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292943#ESBSGIProtecci%C3%B3nIndustrialeIntelectual-TipoProteccion") | Lista\[[TipoProteccion](https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292943#ESBSGIProtecci%C3%B3nIndustrialeIntelectual-TipoProteccion "https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292943#ESBSGIProtecci%C3%B3nIndustrialeIntelectual-TipoProteccion")] | Listado de tipos de protección.*Ejemplo*:nombre\=ik\=patente |
| [ESB \- SGI \- Invenciones \- Listar solicitudes de protección](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853408 "/confluence/pages/viewpage.action?pageId=597853408") | GET | /invenciones/{id}/solicitudesproteccion |  | Lista\[[SolicitudProteccion](https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292943#ESBSGIProtecci%C3%B3nIndustrialeIntelectual-SolicitudProteccion "https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292943#ESBSGIProtecci%C3%B3nIndustrialeIntelectual-SolicitudProteccion")] | Listado de solicitudes de protección de una invención.*Ejemplo*:/invenciones/114/solicitudesproteccion |
| [ESB \- SGI \- Invenciones \- Periodo titularidad \- Listar titulares](/confluence/display/HERCULES/ESB+-+SGI+-+Invenciones+-+Periodo+titularidad+-+Listar+titulares "/confluence/display/HERCULES/ESB+-+SGI+-+Invenciones+-+Periodo+titularidad+-+Listar+titulares") | GET | /periodostitularidad/{id}/titulares |  | Lista\[[Titular](https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292943#ESBSGIProtecci%C3%B3nIndustrialeIntelectual-Titular "https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292943#ESBSGIProtecci%C3%B3nIndustrialeIntelectual-Titular")] | Listado de titulares de un periodo de titularidad de una invención.*Ejemplo*:/periodostitularidad/8/titulares |
| [ESB \- SGI \- Invenciones \- Listar periodos titularidad](/confluence/display/HERCULES/ESB+-+SGI+-+Invenciones+-+Listar+periodos+titularidad "/confluence/display/HERCULES/ESB+-+SGI+-+Invenciones+-+Listar+periodos+titularidad") | GET | /invenciones/{id}/periodostitularidad |  | Lista\[[PeriodoTitularidad](https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292943#ESBSGIProtecci%C3%B3nIndustrialeIntelectual-PeriodoTitularidad "https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292943#ESBSGIProtecci%C3%B3nIndustrialeIntelectual-PeriodoTitularidad")] | Listado de periodos de titularidad de una invención.*Ejemplo*:/invenciones/114/periodostitularidad |
| [ESB \- SGI \- Invenciones \- Listar inventores](/confluence/display/HERCULES/ESB+-+SGI+-+Invenciones+-+Listar+inventores "/confluence/display/HERCULES/ESB+-+SGI+-+Invenciones+-+Listar+inventores") | GET | /invenciones/{id}/invencion\-inventores |  | Lista\[[Inventor](https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292943#ESBSGIProtecci%C3%B3nIndustrialeIntelectual-Inventor "https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292943#ESBSGIProtecci%C3%B3nIndustrialeIntelectual-Inventor")] | Listado de inventores de una invención.*Ejemplo*:/invenciones/114/invencion\-inventores |
| [ESB \- SGI \- Invenciones \- Listar palabras clave](/confluence/display/HERCULES/ESB+-+SGI+-+Invenciones+-+Listar+palabras+clave "/confluence/display/HERCULES/ESB+-+SGI+-+Invenciones+-+Listar+palabras+clave") | GET | /invenciones/{id}/palabrasclave |  | Lista\[[PalabraClave](https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292943#ESBSGIProtecci%C3%B3nIndustrialeIntelectual-PalabraClave "https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292943#ESBSGIProtecci%C3%B3nIndustrialeIntelectual-PalabraClave")] | Listado de palabras clave asociadas a la invención. |
| [ESB \- SGI \- Invenciones \- Listar áreas de conocimiento](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853405 "/confluence/pages/viewpage.action?pageId=597853405") | GET | /invenciones/{id}/areasconocimiento |  | Lista\[[AreaConocimiento](https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292943#ESBSGIProtecci%C3%B3nIndustrialeIntelectual-AreaConocimiento "https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292943#ESBSGIProtecci%C3%B3nIndustrialeIntelectual-AreaConocimiento")] | Listado de áreas de conocimiento asociadas a la invención. |
| [ESB \- SGI \- Invenciones \- Listar sectores de aplicación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853398 "/confluence/pages/viewpage.action?pageId=597853398") | GET | /invenciones/{id}/sectoresaplicacion |  | Lista\[[SectorAplicacion](https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292943#ESBSGIProtecci%C3%B3nIndustrialeIntelectual-SectorAplicacion "https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292943#ESBSGIProtecci%C3%B3nIndustrialeIntelectual-SectorAplicacion")] | Listado de sectores de aplicación asociados a la invención. |
| [ESB \- SGI \- Invenciones \- Consultar detalle](/confluence/display/HERCULES/ESB+-+SGI+-+Invenciones+-+Consultar+detalle "/confluence/display/HERCULES/ESB+-+SGI+-+Invenciones+-+Consultar+detalle") | GET | /invenciones/{id} |  | [Invencion](https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292943#ESBSGIProtecci%C3%B3nIndustrialeIntelectual-Invencion "https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292943#ESBSGIProtecci%C3%B3nIndustrialeIntelectual-Invencion") | Devuelve el detalle de la invención solicitada. |
| [ESB \- SGI \- Invenciones \- Buscar](/confluence/display/HERCULES/ESB+-+SGI+-+Invenciones+-+Buscar "/confluence/display/HERCULES/ESB+-+SGI+-+Invenciones+-+Buscar") | GET | /invenciones | q\+s (query \+ sort)La query estará formada por:* Cualquiera de los campos del objeto Invencion | Lista\[[Invencion](https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292943#ESBSGIProtecci%C3%B3nIndustrialeIntelectual-Invencion "https://confluence.um.es/confluence/pages/viewpage.action?pageId=134292943#ESBSGIProtecci%C3%B3nIndustrialeIntelectual-Invencion")] | Listado de invenciones. Solo se devuelven las activas.*Ejemplo*:tipoProteccion\=\=1 |
| [ESB \- SGI \- Invenciones \- Consultar invenciones modificadas](/confluence/display/HERCULES/ESB+-+SGI+-+Invenciones+-+Consultar+invenciones+modificadas "/confluence/display/HERCULES/ESB+-+SGI+-+Invenciones+-+Consultar+invenciones+modificadas") | GET | /invenciones/modificados\-ids | q\+s (query \+ sort)La query estará formada por:* fechaModificacion: fecha a partir de la cual se quieren ver los cambios. | Lista\[Long] | Listado de identificadores de invenciones que han sido modificadas (tanto la entidad Invencion como las entidades relacionadas: sectores de aplicación, áreas de conocimiento, palabras clave,  inventores, periodos de titularidad, titulares, solicitudes de protección)Ejemplo:* fechaModificacion\=ge\="2021\-08\-18T22:00:00Z" |




