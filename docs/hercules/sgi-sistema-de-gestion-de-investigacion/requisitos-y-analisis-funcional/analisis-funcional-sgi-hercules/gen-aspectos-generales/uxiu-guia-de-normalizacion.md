# Hércules : UX/IU \- Guía de normalización



### Introducción

Este documento tiene como objetivo identificar los elementos de interacción normalizados presentes en la plataforma, con una definición de comportamiento a nivel de experiencia de usuario, mostrando las vistas a nivel de wireframe y la propuesta de diseño UI para varios módulos funcionales definidos en el análisis funcional, que cubrirán el estilo visual a aplicar en el SGI del resto de módulos funcionales. La metodología de diseño aplicada para cubrir el estilo visual completo del SGI es el diseño atómico, que se basa en el diseño de cada elemento dentro de un contexto de átomos, moléculas y organismos que representan elementos de interfaz desde sus componentes esenciales hasta la combinación de ellos en componentes más complejos.  

En este documento por tanto se definen los elementos esenciales que cubrirán el comportamiento complejo del SGI desde la perspectiva de la experiencia de usuario y el diseño visual del interfaz.

### Estructura general

El layout general para el área de gestión tiene un comportamiento líquido ocupando toda el área disponible de la pantalla. Se distribuirá en las siguientes áreas de navegación y visualización de información:

![](/attachments/597853565/597869302.png)

*Figura: Vista de wireframe de estructura general de layout*

#### Cabecera

Área siempre visible en pantalla, se divide en tres áreas según su ubicación horizontal:

* Logomarca: Compuesta por el símbolo de Hércules \+ Logo de la universidad. Se ubica siempre a la izquierda de la cabecera.
* Título de módulo: Elemento de rotulado que indica con texto el módulo actual seleccionado.
* Herramientas de usuario: Agrupación de iconos que darán acceso a determinadas funcionalidades ligadas al usuario, por definir, entre ellas ya  modo de propuesta:  

	+ Analítica de datos
	+ Mi perfil
	+ Configuración
	+ Tareas / To Do's
	+ Avisos y alertas
	+ Selector de módulo: Funcionalidad que mostrará un área para la selección del módulo para aquellos roles que dispongan del acceso a varios módulos de gestión. Se presentará de forma diferenciada al resto de elementos iconográficos que representan las herramientas.

El área de cabecera se podrá presentar, a nivel de diseño UI, en dos estilos: claro y oscuro, que permitirá al adaptación cromática de este elemento a la identidad visual de cada universidad, a partir de la elección del color de fondo del elemento por parte del administrador.

#### Área de trabajo

Ocupa el espacio inferior de la pantalla bajo la cabecera y está destinada a mostrar el módulo seleccionado y activo. El área de trabajo podrá ser dividida en función de las necesidades funcionales de cada módulo. Estas divisiones se definen a nivel estructural en:

* Sidenav izquierdo: Menú de navegación que da acceso a las entidades del módulo y permite la navegación entre entidades principales.
* Espacio de trabajo: Espacio central en el que se desarrolla el trabajo de manejo del sistema a través de entidades de formularios, listados y resto de componentes necesarios. En este área de trabajo se identifican como elementos tipificados:
	+ Breadcrumb: Migas de pan que indican la ubicación de la pantalla en relación a la secuencia de navegación del módulo.
	+ Titulo de página / Sección: Elemento de título
	+ Menú lateral: Componente de navegación vertical que permite navegar entre agrupaciones de campos de la entidad, listados o entidades secundarias.
	+ Contenido: Área para la visualización y manejo de formularios, listados y componentes.
	+ Acciones: Espacio para la ubicación de enlaces a acciones principales de la entidad principal seleccionada (Guardar, Cancelar, etc)

Dentro del área de trabajo se identifican varios comportamientos del sistema:

* Sidenav izquierdo colapsable: El Sidenav Izquierdo se podrá colapsar cuando en el Espacio de trabajo se muestre un detalll de entidad o listados no correspondientes a entidades de primer nivel dentro del módulo activo, de forma similar a como se presenta en la siguiente imagen.
* Cambios de contexto: El cambio de contexto aplica cuando un usuario está creando o editando una entidad de contenido (p.ej. Solicitud de evaluación de ética) que pueda presentar un menú de navegación secundario y requiere de la edición de una entidad relacionada (p.ej. Memoria), que pueda también tener una navegación interna a través de un menú secundario o agrupación de campos / listados. En estos casos, en el momento del cambio de edición hacia la entidad relacionada, se realizará un cambio de contexto, esto es, un cambio de entidad que recargará el Espacio de trabajo con los datos y navegación de la nueva entidad, sustituyendo los elementos de BreadCrumb, Titular, Menú lateral y Contenido, e intentando vincular la navegación entre estas entidades relacionadas a través de botones situados bajo el menú lateral.

