# Hércules : Sistema de gestión de empresas











## Sistema de gestión de empresas

### Entidades



| Entidad | Descripción |
| --- | --- |
| Empresa | Contiene los datos básicos de una empresa. |
| DatosContacto | Contiene los datos de contacto de la empresa. |
| TipoIdentificador | Listado con los tipos de identificador fiscal (CIF, VAT, ...). |
| EmpresaClasificacion | Listado de relaciones entre empresas y clasificaciones. Las empresas se relacionarán únicamente con las clasificaciones del tipo "Sector Industrial". Ver definición de clasificaciones en [SGI \- ESB \- SGO](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=SGI+-+ESB+-+SGO "/confluence/pages/createpage.action?spaceKey=TEMP001&title=SGI+-+ESB+-+SGO").IMPORTANTELa relación entre empresas y clasificaciones de tipo "Sector industrial" se considera algo que puede generalizarse a cualquier empresa y no algo específico de las empresas con las que se relaciona UM, es por ello que se ha modelado a nivel lógico en el diagrama.Al no haberse identificado por el momento necesidad de gestionar en ningún punto del SGI como producto, sino solamente en los formularios específicos de UM, la clasificación de una empresa no se ha modelado a nivel de objetos de transferencia del API ni tiene servicios específicos para su gestión. |

### Modelo lógico

![](/attachments/598147536/598148462.png)

### API

Características generales que todas las API REST deben de cumplir:

* [Consultas filtradas y paginadas](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=Consultas+filtradas+y+paginadas "/confluence/pages/createpage.action?spaceKey=TEMP001&title=Consultas+filtradas+y+paginadas")
* [Formatos de datos API](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=Formatos+de+datos+API "/confluence/pages/createpage.action?spaceKey=TEMP001&title=Formatos+de+datos+API")

#### Definición de los objetos

##### Empresa

  




| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | String | Identificador de la empresa. |
| nombre | String | Nombre de la empresa. |
| tipoIdentificador | TipoIdentificador | Tipo de identificador fiscal de la empresa. Se devuelve la entidad TipoIdentificador con todos sus campos. |
| numeroIdentificacion | String | Número de identificación fiscal de la empresa del tipo indicado en "tipoIdentificador". |
| razonSocial | String | Razón social de la empresa. |
| datosEconomicos | Boolean | Indicador de si se trata de una empresa con datos económicos (está dada de alta en GENTE y en JUSTO) o sin datos económicos (está dada de alta solo en GENTE). |
| padreId | String | Identificador de la empresa padre o entidad principal. Estará informado en el caso de empresas que son subentidad de otra. |



**Empresa** Ampliar origen



```
{
    "id": "ent-002",
    "nombre": "Empresa de Prueba",
    "tipoIdentificador": {
          "id":"tp-1",
          "nombre":"CIF"
     },
    "numeroIdentificacion": "H11111111",
    "razonSocial": "Empresa que es mayoritariamente de prueba del SGI",
	"datosEconomicos": false,
    "padreId": "ent-001"
}
```


##### TipoIdentificador



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | String | Identificador de la entidad TipoIdentificador. |
| nombre | String | Nombre (Posibles valores: CIF, VAT, ...). |



**TipoIdentificador** Ampliar origen



```
{ 
    "id":"tp-1",
    "nombre": "CIF"   
}
```


  


##### 

##### DatosContacto

  




| Nombre | Tipo | Descripción |
| --- | --- | --- |
| direccion | String | Dirección de contacto de la empresa. |



**DatosContacto** Ampliar origen



```
{
	"direccion": "C/ Uría, número 4, puerta A, 33002, Oviedo, Asturias, España"
}
```


#### Servicios

  




| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| GET | /empresas | q\+s (query \+ sort)La query estará formada por:* id * nombre * razonSocial * numeroIdentificacion | Lista\[Empresa] | Listado de Empresa.*Ejemplo*:nombre\=like\=(Tree);(razonSocial\=like\=SL) |
| GET | /empresas/{id} | id | Empresa | Detalle de los datos generales de una empresa. |
| GET | /empresas/formly/create |  | Formly | Devuelve el formulario (formly) a pintar para la pantalla de solicitar alta empresa, pestaña "Datos generales". Ver [IU\-GEN\-0081 \- Solicitar alta de empresa](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=IU-GEN-0081+-+Solicitar+alta+de+empresa "/confluence/pages/createpage.action?spaceKey=TEMP001&title=IU-GEN-0081+-+Solicitar+alta+de+empresa")[.](https://confluence.treelogic.com/display/HERCULES/IU-GEN-0081+-+Solicitar+alta+de+empresa "https://confluence.treelogic.com/display/HERCULES/IU-GEN-0081+-+Solicitar+alta+de+empresa") |
| POST | /empresas | JSON |  | Recibe como parámetro la respuesta del usuario del formulario de datos de alta (formly) con los campos necesarios para crear una empresa. |
| PUT | /empresas | JSON | idVendrá relleno si la creación es síncrona y no vendrá si es asíncrona. | Recibe como parámetro la respuesta del usuario del formulario de datos de modificación (formly) con los campos necesarios para actualizar una empresa. |
| GET | /empresas/formly/{id} |  | JSON | Devuelve los datos a pintar en el formulario de Ver Detalle/Actualizar en el SGI (formly). |
|  | | | | |
| GET | /datos\-contacto/empresa/{id} | id | DatosContacto | Contiene los datos de contacto de una empresa. |
|  | | | | |
| GET | /tipos\-identificador |  | Lista\[TipoIdentificador] | Listado de tipos de identificador fiscal para las empresas ordenados alfabéticamente de forma ascendente. |
|  | | | | |
| **Métodos donde el SGI solo hace de pasarela entre Universidad y CVN (No son necesarios para el funcionamiento del SGI)** | | | | |
| GET | /empresas/modificadas\-ids | q\+sLa query estará formada por:* fechaModificacion | Lista\[String] | Listado de los identificadores de empresas que han sufrido cambios en los datos de identificativos de la empresa o en sus datos de contacto. |




