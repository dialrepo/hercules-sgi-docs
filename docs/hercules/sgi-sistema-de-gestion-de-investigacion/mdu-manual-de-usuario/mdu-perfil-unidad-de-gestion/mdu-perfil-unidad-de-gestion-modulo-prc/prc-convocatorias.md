# Hércules : PRC\-Convocatorias



## Convocatorias

El personal de gestión deberá de ir creando cada año la convocatoria de baremación de grupos, para configurar los baremos/criterios de evaluación que se van a aplicar a los items de producción científica y para especificar los puntos de cada uno de ellos.

Para facilitar la tarea de esta configuración se podrá clonar la convocatoria del año anterior para partir de dichos datos y cambiar únicamente aquellos baremos que cambien de un año a otro.

La opción de menú "Convocatorias" muestra en la parte superior de la pantalla el buscador y en la parte inferior el resultado de la búsqueda sin aplicar ningún filtro tal como muestra la siguiente imagen.

![](/attachments/597853743/597878494.png)  


Los campos disponibles en el formulario de la búsqueda son:

* **Nombre**: nombre o descripción corta de la convocatoria de baremación.
* **Año:** año de la convocatoria.
* **Activo:** el campo "activo" indica si la convocatoria ha sido eliminada por el personal de gestión previamente o no. Si una convocatoria tiene el campo activo a "No" es que ha sido eliminada del SGI, es un borrado lógico, por si el personal de gestión  quisiera recuperarla, pulsando el icono de "Recuperar". Es un desplegable en el que se puede seleccionar entra las siguientes opciones:
	+ Sí
	+ No
	+ Todos

Tras pulsar el botón “Buscar”, se muestra el listado de convocatorias de baremación que cumplan con los parámetros introducidos en el formulario.

Al igual que el resto de listados de la aplicación, el resultado de la búsqueda es un listado compuesto por una tabla paginada, con varias columnas de información y una última columna de acciones.

Desde este listado el personal de gestión puede realizar las siguientes acciones:

![](/attachments/597853743/597878484.png)  


1. **Añadir convocatoria**: este botón se encuentra en la parte inferior de la pantalla en el "Área de acciones", permite al personal de gestión crear una nueva convocatoria de baremación para un año.
2. **Editar**: este botón representado por el icono ![](/attachments/597853743/597878508.png) y situado en la última columna "Acciones" de la tabla, permite al personal de gestión modificar los datos de una convocatoria de baremación. Sólo se puede editar una convocatoria de baremación sino se ha lanzado el proceso de baremación y si la convocatoria esta activa (no se ha eliminado).
3. **Eliminar**: este botón representado por el icono ![](/attachments/597853743/597878502.png)y situado en la última columna "Acciones" de la tabla, permite al personal de gestión eliminar la convocatoria de baremación. Sólo se puede eliminar una convocatoria de baremación sino se ha lanzado el proceso de baremación y si la convocatoria esta activa (no se ha eliminado).
4. **Clonar**: este botón representado por el icono ![](/attachments/597853743/597878052.png)y situado en la última columna "Acciones" de la tabla, permite al personal de gestión duplicar la convocatoria copiando todos los datos de la convocatoria seleccionada a una nueva convocatoria. Esta acción sólo estará disponible para las convocatorias activas, es decir, que no han sido eliminadas.
5. **Lanzar proceso baremación**: este botón representado por el icono ![](/attachments/597853743/597878486.png)y situado en la última columna "Acciones" de la tabla, permite al personal de gestión lanzar el proceso de baremación. Sólo se puede lanzar el proceso si  se cumplen las siguientes condiciones:  

	* campo "Activo" con valor "Sí" (no se ha eliminado la convocatoria)
	* campo "Año" igual al año actual (sólo se puede lanzar el proceso de baremación para la convocatoria actual)
	* no se ha lanzado el proceso de baremación o si se ha lanzado ya ha terminado
