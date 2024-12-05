# Hércules : Proceso de carga y actualización de revistas



## Formato de la información

El proceso comienza con la unificación de los ficheros Excel con los datos de las revistas de WoS y Scopus en un ÚNICO fichero llamado "Revistas.xlsx". El formato sería el siguiente:

* El archivo resultante tiene que tener la extensión .xlsx
* El fichero únicamente tendrá una hoja llamada "revistas" con los datos indicados.
* La tabla debe tener el siguiente formato:
	+ **TITLE**: Nombre completo de la revista. (texto)
	+ **PUBLISHER\_NAME**: Nombre completo del publicador/editor de la revista. (texto)
	+ **ISSN**: Identificador ISSN de la revista. Importante que esté formado por 8 dígitos separados por un ‘\-’ en el cuarto. En el caso que no tengan, se dejará vacío. (texto) *Ejemplo: 1234\-5678*
	+ **EISSN**: Identificador EISSN de la revista. Importante que esté formado por 8 dígitos separados por un ‘\-’ en el cuarto. En el caso que no tengan, se dejará vacío. (texto) *Ejemplo: 8765\-4321*
	+ **CATEGORY\_DESCRIPTION**: Nombre de la categoría que tiene la revista. (texto)
	+ **IMPACT\_FACTOR**: Factor de impacto de la revista en la categoría. (decimal)
	+ **RANK**: Posición dónde se sitúa la revista en la categoría. (numérico)
	+ **RANK\_OUT\_OF**: Número total de revistas que hay en la categoría. (numérico)
	+ **QUARTILE\_RANK**: Cuartil de la revista en esa categoría. Ha de ser un número entre el 1 y el 4\. (numérico)
	+ **SOURCE**: Fuente del dato de la revista. Posibles valores: 'WOS' o 'SCOPUS'
	+ **YEAR**: Año del dato de la revista. (numérico) *Ejemplo: 2010*

### Proceso de comprobación de los ficheros Excel de los orígenes de datos

Para conseguir un fichero unificado con datos válidos hay que conseguir que las revistas no estén duplicadas y que sus datos sean coherentes. Para detectar posibles problemas en los datos hay que revisar los siguientes aspectos en cada fichero fuente y entre los dos orígenes de información (WoS y Scopus):

* Que el ISSN y EISSN estén bien formados. 8 dígitos separados por un ‘\-’ en el cuarto. *Ejemplo: 1234\-5678*
* Que la misma revista no cambie de ISSN y EISSN de un año a otro.
	+ En el caso de que el ISSN o EISSN hubieran cambiado, habría que actualizar al nuevo dato en las revistas de los años anteriores.
		- Para saber que ISSN o EISSN es el válido, habría que hacer un proceso de búsqueda de la revista por internet y quedarse con el correcto.
* Que la revista no esté en categorías duplicadas en el mismo año.
	+ En el caso de que se encontrasen duplicados, habría que decidir con cual de los dos registros quedarse y eliminar el otro.
		- Habría que quedarse con el registro cuyo cuartil sea más bajo. En el caso de que el cuartil sea el mismo, habría que quedarse con el registro cuyo 'RANK' sea más bajo.

## Proceso de carga

El programa desarrollado leerá un único fichero y cargará los datos en la BBDD. Para considerar que dos revistas son iguales, aplicamos estas condiciones:

* Si tienen el mismo ISSN.
* Si el título y el editor es el mismo.
* Si el título y el EISSN es el mismo.

### Condiciones de carga de los datos

Para realizar la carga de los datos el programa desarrollado exige que los datos cumplan las siguientes condiciones:

* El título y el publicador de la revista son obligatorios.
* Las revistas han de tener ISSN o EISSN (o ambos). Si los dos campos están vacíos, se considera una revista no válida.
* Si una revista tiene el mismo ISSN y EISSN, se considera que la revista únicamente tiene EISSN.
* No puede existir un registro con los mismos valores en 'TITLE', 'PUBLISHER\_NAME', 'ISSN', 'EISSN', 'SOURCE', 'YEAR' y el mismo 'CATEGORY\_DESCRIPTION'.

  





