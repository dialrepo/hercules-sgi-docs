# Hércules : PRE \- Análisis predictivo



## Introducción

Los SGI en las universidades españolas son herramientas software que permiten a la comunidad investigadora universitaria llevar el control completo de los distintos proyectos de investigación que se llevan a cabo. Se trata de sistemas de gestión que almacenan toda la información de las distintas convocatorias de financiación para los proyectos de investigación, las solicitudes de financiación de los distintos investigadores o grupos de investigación, los proyectos finalmente financiados y que se llevan a cabo, y los datos de los resultados de las investigaciones, bien sea en forma de publicaciones científicas o patentes. Todo ello manteniendo un control económico completo de los presupuestos de investigación, su ejecución y los gastos e ingresos de los mismos, y, a un tiempo, gestionando la producción científica y el propio currículum de todos los investigadores a lo largo de su carrera.

Una de las dificultades que los distintos SGIs presentes en la comunidad universitaria española es la gran cantidad de datos heterogéneos que se gestionan. De esta manera, resulta complicado con el paso de los años saber si para una determinada temática hay mucha o poca participación investigadora en una universidad concreta o si existe algún grupo o algún investigador individual más cercano, o más experimentado, en lo que se pretende buscar.

El gestor de la investigación no tiene el conocimiento completo de todas las áreas de investigación ni la profundidad de detalle para poder valorar si los proyectos de un determinado grupo son más cercanos a una u otra temática de búsqueda y debe recurrir al profesional investigador. 

Se pretende, en esta primera fase inicial, realizar una prueba de concepto de un sistema capaz de recomendar a uno o varios investigadores en función de una cadena de búsqueda, cotejando la similitud semántica de dicha cadena con una nube de términos extraída de las publicaciones del personal investigador. 

## Fuente de datos

A día de hoy todavía no se dispone en el SGI de un conjunto de datos relevante con información de pares "investigador  /  contenido\-artículo".

Es por ello que se ha optado por trabajar con un conjunto de datos públicos formado por miles de artículos publicados en PubMed:

