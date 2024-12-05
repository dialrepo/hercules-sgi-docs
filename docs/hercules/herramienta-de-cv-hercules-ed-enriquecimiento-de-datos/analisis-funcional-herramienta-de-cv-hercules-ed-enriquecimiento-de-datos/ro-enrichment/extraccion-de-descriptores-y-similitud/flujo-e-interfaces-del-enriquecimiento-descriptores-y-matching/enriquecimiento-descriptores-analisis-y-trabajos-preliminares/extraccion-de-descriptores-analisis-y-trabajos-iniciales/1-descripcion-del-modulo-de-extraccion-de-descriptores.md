# Hércules : 1\. Descripción del módulo de extracción de descriptores



La tarea a abordar por el sistema es la extracción de descriptores correspondientes a ROs determinados. Entendemos descriptor como espacio semántico (de granularidad arbitraria) presente en un texto, que puede expresarse léxicamente mediante etiquetas/descriptores que corresponden a sintagmas nominales representativos del descriptor. Los descriptores de grano grueso corresponderán a áreas temáticas, mientras que los descriptores de grano fino se referirán a conceptos más específicos.

El término tópico (o *topic*) en la literatura de PLN se entiende como un espacio semántico (de granularidad arbitraria) incluido en un texto que habitualmente se presenta asociado a la tarea de generación de modelos de tópicos o *topic modelling*. Estos modelos se generan a partir de una colección de textos de forma que se infiere la distribución de tópicos presentes en la colección, así como la distribución de vocabulario asociada a cada tópico. Normalmente, la tarea se centra en extraer tópicos de grano grueso. Por otro lado, la tarea de selección de descriptores o etiquetas que describan estos tópicos es suplementaria y se conoce en la literatura como *topic labelling*.

Otras tareas íntimamente relacionadas con la extracción de descriptores son las siguientes (resumen en tabla 6\):

* *Extracción de terminología*: Extraer de un texto la terminología incluida en el mismo, sin realizar ninguna discriminación de acuerdo con su relevancia en el texto. Es decir, el objetivo no es extraer los términos que mejor describan el texto, sino extraer sintagmas que correspondan a unidades terminológicas.
* *Extracción de entidades nombradas*: Identificar en un texto distintos tipos de entidades nombradas como pueden ser nombres de persona, lugares y organizaciones. En esta tarea tampoco se presta atención a la relevancia de cada entidad en el texto.
* *Extracción de palabras clave*: Identificar términos, palabras, entidades que mejor describan el contenido de un texto. No se prefija un nivel de granularidad predeterminado, pero normalmente la tarea se centra en palabras clave específicas y que estén presentes en el texto.
* *Clasificación temática de textos*: Identificar las áreas temáticas o los temas más relevantes en el texto a partir de una lista cerrada de áreas o temas.

  




|  | Descriptores grano grueso | Descriptores grano fino | Relevancia descriptiva | Datasets anotados |
| --- | --- | --- | --- | --- |
| Topic modelling \+ topics labelling | V | \- | V | \- |
| Extracción terminología | \- | V | \- | \- |
| Extracción de entidades nombradas | \- | V | \- | V |
| Palabras clave | \- | V | V | V |
| Clasificación temática | V | \- | V | V |

Tabla: Enfoques útiles para la extracción de descriptores.

  


Dado que el objetivo principal de la extracción de descriptores en el marco de Hércules es la generación de etiquetas descriptoras de los ROs de cara a facilitar la navegación sobre estos por parte de los usuarios, hemos optado de una estrategia mixta que combina técnicas de extracción de terminología, extracción de entidades nombradas, extracción de palabras clave y clasificación temática. Los descriptores extraídos mediante este enfoque automático se combinará, en la medida de lo posible, con los descriptores obtenidos directamente del repositorio mediante APIs o *scraping*.

Se ha determinado que para la generación de etiquetas descriptoras se deben identificar descriptores de diferente granularidad; concretamente, descriptores temáticos y descriptores específicos (Diagrama del sistema propuesto en la imagen 1\). Los descriptores temáticos ayudan al usuario a comprender el área de conocimiento a la que pertenece el RO; y los específicos facilitan la exploración de los conceptos específicos más relevantes del RO.

Tanto los descriptores temáticos como los específicos serán enlazados con ítems presentes en las ontologías o taxonomías que se consideren oportunas.

![](/attachments/598147240/598147773.png)

Imagen 1: Diagrama del sistema propuesto.

  


  





