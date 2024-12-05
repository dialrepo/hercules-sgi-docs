# Hércules : SGI \- ESB \- SGE \- Proyecto SGE y presupuesto



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


##### ProyectoAnualidadPartida



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| proyectoId | String | Identificador del proyecto económico |
| anualidad | String | Año de la anualidad.En los casos de que el desglose del presupuesto en el SGI no se haga por anualidades, se enviará la anualidad del año de inicio del proyecto. |
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

Para componer la URL llamada completa, se debe anteponer a lo indicado en la columna URL lo siguiente: **{HOST}/api/sge**, donde **{HOST}** de deberá sustituir el dominio correspondiente al entorno al que se está accediendo y dicho acceso será por http o https según el caso.

| Servicio | Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- | --- |
| [SGI \- ESB \- SGE \- Proyecto SGE y presupuesto \- Buscar proyectos](/confluence/display/HERCULES/SGI+-+ESB+-+SGE+-+Proyecto+SGE+y+presupuesto+-+Buscar+proyectos "/confluence/display/HERCULES/SGI+-+ESB+-+SGE+-+Proyecto+SGE+y+presupuesto+-+Buscar+proyectos") | GET | /proyectos | q\+s (query \+ sort)La query estará formada por:* id * titulo * fechaInicio * fechaFin | Lista\[[Proyecto](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGE+-+Proyecto+SGE+y+presupuesto#SGIESBSGEProyectoSGEypresupuesto-Proyecto "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGE+-+Proyecto+SGE+y+presupuesto#SGIESBSGEProyectoSGEypresupuesto-Proyecto")] | Búsqueda de proyectos económicos, se puede buscar por el identificador del proyecto económico, por el título (o parte del título), entre un rango de fechas en las que se incluye la fecha de inicio o entre un rango de fechas entras lasque se incluye la fecha de fin del proyecto. Devuelve un listado de Proyectos económicos que cumplen los criterios de búsqueda.Los parámetros q y s están explicados en:* [Consultas filtradas y paginadas](https://confluence.um.es/confluence/display/HERCULES/Consultas+filtradas+y+paginadas "https://confluence.um.es/confluence/display/HERCULES/Consultas+filtradas+y+paginadas") |
| [SGI \- ESB \- SGE \- Proyecto SGE y presupuesto \- Obtener campos dar de alta proyecto](/confluence/display/HERCULES/SGI+-+ESB+-+SGE+-+Proyecto+SGE+y+presupuesto+-+Obtener+campos+dar+de+alta+proyecto "/confluence/display/HERCULES/SGI+-+ESB+-+SGE+-+Proyecto+SGE+y+presupuesto+-+Obtener+campos+dar+de+alta+proyecto") | GET | /proyectos/formly/create |  | Formly | Devuelve el formulario (formly) a pintar para la pantalla de solicitar alta proyecto. |
| [SGI \- ESB \- SGE \- Proyecto SGE y presupuesto \- Obtener campos relacionar proyecto](/confluence/display/HERCULES/SGI+-+ESB+-+SGE+-+Proyecto+SGE+y+presupuesto+-+Obtener+campos+relacionar+proyecto "/confluence/display/HERCULES/SGI+-+ESB+-+SGE+-+Proyecto+SGE+y+presupuesto+-+Obtener+campos+relacionar+proyecto") | GET | /proyectos/formly/update |  | Formly | Devuelve el formulario (formly) a pintar para la pantalla de solicitar nueva relación con el  proyecto económico (para relacionar un nuevo proyecto SGI con el proyecto SGE). |
| [SGI \- ESB \- SGE \- Proyecto SGE y presupuesto \- Relacionar proyecto](/confluence/display/HERCULES/SGI+-+ESB+-+SGE+-+Proyecto+SGE+y+presupuesto+-+Relacionar+proyecto "/confluence/display/HERCULES/SGI+-+ESB+-+SGE+-+Proyecto+SGE+y+presupuesto+-+Relacionar+proyecto") | PUT | /proyectos/formly/{id} | JSON |  | Recibe como parámetro la respuesta del usuario del formulario de modificación proyecto (formly) con los campos necesarios para crear una nueva relación de un proyecto SGI con el  proyecto SGE |
| [SGI \- ESB \- SGE \- Proyecto SGE y presupuesto \- Dar de alta proyecto](/confluence/display/HERCULES/SGI+-+ESB+-+SGE+-+Proyecto+SGE+y+presupuesto+-+Dar+de+alta+proyecto "/confluence/display/HERCULES/SGI+-+ESB+-+SGE+-+Proyecto+SGE+y+presupuesto+-+Dar+de+alta+proyecto") | POST | /proyectos/formly | JSON | idVendrá relleno si la creación es síncrona y no vendrá si es asíncrona. | Recibe como parámetro la respuesta del usuario del formulario de alta proyecto (formly) con los campos necesarios para crear un proyecto en el SGE |
| [SGI \- ESB \- SGE \- Proyecto SGE y presupuesto \- Enviar partidas presupuestarias](/confluence/display/HERCULES/SGI+-+ESB+-+SGE+-+Proyecto+SGE+y+presupuesto+-+Enviar+partidas+presupuestarias "/confluence/display/HERCULES/SGI+-+ESB+-+SGE+-+Proyecto+SGE+y+presupuesto+-+Enviar+partidas+presupuestarias") | POST | /proyectos/anualidades/ |  | Lista\[[ProyectoAnualidadPartida](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGE+-+Proyecto+SGE+y+presupuesto#SGIESBSGEProyectoSGEypresupuesto-ProyectoAnualidadPartida "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGE+-+Proyecto+SGE+y+presupuesto#SGIESBSGEProyectoSGEypresupuesto-ProyectoAnualidadPartida")] | Notifica al SGE el listado de partidas presupuestarias para una anualidad y un proyecto. |
| [SGI \- ESB \- SGE \- Proyecto SGE y presupuesto \- Consultar detalle de código económico de ingreso](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852969 "/confluence/pages/viewpage.action?pageId=597852969") | GET | /codigos\-economicos\-ingresos/{id} |  | [CodigoEconomicoIngreso](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGE+-+Proyecto+SGE+y+presupuesto#SGIESBSGEProyectoSGEypresupuesto-CodigoEconomicoIngreso "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGE+-+Proyecto+SGE+y+presupuesto#SGIESBSGEProyectoSGEypresupuesto-CodigoEconomicoIngreso") | Detalle de un código económico de tipo ingreso. |
| [SGI \- ESB \- SGE \- Proyecto SGE y presupuesto \- Listar códigos económicos de gastos](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852966 "/confluence/pages/viewpage.action?pageId=597852966") | GET | /codigos\-economicos\-gastos |  | Lista\[[CodigoEconomicoGasto](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGE+-+Proyecto+SGE+y+presupuesto#SGIESBSGEProyectoSGEypresupuesto-CodigoEconomicoGasto "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGE+-+Proyecto+SGE+y+presupuesto#SGIESBSGEProyectoSGEypresupuesto-CodigoEconomicoGasto")] | Listado de códigos económicos de tipo gasto. |
| [SGI \- ESB \- SGE \- Proyecto SGE y presupuesto \- Listar códigos económicos de ingresos](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852968 "/confluence/pages/viewpage.action?pageId=597852968") | GET | /codigos\-economicos\-ingresos |  | Lista\[[CodigoEconomicoIngreso](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGE+-+Proyecto+SGE+y+presupuesto#SGIESBSGEProyectoSGEypresupuesto-CodigoEconomicoIngreso "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGE+-+Proyecto+SGE+y+presupuesto#SGIESBSGEProyectoSGEypresupuesto-CodigoEconomicoIngreso")] | Listado de códigos económicos de tipo ingreso. |
| [SGI \- ESB \- SGE \- Proyecto SGE y presupuesto \- Consultar detalle de código económico de gasto](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852967 "/confluence/pages/viewpage.action?pageId=597852967") | GET | /codigos\-economicos\-gastos/{id} |  | [CodigoEconomicoGasto](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGE+-+Proyecto+SGE+y+presupuesto#SGIESBSGEProyectoSGEypresupuesto-CodigoEconomicoGasto "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGE+-+Proyecto+SGE+y+presupuesto#SGIESBSGEProyectoSGEypresupuesto-CodigoEconomicoGasto") | Detalle de un código económico de tipo gasto. |
| [SGI \- ESB \- SGE \- Proyecto SGE y presupuesto \- Consultar detalle de proyecto](/confluence/display/HERCULES/SGI+-+ESB+-+SGE+-+Proyecto+SGE+y+presupuesto+-+Consultar+detalle+de+proyecto "/confluence/display/HERCULES/SGI+-+ESB+-+SGE+-+Proyecto+SGE+y+presupuesto+-+Consultar+detalle+de+proyecto") | GET | /proyectos/{id} |  | [Proyecto](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGE+-+Proyecto+SGE+y+presupuesto#SGIESBSGEProyectoSGEypresupuesto-Proyecto "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGE+-+Proyecto+SGE+y+presupuesto#SGIESBSGEProyectoSGEypresupuesto-Proyecto") | Detalle de los datos generales de un proyecto económico. |