6. **Consultar:** este botón representado por el icono ![](/attachments/597853743/597878501.png) y situado en la última columna "Acciones" de la tabla, permite al personal de gestión consultar los datos de una convocatoria de baremación. Una vez lanzado el proceso de baremación únicamente se pueden consultar los datos de la convocatoria.
7. **Recuperar:** este botón representado por el icono ![](/attachments/597853743/597878488.png) y situado en la última columna "Acciones" de la tabla, permite al personal de gestión recuperar la convocatoria, es decir, poner el campo "Activo" de la convocatoria con valor "Sí". Sólo se puede recuperar las convocatorias que tienen el valor "No" en el campo "Activo", es decir, aquellas que han sido previamente eliminadas por el personal de gestión. Si ya existe una convocatoria de baremación activa para el mismo año que la convocatoria que se desea recuperar se informará del error. No pueden existir dos convocatorias activas para el mismo año.

A continuación se detalla el significado de cada una de las columnas de información del listado:

* **Nombre:** nombre o descripción corta de la convocatoria de baremación.
* **Año**: año de la convocatoria. Existirá únicamente una convocatoria de baremación por año.
* **Importe**: cantidad de dinero disponible para el reparto de la baremación entre los grupos de investigación.
* **Activo:** indicador del borrado lógico de la convocatoria.
* **Fecha baremación:** en caso de que ya se haya lanzado el proceso de baremación, fecha en la que se lanzó.

### Añadir convocatoria

Tras pulsar este botón "AÑADIR CONVOCATORIA" se carga en pantalla el formulario de "Datos generales" de una convocatoria de baremación.

Para la creación de una convocatoria de baremación únicamente es obligatorio completar el bloque de "Datos generales" (el resto de bloques se mostrarán una vez creada).

![](/attachments/597853743/597878519.png)  


El formulario de **Datos generales** contiene los datos de información básica de una convocatoria de baremación. A continuación se describe cada uno de los campos solicitados en este formulario:

* **Nombre**: campo obligatorio donde se debe de introducir el nombre por el que se conoce a la convocatoria de baremación.
* **Año**:  campo obligatorio donde se debe de introducir el año al que pertenece la convocatoria de baremación de grupos. Únicamente se puede crear una convocatoria por año. Se comprobará que no exista una convocatoria creada para ese mismo año. Se debe de introducir un número entero, por ejemplo: 2022\.
* **Años que son baremables**: campo obligatorio donde se debe de introducir el número de años que se van a tener en cuenta para el proceso de baremación. Se debe de introducir un número entero, por ejemplo: 3\.
* **Último año a considera**: campo obligatorio donde se debe de introducir el último año que se va a baremar. A partir de este año se restan el número de años baremables mas uno, para saber en que año empieza la baremación. Se debe de introducir un número entero, por ejemplo: 2021\.

Por ejemplo, si en el campo "Años que son baremables" se informa con un 3 y el campo "Último año a considerar" se pone el año 2021, los años que se van a baremar son los años 2019, 2020 y 2021  (2021 \-3 \+1 \= 2019\).

* **Importe total**: campo obligatorio donde se debe de introducir la cantidad de dinero disponible para el reparto de la baremación entre los grupos de investigación.
* **Partida presupuestaria**: campo opcional donde se puede introducir el código de la partida presupuestaria de donde salen los fondos para realizar el reparto entre los grupos de investigación.

Una vez introducidos todos los campos obligatorios del formulario de "Datos generales" se puede ver en la siguiente imagen que se activa el botón "GUARDAR CONVOCATORIA" y se muestra el icono del signo de admiración en la opción del menú de "Datos generales" y en la parte de abajo de la pantalla a lado del botón "GUARDAR CONVOCATORIA". Este icono indica que se han introducido cambios en el formulario (se han informado los campos) pero no se ha dado a "GUARDAR CONVOCATORIA".

![](/attachments/597853743/597878487.png)  


Si se pulsa el botón "GUARDAR CONVOCATORIA" se crea la convocatoria de baremación con los datos generales de la convocatoria.

Se muestra un mensaje de que la convocatoria de baremación se ha creado correctamente igual que el de la siguiente imagen.

![](/attachments/597853743/597878518.png)  


Una vez creada la convocatoria te lleva a la edición de la convocatoria por si se quisiera seguir introduciendo el resto de bloques de información de una convocatoria:

