# Hércules : Ejecución económica



  






## Ejecución económica

### Entidades



| Entidad | Descripción |
| --- | --- |
| DatoEconomico | Entidad que representa cualquier dato económico. Tendrá que venir identificado por un identificador único, por el proyecto al que pertenece, anualidad, fecha de devengo, partida presupuestaria, un código económico (opcional en algunos de los casos) y una clasificación SGE.El resto de campos del dato económico se tratarán como columnas dinámicas. Se indicará por cada columna el identificador del campo, el nombre del campo y si es una columna sobre la que se tiene que hacer una suma para mostrarlo en el SGI como un campo totalizador. |
| Columna | Contiene el listado de columnas que serán mostradas en las pantallas del SGI dependiendo de la pantalla en la que se esta: Ejecución presupuestaria, detalle de operaciones, validación de gastos, etc...Por cada columna se tendrá el identificador del campo, el nombre del campo y si es una columna sobre la que se tiene que hacer una suma para mostrarlo en el SGI como un campo totalizador. |
| DatoEconomicoDetalle | Entidad que representa el detalle de un dato económico con todos sus campos para mostrarlo en una pantalla de consulta del dato económico.Tendrá unos campos fijos (identificador único, identificador del proyecto al que pertenece, anualidad, fecha de devengo, partida presupuestaria, un código económico y una clasificación SGE) y unos campos dinámicos. Por cada campo se detallará el nombre y el valor del campo para mostrarlo en la pantalla del SGI |
| Campo | Contiene el listado de campos dinámicos que serán mostradas en las pantallas de detalle de un dato económico.Por cada campo se tendrá el el nombre y el valor del campo |
| Documento | Entidad que representa los documentos que pueda tener relacionados un dato económico (en este caso los gastos). |
| ClasificacionSGE | Entidad que representa la clasificación de los gastos en el sistema de gestión económico. |

### Enumerados



| Entidad | Descripción |
| --- | --- |
| TipoDatoEconomico | Puede tomar los siguientes valores:* Ingreso * Gasto |
| TipoOperacion | Puede tomar los siguientes valores:* EPA * EPG * EPI * FJF * FJV * FJP * DOG * DOI * DOM |
| Estado (en validación de gastos) | Puede tomar los siguientes valores:* Pendiente * Validado |

### Modelo lógico

