# Hércules : Enriquecimiento. Identificación de ROs similares. Planteamiento inicial



El contenido de este apartado es:

## 1 Descripción de módulo de identificación de ROs similares

El objetivo del módulo de identificación de ROs similares es identificar relaciones de similitud semántica entre distintos ROs. Dado un RO determinado, el sistema podrá identificar ROs de contenido semántico similar a petición del usuario. Los ROs implicados en las relaciones de similitud podrán corresponder a distintos tipos de RO e incluso estar escritos en distintos idiomas. Además, el sistema ofrecerá al usuario descriptores relevantes a la relación de similitud identificada entre dos ROs. De esta forma, el usuario podrá interpretar con más facilidad la similitud establecida entre dos ROs.

La tarea a abordar la podemos desglosar en dos subtareas:

1. Estimación de similitud semántica entre dos contenidos textuales.
2. Identificación de descriptores relevantes a una relación de similitud semántica entre dos contenidos textuales.

## 2\. Estimación de similitud semántica entre contenidos textuales

La tarea canónica de PLN para la detección de textos semánticamente similares se conoce como STS (Semantic Textual Similarity). Uno de los aspectos clave para abordar la tarea reside en el paradigma utilizado  para la representación textual. Podemos distinguir dos paradigmas principales; a) representaciones basadas en bolsa\-de\-palabra y b) representaciones densas basada en embeddings. Una vez hecha la representación vectorial de dos textos, se puede proceder a calcular su similitud mutua mediante una media de similitud como, por ejemplo, el coseno.

Los enfoques basados en bolsa\-de palabra son muy escalables, pero no permiten la identificación de relaciones que vayan más allá del solapamiento de palabras entre dos textos. Es decir, que no se tienen en cuenta las relaciones semánticas entre las palabras de los dos textos. Para hacer frente a esta limitación se propone el uso de representaciones densas basadas en embeddings. En estas representaciones las dimensiones del vector no representan palabras concretas del vocabulario, sino espacios semánticos. Dentro de las representaciones densas, podemos distinguir embeddings estáticos y embeddings contextuales. En los embeddings estáticos no se tiene en cuenta las diferentes acepciones que puede tener una palabra. En los contextuales, en cambio, se analiza el contexto (a nivel de oración) para identificar la acepción concreta de la palabra en el texto, y transmitir esa información a la hora de construir la representación vectorial. De esa forma, se construye una representación con una información semántica más precisa. Sin embargo, la construcción de representaciones basadas en embeddings contextuales es computacionalmente mucho más pesada que la basada en embeddings estáticos.

En este proyecto vamos a analizar distintos enfoques, basados tanto en bolsa\-de\-palabras, embeddings estáticos, y embeddings contextuales. Listamos, a continuación, los enfoques que analizaremos y evaluaremos:

