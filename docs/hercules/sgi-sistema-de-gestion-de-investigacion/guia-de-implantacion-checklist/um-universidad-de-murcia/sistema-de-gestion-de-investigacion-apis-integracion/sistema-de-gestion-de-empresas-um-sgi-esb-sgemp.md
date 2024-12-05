# Hércules : Sistema de Gestión de Empresas (UM \- SGI \- ESB \- SGEMP)



  










Control de cambios

  


**Leyenda**



| Nuevo | Modificado | Eliminado |
| --- | --- | --- |

  


**Historial de cambios**



| Fecha | Cambios |
| --- | --- |
| 03\-may\-2021 | Adaptaciones a los cambios de operativa y campos para el alta de empresas con y sin datos económicos y a la nueva solicitud de modificación de las mismas. |
| 17\-may\-2021 | Adaptaciones a la fusión de los campos nombre y razón social en un único campo, a los nuevos campos de datos de contacto, a la nueva asociación con sectores industriales, códigos CNAE o clasificaciones de tipo sector industrial (llamado indistintamente de las tres formas) y al nuevo campo de "Tipo de tercero Reino Unido" para entidades con datos económicos con dirección en Reino Unido. |
| 08\-jun\-2021 | Se actualizan los siguientes servicios del API de empresas:* POST: Se cambia la definición a /empresas/formly. * PUT: Se cambia la definición a /empresas/formly/{id} y se añade en el JSON el campo empresaId para facilitar su identificación. |
| 18\-jun\-2021 | Eliminar de los servicios de este API el método para obtener el listado de tipos de vía y su entidad relacionada por trasladarse al API del SGO. |
| 28\-jun\-2021 | Modificar definición del objeto Empresa para separar los campos nombre y razón social y de la búsqueda para que pueda filtrar por ambos campos. |
| 18\-oct\-2021 | Se modificar el servicio del alta de empresa para que en el caso de que el servicio sea síncrono devuelva el id de la empresa creada. |
| 28\-oct\-2021 | Nuevo servicio para obtener las empresas modificadas o nuevas a partir de una fecha |





## Sistema de gestión de empresas

### Entidades

Cambios

03\-may\-2021 Se actualiza lista de entidades para:

* Modificar la definición de las entidades DatosContacto y DatosTipoEmpresa para añadir nuevos campos.
* Añadir las entidades TipoTercero y TipoEmpresaContabilidad.
* Modificar el uso de la entidad TipoEmpresa para pasar a ser información de empresas con datos económicos.

17\-may\-2021 Se actualiza lista de entidades para:

* Añadir las entidades TipoTerceroReinoUnido, TipoVia y EmpresaClasificacion.
* Traducir nombrado de entidades por separación entre entidades internas al SGI y específicas de UM (Empresa, DatosContacto y EmpresaClasificacion).

18\-jun\-2021 Se actualiza la lista de entidades para:

* Eliminar la entidad "TipoVia".


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
| EmpresaClasificacion (EmpresaUMClasificacion) | Listado de relaciones entre empresas y clasificaciones. En principio, únicamente con las del tipo "Código CNAE" también llamado "Sector Industrial". Ver definición de clasificaciones en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md"). |

### Modelo lógico

Cambios

03\-may\-2021 Se actualiza el modelo para:

* Añadir las entidades TipoTercero, TipoEmpresaContabilidad, Pais, ComunidadAutonoma y Provincia.
* Modificar entidad DatosTipoEmpresa para incluir nuevos campos, tipoTercero y tipoEmpresaContabilidad, como referencia a las entidades TipoTercero y TipoEmpresaContabilidad.
* Modificar el uso de la entidad TipoEmpresa para pasar a ser información de empresas con datos económicos.
* Modificar entidad DatosContacto para incluir nuevos campos, paisContacto, comunidadContacto, provinciaContacto como referencia a entidades Pais, ComunidadAutonoma y Provincia y los campos ciudadContacto y direccionWeb.
* Modificar entidad Empresa para:
	+ Incluir el nuevo campo padreId que hace referencia a la empresa que hace de entidad principal en el caso de empresas que son subentidad de otra.
	+ Incluir el nuevo campo datosEconomicos para indicar si se trata de una empresa con datos económicos (está dada de alta en GENTE y en JUSTO) o sin datos económicos (está dada de alta solo en GENTE).

17\-may\-2021 Se actualiza el modelo para:

