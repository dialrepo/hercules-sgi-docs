# Hércules : 2\. Enriquecimiento. Prototipo y experimentación realizada en el marco del Challenge



**Nota**: Se incluye información sobre los resultados del Challenge como referencia de algunas técnicas y resultados que se toman como punto de partida en algunas de las tareas de enriquecimiento del proyecto. 

Tras analizar la documentación sobre los objetivos del *Challenge*, se consideró que el término "tópico" utilizado hacía referencia tanto a temas generales *subjects areas* (palabras clave \-descriptores\- temáticas) como a conceptos más específicos (palabras clave \-descriptores\- específicas). Por ejemplo, se quiere saber si una publicación es relevante al área de "Ingeniería eléctrica y electrónica", y también si incluye conceptos específicos relevantes como "ondas en plasma" o "transistor".

Las palabras clave específicas suelen estar lexicalizadas en el contenido textual de los ROs; las palabras clave temáticas, en cambio, no. Esta circunstancia implica la adopción de diferentes enfoques a la hora de abordar la extracción los dos tipos de palabras clave.

Para abordar la extracción de palabras clave temáticas se han estudiado e implementado dos enfoques:

1. Extracción de descriptores mediante modelos no supervisados de topic labelling.
2. Clasificación multietiqueta supervisada.

Para la extracción de palabras clave específicas se han estudiado dos enfoques:

1. Estrategia supervisada basada en una arquitectura neuronal seq2seq.
2. Estrategia consistente de dos pasos: un primer paso para detección de palabras clave candidatas basado en patrones lingüísticos (utilizados para la extracción de terminología) y NERC, y un segundo paso de cribado de las palabras candidatas basado en un clasificador supervisado booleano.

Los enfoques supervisados se han entrenado sobre datasets (ver tabla 7\) de publicaciones y protocolos que incluyen palabras clave temáticas y específicas asignadas manualmente (se ha utilizado el dataset de Krapivin y otros (2009\), y se han generado datasets a partir de los repositorios Scopus y Bio\-protocol), y se han evaluado según métricas de Precisión, Cobertura y F\-score sobre una fracción de cada dataset.

  




| **Dataset** | **Descripción** | **Nº cat.** | **Nº art.** | **Nº cat./art.** |
| --- | --- | --- | --- | --- |
| Datasets de palabras clave temáticas | | | | |
| *Scop27* | Conjunto extraído de Scopus compuesto por pares de abstracts y categorías ASJC de primer nivel. | 27 | 725,7 K | 1,69 |
| *Scop262* | Conjunto extraído de Scopus compuesto por pares de abstracts y categorías ASJC de segundo nivel. | 262 | 723,3 K | 2,21 |
| *Scop5* | Conjunto extraído de Scopus compuesto por pares de abstracts y cinco categorías ASJC (seleccionadas aleatoriamente) de primer nivel. | 5 | 580,5 K | 1,29 |
| *Bio* | Conjunto extraído de Bio\-protocol compuesto por pares de artículos completos y categorías de primer nivel de Bio\-protocol. | 13 | 3,2 K | 1,84 |
| Datasets de palabras clave específicas | | | | |
| *Krapivin* | Conjunto extraído de Scopus compuesto por pares de artículos completos y palabras clave. | 12,3 K | 2,3 K | 5,34 |
| *Scopus\_key* | Conjunto extraído de Scopus compuesto por pares de abstracts y palabras clave de granularidad media. | 780,6 K | 446,7 K | 5,02 |
| *Bio\_key* | Conjunto extraído de Bio\-protocol compuesto por pares de artículos completos y palabras clave. | 9,5 K | 3,2 K | 3,02 |

Tabla: Datasets construidos para entrenamiento de clasificadores multi\-etiqueta (palabras clave temáticas) y de clasificadores booleanos (palabras clave específicas). Se muestra el número total de categorías consideradas en la tercera columna. En la cuarta columna el número total de artículos, y en la quinta el número medio de categorías asignadas a cada artículo.

  


Describimos, a continuación, cada uno de los enfoques analizados y la evaluación de los resultados:

## Extracción de descriptores mediante modelos no supervisados de topic labelling

Para implementar esta estrategia no supervisada se han generado modelos LDA (Blei et al., 2003\) para distintas granularidades (100, 200, y 300 topics) a partir de los abstracts del dataset *Scop27*. Para garantizar modelos de gran coherencia se realizaron entrenamientos de 70 iteraciones y 10 pases. Los descriptores y léxico relevante asociado se inspeccionaron de forma manual con el objeto de determinar si los descriptores detectados eran de utilidad para caracterización de los textos, y si la terminología asociada a los descriptores resultaba práctica para la generación de etiquetas. Se observó que, en general, los descriptores detectados no se alineaban de forma notable con "tópicos" interpretables por personas, y que los términos más probables no resultaban útiles como etiquetas o palabras clave para describir el tópico. Estos términos podrían tener cierta utilidad para generar etiquetas más descriptivas, pero habría que aplicar técnicas más sofisticadas de *topic labelling*. Se consideró un enfoque complicado de implementar, que acarreaba cierto riesgo tecnológico, y débilmente competitivo frente a una estrategia supervisada.