![](https://confluence.treelogic.com/download/attachments/103905017/ESB%20SGE%20Logical%20Model%20Ejecuci%C3%B3n%20econ%C3%B3mica.jpg?version=6&modificationDate=1639397939154&api=v2)

### API

Características generales que todas las API REST deben de cumplir:

* [Consultas filtradas y paginadas](https://confluence.treelogic.com/display/HERCULES/Consultas+filtradas+y+paginadas "https://confluence.treelogic.com/display/HERCULES/Consultas+filtradas+y+paginadas")
* [Formatos de datos API](https://confluence.treelogic.com/display/HERCULES/Formatos+de+datos+API "https://confluence.treelogic.com/display/HERCULES/Formatos+de+datos+API")

#### Definición de los objetos

##### DatoEconomico



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | String | Identificador del dato económico. Tiene que ser un identificador único. |
| proyectoId | String | Identificador del proyecto económico |
| partidaPresupuestaria | String | Código de la Partida presupuestaria |
| fechaDevengo | String | Fecha de devengo (fecha del gasto o del ingreso) |
| clasificacionSGE | ClasificacionSGE | Contiene la entidad ClasificacionSGE |
| codigoEconomico | CodigoEconomicoGasto/CodigoEconomicoIngreso | Contiene la entidad Código económico Gasto si se trata de un gasto (campo "tipo" es "Gasto" ) o contiene la entidad Código económico Ingreso si se trata de un ingreso (campo "tipo" es "Gasto" ) |
| anualidad | String | Anualidad |
| tipo | String | Dos valores:* Gasto * Ingreso |
| columnas | Map\[clave,valor] | Mapa de propiedadesEl valor será un String salvo en aquellas columnas que sean acumulables (se tenga que hacer sumas sobre ellas) donde será de tipo Numérico (sin separador de miles y como separador decimal el punto) |

##### DatoEconomicoDetalle



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | String | Identificador del dato económico. Tiene que ser un identificador único. |
| proyectoId | String | Identificador del proyecto económico |
| partidaPresupuestaria | String | Código de la Partida presupuestaria |
| fechaDevengo | String | Fecha de devengo (fecha del gasto o del ingreso) |
| clasificacionSGE | ClasificacionSGE | Contiene la entidad ClasificacionSGE |
| codigoEconomico | CodigoEconomicoGasto/CodigoEconomicoIngreso | Contiene la entidad Código económico Gasto si se trata de un gasto o contiene la entidad Código económico Ingreso si se trata de un ingreso |
| anualidad | String | Anualidad |
| campos | Lista\[Campo] | Lista de campos, por cada campo se define el nombre y el valor del campo |

##### Columna



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | String | Identificador de la columna |
| nombre | String | Nombre de la columna |
| acumulable | Boolean | Indica si se tiene que sumar o no para mostrar los totales en la pantalla del SGI.Dos valores:* true * false |

##### Documento



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | String | Identificador único del documento |
| nombre | String | Nombre del documento a mostrar |
| nombreFichero | String | Nombre del fichero con extensión |

##### Comentario



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| comentario | String | Comentario relacionado con el cambio de estado de un gasto |

  


##### ClasificacionSGE



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | String | Cadena numérica o alfanumérica que identifica a la clasificación del gasto en el  SGE |
| nombre | String | Nombre o descripción de la clasificación SGE |



| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| GET | /ejecucion\-economica/columnas | q\+s (query \+ sort)La query estará formada por:* proyectoId * anualidad * tipoOperacion * reducida * fechaPago * fechaDevengo * fechaContabilizacion  El campo reducida puede tomar los siguientes valores:* true: sólo se envían las columnas a mostrar en la pantalla principal * false:  se envían todas las columnas (para su exportación)  Si no esta informado el campo reducida se considera false.El tipoOperacion puede tomar los siguientes valores:* EPA (Ejecución presupestaria \- Estado actual) * EPG (Ejecución presupestaria \- Gastos) * EPI (Ejecución presupestaria \- Ingresos) * FJF (Facturas y justificantes \- Facturas y gastos) * FJV (Facturas y justificantes \- Viajes y dietas * FJP (Facturas y justificantes \- Personal contratado) * DOG (Detalle de operaciones \- Gastos) * DOI (Detalle de operaciones \- Ingresos) * DOM (Detalle de operaciones \- Modificaciones) | Lista\[Columna] | Listado con las columnas que va a devolver la llamada /ejecucion\-economicaPor cada columna se indica un id, nombre, si es una columna acumulable (se va a hacer una suma de ella en el SGI)Ver el apartado "**Columnas Ejecución económica**" para ver que columnas se deben de mostrar dependiendo del tipo de operación (campo tipoOperacion) y si es reducida o no |
| GET | /ejecucion\-economica | q\+s (query \+ sort)La query estará formada por:* proyectoId * anualidad * tipoOperacion * reducida * fechaPago * fechaDevengo * fechaContabilizacion  El campo reducida puede tomar los siguientes valores:* true: sólo se envían las columnas a mostrar en la pantalla principal * false:  se envían todas las columnas (para su exportación)  Si no esta informado el campo reducida se considera false.El tipoOperacion puede tomar los siguientes valores:* EPA (Ejecución presupestaria \- Estado actual) * EPG (Ejecución presupestaria \- Gastos) * EPI (Ejecución presupestaria \- Ingresos) * FJF (Facturas y justificantes \- Facturas y gastos) * FJV (Facturas y justificantes \- Viajes y dietas * FJP (Facturas y justificantes \- Personal contratado) * DOG (Detalle de operaciones \- Gastos) * DOI (Detalle de operaciones \- Ingresos) * DOM (Detalle de operaciones \- Modificaciones) | Lista\[DatoEconomico] | Listado con los datos económicos pedidos según el campo tipoOperacion. Por cada dato económico se devolverán los siguientes campos:* Identificador del dato económico * Identificador del proyecto SGE * Anualidad * Partida presupuestaria * Fecha de devengo * Clasificación SGE * Código económico * Tipo (si es Gasto o Ingreso) * Mapa de columnas de clave \- valor (donde la clave será los id definidos en la llamada /ejecucion\-economica/columnas y el valor será el valor de la columna. El valor será un String salvo en aquellas columnas que sean acumulables,se tenga que hacer sumas sobre ellas, donde será de tipo Numérico (sin separador de miles y como separador decimal el punto)). Ver el apartado "**Columnas Ejecución económica**" para ver los id de la columnas que se deben de mostrar dependiendo del tipo de operación (campo tipoOperacion) y si es reducida o no |
| GET | /ejecucion\-economica/{id} | tipoOperacionEl tipoOperacion puede tomar los siguientes valores (cuando estamos en la llamada de detalle de dato económico):* FJF (Facturas y justificantes \- Facturas y gastos) * FJV (Facturas y justificantes \- Viajes y dietas * FJP (Facturas y justificantes \- Personal contratado) | DatoEconomicoDetalle | Detalle del dato económico con todas sus columnas.* Identificador del dato económico * Identificador del proyecto SGE * Anualidad * Partida presupuestaria * Fecha de devengo * Clasificación SGE * Código económico * Listado de campos con su nombre y valor (Ver el apartado "**Campos Detalle dato económico**" para ver que campos se deben de mostrar dependiendo del tipo de operación (campo tipoOperacion). En el detalle se muestran todos la columnas o campos.) * Listado de documentos (identificador, nombre del documento y nombre del fichero, sin el contenido)  El listado de campos a mostrar dependerá de que dato económico sea, si es una factura o gasto, un viaje o dieta o un personal contratado. |
| Validación de gastos | | | | |
| GET | /gastos/columnas | q\+s (query \+ sort)La query estará formada por:* proyectoId * fecha * id * estado * reducida  Si no esta informado el campo reducida se considera false.El campo estado puede tomar dos valores:* Pendiente * Validado  El campo reducida puede tomar los siguientes valores:* true: sólo se envían las columnas a mostrar en la pantalla principal * false:  se envían todas las columnas (para su exportación) | Lista\[Columna] | Listado con las columnas que va a devolver la llamada /gastosPor cada columna se indica un id, nombre, si es una columna acumulable (se va a hacer una suma de ella en el SGI)Ver el apartado "**Columnas Validación de gastos**" para ver que columnas se deben de mostrar dependiendo de si es reducida o no |
| GET | /gastos | q\+s (query \+ sort)La query estará formada por:* proyectoId * fecha * id * estado * reducida  El campo estado puede tomar dos valores:* Pendiente * Validado  El campo reducida puede tomar los siguientes valores:* true: sólo se envían las columnas a mostrar en la pantalla principal * false:  se envían todas las columnas (para su exportación)  Si no esta informado el campo reducida se considera false. | Lista\[DatoEconomico] | Listado de gastos pendientes de pasar por la "Validación de gastos" si en el campo del filtrado estado \= 'Pendiente' o listado de gastos que ya han sido validados (han pasado por la "Validación de gastos") si en el campo del filtrado estado \= 'Validado'Para cada gasto se devolverán los siguientes datos:* Identificador del gasto * Identificador del proyecto SGE * Partida presupuestaria a la que esta asignado el gasto * Fecha de devengo * Clasificación SGE * Código económico asignado al gasto * Anualidad * Tipo: Gasto * Mapa de columnas de clave \- valor (donde la clave será los id definidos en la llamada /gastos/columnas y el valor será el valor de la columna. El valor será un String salvo en aquellas columnas que sean acumulables,se tenga que hacer sumas sobre ellas, donde será de tipo Numérico (sin separador de miles y como separador decimal el punto)). Ver el apartado "**Columnas Validación de gastos**" para ver los id de la columnas que se deben de mostrar dependiendo de si es reducida o no |
| GET | /gastos/{id} |  | DatoEconomicoDetalle | Detalle de un gasto.Para cada gasto se devolverán los siguientes datos:* Identificador del gasto * Identificador del proyecto SGE * Partida presupuestaria a la que esta asignado el gasto * Fecha de devengo * Clasificación SGE * Código económico asignado al gasto * Anualidad * Listado de campos con su nombre y valor (Ver el apartado "**Campos Detalle dato económico**" para ver que campos se deben de mostrar dependiendo del tipo de operación (campo tipoOperacion). En el detalle se muestran todos la columnas o campos.) * Listado de documentos (identificador, nombre del documento y nombre del fichero, sin el contenido) |
| PATCH | /gastos/{id}/validar | Comentario |  | Se valida el gasto y recibe como parámetro el comentario  en caso de que lo tuviese. |
| PATCH | /gastos/{id}/rechazar | Comentario |  | Se rechaza el gasto y recibe como parámetro el comentario  en caso de que lo tuviese. |
| PENDIENTE |  |  |  | Se necesita un servicio que reciba como parámetros la lista de identificadores del gasto y devuelve las columnas a mostrar en la validación de gastos con la suma ya realizada, en este caso "Importe validado" e "Importe pagado" (realiza la sumas de esos importes de todos los gastos pasados como parámetro)Se necesitará primero la función que devuelva el nombre de las columnas? |
| PENDIENTE |  |  |  | Se necesita un servicio que reciba como parámetro la lista de códigos económicos usados en el proyecto (en elegibilidad) y devuelva para cada código económico la suma del importe de todos los gastos pendientes para ese código económicoSe necesitará primero la función que devuelva el nombre de las columnas? |
|  | | | | |
| GET | /documentos/{id} |  | Documento | Devuelve el detalle del documento |
| GET | /documentos/{id}/archivo |  | Binario (en la cabecera ira el contentType) | Devuelve el binario del documento |

#### Columnas Ejecución económica

##### Ejecución presupuestaria  \- Estado actual

Cuando **tipoOperacion\=\='EPA'** y (**reducida \=\='true'** o **reducida \=\='false')**  (independientemente del campo reducida, ya que siempre se mandan todas las columnas) las columnas a devolver en la Universidad de Murcia serán:



| id | nombre | acumulable |
| --- | --- | --- |
| 1 | Importe presupuestado | true |
| 2 | Importe actual | true |
| 3 | Importe disponible para gastos | true |
| 4 | Derechos | true |
| 5 | Cobros | true |

##### Ejecución presupuestaria  \- Gastos

Cuando **tipoOperacion\=\='EPG'**  y (**reducida \=\='true'** o **reducida \=\='false')**  (independientemente del campo reducida, ya que siempre se mandan todas las columnas) las columnas a devolver en la Universidad de Murcia serán:



| id | nombre | acumulable |
| --- | --- | --- |
| 1 | Importe presupuestado | true |
| 2 | Importe definitivo | true |
| 3 | Gastos pagados | true |
| 4 | Gastos en tramitación | true |
| 5 | Crédito disponible | true |
| 6 | Retenciones personal contratado y expedientes | true |
| 7 | Pedidos activos | true |
| 8 | Gastos pendientes de pago | true |
| 9 | Pagos a justificar | true |

##### Ejecución presupuestaria  \- Ingresos

Cuando **tipoOperacion\=\='EPI'** y (**reducida \=\='true'** o **reducida \=\='false')**  (independientemente del campo reducida, ya que siempre se mandan todas las columnas) las columnas a devolver en la Universidad de Murcia serán:



| id | nombre | acumulable |
| --- | --- | --- |
| 1 | Importe presupuestado | true |
| 2 | Importe actual | true |
| 3 | Derechos | true |
| 4 | Cobros | true |

##### Facturas y justificantes  \- Facturas y gastos

Cuando **tipoOperacion\=\='FJF' y reducida \= "true"** las columnas a devolver en la Universidad de Murcia serán:



| id | nombre | acumulable |
| --- | --- | --- |
| 1 | Nº de registro | false |
| 2 | Concepto de la Fac./Gasto | false |
| 3 | Fecha pago | false |
| 4 | Importe | true |

  


Cuando **tipoOperacion\=\='FJF' y reducida \= "false"** las columnas a devolver en la Universidad de Murcia serán:



| id | nombre | acumulable |
| --- | --- | --- |
| 1 | Nº de registro | false |
| 2 | Tipo de operación | false |
| 3 | Proveedor | false |
| 4 | Nº de registro del proveedor | false |
| 5 | Concepto de la Fac./Gasto | false |
| 6 | Importe | true |
| 7 | Importe IVA | true |
| 8 | Fecha contabilización | false |
| 9 | Fecha pago | false |
| 10 | Nº de documento de gasto | false |
| 11 | Nº de señalamiento | false |

##### Facturas y justificantes  \- Viajes y dietas

Cuando **tipoOperacion\=\='FJV'  y redudida \=\= "true"** las columnas a devolver en la Universidad de Murcia serán:



| id | nombre | acumulable |
| --- | --- | --- |
| 1 | Nº de factura | false |
| 2 | Nº de comisión de servicios | false |
| 3 | Perceptor/proveedor | false |
| 4 | Concepto/ motivo del viaje | false |
| 5 | Fecha pago | false |
| 6 | Importe | true |

El campo Perceptor/proveedor será el nombre y apellidos del perceptor o proveedor

  


Cuando **tipoOperacion\=\='FJV'  y redudida \=\= "false"** las columnas a devolver en la Universidad de Murcia serán:



| id | nombre | acumulable |
| --- | --- | --- |
| 1 | Nº de factura | false |
| 2 | Nº de comisión de servicios | false |
| 3 | Perceptor/proveedor | false |
| 4 | Identificador Perceptor/Proveedor | false |
| 5 | Concepto/ motivo del viaje | false |
| 6 | Fecha contabilización | false |
| 7 | Fecha pago | false |
| 8 | Itinerario viaje | false |
| 9 | Destino | false |
| 10 | Fecha salida \- Fecha vuelta | false |
| 11 | Medio de locomoción | false |
| 12 | Importe locomoción | true |
| 13 | Importe alojamiento | true |
| 14 | Importe dietas | true |
| 15 | Otros gastos | true |
| 16 | Importe total | true |
| 17 | Observaciones locomoción | false |
| 18 | Observaciones alojamiento | false |
| 19 | Observaciones dietas | false |

El campo "Perceptor/proveedor" será el nombre y apellidos del perceptor o proveedor

El campo "Identificador Perceptor/proveedor" será el NIF/NIE/CIF del perceptor o proveedor

##### Facturas y justificantes  \- Personal contratado

Cuando **tipoOperacion\=\='FJP'  y reducida \=\= "true"** las columnas a devolver en la Universidad de Murcia serán:



| id | nombre | acumulable |
| --- | --- | --- |
| 1 | Nº documento identificación | false |
| 2 | Nombre y apellidos | false |
| 3 | Concepto | false |
| 4 | Fecha pago | false |
| 5 | Importe | true |

El campo "Nº documento identificación" se refiere al NIF/NIE del contratado

El campo "Nombre  apellidos" se refiere al nombre y apellidos del contratado

Cuando **tipoOperacion\=\='FJP'  y reducida \=\= "false"** las columnas a devolver en la Universidad de Murcia serán:



| id | nombre | acumulable |
| --- | --- | --- |
| 1 | Nº documento identificación | false |
| 2 | Nombre y apellidos | false |
| 3 | Concepto | false |
| 4 | Fecha contabilización | false |
| 5 | Fecha pago | false |
| 6 | Importe | true |
| 7 | Fecha inicio del contrato | false |
| 8 | Fecha fin del contrato | false |
| 9 | Categoría laboral | false |
| 10 | Jornada semanal o diaria | false |

El campo "Nº documento identificación" se refiere al NIF/NIE del contratado

El campo "Nombre  apellidos" se refiere al nombre y apellidos del contratado

##### Detalle operaciones  \- Gastos

Cuando **tipoOperacion\=\='DOG'** y (**reducida \=\='true'** o **reducida \=\='false')**  (independientemente del campo reducida, ya que siempre se mandan todas las columnas) las columnas a devolver en la Universidad de Murcia serán:



| id | nombre | acumulable |
| --- | --- | --- |
| 1 | F. Cons. | false |
| 2 | F. Pago | false |
| 3 | Operación | false |
| 4 | Descripción | false |
| 5 | Tercero | false |
| 6 | Doc/Fac | false |
| 7 | Créditos | true |
| 8 | Gastos | true |
| 9 | Saldo | true |

##### Detalle operaciones  \- Ingresos

Cuando **tipoOperacion\=\='DOI'** y(**reducida \=\='true'** o **reducida \=\='false')**  (independientemente del campo reducida, ya que siempre se mandan todas las columnas) l las columnas a devolver en la Universidad de Murcia serán:



| id | nombre | acumulable |
| --- | --- | --- |
| 1 | Modif. | false |
| 2 | Mod. Pres | false |
| 3 | Descripción | false |
| 4 | Tipo | false |
| 5 | Fecha | false |
| 6 | Importe | true |

##### Detalle operaciones  \- Modificaciones

Cuando **tipoOperacion\=\='DOM'** y (**reducida \=\='true'** o **reducida \=\='false')**  (independientemente del campo reducida, ya que siempre se mandan todas las columnas) l  las columnas a devolver en la Universidad de Murcia serán:



| id | nombre | acumulable |
| --- | --- | --- |
| 1 | Docum./Recibo | false |
| 2 | Operación | false |
| 3 | Tercero | false |
| 4 | Nombre | false |
| 5 | Descripción | false |
| 6 | Proy. | false |
| 7 | Consol. | false |
| 8 | Mater. | false |
| 9 | Importe | true |
| 10 | Importe IVA | true |

El campo "Tercero" NIF/NIE/CIF de la persona

#### Columnas Validación de gastos

Cuando **reducida \= "true"** las columnas a devolver en la Universidad de Murcia serán:



| id | nombre | acumulable |
| --- | --- | --- |
| 1 | Tipo documento | false |
| 2 | Importe imputado | true |
| 3 | Proveedor | false |

  


Cuando **reducida \= "false"** las columnas a devolver en la Universidad de Murcia serán:



| id | nombre | acumulable |
| --- | --- | --- |
| 1 | Tipo documento | false |
| 2 | Nº documento | false |
| 3 | Importe imputado | true |
| 4 | Importe total | true |
| 5 | Descripción | false |
| 6 | Proveedor | false |

#### Campos Detalle dato económico

##### Facturas y justificantes  \- Facturas y gastos

Cuando **tipoOperacion\=\='FJF'**  (el campo reducida dará igual porque en el detalle siempre se muestran todos los campos) los campos a devolver en la Universidad de Murcia serán:

* Nº de registro
* Tipo de operación
* Proveedor
* Nº de registro del proveedor
* Concepto de la Fac/Gasto
* Importe
* Importe IVA
* Fecha contabilización
* Fecha pago
* Nº de documento de gasto
* Nº de señalamiento

##### Facturas y justificantes  \- Viajes y dietas

Cuando t**ipoOperacion\=\='FJV'** (el campo reducida dará igual porque en el detalle siempre se muestran todos los campos) los campos a devolver en la Universidad de Murcia serán:

* Nº de factura
* Nº de comisión de servicio
* Perceptor/Proveedor
* Identificador Perceptor/Proveedor
* Concepto/ Motivo del viaje
* Fecha contabilización
* Fecha pago
* Itinerario viaje
* Destino
* Fecha salida \- Fecha vuelta
* Medio de locomoción
* Importe locomoción
* Importe alojamiento
* Importe dietas
* Otros gastos
* Importe total
* Observaciones locomoción
* Observaciones alojamiento
* Observaciones dietas

##### Facturas y justificantes  \- Personal contratado

Cuando **tipoOperacion\=\='FJP'** (el campo reducida dará igual porque en el detalle siempre se muestran todos los campos) los campos a devolver en la Universidad de Murcia serán:

* Nº documento identificación
* Nombre y apellidos
* Concepto
* Fecha contabilización
* Fecha pago
* Importe
* Fecha inicio del contrato
* Fecha fin del contrato
* Categoría laboral
* Jornada semanal o diaria

#### Campos Detalle dato económico \- Validación de gastos

Los campos a devolver en la Universidad de Murcia serán:

* Tipo documento
* Nº documento
* Importe imputado
* Importe total
* Descripción
* Proveedor

#### Ejemplos

##### Ejecución presupuestaria \- Estado actual \- Columnas (/ejecucion\-economica/columnas)

  


**Parámetros**

```
proyectoId=="123456";anualidad=in=("2020","2021");tipoOperacion=="EPA"
```

**Respuesta** 

```
[
 {
   "id": "1"
   "nombre":"Importe presupuestado"
   "acumulable": "true"
  },
  {
   "id":"2",
   "nombre":"Importe actual",
   "acumulable": "true"
  },
  {
   "id":"3",
   "nombre":"Importe disponible para gastos",
   "acumulable": "true"
  },
  {
   "id":"4",
   "nombre":"Derechos",
   "acumulable": "true"
  },
  {
   "id":"5",
   "nombre":"Cobros",
   "acumulable": "true"
  }

]
```

  


##### Ejecución presupuestaria \- Estado actual  (/ejecucion\-economica)

  


**Parámetros**

```
proyectoId=="123456";anualidad=in=("2020","2021");tipoOperacion=="EPA"
```

**Respuesta**

```
[
{
	"proyectoId":"123456",
	"partidaPresupuestaria": "8002B541A64406"
	"anualidad":"2020",
	"tipo":"Gasto",
	"columnas": {
     	"1":2000,
     	"2":500,
     	"3":1000.50,
     	"4":1000.50,
     	"5":1000.50
     	}
 
},
{
	"proyectoId":"123456",
	"partidaPresupuestaria": "8002B541A64406"
	"anualidad":"2021",
	"tipo":"Gasto",
	"columnas": {
        "1":2000,
     	"2":500.50,
     	"3":1000.50,
     	"4":1000.50,
     	"5":1000.50
         }
}
]


```

##### Facturas y justificantes \- Facturas y gastos \- Columnas (reducida false) (/ejecucion\-economica/columnas)

  


**Parámetros**

```
proyectoId=="123456";anualidad=in=("2020","2021");fechaPago=bt=("2020-12-01T00:00:00Z","2021-01-31T23:59:59Z");tipoOperacion=="FJF";reducida=="false"
```

  


  


**Respuesta** 

```
[
 {
   "id": "1"
   "nombre":"Nº de registro"
   "acumulable": "false"
   
  },
  {
   "id":"2",
   "nombre":"Tipo de operación",
   "acumulable": "false"
  
  },
  {
   "id":"3",
   "nombre":"Proveedor",
   "acumulable": "false"
  
  },
  {
   "id":"4",
   "nombre":"Nº de registro del proveedor",
   "acumulable": "false"
  },
  {
   "id":"5",
   "nombre":"Concepto de la Fac./Gasto",
   "acumulable": "false"
  },
  {
   "id":"6",
   "nombre":"Importe",
   "acumulable": "true"
  },
  {
   "id":"7",
   "nombre":"Importe IVA",
   "acumulable": "true"
  },
  {
   "id":"8",
   "nombre":"Fecha contabilización",
   "acumulable": "false"
  },
  {
   "id":"9",
   "nombre":"Fecha pago",
   "acumulable": "false"
  },
  {
   "id":"10",
   "nombre":"Nº documento de gasto",
   "acumulable": "false"
  },
  {
   "id":"11",
   "nombre":"Nº de señalamiento",
   "acumulable": "false"
  }

]
```

  


##### Facturas y justificantes \- Facturas y gastos (reducida a false) (/ejecucion\-economica)

  


**Parámetros**

```
proyectoId=="123456";anualidad=in=("2020","2021");fechaPago=bt=("2020-12-01","2021-01-31");ttipoOperacion=="FJF";reducida=="false"
```

**Respuesta**

```
[
{
	"id":"11-2020-Factura"
	"proyectoId":"123456",
	"partidaPresupuestaria": "8002B541A64406",
    "fechaDevengo": "20/12/2020",
    "clasificacionSGE": {
        "id": "1",
        "nombre": "Fungible",
     } ,
     "codigoEconomico": {
   	 	"id": "FU",
    	"nombre": "Fungible",
    	"tipo": "Gasto"
		}
	"anualidad":"2020",
	"tipo":"Gasto",
	"columnas": {
     	"1":"1243",
  		"2":"Factura",
 		"3":"Proveedor1",
  		"4":"24555",
  		"5":"Gasto de material inventariable",
 		"6":500.00,
  		"7":0.00,
  		"8":"20/12/2020",
  		"9":"20/12/2020",
 		"10":"11222",
  		"11":"4567"
  		}
},
{
	"id":"12-2020-Factura"
	"proyectoId":"123456",
	"partidaPresupuestaria": "8002B541A64406",
    "fechaDevengo": "20/12/2020",
    "clasificacionSGE": {
        "id": "1",
        "nombre": "Fungible",
     } ,   
    "codigoEconomico": {
    	"id": "FU",
    	"nombre": "Fungible",
    	"tipo": "Gasto"
		}
	"anualidad":"2020",
	"tipo":"Gasto",
	"columnas":{
     	"1":"1243",
  		"2":"Factura",
 		"3":"Proveedor1",
  		"4":"24555",
  		"5":"Gasto de material inventariable",
 		"6":500.00,
  		"7":0.00,
  		"8":"20/12/2020",
  		"9":"20/12/2020",
 		"10":"11222",
  		"11":"4567"
  		}
}
]

```

##### Facturas y justificantes \- Facturas y gastos \- Detalle (/ejecucion\-economica/{id})

**Parámetros**

```
tipoOperacion=="FGF"
```

  
  


**Respueta**

```
{
    "id":"11-2020-Factura"
    "proyectoId":"123456",
    "partidaPresupuestaria": "8002B541A64406",
    "fechaDevengo": "20/12/2020",
    "clasificacionSGE": {
        "id": "1",
        "nombre": "Fungible",
     } , 
     "codigoEconomico": {
        "id": "FU",
        "nombre": "Fungible",
        "tipo": "Gasto"
        }
    "anualidad":"2020",
    "tipo":"Gasto",
    "campos":[
        {
            "nombre":"Nº registro",
            "valor":"1243"
        },
        {
            "nombre":"Tipo operación",
            "valor":"Factura"
        },
        {
            "nombre":"Proveedor",
            "valor":"Proveedor1"
        },
        {
            "nombre":"Nº de registro del proveedor",
            "valor":"24555"
        },
        {
            "nombre":"Concepto de la Fac/Gasto",
            "valor":"Gasto de material inventariable"
        },
        {
            "nombre":"Importe",
            "valor":"500.00"
        },
        {
            "nombre":"Importe IVA",
            "valor":"0.00"
        },
        {
            "nombre":"Fecha contabilización",
            "valor":"20/12/2020"
        },
        {
            "nombre":"Fecha pago",
            "valor":"20/12/2020"
        },
        {
            "nombre":"Nº documento de gasto",
            "valor":"11222"
        },
        {
            "nombre":"Nº de señalamiento",
            "valor":"4567"
        }
    ]
     
}
```

  


##### **Validaciones de gastos pendientes \- Columnas (con reducida a true) (/gastos/columnas)**

  


**Parámetros**

```
proyectoId=="123456";estado=="Pendiente";reducida=="true"
```

**Respuesta**

```
[
 {
   "id": "1"
   "nombre":"Tipo documento"
   "acumulable": "false"
  },
  {
   "id":"2",
   "nombre":"Importe imputado",
   "acumulable": "true"
  },
  {
   "id":"3",
   "nombre":"Proveedor",
   "acumulable": "false"
  }
  
]
```

##### **Validaciones de gastos pendientes \- Columnas (con reducida a false) (/gastos/columnas)**

  


**Parámetros**

```
proyectoId=="123456";estado=="Pendiente";reducida=="false"
```

**Respuesta**

```
[
 {
   "id": "1"
   "nombre":"Tipo documento"
   "acumulable": "false"
  },
  {
   "id":"2",
   "nombre":"Nº documento",
   "acumulable": "false"
  },
  {
   "id":"3",
   "nombre":"Importe imputado",
   "acumulable": "true"
  },
  {
   "id":"4",
   "nombre":"Importe total",
   "acumulable": "true"
  },
  {
   "id":"5",
   "nombre":"Descripción",
   "acumulable": "false"
  },
  {
   "id":"6",
   "nombre":"Proveedor",
   "acumulable": "false"
  }
  
]
```

##### **Validaciones de gastos pendientes****(con reducida a true)** **(/gastos)**

**Parámetros**

```
proyectoId=="123456";estado=="Pendiente";reducida=="true"
```

**Respuesta**

```
[
{
	"id":"1",
	"proyectoId":"123456",
	"partidaPresupuestaria": "08002B541A64406",
    "fechaDevengo": "10/11/2021",
    "clasificacionSGE": {
        "id": "1",
        "nombre": "Fungible",
     } , 
    "codigoEconomico": {
    	"id": "VI",
    	"nombre": "Viajes y dietas",
    	"tipo": "Gasto"
		},
	"anualidad":"2021",
    "tipo":"Gasto",
	"columnas": {
   		"1":"Factura",
  		"2":"1000.50",
  		"3":"Empresa S.A"
  		}
},
{
	"id":"2",
	"proyectoId":"123456",
	"partidaPresupuestaria": "08002B541A64406",
    "fechaDevengo": "07/11/2021",
    "clasificacionSGE": {
        "id": "1",
        "nombre": "Fungible",
     } ,
    "codigoEconomico": {
    	"id": "VI",
    	"nombre": "Viajes y dietas",
    	"tipo": "Gasto"
		}
	"anualidad":"2021",
    "tipo":"Gasto",
	"columnas" {
   		"1":"Factura",
  		"2":"1000.50",
  		"3":"Empresa S.A"
  		}
}
]
```

##### **Validaciones de gastos pendientes****(con reducida a false)** **(/gastos)**

**Parámetros**

```
proyectoId=="123456";estado=="Pendiente";reducida=="false"
```

**Respuesta**

```
[
{
	"id":"1",
	"proyectoId":"123456",
	"partidaPresupuestaria": "08002B541A64406",
    "fechaDevengo": "10/11/2021",
    "clasificacionSGE": {
        "id": "1",
        "nombre": "Fungible",
     } ,  
    "codigoEconomico": {
    	"id": "VI",
    	"nombre": "Viajes y dietas",
    	"tipo": "Gasto"
		},
	"anualidad":"2021",
    "tipo":"Gasto",
	"columnas": {
   		"1":"Factura",
  		"2":"122-45",
  		"3":"700.00",
        "4":"800.50",
        "5":"Descripción del gasto",
        "6":"Empresa S.A"
  		}
},
{
	"id":"2",
	"proyectoId":"123456",
	"partidaPresupuestaria": "08002B541A64406",
    "fechaDevengo": "10/11/2021",
    "clasificacionSGE": {
        "id": "1",
        "nombre": "Fungible",
     } ,  
  "codigoEconomico": {
    	"id": "VI",
    	"nombre": "Viajes y dietas",
    	"tipo": "Gasto"
		}
	"anualidad":"2021",
    "tipo":"Gasto",
	"columnas" {
   		"1":"Factura",
  		"2":"122-46",
  		"3":"600.00",
        "4":"1800.50",
        "5":"Descripción del gasto",
        "6":"Empresa S.A"
  		}
}
]
```

##### **Detalle gasto (/gastos/{id})**

  


**Respuesta**

```
"id":"2",
"proyectoId":"123456",
"partidaPresupuestaria": "08002B541A64406",
"fechaDevengo": "10/11/2021",
 "clasificacionSGE": {
        "id": "1",
        "nombre": "Fungible",
     } ,  
 "codigoEconomico": {
    "id": "VI",
    "nombre": "Viajes y dietas",
    "tipo": "Gasto"
    }
"anualidad":"2021",
"tipo":"Gasto",
"campos":[
  {
   "nombre":"Tipo documento",
   "valor":"Factura"
  },
  {
   "nombre":"Nº documento",
   "valor":"122-46"
  },
  {
   "nombre":"Importe imputado",
   "valor":"600.00"
  },
  {
   "nombre":"Importe total",
   "valor":"1800.50"
  },
  {
   "nombre":"Descripción",
   "valor":"Descripción del gasto"
  },
  {
   "nombre":"Proveedor",
   "valor":"Empresa S.A"
  }
]
"documentos":[
  {
   "id": "11",  
   "nombre":"Factura",
   "nombreFichero":"factura.pdf"
  },
  {
    "id": "12", 
    "nombre":"Otro documento",
    "nombreFichero":"otroDocumento.pdf"
  }
]


```

  


  





