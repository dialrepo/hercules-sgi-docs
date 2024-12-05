# Hércules : SGI \- ESB \- SGEMP











## Sistema de gestión de empresas

### Entidades



| Entidad | Descripción |
| --- | --- |
| Empresa | Contiene los datos básicos de una empresa. |
| DatosContacto | Contiene los datos de contacto de la empresa. |
| TipoIdentificador | Listado con los tipos de identificador fiscal (CIF, VAT, ...). |
| EmpresaClasificacion | Listado de relaciones entre empresas y clasificaciones. Las empresas se relacionarán únicamente con las clasificaciones del tipo "Sector Industrial". Ver definición de clasificaciones en [SGI \- ESB \- SGO](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgo/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgo/index.md").IMPORTANTELa relación entre empresas y clasificaciones de tipo "Sector industrial" se considera algo que puede generalizarse a cualquier empresa y no algo específico de las empresas con las que se relaciona UM, es por ello que se ha modelado a nivel lógico en el diagrama.Al no haberse identificado por el momento necesidad de gestionar en ningún punto del SGI como producto, sino solamente en los formularios específicos de UM, la clasificación de una empresa no se ha modelado a nivel de objetos de transferencia del API ni tiene servicios específicos para su gestión. |

### Modelo lógico

![](/attachments/597853152/597884381.png)

### API

Características generales que todas las API REST deben de cumplir:

* [Consultas filtradas y paginadas](https://confluence.um.es/confluence/display/HERCULES/Consultas+filtradas+y+paginadas "https://confluence.um.es/confluence/display/HERCULES/Consultas+filtradas+y+paginadas")
* [Formatos de datos API](/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/formatos-de-datos-api.md "/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/formatos-de-datos-api.md")

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

Para componer la URL llamada completa, se debe anteponer a lo indicado en la columna URL lo siguiente: **{HOST}/api/sgemp**, donde **{HOST}** de deberá sustituir el dominio correspondiente al entorno al que se está accediendo y dicho acceso será por http o https según el caso.#### Métodos imprescindibles para el funcionamiento de los módulos y gestiones que utilicen empresas.



| Servicio | Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- | --- |
| [SGI \- ESB \- SGEMP \- Empresas \- Consultar detalle (Datos generales)](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853021 "/confluence/pages/viewpage.action?pageId=597853021") | GET | /empresas/{id} |  | [Empresa](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP#SGIESBSGEMP-Empresa "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP#SGIESBSGEMP-Empresa") | Detalle de los datos generales de una empresa. |
| [SGI \- ESB \- SGEMP \- Empresas \- Buscar](/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP+-+Empresas+-+Buscar "/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP+-+Empresas+-+Buscar") | GET | /empresas | q\+s (query \+ sort)La query estará formada por:* id * nombre * razonSocial * numeroIdentificacion | Lista\[[Empresa](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP#SGIESBSGEMP-Empresa "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP#SGIESBSGEMP-Empresa")] | Listado de Empresa.*Ejemplo*:nombre\=like\=(Tree);(razonSocial\=like\=SL) |
| [SGI \- ESB \- SGEMP \- Empresas \- Consultar datos contacto](/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP+-+Empresas+-+Consultar+datos+contacto "/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP+-+Empresas+-+Consultar+datos+contacto") | GET | /datos\-contacto/empresa/{id} |  | [DatosContacto](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP#SGIESBSGEMP-DatosContacto "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP#SGIESBSGEMP-DatosContacto") | Contiene los datos de contacto de una empresa. |
| [SGI \- ESB \- SGEMP \- Empresas \- Listar tipos de identificador](/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP+-+Empresas+-+Listar+tipos+de+identificador "/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP+-+Empresas+-+Listar+tipos+de+identificador") | GET | /tipos\-identificador |  | Lista\[[TipoIdentificador](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP#SGIESBSGEMP-TipoIdentificador "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP#SGIESBSGEMP-TipoIdentificador")] | Listado de tipos de identificador fiscal para las empresas ordenados alfabéticamente de forma ascendente. |

##### Métodos únicamente necesarios si se requiere gestionar empresas desde el SGI (Alta, Baja, Modificación y Detalle).







| Servicio | Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- | --- |
| [SGI \- ESB \- SGEMP \- Empresas \- Consultar campos ver detalle](/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP+-+Empresas+-+Consultar+campos+ver+detalle "/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP+-+Empresas+-+Consultar+campos+ver+detalle") | GET | /empresas/formly/view |  | Formly | Devuelve el formulario (formly) a pintar para la pantalla de ver detalle de empresa. |
| [SGI \- ESB \- SGEMP \- Empresas \- Consultar campos modificación](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853359 "/confluence/pages/viewpage.action?pageId=597853359") | GET | /empresas/formly/update |  | Formly | Devuelve el formulario (formly) a pintar para la pantalla de solicitar modificación empresa, pestaña "Datos generales". Ver [IU\-GEN\-0082 \- Ver detalle \- Solicitar modificación de empresa](null/pages/createpage.action?spaceKey=HERCULES&title=IU-GEN-0082+-+Ver+detalle+-+Solicitar+modificaci%C3%B3n+de+empresa&linkCreation=true&fromPageId=597853359 "null/pages/createpage.action?spaceKey=HERCULES&title=IU-GEN-0082+-+Ver+detalle+-+Solicitar+modificaci%C3%B3n+de+empresa&linkCreation=true&fromPageId=597853359"). |
| [SGI \- ESB \- SGEMP \- Empresas \- Consultar detalle](/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP+-+Empresas+-+Consultar+detalle "/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP+-+Empresas+-+Consultar+detalle") | GET | /empresas/formly/{id} |  | JSON | Devuelve los datos a pintar en el formulario de Ver Detalle/Actualizar en el SGI (formly). |
| [SGI \- ESB \- SGEMP \- Empresas \- Modificar](/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP+-+Empresas+-+Modificar "/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP+-+Empresas+-+Modificar") | PUT | /empresas | JSON | idVendrá relleno si la creación es síncrona y no vendrá si es asíncrona. | Recibe como parámetro la respuesta del usuario del formulario de datos de modificación (formly) con los campos necesarios para actualizar una empresa. |
| [SGI \- ESB \- SGEMP \- Empresas \- Dar de alta](/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP+-+Empresas+-+Dar+de+alta "/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP+-+Empresas+-+Dar+de+alta") | POST | /empresas | JSON |  | Recibe como parámetro la respuesta del usuario del formulario de datos de alta (formly) con los campos necesarios para crear una empresa. |
| [SGI \- ESB \- SGEMP \- Empresas \- Consultar campos alta](/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP+-+Empresas+-+Consultar+campos+alta "/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP+-+Empresas+-+Consultar+campos+alta") | GET | /empresas/formly/create |  | Formly | Devuelve el formulario (formly) a pintar para la pantalla de solicitar alta empresa, pestaña "Datos generales". Ver [IU\-GEN\-0081 \- Solicitar alta de empresa.](https://confluence.um.es/confluence/display/HERCULES/IU-GEN-0081+-+Solicitar+alta+de+empresa "https://confluence.um.es/confluence/display/HERCULES/IU-GEN-0081+-+Solicitar+alta+de+empresa") |

##### Métodos donde el SGI solo hace de pasarela entre Universidad y el sistema de terceros llamante (No son necesarios para el funcionamiento del SGI)



| Servicio | Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- | --- |
| [SGI \- ESB \- SGEMP \- Empresas \- Consultar empresas modificadas](/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP+-+Empresas+-+Consultar+empresas+modificadas "/confluence/display/HERCULES/SGI+-+ESB+-+SGEMP+-+Empresas+-+Consultar+empresas+modificadas") | GET | /empresas/modificadas\-ids | q\+sLa query estará formada por:* fechaModificacion | Lista\[String] | Listado de los identificadores de empresas que han sufrido cambios en los datos de identificativos de la empresa o en sus datos de contacto. |




