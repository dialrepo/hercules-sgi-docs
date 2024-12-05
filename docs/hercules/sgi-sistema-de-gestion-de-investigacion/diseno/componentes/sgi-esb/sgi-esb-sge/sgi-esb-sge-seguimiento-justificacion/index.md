# Hércules : SGI \- ESB \- SGE \- Seguimiento justificación



## Seguimiento justificación

### Entidades



| Entidad | Descripción |
| --- | --- |
| GastoJustificado | Entidad que representa al gasto que puede ser añadido en una justificación. Tendrá que venir identificado por un identificador único y por el proyecto al que pertenece.El resto de campos del gasto se tratarán como columnas dinámicas. Se indicará por cada columna el identificador del campo, el nombre del campo y si es una columna sobre la que se tiene que hacer una suma para mostrarlo en el SGI como un campo totalizador. |
| Columna | Contiene el listado de columnas dinámicas que serán mostradas en las pantallas del SGI.Por cada columna se tendrá el identificador del campo, el nombre del campo y si es una columna sobre la que se tiene que hacer una suma para mostrarlo en el SGI como un campo totalizador. |
| GastoJustificadoDetalle | Entidad que representa el detalle de un gasto de una justificación con todos sus campos para mostrarlo en una pantalla de consulta del gasto.Tendrá unos campos fijos (identificador único, identificador del proyecto al que pertenece, fecha de devengo,, un código económico, importe gasto e importe presentado en la justificación) y unos campos dinámicos. Por cada campo se detallará el nombre y el valor del campo para mostrarlo en la pantalla del SGI |
| Campo | Contiene el listado de campos dinámicos que serán mostradas en las pantallas de detalle de un gasto.Por cada campo se tendrá el el nombre y el valor del campo |
| Documento | Entidad que representa los documentos que pueda tener relacionados un gasto |

### Modelo lógico

![](/attachments/597852462/597876651.jpg)  


### API

Características generales que todas las API REST deben de cumplir:

* [Consultas filtradas y paginadas](https://confluence.um.es/confluence/display/HERCULES/Consultas+filtradas+y+paginadas "https://confluence.um.es/confluence/display/HERCULES/Consultas+filtradas+y+paginadas")
* [Formatos de datos API](https://confluence.um.es/confluence/display/HERCULES/Formatos+de+datos+API "https://confluence.um.es/confluence/display/HERCULES/Formatos+de+datos+API")

#### Definición de los objetos

##### GastoJustificado



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | String | Identificador del gasto. Tiene que ser un identificador único |
| proyectoId | String | Identificador del proyecto económico (SGE) |
| justificacionId | String | Identificador justificación (del SGE) |
| columnas | Map\[clave,valor] | Mapa de propiedadesEl valor será un String salvo en aquellas columnas que sean acumulables (se tenga que hacer sumas sobre ellas) donde será de tipo Numérico (sin separador de miles y como separador decimal el punto). Las fechas vendrán en el formato para mostrarlas por pantalla, es decir, dd/MM/YYYY |

##### GastoJustificadoDetalle



| **Nombre** | **Tipo** | **Descripción** |
| --- | --- | --- |
| id | String | Identificador del gasto. Tiene que ser un identificador único. |
| proyectoId | String | Identificador del proyecto económico (SGE) |
| justificacionId | String | Identificador justificación (del SGE) |
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

#### Servicios

Para componer la URL llamada completa, se debe anteponer a lo indicado en la columna URL lo siguiente: **{HOST}/api/sge**, donde **{HOST}** de deberá sustituir el dominio correspondiente al entorno al que se está accediendo y dicho acceso será por http o https según el caso.

| Servicio | Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- | --- |
| [SGI \- ESB \- SGE \- Seguimiento justificación \- Consultar detalle gasto justificado](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853508 "/confluence/pages/viewpage.action?pageId=597853508") | GET | /seguimiento\-justificacion/{id} | proyectoIdjustificacionId | [GastoJustificadoDetalle](https://confluence.um.es/confluence/pages/viewpage.action?pageId=140641365#SGIESBSGESeguimientojustificaci%C3%B3n-GastoJustificadoDetalle "https://confluence.um.es/confluence/pages/viewpage.action?pageId=140641365#SGIESBSGESeguimientojustificaci%C3%B3n-GastoJustificadoDetalle") | Detalle del gasto con todas sus columnas.* Identificador del gasto * Identificador del proyecto SGE * Identificador justificación (del SGE) * Listado de campos con su nombre y valor (Ver el apartado "**Campos Detalle Gasto Justificado**" para ver que campos se deben de mostrar. * Listado de documentos (identificador, nombre del documento y nombre del fichero, sin el contenido) |
| [SGI \- ESB \- SGE \- Seguimiento justificación \- Buscar gastos justificados](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853507 "/confluence/pages/viewpage.action?pageId=597853507") | GET | /seguimiento\-justificacion | q\+s (query \+ sort)La query estará formada por:* proyectoId * justificacionId * numRegistroProveedor * importeJustificado * fechaDevengo * fechaPago * id (se pasará un listado de id de gastos que se quieren buscar) | Lista\[[GastoJustificado](https://confluence.um.es/confluence/pages/viewpage.action?pageId=140641365#SGIESBSGESeguimientojustificaci%C3%B3n-GastoJustificado "https://confluence.um.es/confluence/pages/viewpage.action?pageId=140641365#SGIESBSGESeguimientojustificaci%C3%B3n-GastoJustificado")] | Listado con los gastos. Por cada gasto se devolverán los siguientes campos:* Identificador del gasto * Identificador del proyecto SGE * Identificador justificación (del SGE) * Mapa de columnas de clave \- valor (donde la clave será los id definidos en la llamada /seguimiento\-justificacion/columnas y el valor será el valor de la columna. El valor será un String salvo en aquellas columnas que sean acumulables,se tenga que hacer sumas sobre ellas, donde será de tipo Numérico (sin separador de miles y como separador decimal el punto)).  Los gastos devueltos estarán ordenados por identificador del periodo de justificación y por fecha devengo.Ver el apartado "**Columnas Seguimiento Justificación**" para ver los id de la columnas que se deben de mostrar. |
| [SGI \- ESB \- SGE \- Seguimiento justificación \- Buscar columnas gastos justificados](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853506 "/confluence/pages/viewpage.action?pageId=597853506") | GET | /seguimiento\-justificacion/columnas | q\+s (query \+ sort)La query estará formada por:* proyectoId * justificacionId * numRegistroProveedor * importeJustificado * fechaDevengo * fechaPago * id (se pasará un listado de id de gastos que se quieren buscar) | Lista\[[Columna](https://confluence.um.es/confluence/pages/viewpage.action?pageId=140641365#SGIESBSGESeguimientojustificaci%C3%B3n-Columna "https://confluence.um.es/confluence/pages/viewpage.action?pageId=140641365#SGIESBSGESeguimientojustificaci%C3%B3n-Columna")] | Listado con las columnas que va a devolver la llamada /seguimiento\-justificacionPor cada columna se indica un id, nombre, si es una columna acumulable (se va a hacer una suma de ella en el SGI)Ver el apartado "**Columnas Seguimiento Justificación**" para ver que columnas se deben de mostrar. |

#### Columnas Seguimiento Justificación

Las columnas a devolver en la Universidad de Murcia serán:



| **id** | **nombre** | **acumulable** |
| --- | --- | --- |
| 1 | Nº de registro | false |
| 2 | Nº registro proveedor | false |
| 3 | Desc. factura/gasto | false |
| 4 | Código económico | false |
| 5 | Fecha devengo | false |
| 6 | Fecha pago | false |
| 7 | Importe gasto | true |
| 8 | Importe presentado just. | true |
| 9 | Fecha inicio contrato | false |
| 10 | Dedicación anual proy. | false |

Los gastos que no sean de personal, tendrán vacías las columnas "Fecha inicio contrato" y "Dedicación anual proy."

#### Campos Detalle Gasto Justificado

Los campos a devolver en la Universidad de Murcia serán:

* Nº de registro
* Nº de documento de gasto
* Anualidad
* Clasificación SGE
* Aplicación presupuestaria
* Código económico
* Proveedor
* Nº de registro del proveedor
* Descripción de la Fac/Gasto
* Fecha devengo
* Fecha pago
* Fecha contabilización
* Importe
* Importe IVA
* Importe presentado en justificación

Si el gasto es personal también se enviarán los campos:

* Fecha inicio de contrato
* Fecha fin de contrato
* Categoría contrato
* Jornada
* Dedicación anual en timesheet para el proyecto SGI




