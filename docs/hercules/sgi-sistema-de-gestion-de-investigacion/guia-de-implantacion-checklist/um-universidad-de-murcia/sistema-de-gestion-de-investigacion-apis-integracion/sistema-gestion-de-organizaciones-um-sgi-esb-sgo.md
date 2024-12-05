# Hércules : Sistema Gestión de Organizaciones (UM \- SGI \- ESB \- SGO)











Control de cambios

  


**Leyenda**



| Nuevo | Modificado | Eliminado |
| --- | --- | --- |

  


**Historial de cambios**



| Fecha | Cambios |
| --- | --- |
| 03\-may\-2021 | Adaptaciones a los cambios de operativa y campos para el alta de empresas, en concreto, campos de país y provincia de contacto donde no se quiere tener que informar por parte del usuario la comunidad autónoma sino únicamente la provincia. |
| 12\-may\-2021 | Adaptación para contemplar la gestión de la clasificación "Sector industrial" (o códigos CNAE) en la UM, dentro de GENTE. |
| 18\-jun\-2021 | Añadir a este API el servicio para obtener el listado de tipos de vía y su entidad relacionada por trasladarse aquí su gestión desde el API de SGEMP. |
| 19\-nov\-2021 | Añadir a este API el servicio para obtener el listado de centros y su entidad relacionada por necesidad de disponer del dato de centro de adscripción de una persona en SGP. |





## Sistema de Gestión de la estructura Orgánica

### Entidades

Cambios

12\-may\-2021 Se actualiza lista de entidades para:

* Añadir entidad "Clasificacion" a la lista de entidades a contemplar en la comunicación con el API UM.

18\-jun\-2021 Se actualiza lista de entidades para:

* Añadir entidad "TipoVia" a la lista de entidades a contemplar en la comunicación con el API UM.

19\-nov\-2021 Se actualiza lista de entidades para:

* Añadir entidad "Centro" a la lista de entidades a contemplar en la comunicación con el API UM.


