# Hércules : Sistema de Gestión de Empresas(UM \- SGI \- ESB \- SGEMP)



  














## Sistema de gestión de empresas

### Entidades



| Entidad | Descripción |
| --- | --- |
| Empresa (EmpresaUM) | Contiene los datos básicos de una empresa. |
| DatosContacto (DatosContactoUM) | Contiene los datos de contacto de la empresa. |
| DatosTipoEmpresa | Contiene los datos relativos a la tipología de la empresa, estando esta tipología basada en criterios diversos (los que se establezcan por parte de la universidad o sistema externo). |
| TipoIdentificador | Listado con los tipos de identificador fiscal (CIF, VAT, ...). |
| TipoTercero | Listado con los tipos de tercero (necesario para las empresas con datos económicos). |
| TipoEmpresa | Listado con los tipos de empresa (necesario para las empresas con datos económicos). |
| TipoEmpresaContabilidad | Listado con los tipos de empresa para contabilidad (necesario para las empresas con datos económicos). |
| TipoTerceroReinoUnido | Listado con los tipos de tercero para Reino Unido (necesario para las empresas con datos económicos cuyo país es el Reino Unido). |
| EmpresaClasificacion (EmpresaUMClasificacion) | Listado de relaciones entre empresas y clasificaciones. En principio, únicamente con las del tipo "Código CNAE" también llamado "Sector Industrial". Ver definición de clasificaciones en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-consume/caso-de-uso-servicios-implementados-por-la-universidad-de-murcia/sistema-gestion-de-organizacionesum-sgi-esb-sgo/index.md "/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-consume/caso-de-uso-servicios-implementados-por-la-universidad-de-murcia/sistema-gestion-de-organizacionesum-sgi-esb-sgo/index.md"). |

### Modelo lógico

### 

### API

Características generales que todas las API REST deben de cumplir:

* [Consultas filtradas y paginadas](https://confluence.um.es/confluence/display/HERCULES/Consultas+filtradas+y+paginadas "https://confluence.um.es/confluence/display/HERCULES/Consultas+filtradas+y+paginadas")
* [Formatos de datos API](https://confluence.um.es/confluence/display/HERCULES/Formatos+de+datos+API "https://confluence.um.es/confluence/display/HERCULES/Formatos+de+datos+API")

#### Definición de los objetos

##### Empresa

  




| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | String | Identificador de la empresa. |
| nombre | String | Nombre de la empresa. Se devolverá lo mismo que en el campo "razonSocial". |
| razonSocial | String | Razón social de la empresa. Se devolverá lo mismo que en el campo "nombre". |
| tipoIdentificador | TipoIdentificador | Tipo de identificador fiscal de la empresa. Se devuelve la entidad TipoIdentificador con todos sus campos. |
| numeroIdentificacion | String | Número de identificación fiscal de la empresa del tipo indicado en "tipoIdentificador". |
| datosEconomicos | Boolean | Indicador de si se trata de una empresa con datos económicos (está dada de alta en GENTE y en JUSTO) o sin datos económicos (está dada de alta solo en GENTE). |
| padreId | String | Identificador de la empresa padre o entidad principal. Estará informado en el caso de empresas que son subentidad de otra. |



**Empresa** Ampliar origen



```
{
    "id": "ent-002",
    "nombre": "Empresa de Prueba",
    "razonSocial": "Empresa de Prueba",
    "tipoIdentificador": {
          "id":"tp-1",
          "nombre":"CIF"
     },
    "numeroIdentificacion": "H11111111",
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


##### DatosTipoEmpresa



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| tipoTercero | TipoTercero | Tipo de tercero. Se devuelve la entidad TipoTercero con todos sus campos. |
| tipoEmpresa | TipoEmpresa | Tipo de empresa. Se devuelve la entidad TipoEmpresa con todos sus campos. |
| tipoEmpresaContabilidad | TipoEmpresaContabilidad | Tipo de tercero. Se devuelve la entidad TipoEmpresaContabilidad con todos sus campos. |
| tipoTerceroReinoUnido | TipoTerceroReinoUnido | Tipo de tercero para personas físicas (personas actuando como empresas) con dirección en el Reino Unido. Se devuelve la entidad TipoTerceroReinoUnido con todos sus campos. |



**DatosTipoEmpresa** Ampliar origen



```
{ 
	"tipoTercero": {
    	"id":"tt-1",
    	"nombre": "Personas jurídicas españolas"   
	},
	"tipoEmpresa": {
    	"id":"te-1",
    	"nombre": "Empr. extranjeras"   
	},  
	"tipoEmpresaContabilidad": {
    	"id":"tec-1",
	    "nombre": "Otros entes del sector público, empresa o institución privada"   
	},
	"tipoTerceroReinoUnido": {
    	"id":"IN",
	    "nombre": "Tercero de Irlanda del Norte" 
	}
}
```


##### TipoTercero



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | String | Identificador de la entidad TipoTercero. |
| nombre | String | Nombre. |
| clase | String | Clase de tercero Reino Unido. Posibles valores: F (Persona física), J (Persona jurídica). |



**TipoTercero** Ampliar origen



```
{ 
    "id":"tt-1",
    "nombre": "Personas jurídicas: españolas",
	"clase": "J"
}
```


##### TipoEmpresa



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | String | Identificador de la entidad TipoEmpresa. |
| nombre | String | Nombre. |



**TipoEmpresa** Ampliar origen



```
{ 
    "id":"te-1",
    "nombre": "Empr. extranjeras"   
}
```


##### TipoEmpresaContabilidad



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | String | Identificador de la entidad TipoEmpresaContabilidad. |
| nombre | String | Nombre. |



**TipoEmpresaContabilidad** Ampliar origen



```
{ 
    "id":"tec-1",
    "nombre": "Otros entes del sector público, empresa o institución privada"   
}
```


##### TipoTerceroReinoUnido



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | String | Identificador de la entidad TipoTerceroReinoUnido. Posibles valores: S (Tercero normal), IN (Tercero de Irlanda del Norte). |
| nombre | String | Nombre. Posibles valores: Tercero normal (S), Tercero de Irlanda del Norte (IN). |



**TipoTerceroReinoUnido** Ampliar origen



```
{ 
    "id":"IN",
    "nombre": "Tercero de Irlanda del Norte"
}
```


##### EmpresaClasificacion



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | String | Identificador de la clasificación. |
| codigo | String | Código de la clasificación. |
| nombre | String | Nombre de la clasificación. |
| padreId | String | Identificador de la entidad padre de la clasificación. |



**Empresa\-Clasificación padre** Ampliar origen



```
   {
        "id": "1",
        "codigo": "01"
        "nombre":"Cultivos no perennes",
        "padreId": null
    }
```




**Empresa\-Clasificación hija de primer nivel** Ampliar origen



```
   {
        "id": "2",
		"codigo": "0112"
        "nombre":"Cultivo de arroz", 
        "padreId": "1"
    }
```


  
##### DatosContacto

  




| Nombre | Tipo | Descripción |
| --- | --- | --- |
| paisContacto | Pais | Se devuelve la entidad Pais con todos sus campos. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-consume/caso-de-uso-servicios-implementados-por-la-universidad-de-murcia/sistema-gestion-de-organizacionesum-sgi-esb-sgo/index.md "/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-consume/caso-de-uso-servicios-implementados-por-la-universidad-de-murcia/sistema-gestion-de-organizacionesum-sgi-esb-sgo/index.md"). |
| comAutonomaContacto | ComunidadAutonoma | Se devuelve la entidad ComunidadAutonoma con todos sus campos. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-consume/caso-de-uso-servicios-implementados-por-la-universidad-de-murcia/sistema-gestion-de-organizacionesum-sgi-esb-sgo/index.md "/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-consume/caso-de-uso-servicios-implementados-por-la-universidad-de-murcia/sistema-gestion-de-organizacionesum-sgi-esb-sgo/index.md"). |
| provinciaContacto | Provincia | Se devuelve la entidad Provincia con todos sus campos. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-consume/caso-de-uso-servicios-implementados-por-la-universidad-de-murcia/sistema-gestion-de-organizacionesum-sgi-esb-sgo/index.md "/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-consume/caso-de-uso-servicios-implementados-por-la-universidad-de-murcia/sistema-gestion-de-organizacionesum-sgi-esb-sgo/index.md"). |
| ciudadContacto | String | Ciudad de contacto de la empresa. |
| codigoPostal | String | Código postal de la empresa. |
| tipoVia | TipoVia | Tipo de vía de la dirección de contacto de la empersa. Se devuelve la entidad TipoVia con todos sus campos. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-consume/caso-de-uso-servicios-implementados-por-la-universidad-de-murcia/sistema-gestion-de-organizacionesum-sgi-esb-sgo/index.md "/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-consume/caso-de-uso-servicios-implementados-por-la-universidad-de-murcia/sistema-gestion-de-organizacionesum-sgi-esb-sgo/index.md"). |
| nombreVia | String | Nombre de la vía de la dirección de contacto de la empresa. |
| numero | String | Número de la vía de la dirección de contacto de la empresa. |
| ampliacion | String | Campo para ampliar la informaicón de la dirección de contacto de la empresa. |
| email | String | Email de contacto de la empresa. |
| fax | String | Fax de contacto de la empresa. |
| telefono | String | Teléfono de contacto de la empresa. |
| direccionWeb | String | Dirección web de la empresa. |

  




**DatosContacto** Ampliar origen



```
{
	"paisContacto": {
       "id":"33",
       "nombre":"España"
     },
    "comAutonomaContacto": {
       "id":"ca-3",
       "nombre":"Asturias"
     }, 
    "provinciaContacto": {
       "id":"pro-1",
       "nombre":"Asturias"
     }, 
	"ciudadContacto": "Oviedo",
	"codigoPostal": "33002",
	"tipoVia": {
       "id":"tv-1",
       "nombre":"Calle"
     },
    "nombreVia": "Uría",
    "numero": "4",
	"ampliacion": "puerta A",
	"email": "email@empresadeprueba.es",
	"fax": "985798765",
	"telefono": "985798766",
	"direccionWeb": "www.empresadeprueba.es"
}
```


#### Servicios



| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| GET | /empresasFast | * búsqueda (cadena a buscar en nombre / razón social/ número de identificación). | Lista\[Empresa] | Listado de Empresa.*Ejemplo*:busqueda\=Universidad**NOTA**:La búsqueda no es sensible a mayúsculas ni minúsculas. Los parámetros no deben ir entrecomillados.Se devuelven como máximo 11 registros, al devolver más de 10 registros el buscador indicará que existen más registros y se puede refinar la búsqueda. |
| GET | /empresas | q\+s (query \+ sort)La query estará formada por:* id * nombre * razonSocial * numeroIdentificacion | Lista\[Empresa] | Listado de Empresa.*Ejemplo*:nombre\=like\=SL, razonSocial\=like\=SL |
| GET | /empresas/{id} |  | Empresa | Detalle de los datos generales de una empresa. |
| POST | /empresas/formly | JSON | idVendrá relleno si la creación es síncrona y no vendrá si es asíncrona. | Recibe como parámetro la respuesta del usuario del formulario de datos de alta (formly) con los campos necesarios para crear una empresa.  **Ejemplo de JSON** Ampliar origen    ``` {   "tipoSedeId": "1",   "datosEconomicos": false,   "entidadRazonSocial": "Entidad",   "tipoIdentificadorFiscalId": "2",   "numeroIdentificadorFiscal": "12312312",   "sectoresIndustriales": [     "4",     "5"   ],   "paisContactoId": "1",   "codigoPostalContacto": "48152",   "ciudadContacto": "Madrid",   "tipoViaContactoId": "1",   "nombreViaContacto": "Gran vía",   "numeroViaContacto": "234",   "ampliacion": "ampliación",   "email": "email@prueba.com",   "telefonoContacto": "66612345",   "faxContacto": "915551234",   "direccionWeb": "http://www.prueba.com",   "tipoTerceroId": "F",   "tipoEmpresaId": "1",   "tipoEmpresaContabilidadId": "1",   "tipoTerceroReinoUnidoId": "S" } ```   Descripción de campos JSON (pulsa para expandir)...* **tipoSedeId**: 0 para tipo 'Entidad' y 1 para tipo 'Subentidad' * **datosEconomicos**: true \| false * **entidadRazonSocial**: Descripción de la entidad o razón social * **tipoIdentificadorFiscalId**: Id de tipo de identificador fiscal procedente del endpoint /tipos\-identificador * **numeroIdentificadorFiscal**: Nº de identificador fiscal * **sectoresIndustriales**:  Array de ids de clasificaciones CNAE procedentes de /empresas\-clasificaciones/empresa/{id} * **paisContactoId**: Id de pais de contacto procedente de endpoint /paises. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-consume/caso-de-uso-servicios-implementados-por-la-universidad-de-murcia/sistema-gestion-de-organizacionesum-sgi-esb-sgo/index.md "/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-consume/caso-de-uso-servicios-implementados-por-la-universidad-de-murcia/sistema-gestion-de-organizacionesum-sgi-esb-sgo/index.md") * **codigoPostalContacto**: Código postal de dirección de contacto * **ciudadContacto**: Ciudad de contacto * **tipoViaContactoId**: Id de tipo de vía de contacto procedente de endpoint /tipos\-via * **nombreViaContacto**: Nombre de vía de contacto * **numeroViaContacto**: Número de dirección de contacto * **ampliacion**: Descripción de ampliación * **email**: Email de contacto * **telefonoContacto**: Teléfono de contacto * **faxContacto**: Fax de contacto * **direccionWeb**: Web de contacto * **tipoTerceroId**: Id de tipo de tercero procedente de endpoint /tipos\-tercero * **tipoEmpresaId**: Id de tipo de empresa procedente de endpoint /tipos\-empresa * **tipoEmpresaContabilidadId**: Id de tipo de empresa contabilidad procedente de endpoint /tipos\-empresa\-contabilidad * **tipoTerceroReinoUnidoId**: Id de tipo de tercero reino unido procedente de endpoint /tipos\-tercero\-reino\-unido |
| PUT | /empresas/formly/{id} | JSON |  | Recibe como parámetro la respuesta del usuario del formulario de datos de modificación (formly) con los campos necesarios para actualizar una empresa.  **Ejemplo de JSON** Ampliar origen    ``` {   "empresaId": "1",   "tipoSedeId": "1",   "datosEconomicos": false,   "entidadRazonSocial": "Entidad",   "tipoIdentificadorFiscalId": "2",   "numeroIdentificadorFiscal": "12312312",   "entidadPrincipal": "entidad principal",   "sectoresIndustriales": [     "4",     "5"   ],   "paisContactoId": "1",   "codigoPostalContacto": "48152",   "ciudadContacto": "Madrid",   "tipoViaContactoId": "1",   "nombreViaContacto": "Gran vía",   "numeroViaContacto": "234",   "ampliacion": "ampliación",   "email": "email@prueba.com",   "telefonoContacto": "66612345",   "faxContacto": "915551234",   "direccionWeb": "http://www.prueba.com",   "tipoTerceroId": "1",   "tipoEmpresaId": "1",   "tipoEmpresaContabilidadId": "1",   "tipoTerceroReinoUnidoId": "S" } ```   Descripción de campos JSON (pulsa para expandir)...* **empresaId:** Id de la empresa * **tipoSedeId**: 0 para tipo 'Entidad' y 1 para tipo 'Subentidad' * **datosEconomicos**: true \| false * **entidadRazonSocial**: Descripción de la entidad o razón social * **tipoIdentificadorFiscalId**: Id de tipo de identificador fiscal procedente del endpoint /tipos\-identificador * **numeroIdentificadorFiscal**: Nº de identificador fiscal * **entidadPrincipal**: Nombre de entidad principal * **sectoresIndustriales**:  Array de ids de clasificaciones CNAE procedentes de /empresas\-clasificaciones/empresa/{id} * **paisContactoId**: Id de pais de contacto procedente de endpoint /paises. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-consume/caso-de-uso-servicios-implementados-por-la-universidad-de-murcia/sistema-gestion-de-organizacionesum-sgi-esb-sgo/index.md "/hercules/apis-de-integracion/sgi-servicios-de-terceros-que-consume/caso-de-uso-servicios-implementados-por-la-universidad-de-murcia/sistema-gestion-de-organizacionesum-sgi-esb-sgo/index.md"). * **codigoPostalContacto**: Código postal de dirección de contacto * **ciudadContacto**: Ciudad de contacto * **tipoViaContactoId**: Id de tipo de vía de contacto procedente de endpoint /tipos\-via * **nombreViaContacto**: Nombre de vía de contacto * **numeroViaContacto**: Número de dirección de contacto * **ampliacion**: Descripción de ampliación * **email**: Email de contacto * **telefonoContacto**: Teléfono de contacto * **faxContacto**: Fax de contacto * **direccionWeb**: Web de contacto * **tipoTerceroId**: Id de tipo de tercero procedente de endpoint /tipos\-tercero * **tipoEmpresaId**: Id de tipo de empresa procedente de endpoint /tipos\-empresa * **tipoEmpresaContabilidadId**: Id de tipo de empresa contabilidad procedente de endpoint /tipos\-empresa\-contabilidad * **tipoTerceroReinoUnidoId**: Id de tipo de tercero reino unido procedente de endpoint /tipos\-tercero\-reino\-unido |
| GET | /empresas/formly/{id} |  | JSON | Devuelve los datos a pintar en el formulario de Ver Detalle/Actualizar en el SGI (formly). Se recibirá el mismo json que en la solicitud de modificación de empresa (/empresas PUT) |
|  | | | | |
| GET | /datos\-contacto/empresa/{id} |  | DatosContacto | Contiene los datos de contacto de una empresa. Ver [UM \- SGI \- ESB \- SGEMP \- Adaptaciones integración](https://confluence.treelogic.com/pages/viewpage.action?pageId=108605766 "https://confluence.treelogic.com/pages/viewpage.action?pageId=108605766") para su implementación en el SGI. |
|  | | | | |
| GET | /empresas\-clasificaciones/empresa/{id} |  | EmpresaClasificacion | Listado de las clasificaciones de tipo códigos CNAE o sectores industriales asociados a una empresa. |
|  | | | | |
| GET | /datos\-tipo\-empresa/empresa/{id} |  | DatosTipoEmpresa | Detalle de los datos de tipo de empresa de una empresa. |
|  | | | | |
| GET | /tipos\-identificador |  | Lista\[TipoIdentificador] | Listado de tipos de identificador fiscal para las empresas ordenados alfabéticamente de forma ascendente. |
|  | | | | |
| GET | /tipos\-tercero |  | Lista\[TipoTercero] | Listado de tipos de tercero ordenados alfabéticamente de forma ascendente. |
| GET | /tipos\-empresa |  | Lista\[TipoEmpresa] | Listado de tipos de empresa ordenados alfabéticamente de forma ascendente. |
| GET | /tipos\-empresa\-contabilidad |  | Lista\[TipoEmpresaContabilidad] | Listado de tipos de empresa para contabilidad ordenados alfabéticamente de forma ascendente. |
| GET | /tipos\-tercero\-reino\-unido |  | Lista\[TipoTerceroReinoUnido] | Listado de tipos de tercero, en caso de que el país sea Reino Unido, ordenados alfabéticamente de forma ascendente. |
|  | | | | |
| **Métodos donde el SGI solo hace de pasarela entre Universidad y CVN** | | | | |
| GET | /empresas/modificadas\-ids | q\+sLa query estará formada por:* fechaModificacion | Lista\[String] | Listado de los identificadores de empresas que han sufrido cambios en los datos de identificativos de la empresa o en sus datos de contacto (entidad Empresa y entidad DatosContacto) |




