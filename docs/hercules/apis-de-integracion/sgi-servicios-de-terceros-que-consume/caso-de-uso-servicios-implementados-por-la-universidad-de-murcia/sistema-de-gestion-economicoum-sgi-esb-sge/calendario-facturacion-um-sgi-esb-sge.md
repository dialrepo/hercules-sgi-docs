# Hércules : Calendario facturación (UM \- SGI \- ESB \- SGE)



  






## Ejecución económica

### Entidades



| Entidad | Descripción |
| --- | --- |
| FacturaEmitida | Entidad que representa una factura emitida del SGE. Tendrá que venir identificado por un identificador único, por el proyecto al que pertenece y la anualidad.El resto de campos de la factura emitida se tratarán como columnas dinámicas. Se indicará por cada columna el identificador del campo, el nombre del campo y si es una columna sobre la que se tiene que hacer una suma para mostrarlo en el SGI como un campo totalizador. |
| Columna | Contiene el listado de columnas que serán mostradas en la pantalla del SGI de Factura emitidas.Por cada columna se tendrá el identificador del campo, el nombre del campo y si es una columna sobre la que se tiene que hacer una suma para mostrarlo en el SGI como un campo totalizador. |
| FacturaEmitidaDetalle | Entidad que representa el detalle de una factura emitida con todos sus campos para mostrarlo en una pantalla de consulta de la factura emitida.Tendrá unos campos fijos (identificador único, identificador del proyecto al que pertenece y anualidad) y unos campos dinámicos. Por cada campo se detallará el nombre y el valor del campo para mostrarlo en la pantalla del SGI |
| Campo | Contiene el listado de campos dinámicos que serán mostradas en las pantallas de detalle de una factura emitida.Por cada campo se tendrá el el nombre y el valor del campo |
| Documento | Entidad que representa los documentos que pueda tener relacionados una factura emitida |
| FacturaPrevistaEmitida | Entidad que representa una factura emitida del SGE pero con menos información que la entidad "FacturaEmitida". Únicamente tiene la información sobre el "número de factura del SGE" y del "número de previsión". Es para poder mostrar en la pantalla de Calendario facturación del SGI el número de factura. |

### Modelo lógico

![](/attachments/598147589/598148296.png)

#### Definición de los objetos

##### FacturaEmitida



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | String | Identificador de la factura emitida. Tiene que ser un identificador único. |
| proyectoId | String | Identificador del proyecto económico |
| anualidad | String | Anualidad |
| numeroFactura | String | Número de la factura emitida (en el SGE) |
| columnas | Map\[clave,valor] | Mapa de propiedadesEl valor será un String salvo en aquellas columnas que sean acumulables (se tenga que hacer sumas sobre ellas) donde será de tipo Numérico (sin separador de miles y como separador decimal el punto) |

##### FacturaEmitidaDetalle

##### Detalle



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | String | Identificador de la factura emitida. Tiene que ser un identificador único. |
| proyectoId | String | Identificador del proyecto económico |
| anualidad | String | Anualidad |
| numeroFactura | String | Número de la factura emitida (en el SGE) |
| campos | Lista\[Campo] | Lista de campos, por cada campo se define el nombre y el valor del campo |
| documentos | Lista\[Documento] | Lista de documentos asociados a la factura emitida (sin el contenido binario del fichero). |

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

##### FacturaPrevistaEmitida



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | String | Identificador de la factura emitida. Tiene que ser un identificador único. |
| proyectoIdSGI | String | Identificador del proyecto SGI. |
| numeroFactura | String | Número de la factura emitida (en el SGE) |
| numeroPrevision | String | Es el campo que establece la relación entre el ítem del calendario de facturación y las facturas emitidas en el SGE.Junto con el identificador del proyecto SGI identificarán un item del calendario de facturación del SGI. |



| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| SGI \- SGE (Los debe de implementar Murcia) | | | | |
| GET | /facturas\-emitidas/columnas | q\+s (query \+ sort)La query estará formada por:* proyectoId * reducida * fechaFactura  El campo reducida puede tomar los siguientes valores:* true: sólo se envían las columnas a mostrar en la pantalla principal * false:  se envían todas las columnas (para su exportación)  Si no esta informado el campo reducida se considera false. | Lista\[Columna] | Listado con las columnas que va a devolver la llamada /facturas\-emitidasPor cada columna se indica un id, nombre, si es una columna acumulable (se va a hacer una suma de ella en el SGI)Ver el apartado "**Columnas Factura Emitida**" para ver que columnas se deben de mostrar. |
| GET | /facturas\-emitidas | q\+s (query \+ sort)La query estará formada por:* proyectoId * reducida * fechaFactura  El campo reducida puede tomar los siguientes valores:* true: sólo se envían las columnas a mostrar en la pantalla principal * false:  se envían todas las columnas (para su exportación)  Si no esta informado el campo reducida se considera false. | Lista\[FacturaEmitida] | Listado con las facturas emitidas del SGE. Por cada factura emitida se devolverán los siguientes campos:* Identificador de la factura emitida * Identificador del proyecto SGE * Anualidad * Número de factura * Mapa de columnas de clave \- valor (donde la clave será los id definidos en la llamada /facturas\-emitidas/columnas y el valor será el valor de la columna. El valor será un String salvo en aquellas columnas que sean acumulables,se tenga que hacer sumas sobre ellas, donde será de tipo Numérico (sin separador de miles y como separador decimal el punto)). Ver el apartado "**Columnas Factura Emitida**" para ver los id de la columnas que se deben de mostrar. |
| GET | /facturas\-previstas\-emitidas | q\+s (query \+ sort)La query estará formada por:* proyectoIdSGI * numeroPrevision * numeroFactura  proyectoIdSGI: identificador del proyecto en el SGI | Lista\[FacturaPrevistaEmitida] | Listado con las facturas emitidas del SGE. Por cada factura emitida se devolverán los siguientes campos:* Identificador de la factura emitida * Identificador del proyecto SGI * Número factura * Número previsión |
| GET | /facturas\-emitidas/{id} |  | FacturaEmitidaDetalle | Detalle de la factura emitida con todas sus columnas.* Identificador de la factura emitida * Identificador del proyecto SGE * Anualidad * Listado de campos con su nombre y valor (Ver el apartado "**Campos Detalle factura emitida**" para ver que campos se deben de mostrar. En el detalle se muestran todos la columnas o campos.) * Listado de documentos (identificador, nombre del documento y nombre del fichero, sin el contenido) |
|  | | | | |
| GET | /documentos/{id}/archivo |  | Binario (en la cabecera ira el contentType) | Devuelve el binario del documento |

#### Columnas Facturas emitidas

(**reducida \=\='true'** o **reducida \=\='false')**  (independientemente del campo reducida, ya que siempre se mandan todas las columnas) las columnas a devolver en la Universidad de Murcia serán:



| id | nombre | acumulable |
| --- | --- | --- |
| 1 | Fecha emisión | false |
| 2 | Entidad | false |
| 3 | Concepto | false |
| 4 | Importe base | true |
| 5 | Porcentaje IVA | false |
| 6 | Importe total | true |
| 7 | Estado | false |
| 8 | Fecha cobro | false |
| 9 | Importe cobrado | true |
| 10 | Número previsión | false |

#### Campos **Factura emitida**

Los campos a devolver en la Universidad de Murcia serán:

* Fecha emisión
* Entidad
* Concepto
* Importe base
* Porcentaje IVA
* Importe total
* Estado
* Fecha cobro
* Importe cobrado
* Número previsión

#### Ejemplos

##### Columnas Facturas emitidas (/facturas\-emitidas/columnas)

  


**Parámetros**

```
proyectoId=="123456";fechaFactura=bt=("2020-12-01T00:00:00Z","2021-01-31T23:59:59Z")
```

**Respuesta** 

