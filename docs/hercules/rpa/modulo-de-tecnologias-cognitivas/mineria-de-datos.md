# Hércules : Minería de datos



Este módulo tiene como objetivo hacer minería de datos explotando los datos de los distintos subsistemas Hércules, en concreto sobre los datos de grupos de investigación y su producción con objeto  de  realizar  clasificación  y categorización que permitan identificar agrupaciones y similitudes. Para ello, se apoya en técnicas de procesamiento de lenguaje natural (NLP) y técnicas de aprendizaje automático (Machine Learning).

Este componente se puede resumir en los siguientes pasos:

1. Extracción de datos de los subsistemas HÉRCULES.
2. Tratamiento de datos.
3. Agrupación.
4. Generador de vocabulario (NLP).
5. Reducción de la Dimensionalidad (Machine Learning).
6. Clustering (Machine Learning).

## Extracción de datos de los subsistemas HÉRCULES.

La extracción de datos que se busca es aquella donde se relacione:  investigador, categoría y tag. Para ello, se hará uso del lenguaje SPARQL, realizando la siguiente consulta:

**Query SPARQL**

```
select ?person ?tag  ?nombreCategoria ?nombrePersona ?email from <http://gnoss.com/document.owl> from <http://gnoss.com/person.owl> from <http://gnoss.com/taxonomy.owl> where {
?doc a <http://purl.org/ontology/bibo/Document>.
?doc <http://purl.org/ontology/bibo/authorList> ?autor.
?autor <http://www.w3.org/1999/02/22-rdf-syntax-ns#member> ?person.
?person <http://xmlns.com/foaf/0.1/name> ?nombrePersona.
?person <https://www.w3.org/2006/vcard/ns#email> ?email.
?doc <http://vivoweb.org/ontology/core#freeTextKeyword> ?tag.
?doc <http://w3id.org/roh/hasKnowledgeArea> ?area.
?area <http://w3id.org/roh/categoryNode> ?nodo.
?nodo <http://www.w3.org/2008/05/skos#prefLabel> ?nombreCategoria.
}
```

Esta consulta devolverá la siguiente información:



| Nombre | Descripción |
| --- | --- |
| Tag | Descriptor/palabra clave |
| NombreCategoria | Área temática relacionada |
| NombrePersona | Nombre completo del investigador |
| Email | Email del investigador |

Una vez obtenidos los datos, el orden natural en el análisis de datos es hacer un pre\-procesado, donde se limpiarán aquellos datos que pueden entorpecer el entendimiento de los mismos.

## Tratamiento de los datos

Los datos principalmente se encuentran ya tratados, pues vienen de los subsistemas HÉRCULES donde ya se lleva a cabo un preprocesamiento. Por lo tanto, lo único que el sistema hará, será limpiar el texto de los tag y las categorías, es decir, eliminar caracteres extraños, transformar las palabras en minúsculas y eliminación de "stopwords" (in, a, the, etc...), este último paso es necesario para la generación de vocabulario utilizando la librería [Gensim](https://github.com/RaRe-Technologies/gensim "https://github.com/RaRe-Technologies/gensim"). Además, se borrarán aquellas columnas que el sistema no necesita. El siguiente paso será la agrupación de las columnas categoría y tag, de esta forma el vocabulario que se generará a través de técnicas de lenguaje natural (NLP) será más rico. Posteriormente, el sistema buscará las N similitudes (por defecto) más grandes entre los distintos tags que las técnicas de NLP determinen con el objetivo de tener una columna más llamada "similitud" que facilitará al sistema a agrupar los N investigadores. El objetivo principal es poder vectorizar las palabras que relacionan los trabajos de los investigadores con el fin de obtener relaciones (clústeres) entre los distintos investigadores utilizando técnicas de Machine Learning y NLP. 

## Clustering

La clusterización se utilizará para encontrar aspectos en común entre los investigadores y encontrar grupos entre ellos, pero antes de generar N clúster, se procederá a utilizar algoritmos de Machine Learning para la reducción de la dimensionalidad en los vectores generados por el vocabulario (NLP) usando el algoritmo UMAP, el cual es el elegido para la reducción de dimensión ya que se utiliza normalmente para explorar relaciones multivariantes entre variables y para reducir el coste de cálculo de algoritmos de aprendizaje automático en los que la memoria requerida y el tiempo de procesamiento dependen del número de dimensiones de los datos. Posteriormente, se aplicarán técnicas de clustering, ya que estas son compatibles con el pre\-procesamiento de UMAP, en concreto, haremos uso de HDBSCAN. La decisión de utilizar HDBSCAN frente a otros algoritmos de clustering, es debido a que HDBSCAN puede trabajar con grandes conjuntos de datos y no necesita de la especificación del número de clústeres.

Por último, la salida del algoritmos HDBSCAN proporcionará N clústeres, por lo que el conjunto de datos quedaría de la siguiente forma: *tag, nombreCategoria, email, hdbscan\_label\_cluster.* 

De esta forma, se agrupará a los investigadores por sus categorías y tags.

## Datos de salida

Los datos de salida podrán ser consultados vía API REST o utilizando la librería, con el objetivo de que cualquiera pueda obtener un conjunto de investigadores, que estén agrupados en una categoría, tag o ambas.

  


  


  


  





