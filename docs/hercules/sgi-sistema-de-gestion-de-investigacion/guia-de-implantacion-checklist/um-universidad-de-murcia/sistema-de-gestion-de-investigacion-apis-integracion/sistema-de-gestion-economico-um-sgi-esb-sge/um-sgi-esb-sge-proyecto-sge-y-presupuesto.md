# Hércules : UM \- SGI \- ESB \- SGE \- Proyecto SGE y presupuesto



  










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
| GET | /proyectos | q\+s (query \+ sort)La query estará formada por:* id * titulo * fechaInicio * fechaFin | Lista\[Proyecto] |  | Búsqueda de proyectos económicos, se puede buscar por el identificador del proyecto económico, por el título (o parte del título), entre un rango de fechas en las que se incluye la fecha de inicio o entre un rango de fechas entras lasque se incluye la fecha de fin del proyecto. Devuelve un listado de Proyectos económicos que cumplen los criterios de búsqueda.Los parámetros q y s están explicados en:* [Consultas filtradas y paginadas](https://confluence.um.es/confluence/display/HERCULES/Consultas+filtradas+y+paginadas "https://confluence.um.es/confluence/display/HERCULES/Consultas+filtradas+y+paginadas") |
| GET | /proyectos/{id} | id | Proyecto |  | Detalle de los datos generales de un proyecto económico |
| POST | /proyectos/formly | JSON | idVendrá relleno si la creación es síncrona y no vendrá si es asíncrona. |  | Recibe como parámetro la respuesta del usuario del formulario de datos de alta (formly) con los campos necesarios para crear un proyecto en el SGE :  **Ejemplo de JSON** Ampliar origen    ``` {    "proyectoSgiId": 1,   "titulo": "Proyecto 1 CGF/OPE-1",   "fechaInicio": "2021-02-14T23:00:00Z",   "fechaFin": "2021-02-24T23:00:00Z",   "numeroDocumentoResponsable": "023424234",   "modeloEjecucion": {     "id": 7,     "nombre": "Proyecto OPE"   },   "tipoFinalidad": {     "id": 1,     "nombre": "Proyecto I+D"   },   "importeTotalGastos": 1000,   "importeTotalIngresos": 12000,   "porIva": 10,   "causaExencion": "NO_SUJETO" }  ```   Descripción de campos JSON (pulsa para expandir)...* **proyectoSgiId:** Identificador del proyecto en el SGI * **titulo**: Título del proyecto en el SGI * **fechaInicio**: Fecha de inicio de proyecto SGI * **fechaFin**: Fecha de inicio de proyecto SGI * **numeroDocumentoReponsable:**identificador número de documento del responsable económico * **modeloEjecucion:**modelo de ejecución del proyecto SGI con la siguiente estructura: 	+ **id**: Identificador de modelo de ejecución 	+ **nombre**: Nombre del modelo de ejecución * **tipoFinalidad:** Tipo de finalidad del proyecto SGI con la siguiente estructura: 	+ **id**: Identificador de tipo de finalidad 	+ **nombre**: Nombre del tipo de finalidad * **importeTotalGastos**: Importe total previsto de gastos * **importeTotalIngresos** Importe total previsto de ingresos * **porIva**: Porcentaje del IVA * **causaExencion**: Causa de exención del IVA que puede tener los siguientes valores: 	+ **SUJETO\_EXENTO**: Sujeto y exento 	+ **NO\_SUJETO**: No sujeto a (arts. 7, 14 y otros) 	+ **NO\_SUJETO\_SIN\_DEDUCCION**: No sujeto por reglas de localización. Sin derecho a deducción 	+ **NO\_SUJETO\_CON\_DEDUCCION**: No sujeto por reglas de localización. Con derecho a deducción |
| PUT | /proyectos/formly/{id} | JSON |  |  | Recibe como parámetro la respuesta del usuario del formulario de modificación proyecto (formly) con los campos necesarios para crear una nueva relación de un proyecto SGI con el  proyecto SGE  **Ejemplo de JSON** Ampliar origen    ``` {    "proyectoSgiId": 1,   "titulo": "Proyecto 1 CGF/OPE-1",   "fechaInicio": "2021-02-14T23:00:00Z",   "fechaFin": "2021-02-24T23:00:00Z",   "numeroDocumentoResponsable": "023424234",   "modeloEjecucion": {     "id": 7,     "nombre": "Proyecto OPE"   },   "tipoFinalidad": {     "id": 1,     "nombre": "Proyecto I+D"   },   "importeTotalGastos": 1000,   "importeTotalIngresos": 12000,   "porIva": 10,   "causaExencion": "NO_SUJETO" }  ``` |
|  | | | | | |
| GET | /codigos\-economicos\-gastos |  | Lista\[CodigoEconomicoGasto] |  | Listado de CodigoEconomicoGasto de tipo gasto |
| GET | /codigos\-economicos\-gastos/{id} |  | CodigoEconomicoGasto |  | Detalle de CodigoEconomicoGasto |
| GET | /codigos\-economicos\-ingresos |  | Lista\[CodigoEconomicoIngreso] |  | Listado de CodigoEconomicoIngreso de tipo ingreso |
| GET | /codigos\-economicos\-ingresos/{id} |  | CodigoEconomicoIngreso |  | Detalle de CodigoEconomicoIngreso |
|  |  |  |  |  |  |
| POST | /proyectos/anualidades/ | Lista\[ProyectoAnualidadPartida] |  |  | Recibe como parámetro el listado partidas presupuestarias para una anualidad y un proyecto. |

  


  


  





