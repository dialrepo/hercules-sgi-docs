# Hércules : Enriquecimiento. Identificación de ROs similares



## Experimentos y resultados

En los pliegos técnicos (pág. 87\) se describe la funcionalidad del módulo de similitud así como los enfoques generales que debieran ser tenidos en cuenta para su implementación.

Las funcionalidades clave son las siguientes:

* F1: El módulo debe ser capaz de determinar la similitud semántica entre dos textos. Es decir, el grado de similitud según sus contenidos semánticos o significado de los contenidos.
* F2: El módulo debe de ser capaz de explicar al usuario la similitud semántica entre dos textos.
* F3: El módulo debe ser capaz de determinar la similitud semántica (y ofrecer su explicación) entre textos de distintos ROs.

El aspecto clave para determinar el enfoque es el siguiente:

* E1: No debe interpretarse similitud semántica como similitud textual (similitud lexicográfica).

En el ámbito del PLN no existe tarea que integre las dos primeras funcionalidades (F1 y F2\), y un enfoque end\-2\-end que las aborde de forma simultánea resulta complicado, al menos utilizando los enfoques más exitosos del estado del arte para la tarea STS (Semantic Textual Similarity). Por esa razón se propone que el módulo aborde las tareas de forma secuencial: a) La primera tarea se enfoca en el cálculo de la similitud semántica, y b) la segunda aborda la explicación de la similitud semántica.

Para abordar la primera tarea se hará un uso de un exitoso enfoque del estado del arte basado en modelos de lenguaje neuronales que se comparará con un baseline basado en similitud textual. También se trata de un enfoque escalable, aspecto que resulta determinante dado el gran tamaño de las colecciones a procesar. La segunda tarea, enfocada a explicar la similitud semántica se ha abordado como una tarea de selección de descriptores relevantes a una interpretación neuronal promedio de los textos involucrados en la relación semántica. De esta forma, la relación de similitud semántica se explica al usuario mostrándole una lista de descriptores que ilustran la relación de similitud semántica.

El planteamiento descrito anteriormente se ajusta a las funcionalidades y enfoques clave establecidos en los pliegos. Describimos, a continuación, los diferentes experimentos realizados en torno las tareas de similitud semántica y selección de descriptores relevantes a relación de similitud.

### Preparación de datasets y metodología de evaluación

Para llevar a cabo los experimentos se han preparado un conjunto datasets de ROs que de alguna manera nos permita realizar evaluaciones centradas en el usuario y cercanas al escenario real.

Para elaborar los datasets de cada RO se han utilizado como punto de partida los datasets creados para la experimentación sobre extracción de descriptores. En el caso de protocolos y proyectos de código no se ha hecho ninguna adaptación o modificación. No es el caso del datasets de papers, que ha tenido que reducirse para aligerar el cómputo de la experimentación. Se muestran, a continuación, los tamaños, en número de ejemplos, de los datasets utilizados:

* Papers: 300\.000 abstracts.
* Protocolos: 3\.489 protocolos.
* Proyectos de código: 57\.687 fichas.

Para evaluar los sistemas de extracción de documentos semánticamente similares se ha seguido la siguiente metodología. Por cada tipo de RO (papers, protocolos, proyectos de código) se ha creado una muestra test de 20 textos en inglés (en el caso de papers se ha creado una muestra adicional de 20 texto en castellano), y la evaluación de los diferentes sistemas estudiados ha consistido en inspeccionar manualmente los rankings de documentos similares de cada RO devueltos por cada sistema. Concretamente, se han inspeccionado manualmente los cinco textos más similares de cada ranking determinando si son semánticamente similares o no, para así calcular la precisión media en ese corte.

La evaluación de los sistemas para selección de descriptores relevantes a relación de similitud se va a realizar sobre las mismas muestras test de textos y sus correspondientes rankings. La evaluación será manual y consistirá en validar si el conjunto de descriptores propuesto resulta de utilidad al usuario para entender la relación de similitud semántica.

### Similitud semántica entre dos textos

Para la extracción de los rankings de documentos semánticamente similares se han analizado dos enfoques, a) un enfoque básico basado en una representación según el paradigma de bolsa\-de\-palabras y ponderación TFIDF, y b) un enfoque más avanzado basado en representación densa según Bi\-encoders neuronales. Dentro de cada enfoque se han analizado distintas variantes. Mostramos, a continuación, las configuraciones de los sistemas analizados:

* Similitud basada en representación Bag\-of\-Words:
+ Variante 1: Ponderación tf\-idf, filtrado de vocabulario muy frecuente (\> 10% docs) y poco frecuente (df\<4\),  y distancia coseno.
+ Variante 2: Selección de descriptores, ponderación probabilidad del clasificador supervisado, y coseno.

* Similitud basada en representación densa (embeddings contextuales) y ajustada a la tarea STS (*Semantic Text Similarity*) mediante más de 1000M de tuplas de ejemplos, y distancia coseno.
+ Variante 1: Embeddings estimados por Bi\-encoders neuronales basados en BERT para inglés.
+ Variante 2: Embeddings estimados por Bi\-encoders neuronales basados en XLMRoberta que permiten representar textos en diferentes idiomas.

  


Se muestran en la siguiente tabla los resultados obtenidos para el dataset de papers:



|  | **BoF (en)** | **Descriptors BoF (en)** | **SBert (en)** | **SBert mpnet (en)** | **SBert (es\-en)** |
| --- | --- | --- | --- | --- | --- |
| *Avg P@5* | 0\.55 | 0\.28 | 0\.93 | 0\.88 | 0\.77 |

Tabla 1: Resultados (Precision at 5\) para rankings de los cinco paper más similares de 20 papers. *BoF (en)* corresponde a la variante 1 del primer enfoque, y *Descriptores BoF (en)* a la segunda variante. *SBert (en)* y *SBert mpnet (en)* corresponden a la primera variante del primer enfoque. *SBert mpnet* está ajustado con más tupla de ejemplo. *SBert (es\-en)* corresponde a la variante 2 evaluado sobre la muestra de documentos iniciales en castellano.

  


### Selección de descriptores relevantes a relación de similitud semántica

Para abordar esta tarea hemos analizado dos enfoques; a) un enfoque sencillo basado en la intersección de los descriptores de los dos textos involucrados en la relación de similitud, y b) un enfoque avanzado basado en similitud semántica estimada mediante bi\-encoders neuronales:

* Enfoque basado en intersección de descriptores: La selección de descriptores relevantes a la relación de similitud entre los textos D1 y D2 corresponde a la intersección de los conjuntos de descriptores de D1 y D2.
* Enfoque basado en bi\-encoders neuronales: La selección de descriptores relevantes a la relación de similitud entre los textos D1 y D2 corresponde a los descriptores de D1 y D2 semánticamente más próximos a la representación semántica promedio de los textos D1 y D2. Las representaciones semánticas de los descriptores y de los textos se determinarán mediante bi\-encoders neuronales ajustados a la tarea de similitud semántica.

  


## Presentación de ROs similares. Recursos relacionados

La presentación de ROs similares se realiza en la ficha de publicación y en la de RO, en la pestaña relacionados.

![](/attachments/598147620/598148275.png)

Tenemos 3 casos:

* El usuario investigador con login llega a la ficha web de uno de sus ROs (publicación o de otro tipo) en su [Gestión de FAIR ROs](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=Gesti%C3%B3n+FAIR+RO "/confluence/pages/createpage.action?spaceKey=TEMP001&title=Gesti%C3%B3n+FAIR+RO"). En la pestaña "Relacionados" se muestra un listado de 20 (como máximo) ROs que tienen una relación de similitud  con el RO cuya ficha se está visualizando. Entre los ROs relacionados no se incluirán los ROs del propio investigador.
* El usuario investigador con login llega a la a ficha web de un RO del que no es autor. Como en el caso anterior, se muestra un listado de ROs relacionados de los que el usuario investigador no es autor.
* El usuario anónimo llega a la ficha web de un RO. En este caso se muestra una lista de ROs relacionados sin restricciones de autoría. Se propone la existencia de una cache que contenga estos ROs relacionados y que caduque a las 24h, para evitar un recálculo continuo de las recomendaciones en cada visita para usuarios anónimos y BOTs de indexación.

En los 3 casos se presenta, mediante un resaltado de los descriptores específicos, aquellos que son relevantes a la similitud según el enfoque técnico resultante indicado anteriormente en este documento en la "Selección de descriptores relevantes a relación de similitud semántica". Hemos propuesto un resaltado muy ligero en el que sólo cambia el color de la fuente de los descriptores relevantes.

  





