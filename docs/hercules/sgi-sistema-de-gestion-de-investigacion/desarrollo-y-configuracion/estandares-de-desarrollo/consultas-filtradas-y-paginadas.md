# Hércules : Consultas filtradas y paginadas



Tanto en el framework de spring, como en el de angular, se ha incorporado el soporte genérico para la consulta filtrada y ordenada de entidades.

## Definición de endpoints

### Paginación

La solicitud de paginación se realizará a través de cabeceras en la petición:

* **X\-Page\-Size**: Número de registros por página solicitados
* **X\-Page**: Indice de página solicitado (en base 0\)

Las cabeceras se pueden omitir en caso de no requerir paginación.

Todos los listados, retornaran información de la paginación aunque esta no se solicite. Esta información va contenida en las cabeceras de respuesta:

* **X\-Page**: Indice de página solicitado. 0 si no se solicita paginación.
* **X\-Page\-Size**: Número de registros retornados por página. Total de registros si no se solicita paginación.
* **X\-Page\-Count**: Número de registros retornados en la página. Total de registros si no se solicita paginación.
* **X\-Page\-Total\-Count**: Número total de páginas en función del tamaño de página solicitado. 1 si no se solicita paginación.
* **X\-Total\-Count**: Número total de registros.

### Ordenación

La solicitud de ordenación se  realizará a través del parámetro **s** en la petición. En el valor se especificará el atributo o los atributos sobre los que se quiera aplicar la ordenación junto con el criterio de ordenación.

* Los nombres de los atributos se corresponderán con la propiedad de la entidad consultada, en el caso  de que la entidad consultada esté relacionada con otras entidades **el acceso a  las propiedades anidadas se denotará mediante el punto**. Por ejemplo: "propiedad.propiedadHija". Como las propiedades de las entidades no pueden contener ningún carácter especial y el separador no es un carácter reservado del protocolo HTTP no es necesario realizar ningún tipo de escapado.
* El criterio de ordenación podrá ser:
	+ **asc**: Orden ascendente
	+ **desc**: Orden descendiente
* La separación entre el atributo y el criterio de ordenación se realizará mediante el **carácter de coma**

Se podrán solicitar múltiples ordenaciones, separando cada uno de ellos mediante el **carácter de punto y coma**

Ejemplo:



```
s=propiedad,asc;propiedad.propiedadHija,desc
```

### Filtrado

La solicitud de filtrado se realizará a través del parámetro **q** en la petición. En el valor se especificará la condición o condiciones de filtrado.

Para ello se utilizará la sintaxis propuesta por [RSQL](https://github.com/jirutka/rsql-parser "https://github.com/jirutka/rsql-parser"): **\<CAMPO\>\<OPERADOR\>\<VALOR\>\<CONJUNCION\>**

#### Campo

El nombre del atributo se corresponderán con la propiedad de la entidad consultada, en el caso  de que la entidad consultada esté relacionada con otras entidades **el acceso a  las propiedades anidadas se denotará mediante el punto**. Por ejemplo: "propiedad.propiedadHija". Como las propiedades de las entidades no pueden contener ningún carácter especial y el separador no es un carácter reservado del protocolo HTTP no es necesario realizar ningún tipo de escapado.

#### Operador

Se encuentran definidos los siguientes operadores:



| Valor | Descripción |
| --- | --- |
| \=\= | EQUALS |
| \=ic\= | EQUALS IGNORE CASE |
| !\= | NOT EQUALS |
| \=ke\= | LIKE |
| \=nk\= | NOT LIKE |
| \=ik\= | LIKE IGNORE CASE |
| \=ni\= | NOT LIKE IGNORE CASE |
| \=gt\= | GREATHER THAN |
| \=ge\= | GREATHER  THAN OR EQUAL |
| \=lt\= | LESS THAN |
| \=le\= | LESS THAN OR EQUAL |
| \=bt\= | BETWEEN |
| \=nb\= | NOT BETWEEN |
| \=na\= | IS NULL |
| \=nn\= | IS NOT NULL |
| \=in\= | IN |
| \=out\= | NOT IN |

#### Valor

Se consideran como caracteres reservados: 

* "
* '
* (
* )
* ;
* ,
* \=
* !
* \~
* \<
* \>
* ESPACIO\_EN\_BLANCO

Por lo que para poder ser usados en las búsquedas deberán escaparse entrecomillando todo el valor, bien con comillas simples o con comillas dobles.

Cuando se realiza este escapado, los caracteres reservados pasan a ser:

* \\
* **"** o **'**, dependiendo de que tipo se haya usado para escapar el valor.

Por ello, si el valor contiene el mismo entrecomillado usado de escapado o la \\ se deberán escapar adicionalmente preponiendo el carácter **\\**.

**Se recomienda escapar siempre el valor**

Ejemplo:



| Valor a buscar | Valor escapado |
| --- | --- |
| mañana \>\="(\\' | "mañana \>\=\\"(\\\\'" |

Para los operadores que soportan múltiples valores (IN, NOT IN, BETWEEN, NOT BETWEEN) el conjunto de valores irá entré paréntesis, separando cada posible valor mediante coma. Para cada valor aplica de forma independiente las reglas de escapado.



| Valores | Valor resultante |
| --- | --- |
| * 3 * 8 | ("3","8") |

**Se recomienda escapar siempre el valor**

En el caso de que el operador a utilizar no tenga un posible valor a aplicar (NULL, NOT NULL) se deberá asignar un valor vacío entrecomillado.

#### Conjunción

Es posible conjugar los filtros como AND o OR, los caracteres a utilizar son:

* **;** equivalente a AND
* **,** equivalente a OR

**Si solo se utiliza un único filtro, la conjunción se deberá omitir.**

#### Anidamiento de filtros

Es posible anidar filtros con diferentes conjunciones si colocamos los posibles filtros entre paréntesis.

#### Ejemplos



| Filtro | Equivalencia SQL |
| --- | --- |
| nombre\=\="Pedro" | nombre \= 'Pedro' |
| nombre\=ke\="Pedro" | nombre LIKE '%Pedro%' |
| nombre\=\="Pedro",nombre\=\="Juan" | nombre \= 'Pedro' OR nombre \= 'Juan' |
| edad\=ge\="18";(nombre\=\="Pedro",nombre\=\="Juan") | edad \>\= 18 AND (nombre \= 'Pedro' OR nombre \= 'Juan') |
| edad\=bt\=("18","20") | edad BETWEEN(18, 20\) |