### Elementos y componentes

#### Cabecera

##### Logomarca

Elemento de identidad situado en la parte izquierda de la cabecera que mostrará el logomarca de Hércules y el logotipo de la universidad.

##### 

  


*Figura: Vista de wireframe de Logomarca*

##### Rótulo principal

Será un elemento de rotulado que identificará el módulo activo.

  


![](/attachments/597853565/597869336.png)

*Figura: Vista de wireframe de rótulo principal*

  


##### Herramientas de usuario

Será un listado horizontal de iconos que dará acceso a diversas herramientas del SGI

  


![](/attachments/597853565/597873940.png)

*Figura: Vista de wireframe de Herramientas de usuario*

  


##### Selector de módulo

Elemento de interacción que se situará en el extremo derecho de la cabecera y que dará acceso a la selección de módulos para aquellos roles de usuario que dispongan de varios módulos de gestión asociados.

  


![](/attachments/597853565/597869356.png)

*Figura: Vista de wireframe de selector de módulo*

  


#### Área de trabajo

##### Sidenav izquierdo

###### Menú

Se contempla un menú vertical que ocupará el sidenav izquierdo. Cada elemento de menú será presentado por un icono, un texto descriptivo de la función/sección y un icono que da acceso a la función de desplegable, mostrando las subfunciones/subsecciones del elemento de menú de primer nivel. El submenú que se despliega tras esta interacción mostrará un listado de subelementos de menú con un texto descriptivo clickable que dará acceso a la subfunción/subsección y un icono de alta de nuevo registro asociado a la entidad relacionada. Las acciones de navegación de este menú cargarán el contenido en el Espacio de trabajo. 

Este menú tendrá un comportamiento colapsable cuando en el Espacio de trabajo se cargue una entidad de contenido desde un listado principal, reduciendo el espacio de visualización del Sidenav izquierdo a la presentación del icono. Existirá un comportamiento hover que desplegará el menú completo superponiendo o empujando a la derecha el Espacio de trabajo.

  


![](/attachments/597853565/597869362.png)

*Figura: Vista de wireframe de sidenav izquierdo*

  


![](/attachments/597853565/597869348.jpg)

*Figura: Vista de wireframe de sidenav izquierdo colapsado*

##### Espacio de trabajo

El Espacio de trabajo se destina a la mostrar la información y a la gestión de entidades a través de listados y formularios. Tentro del área de trabajo se identifican los siguientes componentes:

###### Breadcrumb

Elemento de navegación que permite mostrar al usuario el nivel de profundidad en el que se encuentra dentro de la jerarquía de secciones o pantallas. Cada elemento del breadcrumb será clickable y permitirá navegar a la sección o pantalla correspondiente.

  


![](/attachments/597853565/597873920.png)

*Figura: Vista de wireframe de breadcrumb*

###### Titulares

El titular es el elemento de texto que identifica la sección o pantalla actual en la que se encuentra el usuario. Se corresponde con el último nivel mostrado en el Breadcrumb.

![](/attachments/597853565/597873934.png)

*Figura: Vista de Titular*

  


###### Menú vertical

Bajo el titular puede existir un componente de navegación vertical presentado en formato de menú desplegable. Este componente posibilitará la navegación entre grupos de campos de una entidad, si su número o complejidad así lo requieren, así como entre listados y entidades dependientes o subrogadas a la entidad principal.

Cada elemento de menú incluirá un texto descriptivo y podrá tener un estado (activo / inactivo) en función de si el contenido de esa pestaña está en el foco de interacción del usuario. 

Cada elemento de este menú podrá ser desplegable, con la posibilidad de mostrar, tras interactuar en el área de despliegue, nuevos elemento de menú correspondientes a una segunda agrupación de campos, listados o entidades secundarias vinculadas.

Adicionalmente un elemento de menú podrá mostrar un icono en su parte derecha, que podrá indicar dos estados:

