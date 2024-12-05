# Hércules : Convocatorias











## Sistema de Gestión Investigación

### Entidades



| Entidad | Descripción |
| --- | --- |
| AreaTematica | Contiene los datos generales de las áreas temáticas que se pueden relacionar con las convocatorias. |

### Modelo lógico

[CSP \- CONV \- Modelo lógico](https://confluence.treelogic.com/pages/viewpage.action?pageId=96209958 "https://confluence.treelogic.com/pages/viewpage.action?pageId=96209958")

  


### API

Características generales que todas las API REST deben de cumplir:

* [Consultas filtradas y paginadas](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=Consultas+filtradas+y+paginadas "/confluence/pages/createpage.action?spaceKey=TEMP001&title=Consultas+filtradas+y+paginadas")
* [Formatos de datos API](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=TEMP001&title=Formatos+de+datos+API "/confluence/pages/createpage.action?spaceKey=TEMP001&title=Formatos+de+datos+API")

#### Definición de los objetos

##### AreaTematica



| Nombre | Tipo | Descripción |
| --- | --- | --- |
| id | Long | Identificador único del área temática. |
| nombre | String | Nombre del área temática a presentar por pantalla en los componentes visuales árbol o selector. |
| descripcion | String | Descripción del área temática. |
| padre | Long | Identificador del área temática de la que depende jerárquicamente, del padre. Si está nulo, se entiende que el área temática es raíz o de primer nivel, no tiene área temática padre. |
| activo | Boolean | Indica si el área temática está activa o no. |

#### Servicios



| Método | URL | Parámetros | Respuesta | Descripción |
| --- | --- | --- | --- | --- |
| GET | /areatematicas | q\+s (query \+ sort)La query estará formada por:* padreId | List\[AreasTematica] | Listado de AreaTematica  (sólo devuelve los registros activos).Nota: en el caso de no recibirse un padreId en la query, se devolverán todas las áreas temáticas y en caso de indicarse en la query que se quieren solo las que tengan un padreId con valor "null" se devolverán únicamente las de primer nivel o nivel raíz.*Ejemplo de query para obtener solo áreas de conocimiento raíz (su padre es null)*:padreId\=na\= |
| GET | /areatematicas/{id} |  | AreasTematica | Datos de un área temática específica. |
| GET | /convocatorias/eliminadas\-ids | q\+sLa query estará formada por:* fechaEliminacion | Lista\[Long] | Listado de Identificadores de Convocatoria que han sido eliminadas (campo activo \= false) a partir de una fecha.Se utilizará el siguiente parámetro en la llamada al servicio:* fechaEliminacion: se le pasará la fecha a partir de la cual se quieren ver las convocatorias eliminadas o bien un rango entre las que se quiere buscar  Ejemplo1:* fechaEliminacion\=ge\="2024\-01\-01T22:00:00Z";  Ejemplo2:* fechaEliminacion\=ge\="2024\-01\-01T22:00:00Z";fechaEliminacion\=le\="2024\-12\-31T22:00:00Z" |