* Representación del texto mediante bolsa\-de\-palabras, pesos con tf\-idf y similitud mediante coseno. Se estudiarán distintas alternativas para el filtrado del léxico.
* Representación de texto basado en entidades de base de conocimiento multilingüe (BCM) y BM25 para similitud. Para implementar esta estrategia reutilizaremos el software ICTdocsim[\[i]](#_edn1 "#_edn1") financiado por el Plan de Impulso de las Tecnologías del Lenguaje del Gobierno de España.
* Representación del texto mediante embeddings estáticos Fasttext (Bojanowski et al., 2017\) y similitud mediante coseno.
* Representación del texto mediante promedio de embeddings contextuales BERT (Devlin et al., 2019\) y similitud mediante coseno.
* Representación del texto mediante red neuronal recurrente (RNN) sobre embeddings contextuales Flair (Akbik et al., 2018\) y similitud mediante coseno.

Para evaluar los distintos enfoques se elaborará un dataset compuesto por ROs de distintos tipos. De ese dataset se seleccionará, de forma aleatoria, un conjunto reducido de ROs, y por cada RO de ese conjunto se evaluarán los rankings de ROs similares elaborados por cada enfoque a partir del dataset. Los rankings se evaluarán de acuerdo a métricas de recuperación de información como P@10 (precisión sobre el top 10\). El cálculo de las métricas requerirá de una anotación manual de los rankings.

También, se analizará la escalabilidad de cada enfoque prestando atención a los consumos de memoria y CPU o GPU. El enfoque que mejor compromiso muestre entre el requerimiento de recursos y la calidad de resultados será el que se integré en el sistema.

## 3 Identificación de descriptores relevantes a relación de similitud entre dos contenidos textuales

Una tarea adicional a la identificación de textos similares es la identificación de descriptores relevantes a la relación de similitud entre dos documentos D1 y D2\. Se trata de mostrar al usuario conceptos lexicalizados (descriptores ) que tienen un papel activo en la relación de similitud entre dos textos, de forma que el usuario pueda comprender de forma rápida los elementos comunes.

Para abordar esta tarea se van a analizar los siguientes enfoques:

* Intersección de descriptores identificados (y vinculadas a una única taxonomía) por el módulo de extracción de tópicos para los documentos D1 y D2\.
* A partir de los descriptores del documento D1 seleccionar las más similares a cada una de ellas de entre los descriptores del documento D1\. Para el cálculo de la similitud entre descriptores se analizará el uso de representaciones basadas en embeddings estáticos combinadas con medidas de similitud y distancia calculada según la estructura de la ontología.

## 4 Trabajos a realizar y planificación

Se describen, a continuación, los trabajos que se realizarán para implementar el módulo de identificación de ROs similares.

### Implementación de enfoques para similitud semántica

Se van a implementar los enfoques mencionados en el capítulo 4\.2\. Para implementar los enfoques basados en bolsa\-de\-palabra se hará uso del paquete Scikit\-learn, y para los enfoques basados en embeddings se utilizará el paquete Flair. Se analizará el uso de embeddings estáticos monolingües y multilingües. Para el caso de los embeddings contextuales se analizarán RNNs y modelos de lenguaje pre\-entrenados basados en autoencoders (BERT, roBERT...).

Los enfoques implementados para la detección de ROs similares se evaluarán sobre una colección de ROs que incluirá distintos tipos. De esta colección se seleccionará un subconjunto de ROs para los cuales se identificarán los similares. Cada enfoque proporcionará un ranking de similares que se evaluará con métricas de recuperación de información tales como P@10\. Para el cálculo de estas métricas se preparará un gold\-standard compuesto por juicios humanos de relevancia que se elaborarán de forma manual.

### Implementación de extracción de descriptores relevantes en relación de similitud

Se implementarán los enfoques descritos en el capítulo 4\.3\. Se implantará un método baseline basado en selección los descriptores fruto de la intersección de los sendos conjuntos de descriptores correspondientes a los dos contenidos similares. Los descriptores serán las identificadas por el módulo de extracción de tópicos. El segundo método no se limitará a seleccionar los descriptores resultado de la intersección, sino que también tendrá en cuenta la distancia semántica entre los descriptores de los dos contenidos. Para el cálculo de esa distancia semántica se estudiarán dos estrategias: a) representación de palabras mediante embeddings estáticos y cálculo de distancia mediante coseno, b) cálculo de distancia en base a ontología.

### Evaluación cualitativa de descriptores relevantes en relaciones de similitud

La evaluación de los enfoques implementados para la extracción de palabras relevantes a relaciones de similitud se abordará de forma manual, mediante una inspección comparativa de los resultados y valoración cualitativa de los mismos. La valoración cualitativa se hará de acuerdo a la relevancia de los descriptores seleccionados en la relación de similitud correspondiente a un par de documentos similares. La evaluación se hará sobre el mismo dataset construido para la evaluación de los sistemas de detección de documentos similares. Se explorarán los resultados (descriptores relevantes a la relación de similitud) correspondientes a los pares de documentos similares detectados.

  


La planificación de los próximos trabajos se ha elaborada con el objetivo de abordar las líneas subrayadas anteriormente y podría variar en función de próximas decisiones sobre funciones y relaciones entre los sub proyectos Hércules.



|  | Feb | Mar | Abr | May | Jun | Jul | Ago | Sep | Oct | Nov |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 2\.1 Enfoques para similitud semántica |  |  |  |  |  |  |  |  |  |  |
| 2\.2 Datasets de evaluación |  |  |  |  |  |  |  |  |  |  |
| 2\.3 Enfoques para extracción de palabras relevantes a relaciones de similitud |  |  |  |  |  |  |  |  |  |  |
| 2\.4 Desarrollo de módulo/librería final y testing técnico y manual |  |  |  |  |  |  |  |  |  |  |

  


[\[i]](#_ednref1 "#_ednref1") [https://www.plantl.gob.es/tecnologias\-lenguaje/actividades/desarrollos/Paginas/vigilancia\-tecnologica.aspx](https://www.plantl.gob.es/tecnologias-lenguaje/actividades/desarrollos/Paginas/vigilancia-tecnologica.aspx "https://www.plantl.gob.es/tecnologias-lenguaje/actividades/desarrollos/Paginas/vigilancia-tecnologica.aspx")

  