* el estado de **modificación** del contenido de la pestaña y si ese contenido se ha guardado. Es decir, si un usuario modifica el valor de algún campo de un formulario en una pestaña o crea y/o modifica algún registro de una entidad subrogada que se muestra como listado en el contenido de una pestaña, se mostrará este icono de aviso de modificación de datos, para que el usuario sea consciente de que debe realizar un guardado general de la entidad principal.
* el estado de **validación** de los datos, que indicaría si los datos de esta pestaña presentan errores de validación tras el intento de guardado de la entidad

En el área de menú vertical dentro del área de trabajo también se contempla un espacio para la inclusión de enlaces bajo el menú. Este espacio está destinado a incluir aquí enlaces de relación entre la entidad principal sobre la que está trabajando son otras entidades vinculadas. El formato de presentación será diferente para evitar la confusión .

  


![](/attachments/597853565/597869364.png)

*Figura: Vista de wireframe de menú vertical*

###### Listados y tablas

En el espacio de trabajo se visualizarán listados de registros y tablas. Estos listados podrán presentar los siguientes componentes o funciones:

* Búsqueda de registros: Se trata de un componente de búsqueda situado en la parte superior de la tabla y que permitirá realizar un filtrado de registros en el listado o tabla. Presentará una serie de campos y un botón de búsqueda, así como otro para reiniciar la búsqueda y mostrar los datos sin filtrado.
* Encabezados de tabla: Ordenación
* Configurador de visibilidad de columnas: En determinados listados con formatos de tabla permitirá al usuario definir las columnas que desea visualizar así como su orden. Será un botón que abrirá una vista en modal de un formulario de configuración.
* Listado de registros: Listado de elementos con campos organizados en columnas.
* Columna de acciones: La columna derecha del listado se reservará para aglutinar las acciones de edición y borrado de los elementos, a través de iconos. Adicionalmente podrán existir otras acciones, también representadas con iconos.
* Paginación: Bajo el listado/tabla se podrá mostrar un elemento de paginación que mostrará flechas adelante y atrás, así como acceso directo al número de la página del listado de elementos que se desee visualizar.
* Casillas multiselección: Casillas de verificación situadas a la izquierda de cada elemento que permitirán realizar una selección múltiple de elementos de listado. En el encabezado del listado/tabla existirá una casilla de verificación que permitirá seleccionar todos los elementos del listado. Con los elementos seleccionados se podrá realizar una acción simultánea a todos los elementos utilizando el desplegable de acciones.
* Desplegable de acciones: Bajo el listado/tabla se podrá mostrar un desplegable que permitirá seleccionar la acción a realizar a todos los elementos seleccionados con las casillas multiselección.

  


![](/attachments/597853565/597873912.png)

*Figura: Vista de wireframe de listado/tabla con buscador*

  


  


![](/attachments/597853565/597873928.png)

*Figura: Vista de wireframe de listado/tabla con los componentes identificados*

###### Formularios

La edición de la información de las entidades se realizará a través de campos de formulario. Los campos de formulario tendrán una etiqueta (label) que identificará si son de cumplimentación obligatoria u opcional. Los elementos de formulario disponibles serán:

* Campos simple abierto
* Campo desplegable
* Campo de fecha
* Textarea
* Grupo de radiobuttons
* Grupo de casillas de verificación
* Botones de acción

Los campos de formulario se podrán mostrar como desactivados y no posibilitarán la edición.

Los campos mostrarán claramente un indicador visual que identifique un error de validación en el guardado o incumplimiento de formato.

  


![](/attachments/597853565/597873915.png)

*Figura: Vista de wireframe de formulario*

  


##### Área de acciones

Las acciones de creación o guardado sobre la entidad principal se mostrarán en un área de navegación que se situará siempre en la parte inferior de la pantalla, en posición absoluta y que por tanto estará siempre visible independientemente de la extensión del contenido que se esté mostrando en el área de trabajo. Estas acciones se mostrarán a través de botones y enlaces.

En este área también se mostrarán mensajes de aviso ante modificaciones de contenido y validación de los datos en el momento del guardado.

![](/attachments/597853565/597873442.png)

*Figura: Vista de wireframe de área de acciones*

  


##### Avisos y notificaciones

Existirán tres tipos de notificaciones que se mostrarán en el interfaz:

  