* Añadir las entidades TipoTerceroReinoUnido, TipoVia y EmpresaClasificacionUM.
* Renombrar entidades Empresa y DatosContacto por separación entre entidades internas al SGI y específicas de UM.
* Modificar Empresa para usar un único campo entidadRazonSocial para gestionar el nombre y/o la razón social de la empresa.
* Modificar DatosTipoEmpresa para incluir el nuevo campo tipoTerceroReinoUnido que hace referencia al tipo de tercero a seleccionar cuando el país es Reino Unido.
* Modificar DatosContacto para:
	+ Añadir los siguientes campos:
		- codigoPostal.
		- tipoVia como referencia a la entidad TipoVia.
		- nombreVia, sustituye a direccionContacto.
		- numero.
		- ampliacion.
		- email.
		- fax.
		- telefono.
	+ Renombrar los campos paisContacto, comAutonomaContacto, provinciaContacto y ciudadContacto eliminando la palabra "Contacto".
* Modificar TipoTercero para incluir la clase de tercero.

18\-jun\-2021 Se actualiza el modelo para:

* Reflejar el cambio de la entidad TipoVia al modelo del SGO.

28\-jun\-2021 Modificar definición de la entidad Empresa para separar los campos nombre y razón social.

### 

### API

Características generales que todas las API REST deben de cumplir:

