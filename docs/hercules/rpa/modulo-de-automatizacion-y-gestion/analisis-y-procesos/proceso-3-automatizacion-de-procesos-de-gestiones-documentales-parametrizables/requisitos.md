# Hércules : Requisitos



### Obtención Bases Reguladoras.



| **Fuente** | **Descripción/Características/Observaciones** |
| --- | --- |
| BOE | * En el BOE se publican las bases reguladoras de las convocatorias. * Las bases reguladoras se publican antes de la resolución de la convocatoria, con lo que no será necesario añadirlas al SGI. * Se obtendrán y se enviarán por correo electrónico. * Se podrán obtener de forma diaria o seleccionando un rango de fechas. * Criterios de búsqueda: 	+ El título contendrá los siguientes patrones: 		1. "bases reguladoras" \+ "investigación / transferencia / I\+D" 		2. "decreto" \+ "regula" \+ "investigación / transferencia / I\+D" * Las bases reguladoras relacionadas con "transferencia" se enviarán a la OTRI y las relacionadas con "investigación" a la UGI. |

### Obtención de Convocatorias.



| Fuente | **Descripción/Características/Observaciones** |
| --- | --- |
| Base de Datos Nacional deSubvenciones (BDNS) | * Se debe filtrar la búsqueda de subvenciones a las orientadas a investigación a nivel nacional. * El parámetro de "región impacto" debe ser informado como: ES\-ESPAÑA, REGIÓN DE MURCIA y MURCIA. * De esta base de datos se obtendrán las convocatorias y las bases reguladoras para, posteriormente, añadirlas al SGI. * Se debe filtrar también la búsqueda de subvenciones con la palabra clave transferencia, donde la entidad gestora será la OTRI. |
| Funding \& tender opportunities(proyectos europeos) | * Se obtendrán accediendo a la web: [https://ec.europa.eu/info/funding\-tenders/opportunities/portal/screen/home](https://ec.europa.eu/info/funding-tenders/opportunities/portal/screen/home "https://ec.europa.eu/info/funding-tenders/opportunities/portal/screen/home") * Se notificarán convocatorias nuevas aquellas que tengan el parámetro GRANTS. * Se enviarán por correo electrónico. |

Estructura general para enriquecer el SGI con una nueva convocatoria:

* Título: el formato de este campo será: ROBOT \+ título extraído.
* Tipo solicitud SGI: PROYECTO.
* Unidad de Gestión: si el título de la convocatoria contiene "investigación o I\+D" será "UGI", si contiene "transferencia" será "OTRI". Si no cumple ninguno de estos criterios se creará una convocatoria por cada unidad de gestión disponible.
* Modelo de Ejecución: \[subvención, préstamo, facturación]. Para configurar este campo se buscará en el título de la convocatoria los siguientes patrones:


	+ Subvención: ayuda/subvención.
	+ Préstamo: préstamo.
	+ Facturación: presentación factura/facturación.

A las convocatorias obtenidas utilizando la BDNS se le asignará "subvención".

* Entidades convocantes.
* Entidad gestora: es la entidad que se designa como gestora de los fondos en la convocatoria. Normalmente viene mencionado explícitamente en la convocatoria (entidad gestora o entidad que gestiona). Este campo se rellenará con los mismos datos que las entidades convocantes.
* Lista de áreas temáticas: no se rellenará al no tener un patrón definido para la identificación de áreas.

Cualquier campo que no pueda ser añadido se deberá indicar en observaciones.

### Obtención de Concesiones.



| Fuente | Descripción/Características/Observaciones |
| --- | --- |
| Base de Datos Nacional de Subvenciones (BDNS) | * Se deberá consultar BDNS para obtener los resultados de las concesiones (únicamente las de la Agencia Estatal de Investigación). * Se deberán consultar aquellas concesiones cuyo estado en el SGI sea distinta de “borrador/concedida/denegada/desistida/excluida” dentro de un rango de fechas. * Se enviarán por correo electrónico los resultados del estado de las concesiones, para que el personal de la UM pueda actualizar el estado de la concesión en el SGI. * Se deberá rellenar el campo "código de registro en entidad convocante" con el identificador del proyecto al que se está asociado, p.e. PID2019\-103993GB\-I00 |