* Notificaciones superiores: Actuarán como mensajes emergentes que se mostrarán tras la realización de una determinada acción (guardado, no validación, etc). Podrán incluir un botón de cierre (para acciones que requerirán la acción del usuario) o bien podrán desaparecer automáticamente sin interacción.

  


![](/attachments/597853565/597873440.png)

*Figura: Vista de wireframe de notificaciones superiores*

  


* Modal de notificaciones: Se podrá mostrar como acción de bloqueo ante determinadas interacciones, como el borrado de una entidad. Mostrará un texto informativo acompañado de un botón de Cancelar la acción o bien proseguir confirmando la visualización del aviso.

![](/attachments/597853565/597873919.png)

*Figura: Vista de wireframe de modal de notificaciones*

  


* Tooltip de área de acciones inferior: Se mostrará a la derecha de los botones de acción principal en la **Área de acciones** y mostrará un icono de aviso y un texto informativo.

![](/attachments/597853565/597873917.png)

*Figura: Vista de wireframe de tooltip de área de acciones inferior*

  


### Diseño UI

A continuación se presentan las pantallas de diseño de interfaz validadas que contienen los elementos de interacción anteriormente identificados, pantallas que conformarán el diseño de interfaz del SGI. Las pantallas se presentan agrupadas en función del Área del Investigador y del Gestor, siendo los componentes y comportamientos comunes a ambos entornos, simplemente se han incorporado en esta agrupación para facilitar la identificación, a´si como el código de identificación de cada pantalla con su homónimo en el análisis funcional de interfaz de usuario.

#### Área del investigador

  


##### IU\-ETI\-Módulo de Ética

  


###### IU\-ETI\-0060\-001 Bu?squeda y listado de mis peticiones de evaluacio?n \- Creador

![](/attachments/597853565/597877110.jpg)

*Figura: Vista de diseño UI de módulo de ética, con sidenav lateral izquierdo desplegado, ejemplo de elemento de sidenav lateral colapsable, y listado de resultados, con acción principal de creación en área de acciones inferior.*

###### IU\-ETI\-0060\-003 Alta peticio?n de evaluación

![](/attachments/597853565/597877109.jpg)

*Figura: Vista de diseño UI de solicitud de evaluación de ética, con sidenav laterlal izquierdo colapsado, menú lateral de entidad *incluyendo aviso de error*, área de acciones inferior con aviso de error de validación, presentación de campos de formulario (activos: campo obligatorio, campo de selección, campos de fecha y áreas de texto).***

###### IU\-ETI\-0060\-008A Memorias \- Listado de memorias

![](/attachments/597853565/597877111.jpg)

*Figura: Vista de diseño UI de listado de memorias de una solicitud de evaluación, con botón de añadir nuevo elemento.*

  


###### IU\-ETI\-0060\-008B Memorias \- Alta datos generales

![](/attachments/597853565/597877094.jpg)

*Figura: Vista de diseño UI de creación de nueva memoria vinculada a una solicitud de evaluación, representando un comportamiento de cambio de contexto, en el que se recarga el área de trabajo para visualizar la edición de la nueva entidad.*

  


###### IU\-ETI\-0060\-011 Memorias \- Edición documentación

![](/attachments/597853565/597877096.jpg)

*Figura: Vista de diseño UI de listado de documentos vinculados a una memoria*, con botón de añadir nuevo elemento.**

  


###### IU\-ETI\-0060\-012 Memorias \- Edición documentación \- Aportar documento

![](/attachments/597853565/597877099.jpg)

*Figura: Vista de diseño UI de listado de ventana modal para la inserción de documento vinculado a una memoria.*

  


##### IU\-INV\-Módulo del investigador

  


###### IU\-INV\-0020\- Datos de identificación y contacto

![](/attachments/597853565/597877106.jpg)

*Figura: Vista de diseño UI de CVN, con sidenav lateral colapsado, menú lateral de entidad incluyendo avisos de error y comportamiento desplegable, área de acciones inferior con aviso de error de validación, presentación de campos de formulario (inactivos, activos y campo con error de validación).*

  


###### IU\-INV\-0020\- Datos de identificación y contacto

*![](/attachments/597853565/597877103.jpg)*

*Figura: Vista de diseño UI de CVN, con ejemplo de popup de resumen de últimos avisos en cabecera superior.*

  


###### IU\-AVI\-0020 \-Listado Notificaciones

*![](/attachments/597853565/597877108.jpg)*

