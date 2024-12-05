# Hércules : Sistema de gestión de Patentes (UM \- SGI \- ESB \- SGEPII)



  










Control de cambios

  


**Leyenda**



| Nuevo | Modificado | Eliminado |
| --- | --- | --- |

  


**Historial de cambios**



| Fecha | Cambios |
| --- | --- |
| 30\-sep\-2021 | Adaptación para poder diferenciar los gastos que han de intervenir en los repartos de regalías del resto y para identificar qué columnas corresponden a los importes a incluir en los repartos. |

## Sistema de Gestión Económica de Protección Industrial e Intelectual

### Entidades

Cambios

30\-sep\-2021 Se actualizan las entidades para:

* Añadir al modelo del SGEPII la entidad Columna, ya que pasa a ser distinta a la del SGE y ya no se podría reutilizar.
Hay entidades que se reutilizan del modelo de Ejecución económica del SGE y pero se repiten aquí por claridad aunque ya están descritas en el API del SGE: [SGI \- ESB \- SGE \- Ejecución económica](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-ejecucion-economica/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-ejecucion-economica/index.md").



| Entidad | Descripción |
| --- | --- |
| DatoEconomico | Entidad que representa cualquier dato económico. Tendrá que venir identificado por un identificador único, por el proyecto al que pertenece, anualidad, partida presupuestaria y un código económico (opcional en algunos de los casos).El resto de campos del dato económico se tratarán como columnas dinámicas. Se indicará por cada columna el identificador del campo, el nombre del campo y si es una columna sobre la que se tiene que hacer una suma para mostrarlo en el SGI como un campo totalizador. |
| Columna | Contiene el listado de columnas que serán mostradas en las pantallas del SGI dependiendo de la pantalla en la que se esté: gastos o repartos.Por cada columna se tendrá el identificador del campo, el nombre del campo, si es una columna sobre la que se tiene que hacer una suma para mostrarlo en el SGI como un campo totalizador, que, a los efectos de esta integración para las invenciones, equivaldría a identificar dicha columna como de tipo numéricos y si es la columna (solo puede haber una) que se ha de utilizar para hacer el cálculo del importe a deducir en los repartos de regalías. |
| DatoEconomicoDetalle | Entidad que representa el detalle de un dato económico con todos sus campos para mostrarlo en una pantalla de consulta del dato económico.Tendrá unos campos fijos (identificador único, identificador del proyecto al que pertenece, anualidad, partida presupuestaria y un código económico) y unos campos dinámicos. Por cada campo se detallará el nombre y el valor del campo para mostrarlo en la pantalla del SGI |
| Invencion | Entidad que representa a la invención cara a poder ser presentada en listas de valores con su título. |

### Enumerados

Cambios

30\-sep\-2021 Se actualiza la lista de enumerados para:

* Añadir el enumerado TipoOperacion.


| Entidad | Descripción |
| --- | --- |
| TipoDatoEconomico | Puede tomar los siguientes valores:* Ingreso * Gasto |
| TipoOperacion | Puede tomar los siguientes valores:* GAS * REP |

### Modelo lógico

Cambios

30\-sep\-2021 Se actualiza el modelo lógico para:

* Añadir entidad "Columna" como propia del modelo de PII.
* Añadir enumerado "TipoOperacion" y relacionarlo con DatoEconomico.
![](/attachments/597852911/597872621.png)

### API

Características generales que todas las API REST deben de cumplir:

* [Consultas filtradas y paginadas](https://confluence.um.es/confluence/display/HERCULES/Consultas+filtradas+y+paginadas "https://confluence.um.es/confluence/display/HERCULES/Consultas+filtradas+y+paginadas")
* [Formatos de datos API](https://confluence.um.es/confluence/display/HERCULES/Formatos+de+datos+API "https://confluence.um.es/confluence/display/HERCULES/Formatos+de+datos+API")

#### Definición de los objetos

Hay objetos que se reutilizan del modelo de Ejecución económica del SGE y por tanto no se repiten aquí, están descritos en el API del SGE:  [UM \- SGI \- ESB \- SGE \- Ejecución económica](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-de-gestion-economico-um-sgi-esb-sge/um-sgi-esb-sge-ejecucion-economica.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-de-gestion-economico-um-sgi-esb-sge/um-sgi-esb-sge-ejecucion-economica.md").

Cambios

30\-sep\-2021 Se actualiza la definición de objetos para:

* Añadir objeto "Columna" como propio del modelo de PII.
##### Invencion



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | String | Identificador único de la invención. |
| titulo | String | Título de la invención. |

##### DatoEconomico



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | String | Identificador del dato económico. Tiene que ser un identificador único. |
| tipo | String | Dos valores:* Gasto * Ingreso |
| columnas | Map\[clave,valor] | Mapa de propiedades.El valor será un String salvo en aquellas columnas que sean acumulables (se puede manejar como un importe y hacer operaciones numéricas con ella en el SGI). |

##### DatoEconomicoDetalle



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | String | Identificador del dato económico. Tiene que ser un identificador único. |
| documentos | Lista\[Documento] | Lista de documentos asociados al gasto (sin el contenido binario del fichero). |

##### Columna



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | String | Identificador de la columna |
| nombre | String | Nombre de la columna |
| acumulable | Boolean | Indica si la columna se puede sumar y por extensión, además indica que es numérica.Dos valores:* true * false |
| importeReparto | Boolean | Indica que la columna se corresponde con el importe que se quiere tener en cuenta a la hora de calcular el reparto de regalías. SOLO UNA COLUMNA PODRÁ TENER ESTE CAMPO ACTIVO, en el caso de UM, será el campo que contenga el dato de base imponible.Dos valores:* true * false |

##### Documento (se reutilizaría el mismo que el definido en [UM \- SGI \- ESB \- SGE \- Ejecución económica](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-de-gestion-economico-um-sgi-esb-sge/um-sgi-esb-sge-ejecucion-economica.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-de-gestion-economico-um-sgi-esb-sge/um-sgi-esb-sge-ejecucion-economica.md"))



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | String | Identificador único del documento |
| nombre | String | Nombre del documento a mostrar |
| nombreFichero | String | Nombre del fichero con extensión |

#### Servicios

Hay servicios a los que no se hace mención en este API porque la funcionalidad que los precisa, por ejemplo, la recuperación del binario de cada documento asociado a un gasto, ha de reutilizar los que ya están definidos en el modelo de Ejecución económica del SGE y por tanto no se repiten aquí, están descritos en el API del SGE: [UM \- SGI \- ESB \- SGE \- Ejecución económica](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-de-gestion-economico-um-sgi-esb-sge/um-sgi-esb-sge-ejecucion-economica.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-de-gestion-economico-um-sgi-esb-sge/um-sgi-esb-sge-ejecucion-economica.md").

Cambios

30\-sep\-2021 Se actualiza la definición del servicio GET /gastos\-invencion para recibir el nuevo parámetro tipoOperacion.



| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| Invención | | | | |
| HEAD | /invenciones/{id} |  | HTTP 200 / HTTP 204 | Comprueba la existencia de la invención con el id indicado en el SGI. (A implementar por Treelogic) |
| GET | /invenciones | q\+s (query \+ sort)La query estará formada por:* invencionId | Lista\[Invencion] | Listado de todas las invenciones registradas en el SGI. (A implementar por Treelogic)*Ejemplo*:invencionId\=in\=(150,151,152\) |
| Gastos | | | | |
| GET | /gastos\-invencion/columnas | q\+s (query \+ sort)La query estará formada por:* invencionId | Lista\[Columna] | Listado con las columnas que va a devolver la llamada /gastos\-invencion.Por cada columna se indica un id, nombre, si es una columna acumulable (se puede manejar como un importe y hacer operaciones numéricas con ella en el SGI).Por defecto, devolverá las siguientes columnas:* Fecha * Referencia * Concepto * Tipo * Importe (acumulable \= Sí SOLO para una de las columnas)  El tipo de operación |
| GET | /gastos\-invencion | q\+s (query \+ sort)La query estará formada por:* invencionId * tipoOperacion  El tipo de operación puede tomar los siguientes valores:* GAS (Ejecución económica \- Gastos) * REP (Ejecución económica \- Repartos \- Gastos a deducir) | Lista\[DatoEconomico] | Listado de todos los gastos asociados a una invención.Para cada gasto se devolverán los siguientes datos:* Identificador del gasto * Mapa de columnas de clave \- valor (donde la clave será los id definidos en la llamada /gastos\-invencion/columnas y el valor será el valor de la columna. El valor será un String salvo en aquellas columnas que sean acumulables, esto es, se puedan manejar como un importe y hacer operaciones numéricas con ella en el SGI, donde será de tipo Numérico (sin separador de miles y como separador decimal el punto).  Si el tipo de operación se informa con el valor GAS, se han de devolver todos los gastos asociados a la invención.Si por el contrario el tipo de operación es REP, se han de devolver del conjunto de gastos asociados a la invención únicamente aquellos que se deban tener en cuenta para el reparto de regalías. En el caso de UM, estos corresponderían con los gastos que haya pagado la OTRI, sea desde sus partidas propias o desde cualquier otra partida o proyecto. |
| GET | /gastos\-invencion/{id} |  | DatoEconomicoDetalle | Detalle de un gasto.Para cada gasto se devolverán los siguientes datos:* Identificador del gasto * Listado de documentos (identificador, nombre del documento y nombre del fichero, sin el contenido) |
| Ingresos |  |  |  |  |
| GET | /ingresos\-invencion/columnas | q\+s (query \+ sort)La query estará formada por:* proyectoId | Lista\[Columna] | Listado con las columnas que va a devolver la llamada /ingresos\-invencion.El identificador de proyecto a enviar al SGE ha de ser el del proyecto económico en Justo.Por cada columna se indica un id, nombre, si es una columna acumulable (se puede manejar como un importe y hacer operaciones numéricas con ella en el SGI).Por defecto, devolverá las siguientes columnas:* Fecha * Referencia * Importe (acumulable \= Sí) * Nº interno de contrato * Entidad pagadora |
| GET | /ingresos\-invencion | q\+s (query \+ sort)La query estará formada por:* proyectoId | Lista\[DatoEconomico] | Listado de todos los ingresos asociados a una invención. La asociación en el SGI se realizará a través de contratos de CSP (proyectos) y el identificador de proyecto a enviar al SGE ha de ser el del proyecto económico en Justo.Los ingresos devueltos se corresponderán con las facturas emitidas asociadas a la invención a través del contrato.Para cada ingreso se devolverán los siguientes datos:* Identificador del ingreso * Mapa de columnas de clave \- valor (donde la clave será los id definidos en la llamada /ingresos\-pii/columnas y el valor será el valor de la columna. El valor será un String salvo en aquellas columnas que sean acumulables, esto es, se puedan manejar como un importe y hacer operaciones numéricas con ella en el SGI, donde será de tipo Numérico (sin separador de miles y como separador decimal el punto). |

#### Columnas Gastos



| id | nombre | acumulable | descripción |
| --- | --- | --- | --- |
| 1 | Fecha | false | Fecha de emisión |
| 2 | Referencia | false | Nº / año factura |
| 3 | Concepto | false | Descripción de factura |
| 4 | Tipo | false | Tipo de gasto |
| 5 | Importe | true | Base imponible |

#### Columnas Ingresos



| id | nombre | acumulable | descripción |
| --- | --- | --- | --- |
| 1 | Fecha | false | Fecha de emisión |
| 2 | Referencia | false | Serie\-Nº factura / año factura |
| 3 | Importe | true | Base imponible |
| 3 | Nº interno de contrato | false | Identificador del contrato del SGI asociado al ingreso |
| 4 | Entidad pagadora | false | Nombre del tercero pagador de la factura emitida |

#### Ejemplos

##### Columnas de gastos (/gastos\-invencion/columnas)

**Respuesta**

```
[
 {
   "id": "1"
   "nombre":"Fecha"
   "acumulable": "false"
  },
  {
   "id":"2",
   "nombre":"Referencia",
   "acumulable": "false"
  },
  {
   "id":"3",
   "nombre":"Concepto",
   "acumulable": "false"
  },
  {
   "id":"4",
   "nombre":"Tipo",
   "acumulable": "false"
  },
  {
   "id":"5",
   "nombre":"Importe",
   "acumulable": "true"
  }

]
```

##### Gastos (/gastos\-invencion)

**Respuesta**

```
[
{
	"id":"1",
	"tipo":"Gasto",
	"columnas": {
     	"1":,
     	"2":"F123456",
     	"3":"Informe de patentabilidad",
     	"4":"Honorarios",
     	"5":55.99
     	}
 
},
{
	"id":"2",
	"tipo":"Gasto",
	"columnas": {
     	"1":,
     	"2":"F123457",
     	"3":"Solicitud de patente",
     	"4":"Tasa",
     	"5":99.99
     	}
}
]


```

##### **Detalle gasto (/gastos\-invencion/{id})**

**Respuesta**

```
"id":"2",
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

#### Seguridad

Actualmente las peticiones realizadas al esb se harán enviando un token de acceso en la cabecera de **authentication**, aunque se seguirá trabando en la seguridad para realizar una comunicación máquina a máquina y no mediante usuario/contraseña sino a través de un secret.

##### Seguridad con usuario/contraseña

Se utiliza OAuth 2 sobre el protocolo OpenID Connect (OIDC).

En [http://sgi.ic.corp.treelogic.com/auth/realms/sgi/.well\-known/openid\-configuration](http://sgi.ic.corp.treelogic.com/auth/realms/sgi/.well-known/openid-configuration "http://sgi.ic.corp.treelogic.com/auth/realms/sgi/.well-known/openid-configuration") se pueden consultar los endpoint disponibles de OIDC.

Mediante **POST** a [http://sgi.ic.corp.treelogic.com/auth/realms/sgi/protocol/openid\-connect/token](http://sgi.ic.corp.treelogic.com/auth/realms/sgi/protocol/openid-connect/token "http://sgi.ic.corp.treelogic.com/auth/realms/sgi/protocol/openid-connect/token") se obtiene el token de acceso y el de refresco. Por defecto el token de acceso solo es válido 5 minutos, y el de refresco 30 minutos. Este mismo enpdoint permite refrescar los tokens. El content\-type de la petición ha de ser **application/x\-www\-form\-urlencoded** 

Para la obtención de los tokens se incluirán los siguientes campos:



| client\_id | front | Identifica al cliente, por ahora el mismo que la web pero cambiará más adelante |
| --- | --- | --- |
| username | visor\-csp | Usuario de la autenticación, en el futuro ya no será necesario |
| password | visor\-csp | Password del usuario, en el futuro ya no será necesario. |
| grant\_type | password | Tipo de autenticación, más adelante cambiará. |

Para el refresco de los tokens se incluirán los siguientes campos:



| client\_id | front | Identifica al cliente, por ahora el mismo que la web pero cambiará más adelante |
| --- | --- | --- |
| grant\_type | refresh\_token | Tipo de autenticación. |
| refresh\_token |  | Se enviará el token de refresco que se disponga en ese momento. |

  


  


  





