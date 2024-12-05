# Hércules : Extracción de bases reguladoras



![](/attachments/598147413/598148137.png)  


#### Descripción general del subproceso

Este proceso se planifica automáticamente para obtener las bases reguladoras publicadas en el Boletín Oficial del Estado (BOE). Se podrá obtener las bases reguladoras del día actual o seleccionando un rango de fechas.

En primer lugar, se obtendrán las bases reguladoras de los boletines publicados en el rango de fechas indicado o en el día actual, además, si la última ejecución del proceso finalizó con errores, se obtendrán las bases reguladoras no enviadas y se añadirán a la colección de elementos a enviar. 

Una vez obtenidos los elementos, se procederá al tratamiento de los datos. Este tratamiento consiste en buscar en el título de cada base reguladora un conjunto de palabras para comprobar si ese elemento es o no de interés. Los patrones de búsqueda utilizados son: *"investigación / I\+D"* o *"transferencia"* junto con *"base/s reguladora/s"* o *"Real Decreto \+ regula".* 

Una vez realizado el filtro de los datos obtenidos, se realizará el envío por correo electrónico de los elementos a los organismos UGI y OTRI. Por cada elemento se enviará:

* Identificador: identificador de la base reguladora asignado en el BOE.
* Título.
* Sección: sección del BOE donde se publica.
* Departamento: departamento dentro de la sección al que pertenece.
* Enlace: URL de descarga del documento PDF donde se encuentra toda la información de la base reguladora.

Si la extracción es incorrecta se notificará del error y terminará el proceso.

Un ejemplo de salida de este proceso sería el siguiente:



|  |
| --- |