## Clasificación multietiqueta supervisada

Esta estrategia consiste en abordar la identificación de las palabras clave temáticas de cada documento como una tarea de *clasificación multi\-etiqueta*, siendo los documentos los elementos a clasificar y las palabras clave temáticas las etiquetas a asignar. La tarea consiste en identificar, a partir de una lista cerrada de etiquetas, aquellas que son relevantes a cada documento.

La representación de los documentos se hizo de acuerdo a un modelo de bolsa de palabras para el caso de Logistic Regresion (LR) y SVM. Concretamente, el documento se tokenizó para distinguir palabras y signos de puntuación, y posteriormente, a cada palabra se le asignó su valor TFIDF correspondiente. Para eliminar la distorsión ocasionada en la representación por las palabras comunes, se eliminaron las palabras que aparecen en más del 10% de los documentos de la colección a procesar. De esta forma, por cada documento a clasificar se construye un vector cuyas dimensiones son las palabras y los valores los pesos TFIDF. Los clasificadores supervisados multi\-etiqueta se alimentan con estos vectores. Para el caso del modelo BERT (Devlin et al., 2018\), se utilizó la representación densa y contextual que incluye el modelo para la representación de los textos, y se ajustó el modelo a la tarea de clasificación booleana mediante un proceso de fine\-tuning sobre los datos de entrenamiento.

Para implementar los clasificadores multi\-etiqueta se optó por una estrategia one\-vs\-all, es decir, para cada etiqueta se creó un clasificador booleano. Cada clasificador se entrena con ejemplos positivos (textos) correspondiente a los documentos que tienen asignado la etiqueta en cuestión, y con ejemplos negativos (textos) que son todos los demás documentos. Debido al desequilibro entre ejemplos negativos y positivos y el bajo número de ejemplos positivos para algunas etiquetas, se optó por balancear el dataset replicando de forma equilibrada los ejemplos positivos, concretamente aplicando un oversampling aleatorio.

Para entrenar los clasificadores booleanos se utilizaron los clasificadores Logistic Regresion y SVM, usados habitualmente para la clasificación de documentos representados según vectores de palabras. En el caso de BERT, únicamente se generaron clasificadores para el dataset *Scop5* y *Bio* debido al tiempo de entrenamiento que el proceso de fine\-tuning requiere.

## Estrategia supervisada basada en una arquitectura neuronal seq2seq

Hemos utilizado el dataset *Scopus\_key* para entrenar el sistema seq2seq de Meng y otros (2017\) ya que éste requiere de un dataset de gran tamaño. Los resultados preliminares que hemos obtenido ofrecen una cobertura de 0\.28 para palabras clave específicas presentes en el texto, que aumenta hasta un 0\.34 si tenemos en cuenta identificaciones parciales.

## Estrategia consistente de dos pasos

La otra estrategia explorada para la identificación de palabras clave específicas consta de dos pasos: En el primer paso se procede a la **detección de las palabras clave candidatas**, y en el segundo paso las palabras clave candidatas identificadas en el anterior paso son cribadas **mediante un clasificador supervisado** booleano.

Para la detección de candidatos a palabras clave específicas utilizamos una estrategia basada en detección de sintagmas nominales. Para ello se han definido patrones gramaticales, tanto para términos monopolabra (Ej., "nombre") y multipalabra (Ej., "nombre adjetivo", "nombre nombre", ...) que abarcan la mayoría de los sintagmas nominales. Estos patrones se detectan en el texto del artículo una vez se ha anotado con información gramatical. Esta anotación se realiza mediante el procesador lingüistico IXA pipes (Agerri et al., 2014\). La anotación se efectúa aplicando al texto de entrada el tokenizador (para distinguir palabras y signos de puntuación), el anotador POS (para asignar las etiquetas POS a cada palabra), y el anotador NERC (para anotar las entidades nombradas multipalabra). Los sintagmas correspondientes a los patrones definidos se extraen de la salida de los tres procesos de IXA pipes, y constituyen las palabras clave candidatas, tanto mono\-palabra como multipalabra. De las palabras clave multipalabra también extraemos sub\-sintagmas nominales, a no ser que sean entidades nombradas.

  




