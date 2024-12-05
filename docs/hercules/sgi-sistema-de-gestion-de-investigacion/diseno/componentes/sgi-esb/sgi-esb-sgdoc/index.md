# Hércules : SGI \- ESB \- SGDOC











## Sistema de Gestión Documental

### Entidades



| Entidad | Descripción |
| --- | --- |
| Documento | Datos del documento |

### Modelo lógico

![](/attachments/597852736/597876690.jpg)

### API

Características generales que todas las API REST deben de cumplir:

* [Consultas filtradas y paginadas](https://confluence.um.es/confluence/display/HERCULES/Consultas+filtradas+y+paginadas "https://confluence.um.es/confluence/display/HERCULES/Consultas+filtradas+y+paginadas")
* [Formatos de datos API](https://confluence.um.es/confluence/display/HERCULES/Formatos+de+datos+API "https://confluence.um.es/confluence/display/HERCULES/Formatos+de+datos+API")

#### Definición de los objetos

##### Documento



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| documentoRef | String | Identificador del documento |
| nombre | String | Nombre del documento |
| version | String | Versión del documento |
| fechaCreacion | Date | Fecha de creación del documento |
| tipo | String | Tipo de archivo |
| autorRef | String | Identificador del autor del documento. |
| hash | String | Hash del documento. SHA\-256 |



**Documento** Ampliar origen



```
{
	"documentoRef": "6712829d-ea85-4b10-be25-5130dbb264fa",
	"nombre": "archivo.pdf",
	"version": 1,
	"fechaCreacion": "2022-03-07T10:15:52.527",
	"tipo": "application/pdf",
	"autorRef": "anonymous",
    "hash":"sdfsdfsdfsdfsdfs"
}
```


  


#### Servicios

Para componer la URL llamada completa, se debe anteponer a lo indicado en la columna URL lo siguiente: **{HOST}/api/sgdoc**, donde **{HOST}** de deberá sustituir el dominio correspondiente al entorno al que se está accediendo y dicho acceso será por http o https según el caso.

| Servicio | Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- | --- |
| [ESB \- SGI \- Documentos \- Eliminar](/confluence/display/HERCULES/ESB+-+SGI+-+Documentos+-+Eliminar "/confluence/display/HERCULES/ESB+-+SGI+-+Documentos+-+Eliminar") | DELETE | /documentos/{id} |  |  | Elimina el documento cuyo identificador se pasa en la URL del Sistema de Gestión Documental. |
| [ESB \- SGI \- Documentos \- Descargar fichero](/confluence/display/HERCULES/ESB+-+SGI+-+Documentos+-+Descargar+fichero "/confluence/display/HERCULES/ESB+-+SGI+-+Documentos+-+Descargar+fichero") | GET | /documentos/{id}/archivo |  | Fichero binario. | Devuelve el archivo binario del documento. |
| [ESB \- SGI \- Documentos \- Listar por identificador](/confluence/display/HERCULES/ESB+-+SGI+-+Documentos+-+Listar+por+identificador "/confluence/display/HERCULES/ESB+-+SGI+-+Documentos+-+Listar+por+identificador") | GET | /documentos/bydocumentorefs/{ids} | El parámetro pasado por URL será una lista de identificadores de documentos separados por ",". | Lista\[[Documento](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGDOC#SGIESBSGDOC-Documento "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGDOC#SGIESBSGDOC-Documento")] | Listado de documentos cuyo identificador se ha pasado por URL. |
| [ESB \- SGI \- Documentos \- Consultar detalle](/confluence/display/HERCULES/ESB+-+SGI+-+Documentos+-+Consultar+detalle "/confluence/display/HERCULES/ESB+-+SGI+-+Documentos+-+Consultar+detalle") | GET | /documentos/{id} |  | [Documento](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGDOC#SGIESBSGDOC-Documento "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGDOC#SGIESBSGDOC-Documento") | Devuelve el detalle del documento solicitado por la URL. |
| [ESB \- SGI \- Documentos \- Buscar](/confluence/display/HERCULES/ESB+-+SGI+-+Documentos+-+Buscar "/confluence/display/HERCULES/ESB+-+SGI+-+Documentos+-+Buscar") | GET | /documentos | q\+s (query \+ sort)La query estará formada por:* documentoRef * nombre * version * fechaCreacion * tipo * autorRef | Lista\[[Documento](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGDOC#SGIESBSGDOC-Documento "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGDOC#SGIESBSGDOC-Documento")] | Listado de documentos.*Ejemplo*:nombre\=ik\=documento |
| [ESB \- SGI \- Documentos \- Dar de alta](/confluence/display/HERCULES/ESB+-+SGI+-+Documentos+-+Dar+de+alta "/confluence/display/HERCULES/ESB+-+SGI+-+Documentos+-+Dar+de+alta") | POST | /documentos | archivo: fichero binario (multipart/form\-data) | [Documento](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGDOC#SGIESBSGDOC-Documento "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGDOC#SGIESBSGDOC-Documento") | Crea un Documento y almacena el fichero. |

  





