# Hércules : MA. ROs vinculados



  


Información de desarrollo

[https://github.com/HerculesCRUE/HerculesMA/blob/main/Docs/funcionamiento\-de\-los\-ros\-vinculados.md](https://github.com/HerculesCRUE/HerculesMA/blob/main/Docs/funcionamiento-de-los-ros-vinculados.md "https://github.com/HerculesCRUE/HerculesMA/blob/main/Docs/funcionamiento-de-los-ros-vinculados.md")

  


En las siguientes líneas trataremos de explicar adecuadamente el funcionamiento y el diseño funcional de los ROs vinculados, desde los casos de uso a la creación y borrado de los mismos.

### Casos de uso

La utilidad de los ROs vinculados corresponde a la necesidad de poder vincular los diferentes Research Objects y las Publicaciones con otros Research Objects y Publicaciones, relacionándolos entre si indistintamente, como medio para identificar las posibles relaciones de los diferentes ROs que puedan tener un interés para unas terceras personas, o simplemente por un interés propio. Todo esto con el objetivo de poner de relieve, y gráficamente, una interrelación entre distintos ROs para una mejor comprensión de los mismos. Un ejemplo podría ser la necesidad de relacionar un RO de un dataset que corresponde a un usuario, y que se ha obtenido mediante la importación de fuentes externas, y que a su vez se menciona o es parte (e incluso que pueda tener sentido únicamente) dentro de una publicación del mismo investigador.

### Listado de los ROs vinculados

Los ROs vinculados se mostrarán en una pestaña de los datos enriquecidos dentro de las fichas de los mismos, con la peculiaridad de que se mostrarán los ROs que **han sido validados**, y se mostrarán tanto los ROs que se han enlazado desde el propio recurso, como los recursos que han enlazado el actual RO, es decir, será una **relación bidireccional**.

El diseño corresponderá de un buscador de ROs, con el objetivo de no romper la identidad gráfica del sitio.

![](/attachments/598147394/598147900.png)

  


### Vincular un RO a otro RO

Para vincular un RO a otro, es necesario haber iniciado sesión en la plataforma como investigador, y encontrarte en un RO (Publicación o Research Object) en el que eres autor, una vez que te encuentras en esta situación, podrás iniciar el menú del RO la acción de vincular un RO lanzando un popup que mostrará un campo de texto de autocompletado para la búsqueda por texto de los ROs de los que eres autor, **ya estén validados o no**, y que podrás seleccionar para vincularlos al momento. 

![](/attachments/598147394/598147898.png)

Una vez que se ha buscado un RO y se hace click sobre una de las opciones, se añadirá el mismo al final del listado de los ROs vinculados al recurso de la ficha sobre la que te encuentras.

  


Eliminar un vínculo entre ROs

Para la eliminación de un vínculo entre ROs, debes de acceder de nuevo al popup de vincular ROs. Cuando se abre el popup, se muestra un listado de los ROs vinculados al mismo (bidireccionalmente). Además se mostrará icónicamente si el RO se encuentra visible (validado) o no, junto a la opción de eliminarse mediante un icono de "una basura" y en el que haciendo click, el elemento se eliminará y los ROs ya no se encontrarán vinculados.

  


  


  