**Figura: Vista de diseño UI de sección de notificaciones y avisos, cpm ejemplo de tabla.**

  


  


#### Área del Gestor

  


##### IU\-CSP \- Módulo de convocatorias, ayudas, solicitudes, proyectos y contratos

  


###### IU\-CSP\-0403\-002 \- Bu?squeda y listado de proyectos \- Unidades de gestio?n

##### 

*Figura: Vista de diseño UI de listado de proyectos, con funcionalidad de búsqueda simple.*

  


###### IU\-CSP\-0403\-002 \- Bu?squeda y listado de proyectos \- Unidades de gestio?n (Búsqueda ampliada)

##### 

*Figura: Vista de diseño UI de listado de proyectos, con funcionalidad de búsqueda ampliada.*

###### IU\-CSP\-0401\-025 \- Crear proyecto \- Configuracio?n econo?mica \- Presupuesto

##### 

*Figura: Vista de diseño UI de configuración económica de presupuesto de un proyecto, con menú lateral de entidad con avisos, errores, elementos colapsables y scroll. Vista de tabla con visualización de estado de aviso y error a nivel de elemento de listado de tabla.*

  


###### IU\-CSP\-0401\-025\-002 \- Crear proyecto \- Configuracio?n econo?mica \- Presupuesto \- Crear anualidad \- Gastos

##### 

*Figura: Vista de diseño UI de anualidad vinculada a un presupuesto de proyecto, aplicando el comportamiento de cambio de contexto.*

  


###### IU\-CSP\-0402\-021 \- An?adir partida de gasto a anualidad de configuracio?n econo?mica en proyecto

##### 

*Figura: Vista de diseño UI de ventana modal para la inserción de una nueva partida de gasto en una anualidad.*

  


###### IU\-CSP\-0301\-006 \- Crear solicitud \- Desglose presupuesto

##### 

*Figura: Vista de diseño UI de desglose de presupuesto de un proyecto, con menú lateral de entidad con errores. En el área de trabajo se muestra un ejemplo de combinación de varios elementos en una misma página, separados por un elemento separado, incluyendo tablas y bloques de recuadro resumen.*

#### Otras pantallas comunes

  


###### Pantalla de selección de módulos

##### 

*Figura: Vista de diseño UI de pantalla de selección de módulos que se mostrará al hacer clic en el icono de selección de módulo de la esquina superior derecha.*

  


###### Pantalla de inicio de módulo

##### 

*Figura: Vista de diseño UI de pantalla de inicio a un módulo, incluyendo textos de bienvenida y botones con accesos directos a la creación de entidades principales dentro del módulo.*

  


###### Pantalla de cabecera modo oscuro

##### 

*Figura: Vista de diseño UI de pantalla de ejemplo de modo oscuro para la cabecera, permitiendo la adaptación a la identidad visual de cada universidad si su imagen gráfica se presenta en negativo.*

  


###### Pantalla modal de avisos

##### 

*Figura: Vista de diseño UI de pantalla modal de avisos de guardado y error, así como de todo tipo de mensajes que bloquean la navegación del usuario requiriendo una confirmación.*

###### Pantalla de información de estado del sistema

##### 

*Figura: Vista de diseño UI de pantalla de aviso de realización de tarea por parte del sistema, que bloque la interacción del usuario con el sistema hasta que no finalice la tarea del sistema.*

  


###### Pantalla de tooltip superior

##### 

*Figura: Vista de diseño UI de componente de tooltip superior.*

  


###### Pantalla de componente árbol

##### 

*Figura: Vista de diseño UI de pantalla de de ejemplo de presentación de componente en árbol, con la posibilidad de adaptación de visualización a una o dos columnas, permitiendo en la segunda opción la visualización en la misma página del detalle de la entidad sobre la que se pusla en el icono de previsualización.*

  


###### Pantalla de componente listas asociadas

##### 

*Figura: Vista de diseño UI de pantalla de ejemplo de presentación de componente de listas asociadas, el cual permite seleccionar elementos de la primera lista que se incluirán automáticamente en la lista asociada. Se proponen dos opciones de visualización, en formato vertical u horizontal.*

### Recursos

Iconos \- [https://fonts.google.com/icons?selected\=Material\+Icons](https://fonts.google.com/icons?selected=Material+Icons "https://fonts.google.com/icons?selected=Material+Icons")




