# Hércules : Proyecto SGE y presupuesto



Recibe como parámetro la respuesta del usuario del formulario de alta proyecto (formly) con los campos necesarios para crear un proyecto en el SGE









## Proyecto SGE y presupuesto

### Entidades



| Entidad | Descripción |
| --- | --- |
| Proyecto | Es la entidad proyecto de investigación en el SGE (el proyecto económico) |
| ProyectoAnualidadPartida | Es la entidad que representa la partida presupuestaria de una anualidad para un proyecto |
| CodigoEconomicoGasto | Son los códigos económicos definidos en el Sistema de Gestión Económico y con los que se relacionarán los gastos del SGE. Son los códigos con los que se deberán relacionar cada uno de los conceptos de gasto de investigación  incluidos en convocatorias y proyectos. |
| CodigoEconomicoIngreso | Son los códigos económicos definidos en el Sistema de Gestión Económico y con los que se relacionarán los ingresos del SGE. Son los códigos con los que se deberán relacionar cada uno de los conceptos de ingreso de investigación  incluidos en convocatorias y proyectos. |

  


### Modelo lógico

### 

### API

Características generales que todas las API REST deben de cumplir:

* [Consultas filtradas y paginadas](https://confluence.um.es/confluence/display/HERCULES/Consultas+filtradas+y+paginadas "https://confluence.um.es/confluence/display/HERCULES/Consultas+filtradas+y+paginadas")
* [Formatos de datos API](https://confluence.um.es/confluence/display/HERCULES/Formatos+de+datos+API "https://confluence.um.es/confluence/display/HERCULES/Formatos+de+datos+API")

#### Definición de los objetos

##### Proyecto

  




| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | String | Identificador del proyecto económico |
| proyectoSGIId | String | Identificador del proyecto en el SGI |
| titulo | String | Título del proyecto económico |
| fechaInicio | Fecha \+ hora | Fecha de inicio del proyecto económico |
| fechaFin | Fecha \+ hora | Fecha de fin del proyecto económico |
| sectorIva | Boolean | Si le aplica el IVA o no. Puede tomar los valores:* true * false |



**Proyecto** Ampliar origen



```
{ 
"id": "1234566", 
"proyectoSGIId": "12222"
"titulo": "Título del proyecto de investigación", 
"fechaInicio": "2020-12-15" ,
"fechaFin": "2022-11-25",
"sectorIva": "false"
}
```


##### PresupuestoAnualidadPartida

  




| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| proyectoId | String | Identificador del proyecto económico |
| anualidad | String | Año de la anualidad |
| partidaPresupuestaria | String | Cadena numérica o alfanumérica que identifica a la partida presupuestaria |
| tipo | String | Dos valores:* Gasto * Ingreso |
| importe | Numérico (sin separador de miles y como separador decimal el punto) | Importe concedido a la partida presupuestaria para la anualidad y proyecto indicados |

  


  




**ProyectoAnualidadPartida** Ampliar origen



```
[
{ 
"proyectoId": "111111" , 
"anualidad": "2021",
"partidaPresupuestaria": "08 002B 541A 64406", 
"tipoDatoEconomico": "Gasto",
 "importe": 12000
},
{ 
"proyectoId": "111111" , 
"anualidad": "2021",
"partidaPresupuestaria": "08 0700 541A 65000", 
"tipoDatoEconomico": "Ingreso",
 "importe": 12000
}
]
```


##### CodigoEconomicoGasto

  




| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | String | Cadena numérica o alfanumérica que identifica al tipo de gasto en el SGE |
| nombre | String | Nombre o descripción del código económico en caso de que lo tenga |
| fechaInicio | String | Fecha de inicio de la vigencia del código en caso de que la tuviese |
| fechaFin | String | Fecha de fin de la vigencia del código en caso de que la tuviese |



**CodigoEconomicoGasto** Ampliar origen



```
{
"id": "VI",
"nombre": "Viajes y dietas",  
"fechaInicio": "" ,
"fechaFin": ""
}
```


##### CodigoEconomicoIngreso

  




| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | String | Cadena numérica o alfanumérica que identifica al tipo de ingreso en el SGE |
| nombre | String | Nombre o descripción del código económico en caso de que lo tenga |
| fechaInicio | String | Fecha de inicio de la vigencia del código en caso de que la tuviese |
| fechaFin | String | Fecha de fin de la vigencia del código en caso de que la tuviese |



**CodigoEconomicoIngreso** Ampliar origen



```
{
"id": "VI",
"nombre": "Viajes y dietas",  
"fechaInicio": "" ,
"fechaFin": ""
}
```


#### Servicios

  




| Método | URL | Parámetros | Respuesta | Permisos | Descripción |
| --- | --- | --- | --- | --- | --- |
| GET | /proyectos | q\+s (query \+ sort)La query estará formada por:* id * titulo * fechaInicio * fechaFin | Lista\[Proyecto] |  | Búsqueda de proyectos económicos, se puede buscar por el identificador del proyecto económico, por el título (o parte del título), entre un rango de fechas en las que se incluye la fecha de inicio o entre un rango de fechas entras lasque se incluye la fecha de fin del proyecto. Devuelve un listado de Proyectos económicos que cumplen los criterios de búsqueda.Los parámetros q y s están explicados en:* [Consultas filtradas y paginadas](https://confluence.treelogic.com/display/HERCULES/Consultas+filtradas+y+paginadas "https://confluence.treelogic.com/display/HERCULES/Consultas+filtradas+y+paginadas") |
| GET | /proyectos/{id} | id | Proyecto |  | Detalle de los datos generales de un proyecto económico |
| GET | /proyectos/formly/create |  | Formly |  | Devuelve el formulario (formly) a pintar para la pantalla de solicitar alta proyecto |
| GET | /proyectos/formly/update |  | Formly |  | Devuelve el formulario (formly) a pintar para la pantalla de solicitar nueva relación con el  proyecto económico (para relacionar un nuevo proyecto SGI con el proyecto SGE) |
| POST | /proyectos/formly | JSON | idVendrá relleno si la creación es síncrona y no vendrá si es asíncrona. |  | Recibe como parámetro la respuesta del usuario del formulario de alta proyecto (formly) con los campos necesarios para crear un proyecto en el SGE |
| PUT | /proyectos/formly/{id} | JSON |  |  | Recibe como parámetro la respuesta del usuario del formulario de modificación proyecto (formly) con los campos necesarios para crear una nueva relación de un proyecto SGI con el  proyecto SGE |
|  | | | | | |
| GET | /codigos\-economicos\-gastos |  | Lista\[CodigoEconomicoGasto] |  | Listado de CodigoEconomicoGasto de tipo gasto |
| GET | /codigos\-economicos\-gastos/{id} |  | CodigoEconomicoGasto |  | Detalle de CodigoEconomicoGasto |
| GET | /codigos\-economicos\-ingresos |  | Lista\[CodigoEconomicoIngreso] |  | Listado de CodigoEconomicoIngreso de tipo ingreso |
| GET | /codigos\-economicos\-ingresos/{id} |  | CodigoEconomicoIngreso |  | Detalle de CodigoEconomicoIngreso |
|  |  |  |  |  |  |
| POST | /proyectos/anualidades/ | Lista\[ProyectoAnualidadPartida] |  |  | Recibe como parámetro el listado partidas presupuestarias para una anualidad y un proyecto. |

  
  





