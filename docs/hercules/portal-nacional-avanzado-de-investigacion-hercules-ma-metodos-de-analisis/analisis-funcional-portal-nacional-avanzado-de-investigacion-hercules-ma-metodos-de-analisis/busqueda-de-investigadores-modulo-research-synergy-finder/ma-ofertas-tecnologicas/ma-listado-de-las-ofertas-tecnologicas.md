# Hércules : MA. Listado de las ofertas tecnológicas



Información de desarrollo

[https://github.com/HerculesCRUE/HerculesMA/blob/main/Docs/funcionamiento\-ofertas\-tecnologicas.md](https://github.com/HerculesCRUE/HerculesMA/blob/main/Docs/funcionamiento-ofertas-tecnologicas.md "https://github.com/HerculesCRUE/HerculesMA/blob/main/Docs/funcionamiento-ofertas-tecnologicas.md")

### Listado general de las ofertas tecnológicas

Existe un listado general público de las ofertas tecnológicas, en el cual sólo aparecerán las ofertas tecnológicas validadas. Este listado contará con un buscador y unas facetas para filtrar entre las ofertas. También se podrá ordenar por fecha y por popularidad.

#### Datos del buscador

El listado de las ofertas tecnológicas es una página de búsqueda llamada 'Ofertas Tecnológicas', no tiene vista propia pero tiene una sección en la vista de los resultados del buscador, donde se indica que se debe pintar el título de la publicación, la fecha y la anotación. La vista se encuentra en /Views/Views/CargadorResultados/\_ResultadoRecurso.cshtml

* RdfType \- offer
* Facetas:
	+ Sectores de aplicación
	+ Líneas de investigación
	+ Área de procedencia
	+ Estado de madurez
	+ Grupos de investigación
	+ Personal investigador de la oferta
	+ Fecha de publicación
	+ Descriptores específicos
	+ Ámbito de proyecto
	+ Tipo de proyecto
	+ Áreas temáticas de las publicaciones
* Búsqueda personalizada \- searcherOffers

![](/attachments/598147380/598148009.png)

### Listado de "Mis ofertas tecnológicas"

El listado de mis ofertas tecnológicas muestra las ofertas tecnológicas que has creado tú, o algún miembro de tu grupo si eres investigador principal.

#### Acceso

Existe un listado simple de "Mis ofertas tecnológicas", para acceder a él hay que ir al menú lateral derecho \> "Ofertas tecnológicas" \> "Mis ofertas tecnológicas"

Para acceder a la página de "Mis ofertas tecnológicas" hay que estar logueado y únicamente se mostrarán las ofertas tecnológicas que tú has creado.

#### Buscador

El buscador de ofertas tecnológicas es igual que el listado, pero añaden algunos cambios:

* Añade 2 facetas:
	+ Estado de la oferta
	+ Responsable de la oferta
* Añade el estado de la oferta con un código de color
* Menú de acciones rápidas para modificar el estado, si procede, de la oferta

  


#### Resumen funcional

El listado de "Mis ofertas tecnológicas" mostrará el estado en el que se encuentra la oferta tecnológica. En esta sección también se podrá filtrar por facetas o por búsqueda y se podrán realizar unas acciones sobre tus propias ofertas, ya sea enviar a borrador, editar o eliminar la oferta.

### Gestión de las ofertas tecnológicas (Usuario OTRI)

la gestión de ofertas tecnológicas corresponde a los usuarios otri, si el usuario logueado en la plataforma es identificable como gestor otri, se mostrará en el menú del usuario de la izquierda una nueva entrada de menú que corresponderá a la página de gestión de las ofertas tecnológicas.

La visualización de la gestión de ofertas tecnológicas es equivalente al listado de "mis ofertas tecnológicas", pero con la salvedad de que el listado de opciones de menú es el equivalente de las operaciones de los gestores otri, y un menú de opciones rápidas, en las que para las ofertas tecnológicas cargadas, las que están en revisión, puedes hacer todas las acciones que se consideren en lote:  
![](/attachments/598147380/598147971.png)

  


  


  





