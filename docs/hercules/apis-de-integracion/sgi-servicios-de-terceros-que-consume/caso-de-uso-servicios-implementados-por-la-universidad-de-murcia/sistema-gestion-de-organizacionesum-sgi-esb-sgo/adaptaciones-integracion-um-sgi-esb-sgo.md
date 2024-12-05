# Hércules : Adaptaciones integración (UM \- SGI \- ESB \- SGO)



## Flujos de llamadas a APIs

### APIs de Clasificaciones

En el caso concreto de la UM la universidad gestionará las clasificaciones de tipo Sector Industrial, las CNAE, mientras que el SGI gestionará las clasificaciones NABS y UNESCO. Este escenario será el previsto en el momento de la implantación, si bien podrá evolucionar en el futuro aquí o en otras universidades ampliando las clasificaciones a gestionar en uno u otro sistema pudiendo ir incluso desde una gestión total en la universidad hasta el de una gestión total en el SGI de las clasificaciones.  
Para el caso de la UM, se deberá llevar a cabo una adaptación de las llamadas a las APIs, ya que, por la manera en que estará configurada la información de clasificaciones, no será directo el obtener la información de las mismas.  
Las clasificaciones se muestran en dos escenarios dentro del SGI:

1. Pantalla de selección de clasificaciones: [IU\-GEN\-0120 \- Selección de clasificaciones](file:///C:/pages/viewpage.action?pageId=103904412 "file:///C:/pages/viewpage.action?pageId=103904412"). En este caso, los pasos a seguir serán los siguientes:
	1. Para cargar el listado de clasificaciones de primer nivel (combo Clasificación) se usará el API del ESB\-SGI que devolverá la lista de clasificaciones padre (padreId \= null), en el caso de UM, 3: NABS, CNAE y UNESCO. Este listado se resolverá dentro del propio ESB, no se llamará al API de UM.
	2. Si la clasificación seleccionada a continuación por el usuario es:
		1. NABS o UNESCO →  desde el SGI se llamará a los métodos del ESB para construir sucesivamente el árbol de elementos de la clasificación seleccionada. Esta estructura de árbol se resolverá dentro del propio ESB, no se llamará al API de UM.
		2. CNAE → desde el SGI se llamará a los métodos del ESB para construir sucesivamente el árbol de elementos de la clasificación seleccionada. El ESB ha de llamar a los métodos del API de UM para resolver esta estructura de árbol. Deberá tener en cuenta que se podrá dar el caso en el que un identificador de clasificación de este tipo sea idéntico a uno de los almacenados en el ESB de las otras dos clasificaciones. Es por ello que se deberá diferenciar según lo indicado en la transformación de objetos detallada a continuación.
2. Pantallas de presentación de clasificaciones seleccionadas: son todas las pantallas relacionadas con el IU [IU\-GEN\-0120 \- Selección de clasificaciones](file:///C:/pages/viewpage.action?pageId=103904412 "file:///C:/pages/viewpage.action?pageId=103904412") (Apartado "Interfaces de usuario y casos de uso relacionados") y su presentación a modo de ejemplo es la incluida en esa página en la sección "Ejemplo de formulario de listado de clasificaciones asociadas a una entidad". En este caso, los pasos a seguir serán los siguientes:
	1. Si una clasificación es de tipo NABS o UNESCO → a partir de la referencia de último nivel, que es lo que estará asociado con la entidad correspondiente, desde el SGI se llamará a los métodos del ESB para obtener el nombre de los distintos niveles padre partiendo del nivel seleccionado, hasta llegar a poder pintar la jerarquía de clasificación completa. Estas sucesión de llamadas se resolverá dentro del propio ESB, no se llamará al API de UM.
	2. Si una clasificación es de tipo CNAE → a partir de la referencia de último nivel, que es lo que estará asociado con la entidad correspondiente, desde el SGI se llamará a los métodos del ESB para obtener el nombre de los distintos niveles padre partiendo del nivel seleccionado, hasta llegar a poder pintar la jerarquía de clasificación completa. Estas secuencia de llamadas habrá de resolverse llamando sucesivamente al API de UM.

## Transformaciones de objetos

### Objeto Clasificación  UM → Objeto Clasificación  SGI



| **Objeto Clasificación UM** | **Transformación a realizar UM\-ESB\-SGI** | **Objeto Clasificación SGI** |
| --- | --- | --- |
| id: String; codigo: String; nombre: String; padreId: String; | **id  →  "CNAE\_" \+ id** **padreId → "CNAE\_" \+ padreId** Se habrán de rellenar los campos nombre y razonSocial del SGI con el mismo dato, el que venga en el campo nombreRazonSocial del objeto de UM. Del resto de campos, se hará el paso tal cuál de los del mismo nombre de uno a otro objeto. | id: String; codigo: String; nombre: String; padreId: String; |