```
[
 {
   "id": "1"
   "nombre":"Fecha emisión"
   "acumulable": "false"
   
  },
  {
   "id":"2",
   "nombre":"Entidad",
   "acumulable": "false"
  
  },
  {
   "id":"3",
   "nombre":"Concepto",
   "acumulable": "false"
  
  },
  {
   "id":"4",
   "nombre":"Importe base",
   "acumulable": "true"
  },
  {
   "id":"5",
   "nombre":"Porcentaje IVA",
   "acumulable": "false"
  },
  {
   "id":"6",
   "nombre":"Importe total",
   "acumulable": "true"
  },
  {
   "id":"7",
   "nombre":"Estado",
   "acumulable": "false"
  },
  {
   "id":"8",
   "nombre":"Fecha cobro",
   "acumulable": "false"
  },
  {
   "id":"9",
   "nombre":"Importe cobrado",
   "acumulable": "true"
  },
  {
   "id":"10",
   "nombre":"Número previsión",
   "acumulable": "false"
  }

]
```

  


##### Facturas emitidas (/facturas\-emitidas)

  


**Parámetros**

```
proyectoId=="123456";fechaFactura=bt=("2020-12-01T00:00:00Z","2021-01-31T23:59:59Z")
```

**Respuesta**

```
[
{
	"id":"11-2021"
	"proyectoId":"123456",
	"anualidad":"2021",
	"numeroFactura":"J2021/01",
	"columnas": {
     	"1":"20/05/2021",
  		"2":"Entidad1",
 		"3":"Concepto1",
  		"4":1000.00,
  		"5":"10",
 		"6":1100.00,
  		"7":"Pagada",
  		"8":"20/08/2021",
  		"9":1100.00,
  		"10":"1"
  		}
},
{
	"id":"12-2021"
	"proyectoId":"123456",
	"anualidad":"2021",
	"numeroFactura":"J2021/02",
	"columnas": {
     	"1":"20/06/2021",
  		"2":"Entidad2",
 		"3":"Concepto2",
  		"4":1000.00,
  		"5":"10",
 		"6":1100.00,
  		"7":"Pagada",
  		"8":"20/08/2021",
  		"9":1100.00,
  		"10":"2"
  		}
}
]

```

  


##### Detalle factura emitida (/facturas\-emitidas/{id})

{

**Respueta**

```
{
    "id":"12-2021"
	"proyectoId":"123456",
	"anualidad":"2021",
	"numeroFactura":"J2021/02",
    "campos":[
        {
            "nombre":"Fecha emisión",
            "valor":"1243"
        },
        {
            "nombre":"Entidad",
            "valor":"Entidad1"
        },
        {
            "nombre":"Concepto",
            "valor":"Concepto1"
        },
        {
            "nombre":"Importe base",
            "valor":1000.00
        },
        {
            "nombre":"Porcentaje IVA",
            "valor":"10"
        },
        {
            "nombre":"Importe total",
            "valor":1100.00
        },
        {
            "nombre":"Estado",
            "valor":"Pagada"
        },
        {
            "nombre":"Fecha cobro",
            "valor":"20/08/2021"
        },
        {
            "nombre":"Importe cobrado",
            "valor":1100.00
        },
        {
            "nombre":"Número previsión",
            "valor":"2
        }
    ],
   "documentos":[
        {
  		 "id": "11", 
   		 "nombre":"Factura",
   		 "nombreFichero":"factura.pdf"
  		}
    ]
     
}
```

  


##### Consulta facturas previstas de emitir  (/facturas\-previstas\-emitidas)

Las registradas en el SGE y que debe consultar el SGI para obtener el "número de factura" para mostrarlo en la pantalla de calendario facturación

  


**Parámetros**

```
proyectoIdSGI=="11";
```

**Respuesta**

```
[
    {
	"id":"1"
	"proyectoIdSGI":"11",
	"numeroFactura":"J2021/01",
	"numeroPrevision":"1"
     },
	{
	"id":"2"
	"proyectoIdSGI":"11",
	"numeroFactura":"J2021/02",
	"numeroPrevision":"2"
     }

]

```