| * **Frecuencia**: Frecuencia del candidato en el artículo. * **Posición**: Posición relativa de la primera ocurrencia del candidato en el artículo. * **Frecuencia en colección de dominio abierto**: Frecuencia del candidato en una colección de noticias. * **Frecuencia en colección de publicaciones científicas**: Frecuencia del candidato en una colección de artículos científicos. * **Incluido en título**: Valor booleano que indica si el candidato está incluido en el título o no. * **Incluido en abstract**: Valor booleano que indica si el candidato está incluido en el abstract o no. * **Termhood** (sólo monopalabra): Valor que indica el grado de especificidad y relevancia del candidato en el artículo medido mediante TFIDF o Loglikelihood ratio. * **Nivel de anidación** (sólo monopalabra): Porcentaje de ocurrencias en las que aparece anidado en un candidato multipalabra. * **Unithood** (sólo multipalabra): Valor que indica la coherencia del término multipalabra medido mediante la mediada de asociación Loglikelihood ratio. * **Similitudes basadas en embeddings**: Similitud semántica (coseno) entre el embedding del candidato y el embedding construido sobre la unificación del título y el abstract como un solo texto. Se han utilizado embeddings estáticos (FastText) y contextuales (Flair). |
| --- |

Tabla: Atributos (*features*) para caracterizar cada palabra clave candidata.

  


En el siguiente paso se toma como punto de partida la lista de palabras clave candidatas identificadas en el paso anterior. El objetivo de este paso es eliminar de esta lista las palabras clave candidatas menos probables a ser palabras clave. Efectuamos esta criba como un proceso de clasificación booleana, y utilizamos para ello un clasificador supervisado previamente entrenado con datasets que incluyen documentos y sus respectivas palabras clave. Para la clasificación supervisada representamos las palabras clave candidatas mediante un vector que incluye los atributos mostrados en la tabla 8\. Al existir un gran desequilibrio entre el número de ejemplos positivos y de negativos (la mayoría de los candidatos extraídos del texto no son palabras clave), se aplicó un *oversampling* aleatorio sobre los ejemplos de entrenamiento. Se experimentó con los algoritmos Logistic Regresion (LR) y Gradient Boosting Descent (GB).

![](/attachments/598147238/598147772.png)

Imagen 2: Diagrama del prototipo presentado al Challenge.

## Evaluación del sistema del Challenge

Los clasificadores, tanto de palabras clave temáticas como de específicas, se han evaluado según las métricas de Precisión, Cobertura y F\-score sobre una fracción (20%) de cada dataset. El 80% restante se ha utilizado para entrenar cada clasificador.

### Palabras clave temáticas

Para el caso de las publicaciones científicas, como era esperable, se obtienen mejores resultados (ver tabla 9\) con el repertorio de palabras clave temáticas más genéricas (*Scop27*). En los tres casos (*Scop262*, *Scop27*, *Scop5*) las coberturas obtenidas son altas, sobre todo en los clasificadores LR. Los valores de las precisiones son más bajos, pero tras una inspección manual de los falsos positivos, hemos podido averiguar que muchos de ellos serían clasificaciones correctas pero que no constaban como tal en la referencia. La referencia es fruto de una anotación manual donde en algunos casos no quedan recogidas todas las categorías relevantes al documento. Teniendo en cuenta este aspecto, hemos considerado que, en el caso de las publicaciones, los clasificadores LR son más apropiados para implementar el módulo de extracción, ya que ofrecen una mayor cobertura. Los resultados de los modelos BERT, si bien se limitan a un dataset con un número limitado de categorías, son notablemente superiores a los de LR y SVM en términos de precisión y F\-score, por lo que los clasificadores BERT también pueden resultar aptos para su integración en el módulo de extracción.

Los resultados de los clasificadores de protocolos (*Bio*) ofrecen mejores precisiones que los de publicaciones, y en este caso los clasificadores LR también ofrecen mejor cobertura que los SVM, por lo que son éstos los que se han integrado en el módulo de extracción. En este caso BERT no parece ser competitivo, seguramente por el tamaño limitado de *Bio* y por la limitación de BERT a representar documentos largos, como es el caso de los documentos de la colección de *Bio*.

  




|  | Scop262 | | Scop27 | | Scop5 | | | Bio | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  | LR | SVM | LR | SVM | LR | SVM | BERT | LR | SVM | BERT |
| Precisión | 0,21 | 0,3 | 0,41 | 0,44 | 0,17 | 0,33 | 0,58 | 0,66 | 0,71 | 0,52 |
| Cobertura | 0,71 | 0,48 | 0,83 | 0,72 | 0,7 | 0,42 | 0,44 | 0,61 | 0,57 | 0,6 |
| F\-score | 0,31 | **0,36** | 0,53 | **0,54** | 0,27 | 0,37 | **0,50** | **0,63** | **0,63** | 0,53 |

Tabla: Resultados de la clasificación multi\-etiqueta para identificación de palabras clave temáticas.

### Palabras clave específicas

