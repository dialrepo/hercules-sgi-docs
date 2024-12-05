# Hércules : API Rest



El módulo proporcionará una API para que pueda ser utilizado e integrado por los distintos subsistemas del proyecto HÉRCULES. A continuación explicaremos las llamadas que esta API ofrece:



| Método | Url | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| `POST` | `/api/module_cognitive/pdf_to_table` | `Body JSON:``{ "files": ["path_PDFs"],``"excel": "True"/"False"``"email": "email@mail.es"}` | JSON Dataframe con el contenido del PFD | Extrae tablas de imágenes o documentos PDF's  que te devuelve en un dataframe y adicionalmente, si se ha especificado, en un formato XLSX a través del correo electrónico. |
| `POST` | `/api/module_cognitive/xml/execute` | `Body JSON:``{"url": "url", "filename": "file.xml"}` | JSON Nodos obtenidos del fichero XML y de la URL | Devuelve los nodos XML dado la URL y el fichero XML. |
| `POST` | `/api/module_cognitive/xml/get_document` | `Body JSON:``{ "origen": "url_origen", "destino": "path_destino"``}` | Código de respuesta si se ha traído el documento. | Esta llamada consulta la *url\_origen* dado y escribe el resultado, si existe, en el destino seleccionado. Devuelve el código de respuesta a la llamada con la *url\_origen.* |
| `POST` | `/api/module_cognitive/xml/get_dictionary` | `Body JSON:``{ "filename": "path_filename",``"rootname": "rootname",``"atribname": "atribname",``"childsname": "childsname"}` | Diccionario con el contenido del fichero XML con los parámetros dados. | Dado un fichero XML y los parámetros devuelve un diccionario con el resultado de ese fichero XML. |
| `POST` | `/api/module_cognitive/bdns/search` | `Body JSON:``{ "start_date":"2022-05-15",``"end_date": "2022-05-31",``"args":"palabra1 palabra2 palabra3" ... }` | JSON con el resultado de la búsqueda realizada. | Esta llamada consulta la página web de la Base de datos nacional de subvenciones y te devuelve el resultado en formato CSV de la consulta realizada con los parámetros dados. |
| `POST` | `/api/module_cognitive/bdns/data` | `Body JSON:``{"bdns": "123456"}` | Diccionario con la información ampliada de la convocatoria dada a través de su número de BDNS. | Dado el número de la BDNS te devuelve la información ampliada en la página web sobre dicha convocatoria. |
| `GET` | `/api/module_cognitive/datamining/all_cluster` |  | Dataframe con todo el cluster. | Devuelve todo el *cluster* de la llamada SPARQL que realiza al entorno EDMA con toda la información sobre investigadores. |
| `GET` | `/api/module_cognitive/datamining/all_categories` |  | Lista de todas las categorías del dataframe. | Devuelve una lista de las *categories* extraídas del *dataframe* de la consulta SPARQL que se realiza al entorno EDMA. |
| `GET` | `/api/module_cognitive/datamining/all_tag` |  | Lista de todos los tags del dataframe. | Devuelve una lista de *tags* extraídos del *dataframe* de la consulta SPARQL que se realiza al entorno EDMA. |
| `POST` | `/api/module_cognitive/datamining/categories_interest_research` | `Body JSON:``{"email":"email@[mail.com](http://mail.com "http://mail.com")"}` | Lista de las categorías a las que pertenece el investigador | Devuelve una lista de categorías en las que el investigador ha participado. |
| `POST` | `/api/module_cognitive/datamining/tags_interest_research` | `Body JSON:``{"email":"email@[mail.com](http://mail.com "http://mail.com")"}` | Lista de los tags a los que pertenece el investigador. | Devuelve una lista de *tags* en las que el investigado ha participado. |
| `POST` | `/api/module_cognitive/datamining/research_clusters` | `Body JSON:``{"email":"email@[mail.com](http://mail.com "http://mail.com")"}` | Lista de los clusters a los que pertenece el investigador. | Devuelve una lista de *clusters* en las que el investigador ha participado. |
| `POST` | `/api/module_cognitive/datamining/research_relation` | `Body JSON:``{"email":"email@[mail.com](http://mail.com "http://mail.com")"}` | Lista de las relaciones que tiene el investigador. | Devuelve una lista de las relaciones que tiene el investigador. |
| `POST` | `/api/module_cognitive/datamining/research_tag` | `Body JSON:``{"tags": [ "tag1","tag2","tag3", ... ]}` | Lista de emails que tienen relación con los tags. | Devuelve una lista de emails asociados a investigadores los cuales cumplen que tienen alguna relación con los *tags* dados como parámetros. |
| `POST` | `/api/module_cognitive/datamining/research_category` | `Body JSON:``{"categories": [ "category1","category2","category3", ... ]}` | Lista de emails que tienen relación con las categories. | Devuelve una lista de emails asociados a los investigadores los cuales cumplen que tienen alguna relación con las *categories* dadas como parámetros. |
| `POST` | `/api/module_cognitive/datamining/research_category_tag` | `Body JSON:``{"tags": [ "tag1","tag2","tag3", ... ],``"categories": [ "category1","category2","category3", ... ]}` | Lista de emails que tienen relación con los tags y categories. | Devuelve una lista de emails asociados a los investigadores lo cuales cumplen que tienen alguna relación con las *categories* y *tags* dados como parámetros. |