* [Consultas filtradas y paginadas](https://confluence.um.es/confluence/display/HERCULES/Consultas+filtradas+y+paginadas "https://confluence.um.es/confluence/display/HERCULES/Consultas+filtradas+y+paginadas")
* [Formatos de datos API](/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/formatos-de-datos-api.md "/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/formatos-de-datos-api.md")

#### Definición de los objetos

Cambios

03\-may\-2021 Se actualiza la definición de objetos para:

* Añadir los objetos TipoTercero, TipoEmpresa, TipoEmpresaContabilidad y las referencias a los objetos del SGO Pais, ComunidadAutonoma y Provincia.
* Modificar objeto DatosTipoEmpresa para incluir nuevos campos, tipoTercero y tipoEmpresaContabilidad, como referencia a los objetos TipoTercero y TipoEmpresaContabilidad.
* Modificar el uso del objeto TipoEmpresa para pasar a ser información de empresas con datos económicos.
* Modificar objeto DatosContacto para incluir nuevos campos, paisContacto, comunidadContacto, provinciaContacto, como referencia a los objetos Pais, ComunidadAutonoma y Provincia y los campos ciudadContacto y direccionWeb.
* Modificar objeto Empresa para:
	+ Incluir el nuevo campo padreId que hace referencia a la empresa que hace de entidad principal en el caso de empresas que son subentidad de otra.
	+ Incluir el nuevo campo datosEconomicos para indicar si se trata de una empresa con datos económicos (está dada de alta en GENTE y en JUSTO) o sin datos económicos (está dada de alta solo en GENTE).

17\-may\-2021 

* Añadir los objetos TipoTerceroReinoUnido, TipoVia y EmpresaClasificacion.
* Modificar Empresa para usar un único campo entidadRazonSocial para gestionar el nombre y/o la razón social de la empresa.
* Modificar DatosTipoEmpresa para incluir el nuevo campo tipoTerceroReinoUnido que hace referencia al tipo de tercero a seleccionar cuando el país es Reino Unido.
* Modificar DatosContacto para:
	+ Añadir los siguientes campos:
		- codigoPostal.
		- tipoVia como referencia a la entidad TipoVia.
		- nombreVia, sustituye a direccionContacto.
		- numero.
		- ampliacion.
		- email.
		- fax.
		- telefono.
	+ Renombrar los campos paisContacto, comAutonomaContacto, provinciaContacto y ciudadContacto eliminando la palabra "Contacto".
* Modificar TipoTercero para incluir la clase de tercero.

21\-jun\-2021 Se actualiza la definición de objetos para:

* Eliminar el objeto TipoVia del modelo propio e indicar cómo obtenerlo del SGO en DatosContacto.

28\-jun\-2021 Se actualiza la definición de objetos para:

* Modificar el objeto Empresa para separar los campos nombre y razón social.
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
| paisContacto | Pais | Se devuelve la entidad Pais con todos sus campos. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md"). |
| comAutonomaContacto | ComunidadAutonoma | Se devuelve la entidad ComunidadAutonoma con todos sus campos. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md"). |
| provinciaContacto | Provincia | Se devuelve la entidad Provincia con todos sus campos. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md"). |
| ciudadContacto | String | Ciudad de contacto de la empresa. |
| codigoPostal | String | Código postal de la empresa. |
| tipoVia | TipoVia | Tipo de vía de la dirección de contacto de la empersa. Se devuelve la entidad TipoVia con todos sus campos. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md"). |
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

Cambios

03\-may\-2021 Se actualizan los servicios API para:

* Modificar el funcionamiento del método POST de alta de empresa, ahora recibirá más información, toda la indicada por la UM para el alta (recogida en la pantalla de Alta de Empresa).
* Crear 4 nuevos métodos:
	+ Solicitar la modificación de los datos de Empresa.
	+ Obtener todos los datos de una empresa en JSON para pintar tanto en la pantalla de Modificación como en el Ver Detalle.
	+ Obtener listado de tipos de terceros.
	+ Obtener listado de tipos de empresa para contabilidad.
* Eliminar todos los métodos de alta parcial de datos de Empresa por secciones.

17\-may\-2021 Se actualizan los servicios API para:

* Modificar el funcionamiento del método GET de búsqueda y filtrado de empresas para fundir en un solo campo el filtro por nombre y/o razón social.
* Añadir 3 métodos:
	+ Obtener el listado de clasificaciones de códigos CNAE asociados a una empresa.
	+ Obtener el listado de tipos de vía para seleccionar en la dirección de una empresa.
	+ Obtener el listado de tipos de terceros para Reino Unido para asociar a empresas con datos económicos

08\-jun\-2021 Se actualizan los siguientes servicios del API de empresas:

* POST: Se cambia la definición a /empresas/formly.
* PUT: Se cambia la definición a /empresas/formly/{id} y se añade en el JSON el campo empresaId para facilitar su identificación.

18\-jun\-2021 Se actualiza la lista de servicios del API para:

* Eliminar el servicio /tipos\-via

28\-jun\-2021 Se actualiza la lista de servicios del API para:

* Modificar el funcionamiento del método GET de búsqueda y filtrado de empresas para separar en dos campos el filtro por nombre y/o razón social y que sean por nombre y razón social independientes.

18\-oct\-2021 Se modificar el servicio del alta de empresa para que en el caso de que el servicio sea síncrono devuelva el id de la empresa creada.

* POST /empresas/formly

28\-oct\-2021 Nuevo servicio para obtener las empresas modificadas o nuevas a partir de una fecha

* GET /empresas/modificadas\-ids


| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| GET | /empresas | q\+s (query \+ sort)La query estará formada por:* id * nombre * razonSocial * numeroIdentificacion | Lista\[Empresa] | Listado de Empresa.*Ejemplo*:nombre\=like\=SL, razonSocial\=like\=SL |
| GET | /empresas/{id} |  | Empresa | Detalle de los datos generales de una empresa. |
| POST | /empresas/formly | JSON | idVendrá relleno si la creación es síncrona y no vendrá si es asíncrona. | Recibe como parámetro la respuesta del usuario del formulario de datos de alta (formly) con los campos necesarios para crear una empresa.  **Ejemplo de JSON** Ampliar origen    ``` {   "tipoSedeId": "1",   "datosEconomicos": false,   "entidadRazonSocial": "Entidad",   "tipoIdentificadorFiscalId": "2",   "numeroIdentificadorFiscal": "12312312",   "sectoresIndustriales": [     "4",     "5"   ],   "paisContactoId": "1",   "codigoPostalContacto": "48152",   "ciudadContacto": "Madrid",   "tipoViaContactoId": "1",   "nombreViaContacto": "Gran vía",   "numeroViaContacto": "234",   "ampliacion": "ampliación",   "email": "email@prueba.com",   "telefonoContacto": "66612345",   "faxContacto": "915551234",   "direccionWeb": "http://www.prueba.com",   "tipoTerceroId": "F",   "tipoEmpresaId": "1",   "tipoEmpresaContabilidadId": "1",   "tipoTerceroReinoUnidoId": "S" } ```   Descripción de campos JSON (pulsa para expandir)...* **tipoSedeId**: 0 para tipo 'Entidad' y 1 para tipo 'Subentidad' * **datosEconomicos**: true \| false * **entidadRazonSocial**: Descripción de la entidad o razón social * **tipoIdentificadorFiscalId**: Id de tipo de identificador fiscal procedente del endpoint /tipos\-identificador * **numeroIdentificadorFiscal**: Nº de identificador fiscal * **sectoresIndustriales**:  Array de ids de clasificaciones CNAE procedentes de /empresas\-clasificaciones/empresa/{id} * **paisContactoId**: Id de pais de contacto procedente de endpoint /paises. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md") * **codigoPostalContacto**: Código postal de dirección de contacto * **ciudadContacto**: Ciudad de contacto * **tipoViaContactoId**: Id de tipo de vía de contacto procedente de endpoint /tipos\-via * **nombreViaContacto**: Nombre de vía de contacto * **numeroViaContacto**: Número de dirección de contacto * **ampliacion**: Descripción de ampliación * **email**: Email de contacto * **telefonoContacto**: Teléfono de contacto * **faxContacto**: Fax de contacto * **direccionWeb**: Web de contacto * **tipoTerceroId**: Id de tipo de tercero procedente de endpoint /tipos\-tercero * **tipoEmpresaId**: Id de tipo de empresa procedente de endpoint /tipos\-empresa * **tipoEmpresaContabilidadId**: Id de tipo de empresa contabilidad procedente de endpoint /tipos\-empresa\-contabilidad * **tipoTerceroReinoUnidoId**: Id de tipo de tercero reino unido procedente de endpoint /tipos\-tercero\-reino\-unido |
| PUT | /empresas/formly/{id} | JSON |  | Recibe como parámetro la respuesta del usuario del formulario de datos de modificación (formly) con los campos necesarios para actualizar una empresa.  **Ejemplo de JSON** Ampliar origen    ``` {   "empresaId": "1",   "tipoSedeId": "1",   "datosEconomicos": false,   "entidadRazonSocial": "Entidad",   "tipoIdentificadorFiscalId": "2",   "numeroIdentificadorFiscal": "12312312",   "entidadPrincipal": "entidad principal",   "sectoresIndustriales": [     "4",     "5"   ],   "paisContactoId": "1",   "codigoPostalContacto": "48152",   "ciudadContacto": "Madrid",   "tipoViaContactoId": "1",   "nombreViaContacto": "Gran vía",   "numeroViaContacto": "234",   "ampliacion": "ampliación",   "email": "email@prueba.com",   "telefonoContacto": "66612345",   "faxContacto": "915551234",   "direccionWeb": "http://www.prueba.com",   "tipoTerceroId": "1",   "tipoEmpresaId": "1",   "tipoEmpresaContabilidadId": "1",   "tipoTerceroReinoUnidoId": "S" } ```   Descripción de campos JSON (pulsa para expandir)...* **empresaId:** Id de la empresa * **tipoSedeId**: 0 para tipo 'Entidad' y 1 para tipo 'Subentidad' * **datosEconomicos**: true \| false * **entidadRazonSocial**: Descripción de la entidad o razón social * **tipoIdentificadorFiscalId**: Id de tipo de identificador fiscal procedente del endpoint /tipos\-identificador * **numeroIdentificadorFiscal**: Nº de identificador fiscal * **entidadPrincipal**: Nombre de entidad principal * **sectoresIndustriales**:  Array de ids de clasificaciones CNAE procedentes de /empresas\-clasificaciones/empresa/{id} * **paisContactoId**: Id de pais de contacto procedente de endpoint /paises. Ver definición en [Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-gestion-de-organizaciones-um-sgi-esb-sgo.md") * **codigoPostalContacto**: Código postal de dirección de contacto * **ciudadContacto**: Ciudad de contacto * **tipoViaContactoId**: Id de tipo de vía de contacto procedente de endpoint /tipos\-via * **nombreViaContacto**: Nombre de vía de contacto * **numeroViaContacto**: Número de dirección de contacto * **ampliacion**: Descripción de ampliación * **email**: Email de contacto * **telefonoContacto**: Teléfono de contacto * **faxContacto**: Fax de contacto * **direccionWeb**: Web de contacto * **tipoTerceroId**: Id de tipo de tercero procedente de endpoint /tipos\-tercero * **tipoEmpresaId**: Id de tipo de empresa procedente de endpoint /tipos\-empresa * **tipoEmpresaContabilidadId**: Id de tipo de empresa contabilidad procedente de endpoint /tipos\-empresa\-contabilidad * **tipoTerceroReinoUnidoId**: Id de tipo de tercero reino unido procedente de endpoint /tipos\-tercero\-reino\-unido |
| GET | /empresas/formly/{id} |  | JSON | Devuelve los datos a pintar en el formulario de Ver Detalle/Actualizar en el SGI (formly). Se recibirá el mismo json que en la solicitud de modificación de empresa (/empresas PUT) |
|  | | | | |
| GET | /datos\-contacto/empresa/{id} |  | DatosContacto | Contiene los datos de contacto de una empresa. Ver [UM \- SGI \- ESB \- SGEMP \- Adaptaciones integración](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=UM+-+SGI+-+ESB+-+SGEMP+-+Adaptaciones+integraci%C3%B3n&linkCreation=true&fromPageId=597853493 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=UM+-+SGI+-+ESB+-+SGEMP+-+Adaptaciones+integraci%C3%B3n&linkCreation=true&fromPageId=597853493") para su implementación en el SGI. |
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




