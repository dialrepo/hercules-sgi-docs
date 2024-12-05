# Hércules : Análisis funcional de los indicadores



La página de indicadores muestra una serie de distintas graficas que representan datos reales sobre distintas categorías.

  


Información de desarrollo

[https://github.com/HerculesCRUE/HerculesMA/blob/main/Docs/funcionamiento\-de\-los\-indicadores.md](https://github.com/HerculesCRUE/HerculesMA/blob/main/Docs/funcionamiento-de-los-indicadores.md "https://github.com/HerculesCRUE/HerculesMA/blob/main/Docs/funcionamiento-de-los-indicadores.md")

  


## Descripción funcional

La página de indicadores, es una página que muestra los diferentes gráficos ofrecidos por el sitio. La sección de los indicadores personales son configurables, siendo generados mediante unos archivos JSON, que son leídos mediante el servicio [HerculesMA/src/Hercules.MA.GraphicEngine at main · HerculesCRUE/HerculesMA (github.com)](https://github.com/HerculesCRUE/HerculesMA/tree/main/src/Hercules.MA.GraphicEngine "https://github.com/HerculesCRUE/HerculesMA/tree/main/src/Hercules.MA.GraphicEngine")

## Secciones

Las gráficas tienen actualmente 4 secciones, las cuales segmentan las gráficas que se muestran, pero que pueden ser modificados mediante los archivos de configuración

* PUBLICACIONES
* PROYECTOS
* PERSONAL DOCENTE E INVESTIGADOR
* PROPIEDAD INDUSTRIAL E INTELECTUAL

## Las gráficas

Las gráficas se dividen en 3 tipos, son las **gráficas circulares**, las **gráficas de barras** y las **gráficas de nodos**.

### Conjunto de acciones de las gráficas (Común)

Todas las gráficas tienen estas opciones en común, arriba a la derecha aparecen:

* Una lupa
* Menú de opciones

![](/attachments/598147406/598148163.png)

El símbolo de la lupa abre un modal con la gráfica maximizada para mejor visualización de datos. 

Respecto al menú de opciones, las opciones son las siguientes.

![](/attachments/598147406/598148164.png)

* Descargar como JPG: Descarga la gráfica como imagen.
* Descargar como CSV: Descarga los datos de la gráfica.
* Guardar en mi panel: Guarda la gráfica en su estado actual (Incluso si tiene facetas aplicadas) en el panel personal del usuario.

![](/attachments/598147406/598148171.png)

El título de la gráfica representa el título que la gráfica mostrara en el panel de indicadores del usuario.

La anchura representa la anchura de la página que ocupara en el panel de usuario.

Si el usuario no tiene páginas de graficas creadas tendrá la opción de crear página marcada.

#### Leyendas de las gráficas

En todas las gráficas excepto la de nodos aparece una leyenda encima de la gráfica que representa que datos corresponden al color de las barras/líneas/secciones si haces clic en uno de los datasets de la leyenda se oculta ese dataset en la gráfica: 

![](/attachments/598147406/598148170.png)

![](/attachments/598147406/598148173.png)

Si vuelves a hacer clic el dataset se vuelve a mostrar.

### Tipos de gráficas

Como comentábamos, las gráficas se dividen en 3 tipos, son las **gráficas circulares**, las **gráficas de barras** y las **gráficas de nodos**.

#### Grafica circular

La página de indicadores dispone de un tipo de gráficas de tipo circular, esta gráfica suele hacer referencia a un porcentaje de datos. Las opciones de las gráficas son las mismas de las de siempre.

![](/attachments/598147406/598147831.png)

  


#### Gráfica de barras

Nos encontramos con gráficas de barras horizontales y verticales, en éste caso, hay 2 ejes, uno el x y el otro el y, también podemos encontrarnos con que la gráfica contiene 2 representaciones de datos juntas, compartiendo ambos el eje x, pero poseyendo 2 ejes y para los diferentes datos.

![](/attachments/598147406/598147832.png)

##### Acciones de las gráficas de barras

Debido a que las gráficas (las horizontales) a veces ocupan más que el espacio disponible, dispondremos de una barra de scroll horizontal para poder desplazarnos sobre el eje x. Así mismo dispondremos de un botón que hará que si le seleccionamos la gráfica se ajustará al espacio disponible en el eje x.

![](/attachments/598147406/598147829.png)

  


#### **Grafica de Nodos**

Las gráficas de nodos tienen el objeto de reflejar relaciones entre nodos, como su nombre bien indica. Reflejando en algunos casos las siguientes caracterísiticas:

* El peso de los mismos, mediante la diferencia de tamaño de las mismas.
* Las relaciones entre los nodos y la intensidad de las mismas.

##### Acciones de las gráficas de nodos

Esta gráfica tiene 2 botones a la izquierda que sirven para ampliar o disminuir su tamaño.

![](/attachments/598147406/598148169.png)

![](/attachments/598147406/598148168.png)

### Acciones de las gráficas

En algunas de las gráficas nos encontramos con este icono(![](/attachments/598147406/598148172.png)), es un selector de "gráficas", y éste botón corresponde a que se encuentran al menos 2 gráficas agrupadas (que normalmente comparten ciertos datos) y similares. Desde este icono se mostrará las gráficas disponibles para mostrar. 

![](/attachments/598147406/598147830.png)

## Filtros

Las facetas son filtros que se les pueden aplicar a los datos de las gráficas. 

Como todos las gráficas de una página usan los mismos datos cualquier faceta que añadas afectara a todas las gráficas de la página actual y cada página tiene facetas distintas.

Si aplicas una o varias facetas a una página y luego guardas una gráfica en tus indicadores personales, esta grafica tendrá las facetas que tenía la página aplicadas a sí misma en el panel de indicadores personales.

Las facetas se pueden abrir haciendo clic en este icono (![](/attachments/598147406/598148152.png)) que se encuentra a la izquierda de las pestañas de páginas.

![](/attachments/598147406/598148146.png)

Cuando aplicas una o más facetas aparecerán debajo de las pestañas de las páginas.

![](/attachments/598147406/598148145.png)

Si se quiere quitar una faceta se pulsa en al equis (![](/attachments/598147406/598148148.png)) al lado de la faceta, si se quieren quitar todas las facetas se pulsa la equis más a la derecha (![](/attachments/598147406/598148147.png))o se puede recargar la página, aunque recargar la página la cargara en la primera página.

## Descarga (PDF)

A la derecha de las pestañas está siempre este botón, ya sea en el área personal o en la página de indicadores

![](/attachments/598147406/598148151.png)

Descargar genera un PDF con las gráficas.

![](/attachments/598147406/598148157.png)

  


## Indicadores personales

Los indicadores personales permiten guardar las gráficas en un estado determinado gracias a las facetas, se pueden tener varias páginas de indicadores personales, si quieres crear una en la página de indicadores al guardar una gráfica selecciona la opción de página nueva e introduce el título de la nueva página.

![](/attachments/598147406/598148159.png)

Las gráficas son más configurables en esta página, en el botón de opciones de las gráficas te da la opción de editarla y borrarla.

![](/attachments/598147406/598148158.png)

  


### Editar y ordenar gráfica

Al pinchar en esta opción se abrirá un modal con la configuración posible.

![](/attachments/598147406/598148161.png)

Anchura de la gráfica: Establece el ancho que ocupa la gráfica.

Orden de la gráfica: Representa el orden en el contexto de las otras graficas de la página.

Escalas: esta opción solo aparece si la gráfica tiene ejes, si tiene 1 aparece solo la opción para cambiar la escala del eje primario. Establece la escala más alta a la que llega la gráfica, lo cual es útil cuando se quieren comparar dos graficas.

Representación de escalas:

Por defecto:

![](/attachments/598147406/598148160.png)

Escala principal 500, escala secundaria 2000:

![](/attachments/598147406/598148155.png)

## Opciones de la pagina

A la derecha de las pestañas de páginas aparecen 3 opciones

![](/attachments/598147406/598148154.png)

Respecto al botón de "Descargar" ya hemos hablado de él.

### Editar página

Editar página ofrece estas opciones:

![](/attachments/598147406/598148156.png)

El orden de la página es en el contexto de las otras páginas en las pestañas de páginas.

### Borrar página

Si se desea borrar una página se puede hacer pulsando el botón de borrar página.

![](/attachments/598147406/598148162.png)

  


  





