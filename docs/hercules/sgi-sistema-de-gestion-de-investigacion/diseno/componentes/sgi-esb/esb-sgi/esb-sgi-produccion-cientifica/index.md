# Hércules : ESB \- SGI \- Producción Científica











## Sistema de Gestión Investigación

### Entidades



| Entidad | Descripción |
| --- | --- |
| ProduccionCientifica | Entidad que engloba cualquier item de producción científica |
| CampoProduccionCientifica | Entidad para almacenar de forma dinámica los campos de un item de producción científica |
| IndiceImpacto | Entidad que representa un índice de impacto de un item de producción científica |
| Autor | Entidad que representa a un autor, inventor, investigador, etc.. del item de producción científica |
| Acreditacion | Entidad con la url o la referencia al documento que acredita el item de producción científica |
| EpigrafeCVN | Entidad que representa un apartado del CVN junto con el listado de campos dinámicos que se tienen que enviar a PRC para su validación |
| ProduccionCientificaEstado | Entidad que contiene el identificador del item de producción científica en el sistema origen y su estado |

### Modelo lógico

![](/attachments/597853278/597871883.jpg)

### API

Características generales que todas las API REST deben de cumplir:

* [Consultas filtradas y paginadas](/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/consultas-filtradas-y-paginadas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/consultas-filtradas-y-paginadas.md")
* [Formatos de datos API](/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/formatos-de-datos-api.md "/hercules/sgi-sistema-de-gestion-de-investigacion/desarrollo-y-configuracion/estandares-de-desarrollo/formatos-de-datos-api.md")

#### Definición de los objetos

##### ProduccionCientifica



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| idRef | String | Identificador del item de producción científica en el sistema origen. Debe de ser único. |
| epigrafeCVN | String | Código de la Fecyt para identificar el apartado.Ejemplos* 060\.010\.010\.000 (cuando es un item de una publicación) * 060\.010\.020\.000 (cuando es un item de un congreso) * 060\.030\.030\.000 (cuando es un item de un comité editorial) * 050\.020\.030\.000 (cuando es un item de una obra artística) |
| estado | String | Enumerado con dos opciones:VALIDADOPENDIENTE |
| campos | Lista\[CampoProduccionCientifica] | Lista con los campos definidos en el item.Si se envía un CampoProduccionCientifica tiene que tener los dos campos informados, el codigoCVN y los valores, en caso de que no tenga valores, entonces no se enviará el bloque CampoProduccionCientifica para ese codigoCVN. |
| autores | Lista\[Autor] | Lista con los autores del item. |
| indicesImpacto | Lista\[IndiceImpacto] | Lista con los índices de impacto del item. |
| proyectos | Lista\[Numérico] | Lista con los identificadores de los proyectos SGI con los que se relaciona el item de producción científica |
| acreditaciones | Lista\[Acreditacion] | Lista con las url y/o documentos que acreditan el item. |

  


##### CampoProduccionCientifica

  




| Nombre | Tipo | Descripción |
| --- | --- | --- |
| codigoCVN | String | Código de la Fecyt para identificar el campo del item. |
| valores | Lista\[String] | Lista con los valores indicados en codigoCVN. Lo normal es que sea un único valor, por lo que se enviará una lista de un único String, pero en el caso de que existan mas de un valor porque en el CVN sea tratado el campo como una lista, se recogerán todos los valores.Los valores pueden ser una cadena de texto, el valor de una fecha o de un número. En el caso de que el campo sea de tipo booleano, es decir, pueda tener valores Sí/No se informará con los textos "true" si tiene el valor "Sí" o "false" si tiene el valor "No"En caso de ser una fecha tendrá el formato de fecha ISO 8601, sin información horaria o con información horaria (Ver [Formatos de datos API](https://confluence.um.es/confluence/display/HERCULES/Formatos+de+datos+API "https://confluence.um.es/confluence/display/HERCULES/Formatos+de+datos+API")). Ejemplos:* 2020\-11\-15 * 2020\-11\-15T23:00:00Z (esto correponde al 15/11/2020 a las 00:00:00\) * 2020\-08\-15T22:00:00Z (esto corresponde al 15/08/2020 a las 00:00:00\)  Para los campos que hagan referencia a una tabla de la Fecyt:Por ejemplo el campo 060\.010\.010\.010 (tipo de producción), en este campo se indicará el código de la tabla, por lo que será un valor de los siguientes::* 004 * 018 * 020 * 032 * 075 * 106 * 173 * 202 * 203 * 204 * 205 * 206 * 207 * 208 * 209 * OTHERS * COMENTARIO\_SISTEMATICO\_NORMAS: será un código añadido al CVN para incorporar el valor "Comentario sistemático a normas" |

  


Los siguientes codigos CVN son **obligatorios** que vayan informados con un valor en la petición.



| EpigrafeCVN | codigoCVN | Descripción |
| --- | --- | --- |
| 060\.010\.010\.000 | 060\.010\.010\.030 | Título de la publicación |
| 060\.010\.010\.000 | 060\.010\.010\.010 | Tipo de producción |
| 060\.010\.010\.000 | 060\.010\.010\.140 | Fecha de la publicación |
| 060\.010\.020\.000 | 060\.010\.020\.010 | Tipo de evento |
| 060\.010\.020\.000 | 060\.010\.020\.030 | Título del trabajo |
| 060\.010\.020\.000 | 060\.010\.020\.190 | Fecha de celebración |
| 060\.020\.030\.000 | 060\.020\.030\.010 | Descripción |
| 060\.020\.030\.000 | 060\.020\.030\.160 | Fecha de inicio |
| 060\.030\.030\.000 | 060\.030\.030\.010 | Nombre del comité editorial |
| 060\.030\.030\.000 | 060\.030\.030\.140 | Fecha de inicio |
| 030\.040\.000\.000 | 030\.040\.000\.030 | Título del trabajo |
| 030\.040\.000\.000 | 030\.040\.000\.140 | Fecha de defensa |
| 050\.020\.030\.000 | 050\.020\.030\.010 | Descripción |
| 050\.020\.030\.000 | 050\.020\.030\.120 | Fecha de inicio |

##### IndiceImpacto



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| fuenteImpacto | String | Tipo de la fuente de impacto. Tomará uno de los valores de la Fecyt junto con los añadidos para producción científica. Puede tener los siguientes valores:* 000 (representa a WOS \- JCR) * 010 (representa a SCOPUS \- SJR) * 020 (representa a INRECS) * BCI (representa a BCI) * ICEE (representa a ICEE) * DIALNET (representa a DIALNET) * CITEC (representa a CITEC) * SCIMAGO (representa a SCIMAGO o ERI) * ERIH (representa a ERIH) * MIAR (representa a MIAR) * FECYT (representa a FECYT) * GII\_GRIN\_SCIE (representa a GII\_GRIN\_SCIE) * CORE (representa a CORE) * OTHERS (representa a Otros) |
| indice | Número | Valor de la fuente de impacto cuando es un número |
| ranking | String | Valor de la fuente de impacto cuando se trata de un ranking (una cadena):* CLASE1 (valor "Clase1" de la fuente de impacto GII\_GRIN\_SCIE) * CLASE2  (valor "Clase2" de la fuente de impacto GII\_GRIN\_SCIE) * CLASE3  (valor "Clase3"  de la fuente de impacto GII\_GRIN\_SCIE) * A\_POR  (valor "A\*" de la fuente de impacto CORE) * A (valor "A" de la fuente de impacto CORE) |
| anio | String | Año en el que se estable el valor del índice para la fuente de impacto. |
| otraFuenteImpacto | String | En el caso de que en tipo tenga la opción OTROS, sería la descripción de la fuente de impacto |
| posicionPublicacion | Número | Indica la posición que ocupa la revista dentro de su categoría |
| numeroRevistas | Número | Número total de revistas existentes en su categoría |
| revista25 | Boolean | Indica si la revista se encuentra dentro del 25% (primer cuartil) de mayor índice de impacto en su área de conocimiento en el año de publicación |

  


##### Autor



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| personaRef | String | Identificador único de la persona dentro del sistema de gestión de personas de la Universidad, en caso de ser un investigador que pertenezca a la Universidad o este dado de alta como externo. En caso de que no exista en la Universidad dicho campo vendrá vacío. En esos casos será obligatorio que venga la firma o el nombre y apellidos. |
| firma | String | Firma del autor. Obligatorio si personaRef y nombre y apellidos no vienen informados. Es decir, se necesita uno de los tres casos:* personaRef * firma * nombre y apellidos |
| nombre | String | Nombre de la persona. Obligatorio si personaRef y la firma no vienen informados |
| apellidos | String | Apellidos de la persona. Obligatorio si personaRef y la firma no vienen informados |
| orden | Numero | Indica la posición del autor dentro del listado de todos los autores, 1, 2, 3, etc... |
| orcidId | String | Identificador ORCID |
| ip | Boolean | Indica si el autor es un IP o no |

  


##### Acreditacion



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| url | String | URL acreditativa en repositorios ajenos a la Universidad |
| documentoRef | String | Identificador del documento acreditativo |



**ProduccionCientifica** Ampliar origen



```
{
"idRef": "1",
"epigrafeCVN":"060.010.010.000",
"campos":  [
 	{
		"codigoCVN": "060.010.010.030",   "valores":["Nombre del artículo dentro de la revista"]
	},
    {
		"codigoCVN": "060.010.010.140",   "valores":["2021-01-01"]
	},
    {
		"codigoCVN": "060.010.010.010",   "valores":["020"]
	},
    {
		"codigoCVN": "060.010.010.070",   "valores":["057"]
	},
	{
		"codigoCVN": "060.010.010.210",   "valores":["Revista Nature"]
	},
    {
		"codigoCVN": "060.010.010.160",   "valores":["0356-2456"]
	},	
    {
		"codigoCVN": "060.010.010.100",   "valores":["Planeta"]
	},
    {
		"codigoCVN": "060.010.010.080",   "valores":["45-5"]
	},	
    {
		"codigoCVN": "060.010.010.090",   "valores":["2-5"]
	},
    {
		"codigoCVN": "060.010.010.390",   "valores":["48517010"]
	},
    {
		"codigoCVN": "060.010.010.400",   "valores":["10.17993"]
	},
    {
		"codigoCVN": "060.010.010.410",   "valores":["040"]
	},     
   {
        "codigoCVN": "INDICE_NORMALIZADO",         "valores":["90"]
    },
    {
        "codigoCVN": "060.010.010.300",         "valores":["true"]
    },
    {
        "codigoCVN": "TIPO_OPEN_ACCESS",         "valores":["ALL"]
    },     {
        "codigoCVN": "PUBLICACION_MUY_RELEVANTE",         "valores":["false"]
    },
    {
        "codigoCVN": "INTERNACIONAL",         "valores":["false"]
    },
    {
        "codigoCVN": "INTERDISCIPLINAR",         "valores":["false"]
    }, 
],
"autores": [
    {
		"personaRef": "11111111",
		"firma":"nombre1.apellido",
		"nombre":"",
        "apellidos":"",
        "orden":1 ,
        "orcidId" :"",
        "ip":true
    },
   {
		"personaRef": "",
		"firma":"nombre1.apellido",
		"nombre":"",
        "apellidos":"",
        "orden":2,
        "orcidId" :"",
        "ip":false     
     },
    {
		"personaRef": "",
        "firma":"",
		"nombre":"nombre1",
        "apellidos":"apellido",
        "orden":3 ,
        "orcidId" :"",
        "ip":false
  }	       
 ],  
 "indicesImpacto": [
    {
		"fuenteImpacto": "GII-GRIN-SCIE",
		"ranking":1.5,
		"anio":"2020",
        
   },
   {
  		"fuenteImpacto": "201",   
        "indice":1.6,
		"anio":"2020",
        "otraFuenteImpacto":"" ,
        "posicionPublicacion": 45,
        "numeroRevistas":100,
        "revista25":false
    }      
 ], 
"proyectos": [12455],
"acreditaciones": [
 	{
		"url": "www.paginamipublicacion.es",
		"documentoRef":""
	}
]

}

```


##### EpigrafeCVN



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| codigo | String | Código de uno de lo apartados del CVN que forman parte de la Producción científica y que necesita validación |
| campos | Lista\[String] | Códigos de los campos del apartado del CVN que se tienen que enviar a Producción científica para su validación |

**Ejemplo epígrafe Publicaciones**

```
{
   "codigo": "060.010.010.000",
   "campos": ["060.010.010.030","060.010.010.140","060.010.010.010","060.010.010.070","060.010.010.210","060.010.010.160","060.010.010.100","060.010.010.080",
"060.010.010.090","060.010.010.390","060.010.010.400","060.010.010.410","060.010.010.300","INDICE_NORMALIZADO","PUBLICACION_MUY_RELEVANTE",
"TIPO_OPEN_ACCESS","INTERNACIONAL","INTERDISCIPLINAR"] }
```

**Ejemplo epígrafe Congresos**

```
{
   "codigo": "060.010.020.000",
   "campos": ["060.010.020.030","060.010.020.190","060.010.020.380","060.010.020.010","060.010.020.080","060.010.020.100","060.010.020.320",
"060.010.020.370","060.010.020.390","060.010.020.050","RESUMEN_REVISTA"] }
```

**Ejemplo epígrafe Comité editorial**

```
{
   "codigo": "060.030.030.000",
   "campos": ["060.030.030.010","060.030.030.140","060.030.030.020","060.030.030.","ISSN","060.030.030.100"}
```

**Ejemplo epígrafe Obra artística**

```
{
   "codigo": "050.020.030.000",
   "campos": ["050.020.030.010","050.020.030.120","050.020.030.020","050.020.030.040","050.020.030.050","050.020.030.090","050.020.030.100",
"050.020.030.110","TIPO_OBRA","COLECTIVA"}
```

**Ejemplo epígrafe Dirección tesis**

```
{
   "codigo": "030.040.000.000",
   "campos": ["030.040.000.030","030.040.000.140","030.040.000.120","030.040.000.170","030.040.000.200","030.040.000.190","030.040.000.160",
"030.040.000.010","MENCION_INDUSTRIAL","MENCION_INTERNACIONAL"]
```

**Ejemplo epígrafe Organización actividad IDI**

```
{
   "codigo": "060.020.030.000",
   "campos": ["060.020.030.010","060.020.030.160","060.020.030.020","060.020.030.030","060.020.030.110"]
```

  


##### ProduccionCientificaEstado



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| idRef | String | Identificador del item de producción científica en el sistema origen. |
| epigrafeCVN | String | Código de la Fecyt para identificar el apartado.Ejemplos* 060\.010\.010\.000 (cuando es un item de una publicación) * 060\.010\.020\.000 (cuando es un item de un congreso) * 060\.030\.030\.000 (cuando es un item de un comité editorial) * 050\.020\.030\.000 (cuando es un item de una obra artística) |
|  | String | Enumerado con dos opciones:VALIDADORECHAZADO |

**ProduccionCientificaEstado**

```
{
   "idRef": "1",
   "epigrafeCVN": "060.010.010.000",   
   "estado": "VALIDADO"
 }
```

#### Servicios

Para componer la URL llamada completa, se debe anteponer a lo indicado en la columna URL lo siguiente: **{HOST}/api/sgiprc**, donde **{HOST}** de deberá sustituir el dominio correspondiente al entorno al que se está accediendo y dicho acceso será por http o https según el caso.

| Servicio | Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- | --- |
| [ESB \- SGI \- Producción científica \- Buscar](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853384 "/confluence/pages/viewpage.action?pageId=597853384") | GET | /producciones\-cientificas/estado | q\+sLa query estará formada por:* fechaEstado | Lista\[[ProduccionCientificaEstado](https://confluence.um.es/confluence/pages/viewpage.action?pageId=120030384#ESBSGIProducci%C3%B3nCient%C3%ADfica-ProduccionCientificaEstado "https://confluence.um.es/confluence/pages/viewpage.action?pageId=120030384#ESBSGIProducci%C3%B3nCient%C3%ADfica-ProduccionCientificaEstado")] | Devuelve el identificador CVN, epígafre CVN y el estado (Validado O Rechazado) de aquellos Ítems, almacenados en producción científica, que han cambiado al estado Validado o Rechazado en una fecha igual o superior a la fecha de estado pasada por parámetro. |
| [ESB \- SGI \- Producción científica \- Dar de alta](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853379 "/confluence/pages/viewpage.action?pageId=597853379") | POST | /producciones\-cientificas | [ProduccionCientifica](https://confluence.um.es/confluence/pages/viewpage.action?pageId=120030384#ESBSGIProducci%C3%B3nCient%C3%ADfica-ProduccionCientifica "https://confluence.um.es/confluence/pages/viewpage.action?pageId=120030384#ESBSGIProducci%C3%B3nCient%C3%ADfica-ProduccionCientifica") |  | Recibe como parámetro los campos necesarios para crear un Ítem de producción científica. |
| [ESB \- SGI \- Producción científica \- Listar epígrafes](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853380 "/confluence/pages/viewpage.action?pageId=597853380") | GET | /epigrafes |  | Lista\[[EpigrafeCVN](https://confluence.um.es/confluence/pages/viewpage.action?pageId=120030384#ESBSGIProducci%C3%B3nCient%C3%ADfica-EpigrafeCVN "https://confluence.um.es/confluence/pages/viewpage.action?pageId=120030384#ESBSGIProducci%C3%B3nCient%C3%ADfica-EpigrafeCVN")] | Listado con los códigos de los apartados del CVN que forman parte de la Producción científica y que necesitan validación. Se enviarán los epígrafes marcados en el SGI de la última convocatoria creada.Por cada epígrafe se enviarán los campos dinámicos del CVN que se tienen que enviar a PRC. Será un subconjunto de los de la Fecyt. |
| [ESB \- SGI \- Producción científica \- Eliminar](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853381 "/confluence/pages/viewpage.action?pageId=597853381") | DELETE | /producciones\-cientificas/{idRef} |  |  | Elimina un ítem de producción científica.El id pasado por URL es el identificador que tienen en el CVN. |
| [ESB \- SGI \- Producción científica \- Modificar](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853382 "/confluence/pages/viewpage.action?pageId=597853382") | PUT | /producciones\-cientificas/{idRef} | [ProduccionCientifica](https://confluence.um.es/confluence/pages/viewpage.action?pageId=120030384#ESBSGIProducci%C3%B3nCient%C3%ADfica-ProduccionCientifica "https://confluence.um.es/confluence/pages/viewpage.action?pageId=120030384#ESBSGIProducci%C3%B3nCient%C3%ADfica-ProduccionCientifica") |  | Recibe como parámetro los campos necesarios para modificar un Ítem de producción científica.El id pasado por URL es el identificador que tienen en el CVN. |

  


#### Ejemplos de JSON de la entidad ProduccionCientifica

##### Publicación \- Libro

  


**Publicación\-Libro**

```
{
"idRef": "2",
"epigrafeCVN":"060.010.010.000",
"campos":  [
 	{
		"codigoCVN": "060.010.010.030",   "valores":[""]
	},
    {
		"codigoCVN": "060.010.010.140",   "valores":["2020-02-10"]
	},
    {
		"codigoCVN": "060.010.010.010",   "valores":["032"]
	},
    {
		"codigoCVN": "060.010.010.070",   "valores":["032"]
	},
	{
		"codigoCVN": "060.010.010.210",   "valores":["Aquitania"]
	},
    {
		"codigoCVN": "060.010.010.160",   "valores":["978-84-0823-551-4"]
	},	
    {
		"codigoCVN": "060.010.010.100",   "valores":["Planeta"]
	},
    {
		"codigoCVN": "060.010.010.080",   "valores":["25"]
	},	
    {
		"codigoCVN": "060.010.010.090",   "valores":["1-416"]
	},
    {
		"codigoCVN": "060.010.010.390",   "valores":["22932567"]
	},
    {
		"codigoCVN": "060.010.010.400",   "valores":["https://doi.org/10.1038/nphys1170"]
	},
    {
		"codigoCVN": "060.010.010.410",   "valores":["040"]
	},     
   {
        "codigoCVN": "INDICE_NORMALIZADO",         "valores":["0.5"]
    },
    {
        "codigoCVN": "060.010.010.300",         "valores":["true"]
    },
    {
        "codigoCVN": "TIPO_OPEN_ACCESS",         "valores":["ALL"]
    },     {
        "codigoCVN": "PUBLICACION_MUY_RELEVANTE",         "valores":["false"]
    },
    {
        "codigoCVN": "INTERNACIONAL",         "valores":["true"]
    },
    {
        "codigoCVN": "INTERDISCIPLINAR",         "valores":["true"]
    }, 
],
"autores": [
    {
		"personaRef": "22932567",
		"firma":"francisco.jose",
		"nombre":"",
        "apellidos":"",
        "orden":1 ,
        "orcidId" :"",
        "ip":true
    },
   {
		"personaRef": "",
		"firma":"pepe.alvarez",
		"nombre":"",
        "apellidos":"",
        "orden":2,
        "orcidId" :"",
        "ip":false     
     },
    {
		"personaRef": "48517010",
        "firma":"",
		"nombre":"angela",
        "apellidos":"almela",
        "orden":3 ,
        "orcidId" :"",
        "ip":false
  }	       
 ],  
 "indicesImpacto": [
    {
		"fuenteImpacto": "BCI",   
        "indice":2.5,
		"anio":"2020",
        "otraFuenteImpacto":"",
        "posicionPublicacion": 30,
        "numeroRevistas":100,
        "revista25":""
   },
   {
  		"fuenteImpacto": "ICEE",   
        "indice":2.6,
		"anio":"",
        "otraFuenteImpacto":"" ,
        "posicionPublicacion": 3,
        "numeroRevistas":100,
        "revista25":false
    }      
 ], 
"proyectos": [1],
"acreditaciones": [
 	{
		"url": "www.paginamipublicacion.es",
		"documentoRef":""
	}
]

}

```

##### Publicación \- Artículo

  


**Publicación\-Artículo**

```
{
"idRef": "3",
"epigrafeCVN":"060.010.010.000",
"campos":  [
 	{
		"codigoCVN": "060.010.010.030",   "valores":["Groenlandia ya perdió una vez casi todo su hielo"]
	},
    {
		"codigoCVN": "060.010.010.140",   "valores":["2019-12-12"]
	},
    {
		"codigoCVN": "060.010.010.010",   "valores":["020"]
	},
    {
		"codigoCVN": "060.010.010.070",   "valores":["057"]
	},
	{
		"codigoCVN": "060.010.010.210",   "valores":["Revista Nature"]
	},
    {
		"codigoCVN": "060.010.010.160",   "valores":["1476-4687"]
	},	
    {
		"codigoCVN": "060.010.010.100",   "valores":["Grupo Editorial Holtzbrinck"]
	},
    {
		"codigoCVN": "060.010.010.080",   "valores":["2"]
	},	
    {
		"codigoCVN": "060.010.010.090",   "valores":["2-5"]
	},
    {
		"codigoCVN": "060.010.010.390",   "valores":[""]
	},
    {
		"codigoCVN": "060.010.010.400",   "valores":["10.17993"]
	},
    {
		"codigoCVN": "060.010.010.410",   "valores":["040"]
	},     
   {
        "codigoCVN": "INDICE_NORMALIZADO",         "valores":["1.5"]
    },
    {
        "codigoCVN": "060.010.010.300",         "valores":["true"]
    },
    {
        "codigoCVN": "TIPO_OPEN_ACCESS",         "valores":["ALL"]
    },     {
        "codigoCVN": "PUBLICACION_MUY_RELEVANTE",         "valores":["true"]
    },
    {
        "codigoCVN": "INTERNACIONAL",         "valores":["true"]
    },
    {
        "codigoCVN": "INTERDISCIPLINAR",         "valores":["false"]
    }, 
],
"autores": [
    {
		"personaRef": "52364567",
		"firma":"simon.apellido",
		"nombre":"",
        "apellidos":"",
        "orden":1 ,
        "orcidId" :"",
        "ip":true
    },
   {
		"personaRef": "02221287",
		"firma":"enrique.apellido",
		"nombre":"",
        "apellidos":"",
        "orden":2,
        "orcidId" :"",
        "ip":false     
     },
    {
		"personaRef": "",
        "firma":"",
		"nombre":"María",
        "apellidos":"García Fernández",
        "orden":3 ,
        "orcidId" :"",
        "ip":false
  }	       
 ],  
 "indicesImpacto": [
    {
		"fuenteImpacto": "010",   
         "indice":1.5,
		"anio":"2020",
        "otraFuenteImpacto":"",
        "posicionPublicacion": 1,
        "numeroRevistas":100,
        "revista25":true
   },
   {
  		"fuenteImpacto": "010",   
        "indice":1.6,
		"anio":"2019",
        "otraFuenteImpacto":"" ,
        "posicionPublicacion": 45,
        "numeroRevistas":100,
        "revista25":false
    }      
 ], 
"proyectos": [2],
"acreditaciones": [
 	{
		"url": "www.paginamipublicacion.es",
		"documentoRef":""
	}
]

}

```

  


##### Participación en Congresos

  


**Congreso**

```
{
"idRef": "4",
"epigrafeCVN":"060.010.020.000",
"campos":  [
 	{
		"codigoCVN": "060.010.020.030",   "valores":["Adopción empresarial de la IA"]
	},
    {
		"codigoCVN": "060.010.020.190",   "valores":["2020-11-15"]
	},
    {   
        "codigoCVN": "060.010.020.380",   "valores":["2020-11-16"]    
	},
	{
		"codigoCVN": "060.010.020.010",   "valores":["008"]
	},
    {
		"codigoCVN": "060.010.020.080",   "valores":["010"]
	},	
    {
		"codigoCVN": "060.010.020.100",   "valores":["Congreso XX de BigData"]
	},
    {
		"codigoCVN": "060.010.020.320",   "valores":["978-84-10-20602-7"]
	},	
    {
		"codigoCVN": "060.010.020.370",   "valores":["Efecto empresarial en la IA "]
	},
    {
		"codigoCVN": "060.010.020.390",   "valores":["52364567"]
	},
    {
		"codigoCVN": "060.010.020.050",   "valores":["730"]
	},
    {
		"codigoCVN": "RESUMEN_REVISTA",   "valores":["true"]
	} 
],
"autores": [
    {
		"personaRef": "52364567",
		"firma":"simon.apellido",
		"nombre":"",
        "apellidos":"",
        "orden":1 ,
        "orcidId" :"",
        "ip":true
    },
   {
		"personaRef": "02221287",
		"firma":"enrique.apellido",
		"nombre":"",
        "apellidos":"",
        "orden":2,
        "orcidId" :"",
        "ip":false     
     },
    {
		"personaRef": "",
        "firma":"",
		"nombre":"María",
        "apellidos":"García Fernández",
        "orden":3 ,
        "orcidId" :"",
        "ip":false
  }	       
 ],    
 "indicesImpacto": [
    {
		"fuenteImpacto": "GII_GRIN_SCIE",
		"ranking":"CLASE1",
		"anio":"2020"
   },
   {
		"fuenteImpacto": "CORE",
		"ranking":"A_POR",
		"anio":"2019"
   }          
], 
"proyectos": [3],
"acreditaciones": [
 	{
		"url": "www.paginamipublicacion.es",
		"documentoRef":""
	}
]

}

```

##### Comités/consejos editoriales

  


**ComiteEditorial**

```
{
"idRef": "5",
"epigrafeCVN":"060.030.030.000",
"campos":  [
 	{
		"codigoCVN": "060.030.030.010",   "valores":["Revista nature"]
	},
    {
		"codigoCVN": "060.030.030.140",   "valores":["2020-07-15"]
	},
    {   
        "codigoCVN": "060.030.030.020",   "valores":["724"]    
	},
	{
		"codigoCVN": "ISSN",   "valores":["1268-5478"]
	},
    {
       "codigoCVN": "060.030.030.100", "valores":["EDITOR"]
	}   
],
"autores": [
    {
		"personaRef": "52364567",
		"firma":"simon.apellido",
		"nombre":"",
        "apellidos":"",
        "orden":1 ,
        "orcidID" :"",
        "ip":true
    },
   {
		"personaRef": "02221287",
		"firma":"enrique.apellido",
		"nombre":"",
        "apellidos":"",
        "orden":2,
        "orcidId" :"",
        "ip":false     
     },
    {
		"personaRef": "01889311",
        "firma":"",
		"nombre":"Luis",
        "apellidos":"García",
        "orden":3 ,
        "orcidId" :"",
        "ip":false
  }	       
 ],  
  "indicesImpacto": [
    {
		"fuenteImpacto": "000",   
        "indice":1.5,
		"anio":"2020",
        "otraFuenteImpacto":"",
        "posicionPublicacion": 1,
        "numeroRevistas":100,
        "revista25":true
   },
   {
  		"fuenteImpacto": "010",   
        "indice":1.6,
		"anio":"2019",
        "otraFuenteImpacto":"" ,
        "posicionPublicacion": 45,
        "numeroRevistas":100,
        "revista25":false
    }      
 ],  
 "proyectos": [2],
"acreditaciones": [
 	{
		"url": "www.paginamipublicacion.es",
		"documentoRef":""
	}
]

}

```

##### Obra artística

  


**Obra artística**

```
{
"idRef": "6",
"epigrafeCVN":"050.020.030.000",
"campos":  [
 	{
		"codigoCVN": "050.020.030.010",   "valores":["Obra que representa las cuarto estaciones del año"]
	},
    {
		"codigoCVN": "050.020.030.120",   "valores":["2019-07-10"]
	},
    {   
        "codigoCVN": "050.020.030.020",   "valores":["Las 4 estaciones"]    
	},
	{
		"codigoCVN": "050.020.030.040",   "valores":["724"]
	},
    {
		"codigoCVN": "050.020.030.050",   "valores":["ES12"]
	},	
    {
		"codigoCVN": "050.020.030.090",   "valores":["true"]
	},
    {
		"codigoCVN": "050.020.030.100",   "valores":["false"]
	},	
    {
		"codigoCVN": "050.020.030.110",   "valores":["true"]
	},
    {
		"codigoCVN": "TIPO_OBRA",   "valores":["EXPOSICION"]
	},
    {
		"codigoCVN": "COLECTIVA",   "valores":["false"]
	}
],
"autores": [
    {
		"personaRef": "52364567",
		"firma":"simon.apellido",
		"nombre":"",
        "apellidos":"",
        "orden":1 ,
        "orcidId" :"",
        "ip":true
    },
   {
		"personaRef": "02221287",
		"firma":"enrique.apellido",
		"nombre":"",
        "apellidos":"",
        "orden":2,
        "orcidId" :"",
        "ip":false     
     },
    {
		"personaRef": "",
        "firma":"",
		"nombre":"María",
        "apellidos":"García Fernández",
        "orden":3 ,
        "orcidId" :"",
        "ip":false
  }	       
 ],     
"proyectos": [1],
"acreditaciones": [
 	{
		"url": "www.paginamipublicacion.es",
		"documentoRef":""
	}
]

}

```

##### Dirección de tesis

**Obra artística**

```
{
"idRef": "7",
"epigrafeCVN":"030.040.000.000",
"campos":  [
 	{
		"codigoCVN": "030.040.000.030",   "valores":["Programa de ejercicio mediante realidad virtual no inmersiva intradiálisis"]
	},
    {
		"codigoCVN": "030.040.000.140",   "valores":["2021-02-17"]
	},
    {   
        "codigoCVN": "030.040.000.120",   "valores":["Jroge Martínez Olmos"]    
	},
	{
		"codigoCVN": "030.040.000.170",   "valores":["true"]
	},
    {
		"codigoCVN": "030.040.000.200",   "valores":["2021-05-06"]
	},	
    {
		"codigoCVN": "030.040.000.190",   "valores":["false"]
	},
    {
		"codigoCVN": "030.040.000.160",   "valores":[""]
	},	
    {
		"codigoCVN": "030.040.000.010",   "valores":["067"]
	},
    {
		"codigoCVN": "MENCION_INDUSTRIAL",   "valores":["true"]
	},
    {
		"codigoCVN": "MENCION_INTERNACIONAL",   "valores":["false"]
	}
],
"autores": [
    {
		"personaRef": "02221287",
		"firma":"enrique.apellido",
		"nombre":"",
        "apellidos":"",
        "orden":1 ,
        "orcidId" :"",
        "ip":true
    },
   {
		"personaRef": "52364567",
		"firma":"simon.apellido",
		"nombre":"",
        "apellidos":"",
        "orden":2,
        "orcidId" :"",
        "ip":true     
     }	       
 ],     
"proyectos": [1],
"acreditaciones": [
 	{
		"url": "www.paginamipublicacion.es",
		"documentoRef":""
	}
]

}

```

##### Organización actividad I\+D\+i

**Obra artística**

```
{
"idRef": "8",
"epigrafeCVN":"060.020.030.000",
"campos":  [
 	{
		"codigoCVN": "060.020.030.010",   "valores":["Organización del Comité de Asesoramiento Científico del Mar Menor"]
	},
    {
		"codigoCVN": "060.020.030.160",   "valores":["2021-03-15"]
	},
    {   
        "codigoCVN": "060.020.030.020",   "valores":["Asesoramiento científico y ejecución de acciones dirigidas a la mejora del estado ecológico del Mar Menor"]    
	},
	{
		"codigoCVN": "060.020.030.030",   "valores":["724"]
	},
    {
		"codigoCVN": "060.020.030.110",   "valores":["ORGANIZATIVO_COMITE"]
	}
   
],
"autores": [
    {
		"personaRef": "02221287",
		"firma":"enrique.apellido",
		"nombre":"",
        "apellidos":"",
        "orden":1 ,
        "orcidId" :"",
        "ip":true
    }	       
 ],     
"proyectos": [1],
"acreditaciones": [
 	{
		"url": "www.paginamipublicacion.es",
		"documentoRef":""
	}
]

}

```

#### Tipo campo CVN



| codigo | Nombre del campo | tipoCVN norma Fecyt | Dato a enviar |
| --- | --- | --- | --- |
| 060\.010\.010\.030 | Título de la publicación | CvnString |  |
| 060\.010\.010\.140 | Fecha de la publicación | CvnDate |  |
| 060\.010\.010\.010 | Tipo de producción | CvnString |  |
| 060\.010\.010\.070 | Tipo de soporte | CvnString |  |
| 060\.010\.010\.210 | Nombre de la publicación | CvnString |  |
| 060\.010\.010\.160 | ISBN \- ISSN publicación | CvnExternalPKBean | Enviar el campo "Value" del CvnExternalPKBean |
| 060\.010\.010\.100 | Editorial | CvnString |  |
| 060\.010\.010\.080 | Volumen \- Número | CvnVolumeBean | Concatenar el campo "Number" y el campo "Volumen" con el separador "\-" del objeto CvnVolumeBean |
| 060\.010\.010\.090 | Página inicial \- final | CvnPageBean | Concatenar el campo "InitialPage" y el campo "FinalPage" con el separador "\-" del objeto CvnPageBean |
| 060\.010\.010\.390 | Autor/a de correspondencia | CvnBoolean | personaRef si es de la Universidad y si no nombre y apellidos |
| 060\.010\.010\.400 | Identificadores digitales | CvnExternalPKBean | Enviar el campo "Value" del CvnExternalPKBean |
| 060\.010\.010\.410 | Tipo identificadores digitales | CvnExternalPKBean | Enviar el campo "Value" del CvnExternalPKBean |
| 060\.010\.010\.300 | Publicación relevante | CvnBoolean |  |
| INDICE\_NORMALIZADO | Indice normalizado |  |  |
| PUBLICACION\_MUY\_RELEVANTE | Publicación muy televante |  |  |
| TIPO\_OPEN\_ACCESS | Tipo Open Access |  |  |
| INTERNACIONAL | Internacional |  |  |
| INTERDISCIPLINAR | Interdisciplinar |  |  |
| 060\.010\.020\.030 | Título del trabajo | CvnString |  |
| 060\.010\.020\.190 | Fecha de celebración | CvnDate |  |
| 060\.010\.020\.380 | Fecha de finalización | CvnDate |  |
| 060\.010\.020\.010 | Tipo de evento | CvnString |  |
| 060\.010\.020\.080 | Ámbito geográfico | CvnString |  |
| 060\.010\.020\.100 | Nombre del congreso | CvnString |  |
| 060\.010\.020\.370 | Nombre de la publicación | CvnString |  |
| 060\.010\.020\.320 | ISBN \- ISSN publicación | CvnExternalPKBean | Enviar el campo "Value" del CvnExternalPKBean |
| 060\.010\.020\.050 | Tipo de participación | CvnString |  |
| 060\.010\.020\.390 | Autor/a de de correspondencia | CvnBoolean | personaRef si es de la Universidad y si no nombre y apellidos |
| RESUMEN\_REVISTA | Resumen o abstract en una revista |  |  |
| 050\.020\.030\.010 | Descripción | CvnString |  |
| 050\.020\.030\.020 | Nombre de la exposición | CvnString |  |
| 050\.020\.030\.120 | Fecha de inicio | CvnDate |  |
| 050\.020\.030\.040 | País celebración | CvnString |  |
| 050\.020\.030\.050 | Comunidad Autónoma | CvnString |  |
| 050\.020\.030\.090 | Monográfica | CvnBoolean |  |
| 050\.020\.030\.100 | Catálogo | CvnBoolean |  |
| 050\.020\.030\.110 | Comisario de exposición | CvnBoolean |  |
| COLECTIVA | Colectiva |  |  |
| TIPO\_OBRA | Tipo |  |  |
| 060\.030\.030\.010 | Nombre del comité editorial | CvnString |  |
| 060\.030\.030\.020 | País de radicación | CvnString |  |
| 060\.030\.030\.140 | Fecha de inicio | CvnDate |  |
| ISSN | ISSN |  |  |
| 060\.030\.030\.100 | Categoría profesional | CvnString |  |
| 030\.040\.000\.030 | Título del trabajo | CvnString |  |
| 030\.040\.000\.140 | Fecha de defensa | CvnDate |  |
| 030\.040\.000\.120 | Alumno/a | CvnAuthorBean | Enviar el campo "GivenName" del CvnAuthorBean |
| 030\.040\.000\.170 | Mención de calidad del programa | CvnBoolean |  |
| 030\.040\.000\.200 | Fecha Mención de calidad | CvnDate |  |
| 030\.040\.000\.190 | Doctorado Europeo | CvnBoolean |  |
| 030\.040\.000\.160 | Si es Doctorado Europeo, fecha de mención | CvnDate |  |
| 030\.040\.000\.010 | Tipo de proyecto | CvnString |  |
| MENCION\_INDUSTRIAL | Mención Industrial |  |  |
| MENCION\_INTERNACIONAL | Mención Internacional |  |  |
| 060\.020\.030\.010 | Título de la actividad | CvnString |  |
| 060\.020\.030\.160 | Fecha de inicio | CvnDate |  |
| 060\.020\.030\.020 | Tipo de actividad | CvnString |  |
| 060\.020\.030\.030 | País de celebración | CvnString |  |
| 060\.020\.030\.110 | Modo de participación | CvnString |  |