| Entidad | Descripción |
| --- | --- |
| AreaConocimiento | Listado con las áreas de conocimiento de la Universidad. Se entiende que las áreas de conocimiento de primer nivel son las ramas de conocimiento. |
| Departamento | Listado con los departamentos que tiene la Universidad. |
| Pais | Listado con los países que utiliza el SGI.Se necesita un mapeo con los valores de la Fecyt para poder mostrarlo en el módulo CVN.Se necesita un mapeo con los valores del sistema externo de la Universidad. Se hará en fase de implantación, se tendrá una tabla de traducción de los códigos del SGI y los códigos del sistema externo en caso de no ser los mismos. |
| ComunidadAutonoma | Listado con las comunidades autónomas que utiliza el SGI.Se necesita un mapeo con los valores de la Fecyt para poder mostrarlo en el módulo CVN.Se necesita un mapeo con los valores del sistema externo de la Universidad. Se hará en fase de implantación, se tendrá una tabla de traducción de los códigos del SGI y los códigos del sistema externo en caso de no ser los mismos. |
| Provincia | Listado con las provincias que utiliza el SGI.Se necesita un mapeo con los valores de la Fecyt para poder mostrarlo en el módulo CVN.Se necesita un mapeo con los valores del sistema externo de la Universidad. Se hará en fase de implantación, se tendrá una tabla de traducción de los códigos del SGI y los códigos del sistema externo en caso de no ser los mismos. |
| Clasificacion | Estructura de información enfocada jerárquicamente que recogerá la Clasificación Nacional de Actividades Económicas (CNAE), también conocido como el "Sector industrial".Los elementos de información dentro de esta estructura se asociarán algunas entidades dentro del SGI como por ejemplo las Empresas.Referencias para la carga de datos: * [https://www.cnae.com.es/lista\-actividades.php](https://www.cnae.com.es/lista-actividades.php "https://www.cnae.com.es/lista-actividades.php") * [https://www.ine.es/daco/daco42/clasificaciones/cnae09/estructura\_cnae2009\.xls](https://www.ine.es/daco/daco42/clasificaciones/cnae09/estructura_cnae2009.xls "https://www.ine.es/daco/daco42/clasificaciones/cnae09/estructura_cnae2009.xls") |
| TipoVia | Listado con los tipos de vía (Calle, Avenida, ...). |
| Centro | Listado con los centros de la Universidad. |

  


### Modelo lógico

Cambios

12\-may\-2021 Se actualiza el modelo para:

* Añadir el campo "codigo" a la entidad "Clasificacion". Se incorpora para las clasificaciones propias de la investigación (UNESCO, NABS  u otras) y que gestionará el SGI pero que comparten estructura y representación en el modelo con la clasificación CNAE que es una clasificación nacional de ámbito general que gestionarán los sistemas de la universidad.

18\-jun\-2021 Se actualiza el modelo para:

* Añadir la nueva entidad "TipoVia".

19\-nov\-2021 Se actualiza el modelo para:

* Añadir la nueva entidad "Centro".
![](/attachments/597852444/597866178.png)

### API

Características generales que todas las API REST deben de cumplir:

* [Consultas filtradas y paginadas](https://confluence.um.es/confluence/display/HERCULES/Consultas+filtradas+y+paginadas "https://confluence.um.es/confluence/display/HERCULES/Consultas+filtradas+y+paginadas")
* [Formatos de datos API](https://confluence.um.es/confluence/display/HERCULES/Formatos+de+datos+API "https://confluence.um.es/confluence/display/HERCULES/Formatos+de+datos+API")

#### Definición de los objetos

Cambios

12\-may\-2021 Se actualizan los objetos para:

* Añadir el objeto "Clasificacion" a la lista de objetos de comunicación con el API UM. Para la comunicación, no es necesario que lleve el campo "tipoClasificacion".

18\-jun\-2021 Se actualiza el modelo para:

* Añadir el nuevo objeto "TipoVia".

19\-nov\-2021 Se actualizan los objetos para:

* Añadir el objeto "Centro" a la lista de objetos de comunicación con el API UM.
##### AreaConocimiento



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | String | Identificador del área de conocimiento. |
| nombre | String | Nombre del área de conocimiento. |
| padreId | String | Identificador de la entidad padre del área de conocimiento. |



**AreaConocimiento** Ampliar origen



```
  {
        "id": "11",
        "nombre": "Medicina Preventiva y Salud Pública",
        "padreId": "1"
	    
    }
```


##### Departamento



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | String | Identificador del departamento. |
| nombre | String | Nombre del departamento. |



**Departamento** Ampliar origen



```
  {
        "id":"dpt-1",
         "nombre":"Departamento Ciencias de la tecnología"   
  }
```


##### Pais



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | String | Identificador del país. |
| nombre | String | Nombre del país. |



**Pais** Ampliar origen



```
  {
        "id": "33",
		"nombre": "Francia"
  }
```


##### ComunidadAutonoma



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | String | Identificador de la comunidad autónoma/región. |
| nombre | String | Nombre de la comunidad autónoma/región. |
| paisId | String | Identificador del país. |



**ComunidadAutonoma** Ampliar origen



```
  {
        "id": "1",
        "nombre": "Región central",
        "paisId":"33"
	    
    }
```


##### Provincia



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | String | Identificador de la provincia. |
| nombre | String | Nombre de la provincia. |
| comunidadAutonomaId | String | Identificador de la comunidad autónoma. |



**Provincia** Ampliar origen



```
   {
        "id": "1",
		"nombre": "Provincia central",
        "comunidadAutonomaId":"15"
	    
    }
```


##### Clasificacion



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | String | Identificador de la clasificación. |
| codigo | String | Código de la clasificación. |
| nombre | String | Nombre de la clasificación. |
| padreId | String | Identificador de la entidad padre de la clasificación. |



**Clasificación padre** Ampliar origen



```
   {
        "id": "1",
        "codigo": "01"
        "nombre":"Cultivos no perennes",
        "padreId": null
    }
```




**Clasificación hija de primer nivel** Ampliar origen



```
   {
        "id": "2",
		"codigo": "0112"
        "nombre":"Cultivo de arroz", 
        "padreId": "1"
    }
```


##### TipoVia



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | String | Identificador de la entidad TipoVia. |
| nombre | String | Nombre del tipo de vía. |



**TipoVia** Ampliar origen



```
{
	"id":"tv-1",
    "nombre":"Calle"
}
```


##### Centro



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | String | Identificador de la entidad Centro. |
| nombre | String | Nombre del centro. |



**Centro** Ampliar origen



```
{
	"id":"cen-1",
    "nombre":"Centro 1 de la Universidad de Murcia"
}
```


#### Métodos

Cambios

03\-may\-2021 Se actualizan los servicios API para:

* Crear 3 nuevos métodos que permita recuperar los datos de provincia, comunidad autónoma y país a partir de su identificador.
* Corregir el planteamiento de los métodos de obtención de provincias y comunidades autónomas para recibir parámetros en formato estándar.

12\-may\-2021 Se actualizan los servicios API para:

* Crear 2 nuevos métodos que permitan recuperar los datos de las clasificaciones CNAE.

18\-jun\-2021 Se actualizan los servicios API para:

* Crear nuevo método para recuperar el listado de tipos de vía.

19\-nov\-2021 Se actualizan los servicios API para:

* Crear 2 nuevos métodos que permitan recuperar los datos de un centro concreto y la lista de todos los centros.


| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| GET | /areas\-conocimiento | q\+s (query \+ sort)La query estará formada por:* padreId | Lista\[AreaConocimiento] |  | Listado de áreas de conocimiento.Nota: en el caso de no recibirse un padreId en la query, se devolverán todas las áreas de conocimiento y en caso de indicarse en la query que se quieren solo las que tengan un padreId con valor "null" se devolverán únicamente las de primer nivel o nivel raíz.*Ejemplo de query para obtener solo áreas de conocimiento raíz (su padre es null)*:padreId\=na\= |
| GET | /areas\-conocimiento/{id} |  | AreaConocimiento |  | Detalle del área de conocimiento cuyo identificador se indica por parámetro. |
|  | | | | | |
| GET | /departamentos |  | Lista\[Departamento] |  | Listado de departamentos. |
|  | | | | | |
| GET | /paises |  | Lista\[Pais] |  | Listado de países. |
| GET | /paises/{id} |  | Pais |  | Detalle del país cuyo identificador se indica por parámetro. |
|  | | | | | |
| GET | /comunidades\-autonomas | q\+s (query \+ sort)La query estará formada por:* paisId | Lista\[ComunidadAutonoma] |  | Listado de comunidades autónomas.Nota: en el caso de recibirse un país como parámetro se devolverán todas las comunidades autónomas de ese país. |
| GET | /comunidades\-autonomas/{id} |  | ComunidadAutonoma |  | Detalle de la comunidad autónoma cuyo identificador se indica por parámetro. |
|  | | | | | |
| GET | /provincias | q\+s (query \+ sort)La query estará formada por:* comunidadAutonomaId | Lista\[Provincia] |  | Listado de provincias. Nota: en el caso de recibirse una comunidad autónoma como parámetro se devolverán todas las provincias de esa comunidad autónoma. |
| GET | /provincias/{id} |  | Provincia |  | Detalle de la provincia cuyo identificador se indica por parámetro. |
|  | | | | | |
| GET | /clasificaciones | q\+s (query \+ sort)La query estará formada por:* padreId | Lista\[Clasificacion] |  | Listado de clasificaciones CNAE.Nota: en el caso de no recibirse un padreId en la query, se devolverán todas las clasificaciones y en caso de indicarse en la query que se quieren solo las que tengan un padreId con valor "null" se devolverán únicamente las de primer nivel o nivel raíz.*Ejemplo de query para obtener sólo las clasificaciones raíz (su padre es null)*:padreId\=na\=Ver [UM \- SGI \- ESB \- SGEMP \- Adaptaciones integración](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=UM+-+SGI+-+ESB+-+SGEMP+-+Adaptaciones+integraci%C3%B3n&linkCreation=true&fromPageId=597852444 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=UM+-+SGI+-+ESB+-+SGEMP+-+Adaptaciones+integraci%C3%B3n&linkCreation=true&fromPageId=597852444") para la implementación de este servicio en el SGI. |
| GET | /clasificaciones/{id} |  | Clasificacion |  | Detalle de la clasificación CNAE cuyo identificador se indica por parámetro.Ver [UM \- SGI \- ESB \- SGEMP \- Adaptaciones integración](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=UM+-+SGI+-+ESB+-+SGEMP+-+Adaptaciones+integraci%C3%B3n&linkCreation=true&fromPageId=597852444 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=UM+-+SGI+-+ESB+-+SGEMP+-+Adaptaciones+integraci%C3%B3n&linkCreation=true&fromPageId=597852444") para la implementación de este servicio en el SGI. |
|  | | | | | |
| GET | /tipos\-via |  | Lista\[TipoVia] |  | Listado de tipos de vía ordenados alfabéticamente de forma ascendente. |
|  | | | | | |
| GET | /centros |  | Lista\[Centro] |  | Listado de centros. |
| GET | /centros/{id} |  | Centro |  | Detalle del centro cuyo identificador se indica por parámetro. |