* **Baremos y puntuaciones**: árbol con los posibles criterios de baremación que se pueden seleccionar para la convocatoria. El personal de gestión  podrá marcar aquellos que quiere que se tengan en cuenta en la convocatoria que esta editando. Por defecto todos los baremos estarán desactivados (cuando se trata de la funcionalidad de "Nueva convocatoria", si es una clonación tomarán los valores de la convocatoria que se esta clonando). Ver apartado [Baremos y puntuaciones](#PRCConvocatorias-Baremosypuntuaciones "#PRCConvocatorias-Baremosypuntuaciones") para mas detalle.
* **Moduladores y rangos**: pantalla con los puntos de los moduladores y de los rangos usados por los distintos baremos. Ver apartado [Moduladores y rangos](#PRCConvocatorias-Moduladoresyrangos "#PRCConvocatorias-Moduladoresyrangos") para mas detalle.

### Editar convocatoria

La edición de una convocatoria de baremación (el botón del icono del lápiz) abre el formulario de "Datos generales" con los mismos campos que el formulario de creación para que el personal de gestión pueda modificar los datos.

Sólo se puede editar una convocatoria de baremación **sino se ha lanzado el proceso de baremación y si la convocatoria esta activa (no se ha eliminado)**.

La edición de una convocatoria de baremación esta formada por los siguientes bloques de información:

![](/attachments/597853743/597878521.png)

  


1. **Datos generales:** conjunto de datos de información general sobre la convocatoria de baremación (ya informados durante la creación de la convocatoria).
2. **Baremos y puntuaciones**: árbol con los criterios de baremación que se pueden seleccionar para la convocatoria. El personal de gestión  podrá marcar aquellos que quiere que se tengan en cuenta en la convocatoria que esta editando.
3. **Moduladores y rangos**: pantalla con los puntos de los moduladores y de los rangos usados por los distintos baremos.

#### Datos generales

Formulario con los datos de información básica de una convocatoria de baremación.

Los datos del formulario son los mismos que los datos pedidos durante la creación de la convocatoria.

![](/attachments/597853743/597878520.png)

Una vez introducidos los datos que se desean modificar del formulario de "Datos generales" se puede ver en la siguiente imagen que se activa el botón "GUARDAR CONVOCATORIA" y se muestra el icono del signo de admiración en la opción del menú de "Datos generales" y en la parte de abajo de la pantalla a lado del botón "GUARDAR CONVOCATORIA". Este icono indica que se han introducido cambios en el formulario pero no se ha dado a "GUARDAR CONVOCATORIA".

![](/attachments/597853743/597878515.png)

Si se pulsa el botón "GUARDAR CONVOCATORIA" se modifica la convocatoria de reunión con los nuevos datos introducidos o con los cambios realizados en cada una de las pantallas (Datos generales, Baremos y puntuaciones y Moduladores y rangos).

Se muestra un mensaje de que la convocatoria de baremación se ha modificado correctamente igual que el de la siguiente imagen.

![](/attachments/597853743/597878518.png)

#### Baremos y puntuaciones

Formulario que muestra el árbol con los criterios de baremación que se pueden seleccionar para la convocatoria. El personal de gestión  podrá marcar aquellos que quiere que se tengan en cuenta en la convocatoria que esta editando.

##### Edición de convocatoria sin datos de baremos

En el caso de que se haya creado la convocatoria a través el botón "Nueva convocatoria" y sea la primera vez que se esta editando la convocatoria (no se han introducido todavía ningún baremo) se muestra el árbol de baremos como el mostrado en la siguiente imagen:

![](/attachments/597853743/597878517.png)

Se muestran los baremos de primer nivel (Sexenios, Aportación costes indirectos y Producción científica) sin marcar y con el icono ![](/attachments/597853743/597878020.png) .

![](/attachments/597853743/597878516.png)

Si se pulsa sobre la acción de "Añadir baremo" ![](/attachments/597853743/597878020.png) se muestra a la derecha del árbol un formulario con los datos necesarios para poder añadir el baremo.

![](/attachments/597853743/597878510.png)

En este caso al tratarse de un baremo de primer nivel (Sexenio) y sin nodos hijos se pedirá los siguientes datos:

* **Peso**: peso sobre 100 del baremo respecto a la cuantía total de la subvención. Sólo se piden para los baremos que son nodos de primer nivel, es decir, Sexenios, Aportación costes indirectos y Producción científica. La suma del Peso de los tres nodos (si están marcados los tres o de los que estén marcados) debe de sumar 100, sino no le dejarán guardar los datos.
* **Puntos**: puntos que se le dará al item si cumple el baremo seleccionado. Sólo se pide si el nodo seleccionado es un nodo hoja, no tiene nodos hijos.

En el caso del baremo "Aportación costes indirectos" los datos pedidos son:

* **Peso**: peso sobre 100 del baremo respecto a la cuantía total de la subvención. Sólo se piden para los baremos que son nodos de primer nivel, es decir, Sexenios, Aportación costes indirectos y Producción científica. La suma del Peso de los tres nodos (si están marcados los tres o de los que estén marcados) debe de sumar 100, sino no le dejarán guardar los datos.
* **Tipo de cuantía:** indica la forma de puntuar los costes indirectos. Es un desplegable con dos valores:  

	+ Por puntos: si se selecciona este valor se mostrará un nuevo campo obligatorio para introducir el importe por el que se daría un punto al proyecto.
	+ Por rango: se usarán los rangos  de importes introducidos en la pantalla de "Moduladores y rangos"
* **Cuantía por punto**: sólo si en "Tipo de cuantía" se ha seleccionado "Por puntos". Indica el importe de la cuantía por el que se dará un punto al proyecto. Es decir si un proyecto tiene una cuantía de 30000 y en este campo se pone el valor 1000\. Al proyecto en este baremo se le dará la puntuación de 30\.

![](/attachments/597853743/597878018.png)

En el caso del baremo "Producción científica" el único dato pedido es el "**Peso**" y se necesitará que al menos se añada un nodo hijo, es decir, se añada un baremo de uno de los nodos de "Libros", "Artículos", "Comités editoriales", "Trabajos presentados en congresos", "Dirección de tesis/TFM/TFG", "Proyectos de investigación", "Contratos", "Obras artísticas dirigidas", "Organización de actividades de I\+D\+i" o "Invenciones".

![](/attachments/597853743/597878023.png)

Una vez introducidos los datos obligatorios del formulario se debe de pulsar el botón "Aceptar" para guardar los datos del baremo  o bien "Cancelar" sino se desea seleccionar el baremo dentro de la convocatoria.

![](/attachments/597853743/597878509.png)

Al pulsar el botón "Aceptar" la ventana de la derecha se cierra y se queda marcado el baremo. Se puede ver en la siguiente imagen que se activa el botón "GUARDAR CONVOCATORIA" y se muestra el icono del signo de admiración en la opción del menú de "Baremos y puntuaciones" y en la parte de abajo de la pantalla a lado del botón "GUARDAR CONVOCATORIA". Este icono indica que se han introducido cambios en el formulario pero no se ha dado a "GUARDAR CONVOCATORIA".

![](/attachments/597853743/597878506.png)

Se tendrá que ir dando al icono de "Añadir baremo" ![](/attachments/597853743/597878020.png)  e introduciendo los datos pedidos (puntos y peso si aplica) para el resto de baremos del árbol que se quieran añadir a la convocatoria. Según se vayan añadiendo baremos a la convocatoria el icono de "Añadir baremo" desaparecerá para ese baremo y se mostrará el icono de "Editar baremo" ![](/attachments/597853743/597878030.png) para modificar los datos en caso necesario.

  


En el caso de que se hayan añadido los baremos de "Sexenios",  "Aportación costes indirectos" y  "Producción científica" se muestra el signo de que el formulario presenta errores porque en el caso de "Producción científica" al ser un nodo que no es hoja (tiene hijos) es necesario añadir baremos hijos.

![](/attachments/597853743/597878505.png)

Se tendrá que ir desplegando los nodos a través del icono de la flecha ![](/attachments/597853743/597878507.png) para mostrar sus nodos hijos hasta llegar a un nodo que se pueda añadir.

![](/attachments/597853743/597878022.png)

  


Hay nodos del árbol que no tienen el icono de "Añadir baremos" porque únicamente es un agrupador de baremos, por ejemplo "**Libros**", se tendrá que abrir el nodo "Libros" a través de la flecha ![](/attachments/597853743/597878507.png) y añadir uno de sus baremos. Si se añade un baremo hijo se marcará automáticamente el baremo padre. Se tendrán que ir añadiendo los baremos hijos de los nodos de "Libros", "Artículos", "Comités editoriales", "Trabajos presentados en congresos", "Dirección de tesis/TFM/TFG", "Proyectos de investigación", "Contratos", "Obras artísticas dirigidas", "Organización de actividades de I\+D\+i" e "Invenciones".

![](/attachments/597853743/597878025.png)

Una vez añadidos todos los baremos deseados se debe de dar al botón "GUARDAR CONVOCATORIA" para guardar los baremo y sus puntuaciones.

Se muestra un mensaje de que la convocatoria de baremación se ha modificado correctamente igual que el de la siguiente imagen.

![](/attachments/597853743/597878518.png)

##### Edición de convocatoria con datos de baremos

En el caso de que se haya creado la convocatoria a través de la funcionalidad de "Clonar" o no sea la primera vez que se esta editando la convocatoria (ya tiene todos los baremos introducidos) se muestra el árbol de baremos como el mostrado en la siguiente imagen:

![](/attachments/597853743/597878032.png)

Las únicas acciones que puede realizar el personal de gestión es:

* **Editar baremo**: este botón representado por el icono ![](/attachments/597853743/597878030.png)  y situado a lado del nombre del baremo, permite al personal de gestión modificar los datos del baremo. Se abrirá a la derecha del árbol un formulario con los datos necesarios para poder añadir el baremo:  

	+ **Peso**: peso sobre 100 del baremo respecto a la cuantía total de la subvención. Sólo se piden para los baremos que son nodos de primer nivel, es decir, Sexenios, Aportación costes indirectos y Producción científica. La suma del Peso de los tres nodos (si están marcados los tres o de los que estén marcados) debe de sumar 100, sino no le dejarán guardar los datos.
	+ **Puntos**: puntos que se le dará al item si cumple el baremo seleccionado. Sólo se pide si el nodo seleccionado es un nodo hoja, no tiene nodos hijos.
	+ **Tipo de cuantía:** solo para el baremo "Aportación costes indirecto". Indica la forma de puntuar los costes indirectos. Es un desplegable con dos valores:  
	
		- Por puntos: si se selecciona este valor se mostrará un nuevo campo obligatorio para introducir el importe por el que se daría un punto al proyecto.
		- Por rango: se usarán los rangos  de importes introducidos en la pantalla de "Moduladores y rangos"
	+ **Cuantía por punto**: solo para el baremo "Aportación costes indirecto" y si en "Tipo de cuantía" se ha seleccionado "Por puntos". Indica el importe de la cuantía por el que se dará un punto al proyecto. Es decir si un proyecto tiene una cuantía de 30000 y en este campo se pone el valor 1000\. Al proyecto en este baremo se le dará la puntuación de 30\.
* **Desmarcar un baremo**: pinchar sobre el nombre del baremo o sobre el check de delante del nombre del baremo para desmarcar el baremo. Si se desmarca un baremo no se tendrá en cuenta en el algoritmo de baremación, no se darán los puntos de dicho baremo.

Una vez modificados los baremos deseados o la desactivación de ellos, se activa el botón "GUARDAR CONVOCATORIA" y se muestra el icono del signo de admiración en la opción del menú de "Baremos y puntuaciones" y en la parte de abajo de la pantalla a lado del botón "GUARDAR CONVOCATORIA". Este icono indica que se han introducido cambios en el formulario pero no se ha dado a "GUARDAR CONVOCATORIA".

![](/attachments/597853743/597878012.png)

Una vez modificados o desmarcados todos los baremos deseados se debe de dar al botón "GUARDAR CONVOCATORIA" para guardar los baremos y sus puntuaciones.

Se muestra un mensaje de que la convocatoria de baremación se ha modificado correctamente igual que el de la siguiente imagen.

![](/attachments/597853743/597878518.png)

#### Moduladores y rangos

Pantalla con los puntos de los moduladores y de los rangos usados por los distintos baremos. Esta formada por los siguientes bloques de información:

![](/attachments/597853743/597878016.png)

1. **Modulador número de autores por área**: se debe de indicar por cada área de conocimiento de primer nivel (o rama de conocimiento) de la Universidad el número de puntos que se le dará al artículo  o al libro si el número de autores es 1, o entre 2 y 3, o entre 4 y 5 o entre 6 y 7 u 8 o más. Este modulador se aplicará en el algoritmo de baremación si la convocatoria tiene marcado los baremos "Número de autores" en "Libros" y en "Artículos".
2. **Modulador áreas:** se debe de indicar por cada área de conocimiento de primer nivel (o rama de conocimiento) de la Universidad el número de puntos que se le dará al artículo si pertenece al área indicada. Este modulador se aplicará en el algoritmo de baremación si la convocatoria tiene marcado el baremo "Número de áreas" en "Artículos".
3. **Rangos cuantía costes indirectos:** sólo se mostrará este bloque si el baremo "Aportación costes indirectos" esta seleccionado y en el campo "Tipo de cuantía" se ha elegido la opción "Por rango". Se indican los puntos a aplicar por cada rango de la cuantía de costes indirectos. Este rango se aplicará en el algoritmo de baremación si la convocatoria tiene marcado el baremo "Aportación costes indirectos" y en el campo "Tipo de cuantía" tiene el valor "Por rango".
4. **Rangos cuantía contratos:** indican los puntos a aplicar por cada rango de la cuantía de los contratos. Este rango se aplicará en el algoritmo de baremación si la convocatoria tiene marcado el baremo "Cuantía" en "Contratos".
5. **Rango ingresos licencias de explotación:** indican los puntos a aplicar por cada rango de la suma de los ingresos de las licencias de explotación de las invenciones. Este rango se aplicará en el algoritmo de baremación si la convocatoria tiene marcado el baremo "Licencia explotación" en "Invenciones".

Desde esta pantalla el personal de gestión puede realizar las siguientes acciones:

* **Añadir rango:** este botón se encuentra en la parte inferior del listado de rangos de cuantía costes indirectos o en el listado de cuantía contratos o en el listado de ingresos licencias de explotación, permite al personal de gestión crear un nuevo rango. En el caso de que ya exista un rango de tipo "Final" el botón estará desactivado porque no se permite añadir un nuevo rango una vez especificado el rango final. Si se quiere crear un nuevo rango habría que eliminar el rango de tipo "Final" y ya se activará el botón.
* **Modificar rango**: este botón representado por el icono ![](/attachments/597853743/597878508.png) y situado en la última columna "Acciones" de las tablas de rangos, permite al personal de gestión modificar los puntos indicados en el rango. Únicamente se permite modificar el campo "Puntos". Si se desea modificar el inicio o fin del rango se tendrá que eliminar el rango y volver a crear uno nuevo.
* **Eliminar rango**: este botón representado por el icono ![](/attachments/597853743/597878502.png)y situado en la última columna "Acciones" de las tablas de rangos, permite al personal de gestión eliminar uno de los rangos. Solo se podrá eliminar el último rango por orden de secuencia (sea final o no), por lo que si el usuario intenta eliminar otro rango que no sea ese, se le informará con un mensaje de error como el mostrado en la imagen.

![](/attachments/597853743/597878000.png)

Una vez modificados los moduladores o rangos, se activa el botón "GUARDAR CONVOCATORIA" y se muestra el icono del signo de admiración en la opción del menú de "Moduladores y rangos" y en la parte de abajo de la pantalla a lado del botón "GUARDAR CONVOCATORIA". Este icono indica que se han introducido cambios en el formulario pero no se ha dado a "GUARDAR CONVOCATORIA".

![](/attachments/597853743/597878002.png)

Una vez modificados o desmarcados todos los baremos deseados se debe de dar al botón "GUARDAR CONVOCATORIA" para guardar los baremos y sus puntuaciones.

Se muestra un mensaje de que la convocatoria de baremación se ha modificado correctamente igual que el de la siguiente imagen.

![](/attachments/597853743/597878518.png)

##### Añadir rango

Al pulsar sobre el botón "**Añadir rango**" se abrirá un formulario como el mostrado en la siguiente imagen.

![](/attachments/597853743/597878014.png)

A continuación se describe cada uno de los campos solicitados en este formulario:

* **Tipo**: campo obligatorio donde se debe de indicar la temporalidad del rango, se debe de seleccionar uno de los tres valores:
	+ Inicial: si se selecciona, el campo "Rango desde" se mostrará en modo de solo lectura y tomará el valor 0\. El campo "Rango hasta" deberá de introducirlo el personal de gestión.
	+ Intermedio: si se selecciona, estarán visibles  los campos "Rango desde" y "Rango hasta". El campo "Rango desde" estará en modo de solo lectura mostrando el valor del campo "Rango hasta" del rango anterior  \+ 1\. El campo "Rango hasta" deberá de introducirlo el personal de gestión.
	+ Final: si se selecciona, únicamente será visible el campo "Rango desde" pero será de solo lectura, mostrando el valor del campo "Rango hasta" del rango anterior \+ 1 (en caso de que no exista ningún rango creado, se pondrá el valor 0\).
* **Rango desde**: campo obligatorio donde se debe de indicar la cifra que marca el inicio del rango de. Si "Tipo de temporalidad" es:
	+ Inicial:  el campo "Rango desde" se mostrará en modo de solo lectura y tomará el valor 0\.
	+ Intermedio: el campo "Rango desde" se mostrará en modo de solo lectura mostrando el valor del campo "Rango hasta" del rango anterior  \+ 1\.
	+ Final: el campo "Rango desde" se mostrará en modo de solo lectura mostrando el valor del campo "Rango hasta" del rango anterior  \+ 1 (en caso de que no exista ningún rango creado, se pondrá el valor 0\).
* **Rango hasta**: campo obligatorio donde se debe de indicar la cifra que marca el final del rango de. Si "Tipo de temporalidad" es:
	+ Inicial:  el campo "Rango hasta" estará habilitado para que el personal de gestión pueda introducir un valor.
	+ Intermedio: el campo "Rango hasta" estará habilitado para que el personal de gestión pueda introducir un valor.
	+ Final: el campo "Rango hasta" estará deshabilitado.
* **Puntos**: campo obligatorio donde se debe de introducir los puntos que se darían en el caso de que se cumpla el baremo y la cuantía este en el rango indicado entre "Rango desde" y "Rango hasta"

Se realizarán las siguientes comprobaciones sobre los rangos introducidos:

* No se podrá crear un rango de tipo "INTERMEDIO" sino existe el rango de tipo "INICIAL"
* Únicamente puede existir un rango de "tipo temporalidad" con valor "INICIAL
* Únicamente puede existir un rango de "tipo temporalidad" con valor "FINAL"
* No se podrá crear un rango que provoque saltos ni intersecciones con los rangos existentes, esto es, un rango ha de comenzar donde finalice el inmediatamente anterior \+ 1, por tanto, por extensión, los rangos se han de introducir de manera secuencial y ordenada de menor a mayor importe.

Al pulsar sobre el botón "Añadir" el rango se añadirá al listado de rangos mostrando el icono de la admiración en el menú de "Moduladores y rangos" y el mensaje de información en la parte de abajo de la pantalla en la zona del "Área de acciones" para recordar al personal de gestión que debe de pulsar el botón "GUARDAR CONVOCATORIA" para que los cambios realizados (en este caso un nuevo rango) se consoliden.

![](/attachments/597853743/597878006.png)

Si se pulsa al botón "GUARDAR CONVOCATORIA" se modifica la convocatoria con los cambios realizados en la pantalla de "Moduladores y rangos".

Se muestra un mensaje de que la convocatoria de baremación se ha modificado correctamente igual que el de la siguiente imagen.

![](/attachments/597853743/597878518.png)

### Eliminar convocatoria

Sólo se puede eliminar una convocatoria de baremación **sino se ha lanzado el proceso de baremación y si la convocatoria esta activa** (no se ha eliminado previamente).

Si se pulsa el icono "Eliminar" ![](/attachments/597853743/597878502.png) situado en la última columna "Acciones" de la tabla de resultados de la búsqueda de convocatorias de baremación, se muestra una ventana emergente de confirmación donde se le pregunta al personal de gestión si realmente desea eliminar la convocatoria de baremación.

![](/attachments/597853743/597878049.png)

Si se pulsa el botón "Aceptar" de la ventana emergente se realiza el borrado lógico de la convocatoria de baremación (se cambia el campo "activo" al valor "No"). Si se pulsa el botón de "Cancelar" de la ventana emergente se volverá a activar la pantalla del listado de Convocatorias de baremación sin eliminar la convocatoria.

### Clonar convocatoria

La clonación de una convocatoria realizará una copia exacta de la convocatoria origen (se copiaran los datos generales de la convocatoria, los baremos juntos a sus puntuaciones y la configuración de los moduladores y rangos).

Esta acción **sólo estará disponible para las convocatorias activas**, es decir, que no han sido eliminadas.

Si se pulsa el icono "Clonar" ![](/attachments/597853743/597878052.png) situado en la última columna "Acciones" de la tabla de resultados de la búsqueda de convocatorias de baremación, se muestra una ventana con los "Datos generales" de la nueva convocatoria creada y un mensaje informando que se ha creado correctamente la nueva convocatoria.

La nueva convocatoria es exactamente igual a la que se clona excepto el campo "Año" que le asigna un año posterior a la convocatoria que se esta duplicando y en el campo "Nombre" se le introduce la palabra "Clonada \- " delante del nombre. El resto de campos de "Datos generales", de "Baremos y puntuaciones" y de "Moduladores y rangos" serán exactos a la convocatoria clonada.

![](/attachments/597853743/597878003.png)

El personal de gestión podrá modificar cualquiera de los datos de las pantallas de "Datos generales", "Baremos y puntuaciones" y "Moduladores y rangos" y pulsar el botón "GUARDAR CONVOCATORIA" para guardar los datos modificados sobre la convocatoria clonada.

### Lanzar proceso baremación

Sólo se puede lanzar el proceso de baremación si  se cumplen las siguientes condiciones:

* campo "Activo" con valor "Sí" (no se ha eliminado la convocatoria)
* campo "Año" igual al año actual (sólo se puede lanzar el proceso de baremación para la convocatoria actual)
* no se ha lanzado el proceso de baremación previamente o si se ha lanzado ya ha terminado

Si se pulsa el icono "Lanzar proceso de baremación" ![](/attachments/597853743/597878502.png) situado en la última columna "Acciones" de la tabla de resultados de la búsqueda de convocatorias de baremación, se muestra una ventana emergente de confirmación donde se le pregunta al personal de gestión si realmente desea lanzar el proceso de baremación.

![](/attachments/597853743/597878055.png)

Si se pulsa el botón "Aceptar" de la ventana emergente se lanza el proceso, se ejecutará en segundo plano debido al tiempo que se tarda en realizar todas las operaciones y consultas. Una vez finalizado el proceso se enviará un comunicado al personal de gestión para informarle de que ya se ha finalizado el reparto de la subvención y que puede ir a consultarlo a la opción del menú "Informes". Se informará el campo "Fecha baremación" una vez que este hecho el reparto. Si ya tiene la fecha de baremación informada es que ya se ha lanzado al menos una vez, se dejará volver a lanzarlo, pero se borrarán los datos y los informes anteriores. Para la misma convocatoria (para el mismo año) no hay histórico, sino que se borran los datos anteriores.

### Consultar convocatoria

Esta acción estará disponible para aquellas convocatorias de baremación en las que se haya lanzado el proyecto de baremación.

Si se pulsa el icono "Ver"  icono ![](/attachments/597853743/597878501.png) situado en la última columna "Acciones" de la tabla de resultados de la búsqueda de convocatorias de baremación, se muestra el formulario de "Datos generales" de una convocatoria de baremación en modo consulta.

La consulta de una convocatoria de baremación esta formada por los siguientes bloques de información:

![](/attachments/597853743/597878043.png)

1. **Datos generales:** conjunto de datos de información general sobre la convocatoria de baremación.
2. **Baremos y puntuaciones**: árbol con los criterios de baremación de la convocatoria.
3. **Moduladores y rangos**: pantalla con los puntos de los moduladores y de los rangos usados por los distintos baremos.

El personal de gestión únicamente puede visualizar la información de la convocatoria de baremación, pero no podrá modificar sus datos.

### Recuperar convocatoria

Sólo se puede recuperar las convocatorias que tienen el valor "No" en el campo "Activo", es decir, aquellas que han sido previamente eliminadas por el personal de gestión.

Si se pulsa el icono "Recuperar" ![](/attachments/597853743/597878488.png) situado en la última columna "Acciones" de la tabla de resultados de la búsqueda de convocatorias de baremación, se muestra una ventana emergente de confirmación donde se le pregunta al personal de gestión si realmente desea recuperar la convocatoria.

![](/attachments/597853743/597878047.png)

Si se pulsa "Aceptar" sobre el mensaje de confirmación, el registro volverá a estar "activo" y pasará a estar disponible para su utilización en las pantallas correspondientes.   


Al reactivar una convocatoria se validará que no exista otra convocatoria activa para el mismo año y, si es así, se mostrará un mensaje de error y no se podrá reactivar.

![](/attachments/597853743/597878045.png)