Los resultados (ver tabla 10\) ponen de relieve la dificultad de la tarea, sobre todo si nos fijamos en los valores de precisión obtenidos, menores o iguales a 0,1 en todos los casos. Los clasificadores consiguen identificar (valores altos de cobertura) las palabras clave incluidas en el gold\-standard, pero añaden un número significativo de candidatos no definidos como tales. Tras una inspección manual de estos falsos positivos, pudimos observar que muchos de ellos eran palabras clave apropiadas. En el gold\-standard sólo se establecen entre 3 y 5 palabras clave por artículo, y no se siguen criterios claros para hacer esa selección, lo que dificulta el aprendizaje de su detección. Es por ello que, en esta tarea, parece preferible fijarse en medidas de cobertura a un determinado cutoff, como por ejemplo R@10 (cobertura sobre el top 10\). Según R@10 y F\-score, los clasificadores GB ofrecen los mejores resultados \-también frente a los de la arquitectura seq2seq previamente mencionada\-, por lo que serán éstos los que se integren en el módulo de extracción de palabras clave específicas. Debido a la baja precisión de los resultados, este proceso debería venir acompañado de una revisión manual final.

  




|  | Mono | | | | Multi | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  | *Krapivin* | | *Bio\_key* | | *Krapivin* | | *Bio\_key* | |
|  | LR | GB | LR | GB | LR | GB | LR | GB |
| Precisión | 0,01 | 0,02 | 0,02 | 0,05 | 0,07 | 0,10 | 0,02 | 0,04 |
| Cobertura | 0,89 | 0,88 | 0,89 | 0,89 | 0,82 | 0,82 | 0,85 | 0,82 |
| F\-score | 0,02 | 0,04 | 0,04 | 0,09 | 0,13 | 0,18 | 0,04 | 0,07 |
| R@10 | 0,21 | 0,23 | 0,47 | 0,64 | 0,61 | 0,65 | 0,58 | 0,67 |

Tabla: Resultados de la clasificación para identificación de palabras clave específicas.

Además de las evaluaciones automáticas mostradas en las tablas 9 y 10, también se realizó una evaluación cualitativa efectuada mediante inspecciones manuales de los resultados. Para ello utilizamos como conjuntos de testeo las colecciones de ROs establecidas en el *Challenge* para tal fin. Las colecciones correspondían a tres tipos de ROs (publicaciones científicas, protocolos experimentales, y proyectos de GitHub) y se evaluó un único sistema por cada tipo de RO:

* Artículos científicos: Extractor de palabras clave temáticas basado en *Scop262* y *LR*, y extractor de palabras clave específicas basado en *Krapivin* y *GB*.
* Protocolos experimentales: Extractor de palabras clave temáticas basado en *Scop262* y *LR*, y extractor de palabras clave específicas basado en *GB* y *Bio\_key*.
* Proyectos GitHub: Extractor de palabras clave específicas basado en extracción de sintagmas nominales y NERC.

Describimos, a continuación, los resultados de la inspección manual por cada tipo de RO:

* Artículos científicos.
	+ El sistema propone palabras clave específicas monopalabra y multipalabra, que coinciden con las introducidas manualmente ofreciendo buena cobertura, siempre que la palabra clave específica sea relevante en el texto. En los casos en que no se ha encontrado, la palabra clave manual no está en el texto o sólo está una vez.
	+ En el caso de la precisión, la propuesta de palabras clave específicas incluye bastantes más que las introducidas manualmente por los usuarios, si bien se han observado como pertinentes hasta un umbral de 0,55 en monopalabra y 0,5 en multipalabra. Más allá de ajustes de los algoritmos o de sus umbrales, esto sugiere que un aspecto crítico de usabilidad será la facilidad con que el interfaz permita aceptar o descartar palabras clave propuestas.
	+ En cuanto a las palabras clave temáticas, la cobertura y precisión observadas son altas.
* Protocolos experimentales.
	+ Como en el caso anterior, el sistema propone palabras clave específicas monopalabra y multipalabra, que coinciden con las introducidas manualmente ofreciendo una cobertura alta, siempre que la palabra clave específica esté en el texto.
	+ En cuanto a la precisión, la propuesta de palabras clave se comporta del mismo modo descrito en el caso anterior.
	+ En cuanto a las palabras clave temáticas, la cobertura y precisión son muy altas, si bien en este caso sólo se reconoce el primer nivel de la taxonomía, ya que no había ejemplos suficientes para entrenar con el segundo nivel.
* Proyectos GitHub.
	+ No se han podido aplicar las mismas técnicas que en los casos anteriores por no disponer de un dataset de entrenamiento apropiado (que habrá que construir) y porque la naturaleza de los repositorios de GitHub va a necesitar una aproximación específica para obtener textos con los que poder operar. Las palabras claves específicas no han tenido, en general, ni la cobertura ni la precisión adecuadas.

  