[https://www.tensorflow.org/datasets/catalog/scientific\_papers\#scientific\_paperspubmed](https://www.tensorflow.org/datasets/catalog/scientific_papers#scientific_paperspubmed "https://www.tensorflow.org/datasets/catalog/scientific_papers#scientific_paperspubmed")

El fichero de datos se compone de líneas en formato "json", con la siguiente información:



| Campo | Descripción |
| --- | --- |
| article\_id | Identificador único del artículo en PubMed |
| abstract\_text | Abstract del artículo |
| article\_text | Contenido del artículo |
| section\_names | Lista de secciones dentro del artículo |
| sections | Contenido de cada sección |

  


Por ejemplo:

![](/attachments/597852379/597882258.png)

  


## Procesamiento inicial de datos

La fuente de datos anterior carece, sin embargo, de información clave para nuestro propósito: el listado de autores de cada artículo.

Por ello, se ha obtenido dicha información mediante la API pública de PubMed, que ofrece una manera rápida y sencilla de obtener el resto de meta\-información a partir del identificador del artículo:

[https://api.ncbi.nlm.nih.gov/lit/ctxp](https://api.ncbi.nlm.nih.gov/lit/ctxp "https://api.ncbi.nlm.nih.gov/lit/ctxp")

Una vez obtenido el listado de autores por artículo, se ha procedido a agrupar la información de cada artículo por autor, extrayendo del abstract una nube de términos.

El resultado final es un archivo en formato tabular con un registro por cada autor individual, y las siguientes columnas.

* **Author**: nombre y apellidos del autor
* **Abstract**: nube de términos extraida de los abstracts de los artículos publicados por el autor
* **n\_articles**: número de artículos de los que se ha extraído la información

  


## Modelado del texto

En problemas de naturaleza tan compleja como los de este proyecto, los datos se transforman en un conjunto de características que resulten útiles para su comparación con la query de búsqueda, dichas características deben contener información relevante.

Para ello se han implementado los siguientes procesos:

##### **Preprocesado de texto:**

El preprocesdo del texto se compone de los siguientes procesos:

![](/attachments/597852379/597884696.png)

##### **Tokenización:**

Tokenizar es el proceso de segmentar un texto en sus elementos semánticos básicos, es decir, dividir las frases en palabras. Para ellos eliminaremos los caracteres no alfanuméricos y utilizaremos el espacio como elemento separador.

Ejemplo:

Texto de entrada: 'DisPFL: Towards a Communication\-Efficient Federated Learning'

Texto de salida: ‘DISPLF’ ‘TOWARDS’ ‘COMMUNICATION’ ‘EFFICIENT’ 'FEDERATED' 'LEARNING'

##### **Stemming:**

Es un proceso para reducir una palabra a su raíz (‘stem’ in inglés). Se utiliza para agrupar palabras con la misma información útil para la clasificación.

Por ejemplo, las palabras ‘Venta’, ‘Vender’, ‘Vendido’ y ‘Vendiendo’ pasan a ser ‘Vend’.

Para el proyecto se probarán diferentes algoritmos de stemming (Porter, Lancaster, …) y se seleccionará el que obtenga mejores prestaciones.

##### **Eliminación de palabras frecuentes e infrecuentes:**

Eliminación de palabras frecuentes: Son palabras sin significado semántico y que aportan poca información útil la temática del texto, que son filtradas antes del procesamiento del lenguaje natural de texto. Ejemplos de stopwords en español: ‘un’, ‘una’, ‘de’, ‘es’,…

Eliminación de palabras infrecuentes: Son palabras que aparecen con tan poco frecuencia que probablemente sea debido a que contienen una errata.

##### **Modelado matemático del texto \- Vectorización:**

Tanto la información de la query como la información relativa a cada investigador, se modelará como un vector numérico. Para ello se barajarán diferentes alternativas:

* + - * Metrica TF\-IDF (frecuencia de término – frecuencia de documento inversa): TF\*IDF o tf\-idf es el acrónimo de “Term Frequency times Inverse Document Frequency”, que podemos traducir como “frecuencia del término por frecuencia inversa de documento”. Es una métrica desarrollada dentro de la disciplina conocida como IR o Information Retrieval (Recuperación de la información) para encontrar el documento más relevante para cierto término dentro de una colección de documentos. Antes de internet se usaba para rankear documentos dentro de una biblioteca o red de bibliotecas. ¿Cómo funciona? Mide con qué frecuencia aparece un término o frase dentro de un documento determinado, y lo compara con el número de documentos que mencionan ese  término dentro de una colección entera de documentos.

![](/attachments/597852379/597884697.png)

* + - * Doc2Vec: Su objetivo es crear una representación vectorial de un documento, independientemente de su longitud.  Estos vectores de párrafo heredan una propiedad importante de los vectores de palabras: la semántica. De manera que vectores de párrafos cercanos se asocian con documentos que, semánticamente, tienen un contenido similar.

![](/attachments/597852379/597884695.png)

Dada la necesidad de un conjunto masivo de artículos para la creación de un modelo propio Doc2Vec, se ha hecho uso de un modelo pre\-entrenado a partir de la Wikipedia en habla inglesa:

[https://github.com/jhlau/doc2vec](https://github.com/jhlau/doc2vec "https://github.com/jhlau/doc2vec")

Se han implementado, pues, dos técnicas de modelado diferentes con el fin de evaluar su efectividad.

  


## Instalación

Nota: el proyecto requiere Python 2\.7 para cargar los modelos de lenguaje Doc2Vec Gensim.

Requisitos:

* conda: [https://docs.conda.io/projects/conda/en/latest/user\-guide/install/index.html](https://docs.conda.io/projects/conda/en/latest/user-guide/install/index.html "https://docs.conda.io/projects/conda/en/latest/user-guide/install/index.html")

Pasos a seguir:

1. Crear entorno de conda:



```
conda create -n python2 python=2.7 anacond
```
2. Activar entorno:



```
source activate python2
```
3. Clonar proyecto:



```
git clone http://gitlab.treelogic.local/operaciones/hercules/sgi/sgi-ap
```
4. Instalar dependencias:



```
cd <LOCAL_PATH>/sgi-ap
pip install requirements.txt
```

Nota: deberá cambiarse la cadena \<LOCAL\_PATH\> por la ruta local del proyecto.

  


## Uso

  


Una vez instalado el proyecto, para su ejecución deberán seguirse los siguientes pasos:

1. Desde una ventana de línea de comandos, activar el entorno Python, en caso de que no haya sido activado previamente:



```
conda activate python2
```
2. Ejecución del script de búsqueda de investigadores. Como se ha indicado, se dispone de dos implementaciones diferentes. Desde una ventana de línea de comandos, navegar al directorio raíz del proyecto (sgi\-ap) y ejecutar:
	1. TF\-IDF:
	
	
	
	```
	python ./src/ranking/rank_tfidf.py --file_path ./data/processed/abstracts_54-authors.csv --query "<YOUR_SEARCH_QUERY>"
	```
	2. Doc2Vec: 
	
	
	
	```
	python ./src/ranking/rank_doc2vec.py --file_path ./data/processed/abstracts_54-authors.csv --query "<YOUR_SEARCH_QUERY>"
	```
	
	Donde \<YOUR\_SEARCH\_QUERY\> corresponde con una cadena de búsqueda.

## Exploración

  


Procederemos a continuación a usar la herramienta en un conjunto de datos obtenido del modo descrito anteriormente, y limitado a unos 21000 autores.

El fichero de datos puede encontrarse en la carpeta del proyecto:  /sgi\-ap/data/processed/abstracts\_21000\-authors.csv

Realizamos la siguiente búsqueda, "vertebrobasilar dolichoectasia", mediante las dos implementaciones del proyecto. Primero, la correspondiente al algoritmo TF\-IDF:

**TF\-IDF**



```
python ./src/ranking/rank_tfidf.py --file_path ./data/processed/abstracts_21000-authors.csv --query "vertebrobasilar dolichoectasia"
```

El proceso tomará cierto tiempo (del orden de minutos). Este tiempo de espera podría acortarse significativamente en un entorno productivo mediante el pre\-cálculo de los vectores (word embeddings) asociados a cada autor.

Se obtiene el siguiente resultado:



| Autor | Distancia coseno |
| --- | --- |
| Prakhar Gupta | 0\.6096401793267894 |
| Gaurav Shah | 0\.6096401793267894 |
| Mohd Khalid | 0\.6096401793267894 |

(La columna "Distancia coseno" hace referencia a la "distancia" entre la cadena de búsqueda y la nube de términos asociada a cada investigador)

El número de resultados se está limitando a 3 por defecto, pero es posible fijar la longitud del resultado de búsqueda de acuerdo a lo deseado mediante el parámetro ""–n":

**Doc2Vec**



```
python ./src/ranking/rank_doc2vec.py --file_path ./data/processed/abstracts_21000-authors.csv --query "vertebrobasilar dolichoectasia"
```

Resultados:



| Autor | Distancia coseno |
| --- | --- |
| Prakhar Gupta | 0\.3284202810813404 |
| Gaurav Shah | 0\.3284202810813404 |
| Mohd Khalid | 0\.3284202810813404 |

  


Se observa que, en el caso de ambas implementaciones, el resultado coincide con lo esperado, al ser los autores citados los únicos de todo el corpus de artículos con publicaciones referidas a dicha patología.

## Anexo

### Estructura del proyecto

  


![](/attachments/597852379/597882257.png)

  


  





