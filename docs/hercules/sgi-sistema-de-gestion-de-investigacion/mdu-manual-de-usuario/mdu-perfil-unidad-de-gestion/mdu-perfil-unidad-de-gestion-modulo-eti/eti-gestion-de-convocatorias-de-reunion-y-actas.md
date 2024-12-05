# Hércules : ETI\-Gestión de convocatorias de reunión y actas



## Convocatorias de reunión

El personal de gestión deberá de ir creando las convocatorias de reunión de evaluación para los distintos comités y asignándoles las memorias enviadas por el personal de investigación (acción "Enviar a secretaría").  Una convocatoria de reunión esta asignada a un único comité de evaluación y valorará una o varias memorias. Cada memoria será valorada por un par de evaluadores (asignados previamente por el personal de gestión) aunque cualquier miembro activo del comité puede anotar sus comentarios.

La tercera opción del menú principal de Ética es "Convocatorias de reunión" que muestra en la parte superior de la pantalla el buscador y en la parte inferior el resultado de la búsqueda sin aplicar ningún filtro tal como muestra la siguiente imagen.![](/attachments/597853568/986808421.png)

 

Los campos disponibles en el formulario de la búsqueda son:

* **Comité**: es un desplegable en el que se puede seleccionar entra las siguientes opciones:
	+ CEI
	+ CEEA
	+ CBE
* **Fecha evaluación desde:** campo para introducir la fecha la cual se va a tomar como referencia para obtener las convocatoria de reunión cuya fecha de evaluación sea mayor o igual a esta fecha.
* **Fecha evaluación hasta:** campo para introducir la fecha la cual se va a tomar como referencia para obtener las convocatoria de reunión cuya fecha de evaluación sea menor o igual a esta fecha.
* **Convocatoria**: indica el tipo de la convocatoria, es un desplegable en el que se puede seleccionar entra las siguientes opciones:
	+ Ordinaria: si una convocatoria es de este tipo únicamente se evaluarán formularios de memoria y retrospectivas.
	+ Extraordinaria: si una convocatoria es de este tipo únicamente se evaluarán formularios de memoria y retrospectivas.
	+ Seguimiento: si una convocatoria es de este tipo únicamente se evaluarán formularios de seguimiento anual o final de las memorias.

Tras pulsar el botón “Buscar”, se muestra el listado de convocatoria de reunión que cumplan con los parámetros introducidos en el formulario.

Al igual que el resto de listados de la aplicación, el resultado de la búsqueda es un listado compuesto por una tabla paginada, con ocho columnas de información y una última columna de acciones.

Desde este listado el personal de gestión puede realizar las siguientes acciones:

* **Añadir convocatoria de reunión**: este botón se encuentra en la parte inferior de la pantalla en el "Área de acciones", permite al personal de gestión crear una nueva convocatoria de reunión para uno de los comités de ética.
* **Consultar:** este botón representado por el icono ![](/attachments/597853568/597880397.png) y situado en la última columna "Acciones" de la tabla, permite al personal de gestión consultar los datos de una convocatoria de reunión. Cuando la convocatoria de reunión tenga asociada una acta en estado "Finalizada" no se podrá modificar ningún dato de la convocatoria de reunión, por lo que el personal de gestión únicamente puede ver sus datos en modo consulta.
* **Editar**: este botón representado por el icono ![](/attachments/597853568/597880383.png) y situado en la última columna "Acciones" de la tabla, permite al personal de gestión modificar los datos de una convocatoria de reunión. Dependiendo de si tiene acta asociada o su estado el personal de gestión podrá modificar unos datos u otros:
	+ Cuando la convocatoria de reunión tenga asociada un acta en estado "En elaboración" únicamente se podrán modificar los campos "Lugar" y "Orden del día" de "Datos generales". En asignación de memorias se podrán añadir, modificar o eliminar memorias a la convocatoria. En documentación se podrán añadir, modificar o eliminar documentos de la convocatoria.
	+ En el caso de que la convocatoria de reunión no tenga un acta asociada pero si tiene memorias asignadas se podrán modificar todos los campos de "Datos generales" salvo el "comité, el "tipo de convocatoria" y "fecha límite". En asignación de memorias se podrán añadir, modificar o eliminar memorias a la convocatoria. En documentación se podrán añadir, modificar o eliminar documentos de la convocatoria.
	+ En el caso de que la convocatoria de reunión no tenga un acta asociada y no tenga memorias asignadas se podrán modificar todos los campos de "Datos generales" salvo el "comité. En asignación de memorias se podrán añadir, modificar o eliminar memorias a la convocatoria. En documentación se podrán añadir, modificar o eliminar documentos de la convocatoria.
* **Eliminar**: este botón representado por el icono ![](/attachments/597853568/597880381.png)y situado en la última columna "Acciones" de la tabla, permite al personal de gestión eliminar la convocatoria de reunión. Sólo se puede eliminar una convocatoria de reunión sino se ha creado todavía el acta asociada y no tiene memorias asignadas.
* **Notificar**: este botón representado por el icono ![](/attachments/597853568/711426142.png) y situado en la última columna "Acciones" de la tabla, permite al personal de gestión enviar una notificación a los miembros activos del comité para informarles de la hora y lugar de la convocatoria de reunión.
* **Exportar:** este botón representado por el icono  ![](/attachments/597853568/597880386.png) y situado en la parte inferior  de la pantalla en el "Área de acciones", permite la generación del informe asociado al listado de convocatorias de reunión.

A continuación se detalla el significado de cada una de las columnas de información del listado:

* **Comité:** comité que va a realizar la evaluación de le memoria.
* **Fecha evaluación**: fecha en la que se va a realizar la convocatoria de reunión.
* **Código**: código de la convocatoria, tiene el siguiente formato ACTAsecuencial/YYYY/COMITE , donde COMITE es el comité elegido, YYYY es el año de la fecha de evaluación y secuencial es el número del acta que corresponde a la convocatoria, es un secuencial por comité. Hay tres secuenciales uno por cada comité (no es por año).
* **Hora 1ª**: hora y minutos de inicio de la reunión en primera convocatoria.
* **Hora 2ª**: hora y minutos de inicio de la reunión en segunda convocatoria.
* **Lugar**: lugar donde se celebra la reunión.
* **Convocatoria**: indica el tipo de la convocatoria, los posibles valores son:
	+ Ordinaria: si una convocatoria es de este tipo únicamente se evaluarán formularios de memoria y retrospectivas.
	+ Extraordinaria: si una convocatoria es de este tipo únicamente se evaluarán formularios de memoria y retrospectivas.
	+ Seguimiento: si una convocatoria es de este tipo únicamente se evaluarán formularios de seguimiento anual o final de las memorias.
* **Fecha envío**: fecha en la que se envió la notificación a los miembros activos del comité para informarles de que existe una nueva convocatoria programada en la que son citados. Sino se ha enviado aún la notificación estará sin informar dicho campo. La notificación se envía cuando el personal de gestión pulsa sobre el icono de "Enviar " situado en la columna de "Acciones". Una vez enviada la notificación se informará del campo "Fecha envío" y no se volverá a mostrar el icono de "Enviar".

### Añadir convocatoria de reunión

Tras pulsar este botón "AÑADIR CONVOCATORIA DE REUNIÓN" se carga en pantalla el formulario de "Datos generales" de una convocatoria de reunión.

Una convocatoria de reunión esta formado por los siguientes bloques de información.

![](/attachments/597853568/986808423.png)  


  


* **Datos generales**: conjunto de datos de información general sobre la convocatoria de reunión.
* **Memorias**: conjunto de memorias que van a ser evaluadas en la convocatoria de reunión. En la creación de la convocatoria de reunión no es necesario añadir las memorias, se pueden informar los datos generales y dar al botón "GUARDAR" para crear la convocatoria de reunión. Posteriormente el personal de gestión podrá editar la convocatoria de reunión para ir asignándole las memorias deseadas.
* **Documentación**: listado de documentos adjuntados a la convocatoria.

Una vez introducidos todos los datos obligatorios del formulario "Datos generales", se activará el botón "GUARDAR" situado en la parte inferior de la pantalla en el "Área de acciones" que permite dar de alta la nueva convocatoria de reunión.

El botón "GUARDAR" no sólo guarda los datos del formulario que este mostrando en ese momento la pantalla, sino todos los formularios que componen la nueva convocatoria de reunión, es decir, los datos generales, las memorias (en caso de que se hubiesen asignado alguna en el momento de la creación, aunque no es opcional) y los documentos.

#### Datos generales

Formulario con los datos de información básica de una convocatoria de reunión. A continuación se describe cada uno de los campos solicitados en este formulario:

![](/attachments/597853568/986808423.png)

  


* **Comité**: campo obligatorio donde se debe de seleccionar el comité de ética que va a realizar la convocatoria de reunión. Se debe de seleccionar uno de los tres posibles valores:  

	+ CEI (Comité de Ética de Investigación)
	+ CEEA (Comité de Ética de Experimentación Animal)
	+ CBE (Comité de Ética de Bioseguridad en Experimentación)
* **Fecha evaluación**:  campo obligatorio donde se debe de introducir la fecha en la que se va a realizar la convocatoria de reunión. Se puede introducir la fecha de forma manual o con la ayuda del calendario.
* **Fecha límite**: campo obligatorio donde se debe de introducir la fecha hasta la cual se van a tener en cuenta las memorias enviadas a secretaría por el personal de investigación, a partir de esta fecha las memorias que lleguen no se tendrá en cuenta para esta convocatoria, entrarían para la siguiente. Se puede introducir la fecha de forma manual o con la ayuda del calendario.
* **Convocatoria**: campo obligatorio donde se debe seleccionar el tipo de convocatoria. Se debe de seleccionar uno de los tres posibles valores:
	+ Ordinaria: si una convocatoria es de este tipo únicamente se evaluarán formularios de memoria y retrospectivas.
	+ Extraordinaria: si una convocatoria es de este tipo únicamente se evaluarán formularios de memoria y retrospectivas.
	+ Seguimiento: si una convocatoria es de este tipo únicamente se evaluarán formularios de seguimiento anual o final de las memorias.
* **Hora inicio primera convocatoria**:  campo obligatorio donde se debe de introducir la hora y los minutos del inicio de la reunión de primera convocatoria. Se puede introducir la hora y minutos de forma manual o con la ayuda del icono del reloj que abrirá una pantalla emergente como la siguiente para seleccionar la hora y minutos de forma gráfica.

![](/attachments/597853568/597880377.png)

* **Hora inicio segunda convocatoria**: campo opcional donde se debe de introducir la hora y los minutos del inicio de la reunión de segunda convocatoria. Se puede introducir la hora y minutos de forma manual o con la ayuda del icono del reloj que abrirá una pantalla emergente para seleccionar la hora y minutos de forma gráfica.
* **Videoconferencia**: campo obligatorio donde se debe seleccionar si la convocatoria de reunión se va a realizar a través de una videoconferencia o no.
* **Lugar**: campo obligatorio sólo si la convocatoria no se va a realizar por videoconferencia. En estos casos se debe de introducir el lugar de celebración de la convocatoria de reunión. Es un campo de texto libre con un máximo de 250 caracteres. En el caso de que se haya seleccionado el valor "Sí" en el campo anterior de "Videoconferencia" este campo "Lugar" no se mostrará.
* **Convocantes**: campo obligatorio donde se deben de seleccionar de los miembros activos del comité aquellos que van a asistir a la convocatoria de reunión. Por defecto estarán todos seleccionados, en caso de que el personal de gestión ya tenga constancia que uno de ellos no podrá asistir puede pulsar con el ratón sobre el campo y se le mostrará el listado de todos ellos para que pueda desmarcar la persona concreta que no va a poder asistir a la reunión. En el acta asociada a la convocatoria se pondrá a dicha persona como no asistente a la misma.

![](/attachments/597853568/986808425.png)  


* **Orden del día**: campo obligatorio donde se debe de introducir el orden del día de la convocatoria de reunión. Es un campo de texto libre con un máximo de 2000 caracteres y que dispone del [componente de texto enriquecido](https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.20Componentetextoenriquecido "https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.20Componentetextoenriquecido").

Una vez introducidos todos los campos obligatorios del formulario de "Datos generales" se puede ver en la siguiente imagen que se activa el botón "GUARDAR" y se muestra el icono del signo de admiración en la opción del menú de "Datos generales" y en la parte de abajo de la pantalla a lado del botón "GUARDAR". Este icono indica que se han introducido cambios en el formulario (se han informado los campos) pero no se ha dado a "GUARDAR".

![](/attachments/597853568/986808426.png)  


  


Si se pulsa el botón "GUARDAR" se crea la convocatoria de reunión con los datos generales de la convocatoria. En el momento de la creación se pueden asignar memorias a la convocatoria de reunión a través de la opción del menú "Memorias" o bien dejar la asignación para otro momento. También se puede adjuntar documentación a la convocatoria. En el caso de que se haya asignado una memoria o varias se cambiará el estado de esas memoria al estado "En evaluación" y estarán disponibles para su evaluación por parte de los evaluadores y del propio personal de gestión. Se enviará a todos los miembros activos del comité para cada una de las memorias nuevas incluidas en la memoria un comunicado de "Asignación de evaluación" (si no tiene un dictamen previo "pendiente de correcciones") o de "Asignación de reevaluación" (si tiene un dictamen previo "pendiente de correcciones").

Se muestra un mensaje de que la convocatoria de reunión se ha creado correctamente igual que el de la siguiente imagen.

![](/attachments/597853568/597880365.png)  


#### Memorias

Muestra en una tabla el listado de memorias que se van a evaluar en la convocatoria de reunión. En la creación de la convocatoria no es obligatorio introducir las memorias, se puede crear la convocatoria con los datos generales y posteriormente editar la convocatoria en otro momento para ir asignando las memorias.

Por defecto en la creación de la convocatoria de reunión este listado no tendrá memorias asignadas, el personal de gestión a través del botón "Añadir memoria" podrá asignar una memoria a la convocatoria para su evaluación.

![](/attachments/597853568/986808428.png)  


Desde este listado el personal de gestión puede realizar las siguientes acciones:

* **Añadir memoria**: este botón se encuentra en la parte inferior del listado de memorias, permite al personal de gestión asignar un nueva memoria a la convocatoria de reunión.
* **Editar**: este botón representado por el icono ![](/attachments/597853568/597880383.png) y situado en la última columna "Acciones" de la tabla, permite al personal de gestión modificar los evaluadores asignados a la memoria.
* **Eliminar**: este botón representado por el icono ![](/attachments/597853568/597880381.png)y situado en la última columna "Acciones" de la tabla, permite al personal de gestión eliminar la asignación de la memoria a la convocatoria de reunión.

##### Añadir memoria

Se pueden asignar nuevas memorias pulsando el botón "**Añadir Memoria**", se abrirá un formulario como el mostrado en la siguiente imagen.

![](/attachments/597853568/597880368.png)  


A continuación se describe cada uno de los campos solicitados en este formulario:

* **Memoria**: campo obligatorio donde se debe de seleccionar la memoria que se quiere evaluar en la convocatoria de reunión. En este listado se mostrarán las memorias que cumplen las siguientes condiciones:  

	+ Si la convocatoria es de tipo "Ordinaria" o "Extraordinaria":
		- Memorias en estado "En secretaria" y la fecha de envío es igual o menor a la fecha límite de la convocatoria de reunión. En el caso que la memoria pertenezca a una solicitud de evaluación creada a partir de una solicitud de convocatoria (módulo CSP del SGI), debe de disponer de financiación para realizar el proyecto y el estado de financiación de la solicitud de evaluación tiene que ser distinto al estado "Denegado" o bien si esta en estado "Denegado" tener marcada la opción que se va a financiar con fondos propios del personal de investigación.
		- Memorias que tenga una retrospectiva enviada a secretaría y la fecha de envío es igual o menor a la fecha límite de la convocatoria de reunión.
	+ Si la convocatoria es de tipo "Seguimiento"
		- Memorias en estado "En secretaría seguimiento anual" y "En secretaría seguimiento final" y la fecha de envío es igual o menor a la fecha límite de la convocatoria de reunión.
* **Evaluador1**: campo obligatorio donde se debe de seleccionar uno de los miembros activos del comité indicado en la convocatoria de reunión y que no entre en conflicto de intereses con ningún miembro del equipo investigador indicado en la solicitud de evaluación de la memoria seleccionada.
	+ Si la memoria ha sido evaluada en una convocatoria de reunión anterior resultando con dictamen "pendiente de correcciones" se precargará el nombre de la persona que hubiera actuado como "evaluador1" en esta evaluación previa.
	+ Si la persona que actuó como "evaluador1" en esta evaluación previa presenta, a fecha de la nueva convocatoria de reunión que se está programando, conflicto de interés con algún miembro del equipo de trabajo indicado en la solicitud de evaluación a la que pertenece la memoria o si le persona que actuó como "evaluador1" ya no es miembro activo del comité (a fecha de la nueva convocatoria de reunión) se mostrará un mensaje informativo, debiendo seleccionarse obligatoriamente otra persona del comité como "evaluador1".
* **Evaluador2**: campo obligatorio donde se debe de seleccionar uno de los miembros activos del comité indicado en la convocatoria de reunión y que no entre en conflicto de intereses con ningún miembro del equipo investigador indicado en la solicitud de evaluación de la memoria seleccionada..
	+ Si la memoria ha sido evaluada en una convocatoria de reunión anterior resultando con un dictamen "pendiente de correcciones" se precargará el nombre de la persona que hubiera actuado como "evaluador2" en esta evaluación previa.
	+ Si la persona que actuó como "evaluador1" en esta evaluación previa presenta, a fecha de la nueva convocatoria de reunión que se está programando, conflicto de interés con algún miembro del equipo de trabajo indicado en la solicitud de evaluación a la que pertenece la memoria o si le persona que actuó como "evaluador1" ya no es miembro activo del comité (a fecha de la nueva convocatoria de reunión) se mostrará un mensaje informativo, debiendo seleccionarse obligatoriamente otra persona del comité como "evaluador1"

![](/attachments/597853568/841089107.png)

Al pulsar sobre el botón "Añadir" la memoria se asignará a la convocatoria mostrando en la tabla de memorias una nueva fila que representa a la memoria que se acaba de añadir.

![](/attachments/597853568/986808429.png)  


Si se pulsa el botón "GUARDAR" se crea la convocatoria de reunión con los datos generales de la convocatoria. En el caso de que se haya asignado una memoria o varias se cambiará el estado de esas memorias al estado "En evaluación" y estarán disponibles para su evaluación por parte de los evaluadores/as y del propio personal de gestión. Se enviará a todos los miembros activos del comité para cada una de las memorias nuevas incluidas en la memoria un comunicado de "Asignación de evaluación" (si no tiene un dictamen previo "pendiente de correcciones") o de "Asignación de reevaluación" (si tiene un dictamen previo "pendiente de correcciones").

Se muestra un mensaje de que la convocatoria de reunión se ha creado correctamente igual que el de la siguiente imagen.

![](/attachments/597853568/597880365.png)

#### Documentación

Muestra en una tabla los documentos adjuntados a la convocatoria. En la creación de la convocatoria no es obligatorio introducir ningún documento, se puede crear la convocatoria con los datos generales y posteriormente editar la convocatoria en otro momento para ir añadiendo documentos en caso de que se desee añadir algún documento a la convocatoria.

Por defecto en la creación de la convocatoria de reunión este listado no tendrá documentos adjuntados, el personal de gestión a través del botón "Añadir documento" podrá añadir un documento a la convocatoria.

![](/attachments/597853568/986808430.png)  


##### Añadir documento

Se pueden añadir documentos pulsando el botón "**Añadir Documento**". Se abrirá un formulario como el mostrado en la siguiente imagen.

![](/attachments/597853568/986808431.png)  


A continuación se describe cada uno de los campos solicitados en este formulario:

* **Nombre/Descripción**: campo obligatorio donde se debe de introducir el nombre que se quiere dar al documento, un nombre que lo represente.
* **Fichero:** campo obligatorio donde se debe de seleccionar el fichero que se quiere adjuntar a la convocatoria.

Tras introducir los datos se activará el botón "añadir". Al pulsar sobre el botón "Añadir" el documento se adjuntará a la convocatoria mostrando en la tabla de documentación una nueva fila que representa al documento que se acaba de añadir.

![](/attachments/597853568/986808432.png)  


Si se pulsa el botón "GUARDAR" se crea la convocatoria de reunión con los datos generales de la convocatoria. En el caso de que se haya adjuntado un documento a la convocatoria dicho documento se almacenará en el sistema de gestión de almacenamiento.

Se muestra un mensaje de que la convocatoria de reunión se ha creado correctamente igual que el de la siguiente imagen.

![](/attachments/597853568/597880365.png)

### Editar convocatoria de reunión

La edición de una convocatoria (el botón del icono del lápiz) abre el formulario de "Datos generales" con los mismos campos que el formulario de creación donde el personal de gestión puede modificar los datos.

Para las convocatorias de reunión que tienen un acta asociada en estado "Finalizada" no estará disponible la acción de "Editar" (icono del lápiz) sino que sólo se podrá consultar la información de la convocatoria (ver apartado [Consultar convocatoria de reunión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=141927367#ETIGesti%C3%B3ndeconvocatoriasdereuni%C3%B3nyactas-Consultarconvocatoriadereuni%C3%B3n "https://confluence.um.es/confluence/pages/viewpage.action?pageId=141927367#ETIGesti%C3%B3ndeconvocatoriasdereuni%C3%B3nyactas-Consultarconvocatoriadereuni%C3%B3n"))

Si la convocatoria de reunión que se esta editando tiene un acta asociada en estado "En elaboración" únicamente se podrán modificar los campos "Lugar" y "Orden del día" de "Datos generales". En "Memorias" se podrán añadir, modificar o eliminar memorias a la convocatoria. En "Documentación" se podrán añadir, modificar o eliminar documentos de la convocatoria.

Si la convocatoria de reunión que se esta editando no tiene un acta asociada se podrán modificar todos los campos de "Datos generales" salvo el "comité" y el campo "convocatoria". En "Memorias" se podrán añadir, modificar o eliminar memorias a la convocatoria. En "Documentación" se podrán añadir, modificar o eliminar documentos de la convocatoria.

La edición de una convocatoria de reunión esta formada por los siguientes bloques de información:

![](/attachments/597853568/986808433.png)

  


* **Datos generales**: conjunto de datos de información general sobre la convocatoria de reunión.
* **Memorias**: conjunto de memorias que van a ser evaluadas en la convocatoria de reunión.
* **Documentación**: listado de documentos adjuntados a la convocatoria.

Una vez introducidos los datos que se desean modificar o añadir en cualquiera de los dos bloques (datos generales, memorias o documentos), el personal de gestión podrá pulsar sobre el botón "GUARDAR" situado en la parte inferior de la pantalla en el "Área de acciones" para actualizar la convocatoria de reunión (sino se pulsa sobre el botón "GUARDAR" todos los cambios realizados se perderán)

El botón "GUARDAR" no sólo guarda los datos del formulario que este mostrando en ese momento la pantalla, sino todos los formularios que componen convocatoria de reunión, es decir, los datos generales, el listado de memorias y el listado de documentos. Por cada memoria nueva asignada a la convocatoria de reunión se le cambiará el estado "En secretaría" al estado "En evaluación" y estará disponible para su evaluación por parte de los evaluadores/as y del propio gestor/a. ras guardar la convocatoria de reunión se enviará un comunicado de "Asignación de evaluación" a todos los miembros activos del comité para cada una de las memorias incluidas en la memoria que no tenga un dictamen previo "pendiente de correcciones" o se enviará un comunicado de Asignación de reevaluación a todos los miembros activos del comité para cada una de las memorias incluidas en la memoria que tenga un dictamen previo "pendiente de correcciones".

#### Datos generales

Formulario con los datos de información básica de una convocatoria de reunión. A continuación se describe cada uno de los campos de este formulario:

![](/attachments/597853568/986808433.png)

  


* **Código:** código con formato ACTAsecuencial/YYYY/COMITE , donde COMITE es el comité elegido, YYYY es el año actual y secuencial es el número del acta que corresponde a la convocatoria, es un secuencial por comité. Es un campo de información, no se podrá modificar.
* **Comité**: campo obligatorio que indicar el comité de ética que va a realizar la convocatoria de reunión. Puede tomar uno de estos tres valores:  

	+ CEI (Comité de Ética de Investigación)
	+ CEEA (Comité de Ética de Experimentación Animal)
	+ CBE (Comité de Ética de Bioseguridad en Experimentación)

Es un campo que no se podrá modificar una vez creada la convocatoria de reunión. Es un campo de consulta.

* **Fecha evaluación**:  campo obligatorio donde se introduce la fecha en la que se va a realizar la convocatoria de reunión. Se puede introducir la fecha de forma manual o con la ayuda del calendario. En el caso de que el acta asociada a la convocatoria ya este creada no se podrá modificar este campo.
* **Fecha límite**: campo obligatorio donde se debe de introducir la fecha hasta la cual se van a tener en cuenta las memorias enviadas a secretaría por el personal de investigación, a partir de esta fecha las memorias que lleguen no se tendrá en cuenta para esta convocatoria, entrarían para la siguiente. Se puede introducir la fecha de forma manual o con la ayuda del calendario. En el caso de que el acta asociada a la convocatoria ya este creada no se podrá modificar este campo o bien si ya existen memorias asignadas a la convocatoria de reunión.
* **Convocatoria**: campo obligatorio donde se debe seleccionar el tipo de convocatoria. Los posibles valores son:
	+ Ordinaria: si una convocatoria es de este tipo únicamente se evaluarán formularios de memoria y retrospectivas.
	+ Extraordinaria: si una convocatoria es de este tipo únicamente se evaluarán formularios de memoria y retrospectivas.
	+ Seguimiento: si una convocatoria es de este tipo únicamente se evaluarán formularios de seguimiento anual o final de las memorias.

En el caso de que el acta asociada a la convocatoria ya este creada no se podrá modificar este campo o bien si ya existen memorias asignadas a la convocatoria de reunión.

* **Hora inicio primera convocatoria**:  campo obligatorio donde se debe de introducir la hora y los minutos del inicio de la reunión de primera convocatoria. Se puede introducir la hora y minutos de forma manual o con la ayuda del icono del reloj que abrirá una pantalla emergente como la siguiente para seleccionar la hora y minutos de forma gráfica.

![](/attachments/597853568/597880377.png)

En el caso de que el acta asociada a la convocatoria ya este creada no se podrá modificar este campo.

* **Hora inicio segunda convocatoria**: campo opcional donde se debe de introducir la hora y los minutos del inicio de la reunión de segunda convocatoria. Se puede introducir la hora y minutos de forma manual o con la ayuda del icono del reloj que abrirá una pantalla emergente para seleccionar la hora y minutos de forma gráfica. En el caso de que el acta asociada a la convocatoria ya este creada no se podrá modificar este campo.
* **Videoconferencia**: campo obligatorio donde se debe seleccionar si la convocatoria de reunión se va a realizar a través de una videoconferencia o no.
* **Lugar**: campo obligatorio sólo si la convocatoria no se va a realizar por videoconferencia. En estos casos se debe de introducir el lugar de celebración de la convocatoria de reunión. Es un campo de texto libre con un máximo de 250 caracteres. En el caso de que se haya seleccionado el valor "Sí" en el campo anterior de "Videoconferencia" este campo "Lugar" no se mostrará.
* **Convocantes**: campo obligatorio donde se deben de seleccionar de los miembros activos del comité aquellos que van a asistir a la convocatoria de reunión. Por defecto estarán todos seleccionados, en caso de que el gestor/a ya tenga constancia que uno de ellos no podrá asistir puede pulsar con el ratón sobre el campo y se le mostrará el listado de todos ellos para que pueda desmarcar la persona concreta que no va a poder asistir a la reunión. En el acta asociada a la convocatoria se pondrá a dicha persona como no asistente a la misma.

![](/attachments/597853568/986808436.png)  


En el caso de que el acta asociada a la convocatoria ya este creada no se podrá modificar este campo.

* **Orden del día**: campo obligatorio donde se debe de introducir el orden del día de la convocatoria de reunión. Es un campo de texto libre con un máximo de 2000 caracteres que dispone del [componente](https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.20Componentetextoenriquecido "https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.20Componentetextoenriquecido")para introducción de texto enriquecido.

  


Una vez introducidos los datos que se desean modificar del formulario de "Datos generales" se puede ver en la siguiente imagen que se activa el botón "GUARDAR" y se muestra el icono del signo de admiración en la opción del menú de "Datos generales" y en la parte de abajo de la pantalla a lado del botón "GUARDAR". Este icono indica que se han introducido cambios en el formulario pero no se ha dado a "GUARDAR".

![](/attachments/597853568/986808437.png)  


Si se pulsa el botón "GUARDAR" se modifica la convocatoria de reunión con los nuevos datos introducidos o con los cambios realizados en cada una de las pantallas (Datos generales, Memorias o Documentación). Por cada memoria nueva asignada a la convocatoria de reunión se le cambiará el estado "En secretaría" al estado "En evaluación" y estará disponible para su evaluación por parte de los evaluadores/as y del propio gestor/a. Se enviará a todos los miembros activos del comité para cada una de las memorias nuevas incluidas en la memoria un comunicado de "Asignación de evaluación" (si no tiene un dictamen previo "pendiente de correcciones") o de "Asignación de reevaluación" (si tiene un dictamen previo "pendiente de correcciones").

Se muestra un mensaje de que la convocatoria de reunión se ha modificado correctamente igual que el de la siguiente imagen.

![](/attachments/597853568/597880420.png)  


#### Memorias

Muestra en una tabla el listado de memorias que se van a evaluar en la convocatoria de reunión.

![](/attachments/597853568/986808438.png)  


Desde este listado el gestor/a puede realizar las siguientes acciones:

* **Añadir memoria**: este botón se encuentra en la parte inferior del listado de memorias, permite al gestor/a asignar un nueva memoria a la convocatoria de reunión.
* **Editar**: este botón representado por el icono ![](/attachments/597853568/597880383.png) y situado en la última columna "Acciones" de la tabla, permite al gestor/a modificar los evaluadores asignados a la memoria.
* **Eliminar**: este botón representado por el icono ![](/attachments/597853568/597880381.png)y situado en la última columna "Acciones" de la tabla, permite al gestor/a eliminar la asignación de la memoria a la convocatoria de reunión.

##### Añadir memoria

Se pueden asignar nuevas memorias pulsando el botón "**Añadir Memoria**", se abrirá un formulario como el mostrado en la siguiente imagen.

![](/attachments/597853568/597880368.png)  


A continuación se describe cada uno de los campos solicitados en este formulario:

* **Memoria**: campo obligatorio donde se debe de seleccionar la memoria que se quiere evaluar en la convocatoria de reunión. En este listado se mostrarán las memorias que cumplen las siguientes condiciones:  

	+ Si la convocatoria es de tipo "Ordinaria" o "Extraordinaria":
		- Memorias en estado "En secretaria" y la fecha de envío es igual o menor a la fecha límite de la convocatoria de reunión. En el caso que la memoria pertenezca a una solicitud de evaluación creada a partir de una solicitud de convocatoria (módulo CSP del SGI), debe de disponer de financiación para realizar el proyecto y el estado de financiación de la solicitud de evaluación tiene que ser distinto al estado "Denegado" o bien si esta en estado "Denegado" tener marcada la opción que se va a financiar con fondos propios del personal de investigación.
		- Memorias que tenga una retrospectiva enviada a secretaría y la fecha de envío es igual o menor a la fecha límite de la convocatoria de reunión.
	+ Si la convocatoria es de tipo "Seguimiento"
		- Memorias en estado "En secretaría seguimiento anual" y "En secretaría seguimiento final" y la fecha de envío es igual o menor a la fecha límite de la convocatoria de reunión.
* **Evaluador1**: campo obligatorio donde se debe de seleccionar uno de los miembros activos del comité indicado en la convocatoria de reunión y que no entre en conflicto de intereses con ningún miembro del equipo investigador de la memoria seleccionada.
* **Evaluador2**: campo obligatorio donde se debe de seleccionar uno de los miembros activos del comité indicado en la convocatoria de reunión y que no entre en conflicto de intereses con ningún miembro del equipo investigador de la memoria seleccionada.

Al pulsar sobre el botón "Añadir" la memoria se asignará a la convocatoria mostrando en la tabla de memorias una nueva fila que representa a la memoria que se acaba de añadir. Se puede ver en la siguiente imagen que se activa el botón "GUARDAR" y se muestra el icono del signo de admiración en la opción del menú de "Memorias" y en la parte de abajo de la pantalla a lado del botón "GUARDAR". Este icono indica que se han introducido cambios en el formulario pero no se ha dado a "GUARDAR".

![](/attachments/597853568/986808439.png)  


Si se pulsa el botón "GUARDAR" se modifica la convocatoria de reunión con los datos generales de la convocatoria en caso de que se hubiesen modificado. En el caso de que se haya asignado una memoria o varias se cambiará el estado de esas memorias al estado "En evaluación" y estarán disponibles para su evaluación por parte de los evaluadores/as y del propio gestor/a. Se enviará a todos los miembros activos del comité para cada una de las memorias nuevas incluidas en la memoria un comunicado de "Asignación de evaluación" (si no tiene un dictamen previo "pendiente de correcciones") o de "Asignación de reevaluación" (si tiene un dictamen previo "pendiente de correcciones").

Se muestra un mensaje de que la convocatoria de reunión se ha modificado correctamente igual que el de la siguiente imagen.

![](/attachments/597853568/597880420.png)

##### Editar memoria

Se abre una pantalla que muestra un formulario con los datos de la asignación de la memoria a la convocatoria, es idéntico al utilizado durante el alta, dejando la posibilidad de modificar cualquiera de los campos del formulario (ver funcionalidad descrita en el apartado [Editar Convocatoria de reunión \-\> Añadir memoria](https://confluence.um.es/confluence/pages/viewpage.action?pageId=141925861#ETIGestióndeconvocatoriasdereuniónyactas-A%C3%B1adirmemoria.1 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=141925861#ETIGestióndeconvocatoriasdereuniónyactas-A%C3%B1adirmemoria.1") para mas detalle).

En la siguiente imagen se muestra el formulario de edición de una asignación de memoria.

![](/attachments/597853568/986808440.png)  


Al pulsar sobre el botón "Aceptar" la asignación de memoria a la convocatoria se modificará y los cambios se verán reflejados en el listado de memorias de la convocatoria de reunión mostrando el icono de la admiración en el menú de "Memorias" y el mensaje de información en la parte de abajo de la pantalla en la zona del "Área de acciones" para recordar al gestor/a que debe de pulsar el botón GUARDAR para que los cambios realizados (en este caso un cambio de evaluador en una de las memorias) se consoliden.

![](/attachments/597853568/986808441.png)  


Si se pulsa el botón "GUARDAR" se modifica la convocatoria de reunión con los nuevos datos introducidos o con los cambios realizados en cada una de las pantallas (Datos generales, Memorias o Documentación).

Se muestra un mensaje de que la convocatoria de reunión se ha modificado correctamente igual que el de la siguiente imagen.

![](/attachments/597853568/597880420.png)

##### Eliminar memoria

Cuando se pulsa el icono de eliminar asignación de memoria se muestra una ventana emergente con un mensaje de confirmación.

![](/attachments/597853568/597880409.png)  


En caso de responder afirmativamente (botón "Aceptar") la memoria desaparecerá del listado de memorias. Se muestra el icono de la admiración en el menú de "Memorias" y el mensaje de información en la parte de abajo de la pantalla en la zona del "Área de acciones" para recordar al gestor/a que debe de pulsar el botón GUARDAR para que los cambios realizados (en este caso la eliminación de una asignación de memoria) se consoliden. En el caso de eliminar una asignación de memoria en una convocatoria de reunión, se eliminará la evaluación creada de la memoria y volverá al estado "En secretaría".

#### Documentación

Muestra en una tabla los documentos adjuntados a la convocatoria. No es obligatorio adjuntar ningún documento a la convocatoria de reunión.

![](/attachments/597853568/986808503.png)  


Desde este listado el gestor/a puede realizar las siguientes acciones:

* **Añadir Documento**: este botón se encuentra en la parte inferior del listado de documentos, permite al gestor/a añadir un nuevo documento a la convocatoria de reunión.
* **Editar**: este botón representado por el icono ![](/attachments/thumbnails/597853568/597880383) y situado en la última columna "Acciones" de la tabla, permite al gestor/a modificar los nombres de los documentos adjuntados a la memoria.
* **Eliminar**: este botón representado por el icono ![](/attachments/thumbnails/597853568/597880381)y situado en la última columna "Acciones" de la tabla, permite al gestor/a eliminar el documento añadido a la convocatoria de reunión.

##### Añadir documento

Se pueden añadir documentos pulsando el botón "**Añadir Documento**". Se abrirá un formulario como el mostrado en la siguiente imagen.

![](/attachments/597853568/986808431.png)

A continuación se describe cada uno de los campos solicitados en este formulario:

* **Nombre/Descripción**: campo obligatorio donde se debe de introducir el nombre que se quiere dar al documento, un nombre que lo represente.
* **Fichero:** campo obligatorio donde se debe de seleccionar el fichero que se quiere adjuntar a la convocatoria.

Al pulsar sobre el botón "Añadir" el documento se añade a la convocatoria y los cambios se verán reflejados en el listado de documentos de la convocatoria de reunión mostrando el icono de la admiración en el menú de "Documentación" y el mensaje de información en la parte de abajo de la pantalla en la zona del "Área de acciones" para recordar al gestor/a que debe de pulsar el botón GUARDAR para que los cambios realizados (en este caso un nuevo documento) se consoliden.

![](/attachments/597853568/986808508.png)  


Si se pulsa el botón "GUARDAR" se modifica la convocatoria de reunión para añadir un nuevo documento.

Se muestra un mensaje de que la convocatoria de reunión se ha modificado correctamente igual que el de la siguiente imagen.

![](/attachments/597853568/597880420.png)

##### Editar documento

Se abre una pantalla que muestra un formulario con los datos del documento de la convocatoria. Sólo se permitirá modificar el nombre del documento. Si se quiere modificar el contenido del fichero se deberá de eliminar el documento y luego añadir uno nuevo.

![](/attachments/597853568/986808506.png)  


Al pulsar sobre el botón "Aceptar" el nombre del documento de la convocatoria se modificará y los cambios se verán reflejados en el listado de documentos de la convocatoria de reunión mostrando el icono de la admiración en el menú de "Documentación" y el mensaje de información en la parte de abajo de la pantalla en la zona del "Área de acciones" para recordar al gestor/a que debe de pulsar el botón GUARDAR para que los cambios realizados (en este caso un cambio en el nombre de un documento) se consoliden.

![](/attachments/597853568/986808510.png)  


Si se pulsa el botón "GUARDAR" se modifica la convocatoria de reunión con los nuevos datos introducidos o con los cambios realizados en cada una de las pantallas (Datos generales, Memorias o Documentación).

Se muestra un mensaje de que la convocatoria de reunión se ha modificado correctamente igual que el de la siguiente imagen.

![](/attachments/597853568/597880420.png)

##### Eliminar documento

Cuando se pulsa el icono de eliminar documento se muestra una ventana emergente con un mensaje de confirmación.

![](/attachments/597853568/986808511.png)  


En caso de responder afirmativamente (botón "Aceptar") el documento desaparecerá del listado de documentos. Se muestra el icono de la admiración en el menú de "Documentación" y el mensaje de información en la parte de abajo de la pantalla en la zona del "Área de acciones" para recordar al gestor/a que debe de pulsar el botón GUARDAR para que los cambios realizados (en este caso la eliminación de un documento) se consoliden.

### Consultar convocatoria de reunión

La consulta de una convocatoria de reunión (el botón del icono del ojo) abre el formulario de "Datos generales" de una convocatoria de reunión en modo consulta. Esta acción estará disponible para aquellas convocatorias de reunión que tienen una acta asociada en estado "Finalizada" por lo que el gestor/a no podrá realizar ningún cambio en los datos de la convocatoria de reunión, sólo podrá visualizarla en modo consulta.

La consulta de una convocatoria de reunión esta formada por los siguientes bloques de información:

![](/attachments/597853568/986808442.png)

  


* **Datos generales**: conjunto de datos de información general sobre la convocatoria de reunión.
* **Memorias**: conjunto de memorias que has sido evaluadas en la convocatoria de reunión.
* **Documentación**: listado de documentos adjuntados a la convocatoria.

El gestor/a únicamente puede visualizar la información de la convocatoria de reunión, pero no podrá modificar sus datos.

### Eliminar convocatoria de reunión

Sólo se puede eliminar una convocatoria sino se ha creado todavía la acta asociada o no tiene memorias asociadas, si se da una de las dos situación ya no se podrá eliminar.

Si se pulsa el icono "Eliminar" ![](/attachments/597853568/597880381.png) situado en la última columna "Acciones" de la tabla de resultados de la búsqueda de convocatorias de reunión, se muestra una ventana emergente de confirmación donde se le pregunta al gestor/a si realmente desea eliminar la convocatoria de reunión.

![](/attachments/597853568/986808443.png)  


Si se pulsa el botón "Aceptar" de la ventana emergente se realiza el borrado de la convocatoria de reunión y ya no le volverá a salir en la opción de menú de "Convocatorias de reunión" y será eliminada del sistema. Si se pulsa el botón de "Cancelar" de la ventana emergente se volverá a activar la pantalla del listado de Convocatorias de reunión sin eliminar la convocatoria.

### Notificar convocatoria

Si se pulsa el icono "Notificar convocatoria", ![](/attachments/597853568/711426142.png), situado en la última columna "Acciones" de la tabla de convocatorias de reunión, se realiza el envío de un comunicado a todos los miembros activos del comité para informarles de que existe una nueva convocatoria programada en la que son citados. Esta acción sólo estará disponible si todavía no se ha enviado, es decir, la fecha de envío no esta informada. Una vez enviada la notificación se informará el campo "Fecha envío"  del listado de convocatorias de reunión y no se volverá a mostrar el icono de "Enviar".

Una vez enviado el comunicado se muestra un mensaje de que la convocatoria de reunión se ha enviado correctamente igual que el de la siguiente imagen.

![](/attachments/597853568/597880402.png)

### Exportar

Si se pulsa el icono "Exportar" ![](/attachments/597853568/597880386.png) situado en la parte inferior  de la pantalla en el "Área de acciones", se muestra una ventana emergente que permite seleccionar el formato de exportación y la información a incluir en la generación del informe asociado al listado de convocatorias de reunión.

![](/attachments/597853568/597880408.png)

 

A continuación se detalla el significado de cada uno de los campos del formulario:

* **Seleccione el tipo de exportación**: indica el tipo del formato del fichero exportado. Se permite dos posibles formatos:
	+ XLSX
	+ CSV
* **Seleccione los apartado a incluir en el informe**: por defecto se incluyen todos los apartados de información que forman una convocatoria de reunión:
	+ **Datos generales**: conjunto de datos de información general sobre la convocatoria de reunión. Este apartado no se muestra para marcar o desmarcar porque siempre se incluye en la exportación. Contiene los siguientes campos:  
	
		- Comité: comité que va a realizar las evaluaciones de las memorias asignadas a la convocatoria de reunión.
		- Fecha evaluación: fecha de celebración de la convocatoria de reunión.
		- Código: código con formato ACTAsecuencial/YYYY/COMITE , donde COMITE es el comité elegido, YYYY es el año actual y secuencial es el número del acta que corresponde a la convocatoria, es un secuencial por comité
		- Tipo convocatoria: indica el tipo de la convocatoria. Campo con tres posibles valores:
			* Ordinaria
			* Extraordinaria
			* Seguimiento
		- Orden del día: orden del día de la convocatoria de reunión.
	+ **Memorias**: conjunto de memorias que se van a evaluar o se han evaluado en la convocatoria de reunión. Por cada memoria se exportan los siguientes campos:  
	
		- Referencia: código que representa a la memoria.
		- Nombre solicitante: nombre de la persona que ha creado la solicitud de evaluación a la que pertenece la memoria que se esta evaluando en la convocatoria de reunión.
		- Apellidos solicitante: apellidos de la persona que ha creado la solicitud de evaluación a la que pertenece la memoria que se esta evaluando en la convocatoria de reunión.
		- Nombre evaluador1: nombre de la persona que se ha asignado como "Evaluador 1" de la memoria.
		- Apellidos evaluador1: apellidos de la persona que se ha asignado como "Evaluador 1" de la memoria.
		- Nombre evaluador2: nombre de la persona que se ha asignado como "Evaluador 2" de la memoria.
		- Apellidos evaluador2: apellidos de la persona que se ha asignado como "Evaluador 2" de la memoria.

Se puede desmarcar la opción "Todos" lo que hará que se desmarque el bloque de "Memorias" o bien desmarcar directamente el bloque de "Memorias" sino se desea que se exporten los datos de las memorias asignadas a cada convocatoria de reunión. Los datos generales de la convocatoria de reunión siempre se exportarán.

![](/attachments/597853568/597880407.png)  


Una vez seleccionado el formato y los bloques de información al pulsar sobre el botón "**Exportar**" se genera el informe asociado al listado de acuerdo al formato de exportación seleccionado. A continuación se muestra una imagen del fichero exportado.

![](/attachments/597853568/597880330.png)

## Actas

Cada convocatoria de reunión debe de estar asociada a una acta. Por lo tanto cuando el gestor/a crea una convocatoria de reunión para un comité tendrá que venir al menú de "Actas" para crear el acta asociada. Mientras dure la evaluación de las distintas memorias el acta estará en estado "En elaboración", y una vez que todas las memorias tengan un dictamen, se activará el icono de "Finalizar acta" y será cuando se hace el cambio de estado de las memorias y ya no se podrá cambiar el dictamen y se considera finalizada la evaluación.

La sexta opción del menú principal de Ética es "Actas" que muestra en la parte superior de la pantalla el buscador y en la parte inferior el resultado de la búsqueda sin aplicar ningún filtro tal como muestra la siguiente imagen.

![](/attachments/597853568/597880328.png)  


Los campos disponibles en el formulario de la búsqueda son:

* **Comité**: es un desplegable con las siguiente opciones:
	+ CEI
	+ CEEA
	+ CBE
* **Fecha evaluación inicio:** campo para introducir la fecha la cual se va a tomar como referencia para obtener las actas cuya fecha de evaluación sea mayor o igual a esta fecha.
* **Fecha evaluación fin:** campo para introducir la fecha la cual se va a tomar como referencia para obtener las actas cuya fecha de evaluación sea menor o igual a esta fecha.
* **Nº Acta:** número del acta que se quiere buscar
* **Estado**: estado del acta, los posibles valores son:  

	+ En elaboración: se pueden realizar cambios en el acta, en la convocatoria de reunión y en las evaluaciones/seguimientos asociadas a ella.
	+ Finalizada: no se pueden realizar cambios en el acta, ni en la convocatoria de reunión ni en las evaluaciones/seguimientos asociadas a ella.

Tras pulsar el botón “Buscar”, se muestra el listado de actas que cumplan con los parámetros introducidos en el formulario.

Al igual que el resto de listados de la aplicación, el resultado de la búsqueda es un listado compuesto por una tabla paginada, con ocho columnas de información y una última columna de acciones.

Desde este listado el gestor/a puede realizar las siguientes acciones:

![](/attachments/597853568/597880334.png)  


1. **Añadir acta**: este botón se encuentra en la parte inferior de la pantalla en el "Área de acciones", permite al gestor/a crear una nueva acta asociada a una de las convocatorias de reunión creadas.
2. **Ver/consultar:** este botón representado por el icono ![](/attachments/597853568/597880397.png) y situado en la última columna "Acciones" de la tabla, permite al gestor/a consultar el acta pero sin poder realizar ningún cambio en ella. Disponible esta acción cuando el estado del acta es "Finalizada"
3. **Editar:** este botón representado por el icono ![](/attachments/597853568/597880383.png) y situado en la última columna "Acciones" de la tabla, permite al gestor/a modificar el acta. Disponible esta acción cuando el estado del acta es "En elaboración"
4. **Descargar el fichero:** este botón representado por el icono ![](/attachments/597853568/597880332.png)y situado en la última columna "Acciones" de la tabla, permite al gestor/a descargarse el fichero con el acta.
5. **Finalizar acta**: este botón representado por el icono ![](/attachments/597853568/597880323.png)y situado en la última columna "Acciones" de la tabla, permite al gestor/a dar por concluida el acta de tal forma que no se puede modificar las evaluaciones o seguimientos de las memorias incluidas en el acta.

A continuación se detalla el significado de cada una de las columnas de información del listado:

* **Comité:** comité que va a realizar la evaluación de le memoria.
* **Fecha evaluación:** fecha de la convocatoria de reunión.
* **Nº acta:** número del acta.
* **Convocatoria:** tipo de convocatoria, puede tener uno de los siguientes valores:
	+ Ordinaria: si una convocatoria es de este tipo únicamente se evaluarán formularios de memoria y retrospectivas.
	+ Extraordinaria: si una convocatoria es de este tipo únicamente se evaluarán formularios de memoria y retrospectivas.
	+ Seguimiento: si una convocatoria es de este tipo únicamente se evaluarán formularios de seguimiento anual o final de las memorias.
* **Nº iniciales:** número de memorias iniciales (nuevas) que se van a revisar o se han revisado en la reunión de evaluación asociada a la acta**,** es decir, las de revisión 1\.
* **Nº revisiones:** número de memorias reevaluadas que se van a revisar o se han revisado en la reunión de evaluación asociada a la acta, tienen una versión mayor que 1\.
* **Nº total:** número de iniciales mas el número de revisiones.
* **Estado:** estado del acta, los posibles valores son:  

	+ En elaboración: se pueden realizar cambios en el acta y en las evaluaciones/seguimientos asociadas a ella.
	+ Finalizada: no se pueden realizar cambios en el acta ni en las evaluaciones asociadas a ella.

### Añadir acta

Tras pulsar este botón "AÑADIR ACTA" se carga en pantalla el formulario de "Datos generales" de una acta.

Una acta esta formada por los siguientes bloques de información.

![](/attachments/597853568/841089225.png)

  


  


* **Datos generales**: conjunto de datos de información general sobre el acta.
* **Memorias**: conjunto de memorias que se van a evaluar o se han evaluado en la convocatoria de reunión asociada al acta. Esta pantalla es de información.
* **Asistentes**: conjunto de miembros del comité indicando si han asistido o no a la convocatoria de reunión. Por defecto cogen el valor indicado en la convocatoria de reunión (los asistentes que no se hayan marcado en la convocatoria de reunión se les asignará el valor "No" en el campo "Asistencia").

Una vez introducidos todos los datos obligatorios del formulario "Datos generales", se activará el botón "GUARDAR" situado en la parte inferior de la pantalla en el "Área de acciones" que permite dar de alta la nueva acta.

El botón "GUARDAR" no sólo guarda los datos del formulario que este mostrando en ese momento la pantalla, sino todos los formularios que componen la nueva acta, es decir, los "Datos generales" y los "Asistentes". El formulario de "Memorias" es de sólo consulta para ver las memorias que son evaluadas en la convocatoria de reunión asociada al acta. Tras guardar el acta de la convocatoria de reunión se enviará un comunicado de "Revisión de acta" a todos los miembros del comité que hayan sido marcados como asistentes a la convocatoria de reunión.

#### Datos generales

Formulario con los datos de información básica de una acta. A continuación se describe cada uno de los campos solicitados en este formulario:

![](/attachments/597853568/841089225.png)  


* **Reunión de evaluación:** campo obligatorio donde se debe seleccionar una de las convocatoria de reunión que han sido creadas por el gestor/a y que todavía no tienen una acta asociada. En el listado únicamente salen los códigos de las convocatorias de reunión que no tienen un acta asociada.
* **Hora inicio**:  campo obligatorio donde se debe de introducir la hora y los minutos del inicio de la reunión de la convocatoria de reunión. Se puede introducir la hora y minutos de forma manual o con la ayuda del icono del reloj que abrirá una pantalla emergente como la siguiente para seleccionar la hora y minutos de forma gráfica.

![](/attachments/597853568/597880377.png)

* **Hora fin**: campo obligatorio donde se debe de introducir la hora y los minutos del finalización de la reunión de la convocatoria de reunión. Se puede introducir la hora y minutos de forma manual o con la ayuda del icono del reloj que abrirá una pantalla emergente como la siguiente para seleccionar la hora y minutos de forma gráfica.
* **Resumen**: campo obligatorio donde se debe de introducir el resumen del acta. Es un campo de texto libre con un máximo de 4000 caracteres que dispone del [componente](https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.20Componentetextoenriquecido "https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.20Componentetextoenriquecido")para introducción de texto con formato enriquecido.

Una vez introducidos todos los campos obligatorios del formulario de "Datos generales" se puede ver en la siguiente imagen que se activa el botón "GUARDAR" y se muestra el icono del signo de admiración en la opción del menú de "Datos generales", en la opción de menú de "Asistentes" y en la parte de abajo de la pantalla a lado del botón "GUARDAR". Este icono indica que se han introducido cambios en el formulario (se han informado los campos) pero no se ha dado a "GUARDAR". En la opción de menú de "Asistentes" se muestra el icono aunque el gestor/a no haya realizado cambios porque se introducen de forma automática todos los miembros activos del comité, salvo que en la convocatoria de reunión ya se haya indicado que alguno de ellos no va a asistir, en estos caso se les pone el valor de "Asistencia" a "No".

 

Si se pulsa el botón "GUARDAR" se crea la acta con los datos generales de la acta y con los asistentes indicados en la convocatoria de reunión asociada. En el momento de la creación se puede modificar la asistencia de alguno de los miembros del comité a través de la opción de menú "Asistentes". Por defecto se ponen que todos los miembros del comité van a asistir, salvo que en la convocatoria de reunión ya se haya indicado que alguno de ellos no va a asistir, en estos caso se les pone el valor de "Asistencia" a "No". Tras guardar el acta de la convocatoria de reunión se enviará un comunicado de "Revisión de acta" a todos los miembros del comité que hayan sido marcados como asistentes a la convocatoria de reunión.

Se muestra un mensaje de que la acta se ha creado correctamente igual que el de la siguiente imagen.

![](/attachments/597853568/597880314.png)  


#### Memorias

Listado de memorias que se van a evaluar en la convocatoria de reunión asociada al acta. Es una pantalla de información, no se puede modificar nada en este formulario.

![](/attachments/597853568/597880311.png)  


A continuación se detalla el significado de cada una de las columnas del listado:

* **Referencia memoria:** código identificativo de la memoria.
* **Versión:** versión de la memoria.
* **Dictamen:** dictamen obtenido por la memoria. Dependiendo del tipo de evaluación el valor del dictamen podrá ser.
	+ Si el tipo de evaluación es Memoria:
		- Favorable
		- Favorable pendiente de revisión mínima
		- Pendiente de correcciones
		- No procede evaluar
	+ Si el tipo de evaluación es Retrospectiva:
		- Favorable
		- Desfavorable
	+ Si el tipo de evaluación es Seguimiento anual:
		- Favorable
		- Solicitud de modificaciones
	+ Si el tipo de evaluación es Seguimiento final:
		- Favorable
		- Solicitud de aclaraciones
* **Informe:**pdf con el informe de evaluación o con el informe favorable dependiendo del dictamen de la memoria.

#### Asistentes

Listado con los miembros activos del comité indicando la asistencia o no a la reunión de convocatoria asociada al acta. Por defecto al crear el acta toman el valor indicado en la convocatoria de reunión. Se pondrán que todos van a asistir a la convocatoria a no ser que en la convocatoria se haya puesto lo contrario.

![](/attachments/597853568/597880320.png)  


Desde este listado el gestor/a puede realizar la siguiente acción:

* **Editar**: este botón representado por el icono ![](/attachments/597853568/597880383.png) y situado en la última columna "Acciones" de la tabla, permite al gestor/a modificar la asistencia de un miembro del comité a la reunión de evaluación.

A continuación se detalla el significado de cada una de las columnas del listado:

* **E\-mail:** correo electrónico del miembro del comité.
* **Nombre y apellidos:** nombre y apellidos del miembro del comité.
* **Asistencia:** se indica con el valor "Sí" la asistencia a la reunión y con un valor "No" la no asistencia.
* **Motivo:** motivo de la ausencia o no asistencia del miembro del equipo a la reunión.

##### Editar asistente

Se abre una pantalla que muestra un formulario que permite indicar si el miembro del comité va a asistir o no a la reunión de evaluación. Por defecto coge el valor introducido en la convocatoria de reunión.

En la siguiente imagen se muestra el formulario.

![](/attachments/597853568/597880317.png)

A continuación se describe cada uno de los campos solicitados en este formulario:

* **Asistente:** campo de información, para indicar el nombre y apellidos del miembro del comité que se esta editando.
* **Asistencia:** campo obligatorio donde se debe de seleccionar entre el valor "Sí" o "No". Indica si el miembro del comité va a asistir o no a la reunión. En caso de seleccionar el valor "No" se muestra la siguiente imagen donde se pide que se introduzca el motivo de la ausencia.

![](/attachments/597853568/597880304.png)

* **Motivo**: campo visible y obligatorio únicamente si se ha marcado el valor "No" en el campo "Asistencia". Es un campo de texto libre para que el gestor/a introduzca el motivo de la no asistencia del miembro del comité a la reunión.

Al pulsar sobre el botón "Aceptar" los cambios se verán reflejados en el listado de asistentes del acta mostrando el icono de la admiración en el menú de "Asistentes" y el mensaje de información en la parte de abajo de la pantalla en la zona del "Área de acciones" para recordar al gestor/a que debe de pulsar el botón GUARDAR para que los cambios realizados  se consoliden.

![](/attachments/597853568/597880301.png)

Si se pulsa el botón "GUARDAR" se modifica la acta con los nuevos datos introducidos o con los cambios realizados en cada una de las pantallas (Datos generales o Asistentes)

Se muestra un mensaje de que la acta se ha creado correctamente igual que el de la siguiente imagen.

![](/attachments/597853568/597880314.png)

### Editar acta

La edición de una acta (el botón del icono del lápiz) abre el formulario de "Datos generales" con los mismos campos que el formulario de creación donde el gestor/a puede modificar los datos.

El gestor/a podrá modificar una acta siempre y cuando la acta este en estado "En elaboración". Una vez que se ha finalizado únicamente se podrá consultar la acta sin realizar ningún cambio.

La edición de una acta esta formada por los siguientes bloques de información:

  


![](/attachments/597853568/841089228.png)

  


* **Datos generales**: conjunto de datos de información general sobre el acta.
* **Memorias**: conjunto de memorias que se van a evaluar o se han evaluado en la convocatoria de reunión asociada al acta. Esta pantalla es de información.
* **Asistentes**: conjunto de miembros del comité indicando si han asistido o no a la convocatoria de reunión.
* **Comentarios**: conjunto de comentarios aportados por los distintos miembros del comité una vez que las memorias han sido evaluadas para informar de posibles errores o discrepancias con lo acordado en la reunión.

#### Datos generales

Formulario con los datos de información básica de una acta. A continuación se describe cada uno de los campos solicitados en este formulario:

![](/attachments/597853568/841089228.png)  


* **Reunión de evaluación:** campo con la convocatoria de reunión asociada a la acta. Es un campo que no se podrá modificar una vez creada la acta. Es un campo de consulta.
* **Hora inicio**:  campo obligatorio donde se debe de introducir la hora y los minutos del inicio de la reunión de la convocatoria de reunión. Se puede introducir la hora y minutos de forma manual o con la ayuda del icono del reloj que abrirá una pantalla emergente como la siguiente para seleccionar la hora y minutos de forma gráfica.

![](/attachments/597853568/597880377.png)

* **Hora fin**: campo obligatorio donde se debe de introducir la hora y los minutos del finalización de la reunión de la convocatoria de reunión. Se puede introducir la hora y minutos de forma manual o con la ayuda del icono del reloj que abrirá una pantalla emergente como la siguiente para seleccionar la hora y minutos de forma gráfica.
* **Resumen**: campo obligatorio donde se debe de introducir el resumen del acta. Es un campo de texto libre con un máximo de 4000 caracteres que dispone del [componente](https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.20Componentetextoenriquecido "https://confluence.um.es/confluence/display/HERCULES/MDU+-+Manual+de+usuario#MDUManualdeusuario-3.20Componentetextoenriquecido")para introducción de texto enriquecido.
* **Comentarios al acta notificados por el equipo evaluador**: En este apartado se muestra una tabla resumen del estado de revisión del acta por parte del equipo evaluador. Se listarán todos los miembros activos del equipo evaluador y para cada uno de ellos se indicarán si ha aportado algún comentario a las memorias sobre el acta y si estos comentarios han sido remitidos ya ha secretaría o no. El detalle de estos comentarios estará disponible en el apartado comentarios, siempre y cuando éstos hubieran sido enviados a secretaría (es decir, figure un Sí en la columna Enviados a secretaría de esta tabla).

Una vez introducidos los datos que se desean modificar del formulario de "Datos generales" se puede ver en la siguiente imagen que se activa el botón "GUARDAR" y se muestra el icono del signo de admiración en la opción del menú de "Datos generales" y en la parte de abajo de la pantalla a lado del botón "GUARDAR". Este icono indica que se han introducido cambios en el formulario pero no se ha dado a "GUARDAR".

![](/attachments/597853568/841089230.png)  


  


Si se pulsa el botón "GUARDAR" se modifica la acta con los nuevos datos introducidos o con los cambios realizados en cada una de las pantallas (Datos generales, Asistentes o Comentarios).

Se muestra un mensaje de que la acta se ha modificado correctamente igual que el de la siguiente imagen.

![](/attachments/597853568/597880360.png)  


  


  


![](/attachments/597853568/841089231.png)

  


En el apartado de datos generales también se muestra el apartado Comentarios al acta notificados por el equipo evaluador. En esta tabla se listan todos los miembros del equipo evaluador indicando el número de comentarios que han aportado sobre el acta y si los han remitido ya a Secretaría o aún no lo han hecho. Los comentarios que hubieran sido ya enviados estarán visibles en el apartado Comentarios.

#### Memorias

Listado de memorias que se van a evaluar o que se han evaluador en la convocatoria de reunión asociada al acta. Es una pantalla de información, no se puede modificar nada en este formulario.

![](/attachments/597853568/597880364.png)  


A continuación se detalla el significado de cada una de las columnas del listado:

* **Referencia memoria:** código identificativo de la memoria.
* **Versión:** versión de la memoria.
* **Dictamen:** dictamen obtenido por la memoria. Dependiendo del tipo de evaluación el valor del dictamen podrá ser.
	+ Si el tipo de evaluación es Memoria:
		- Favorable
		- Favorable pendiente de revisión mínima
		- Pendiente de correcciones
		- No procede evaluar
	+ Si el tipo de evaluación es Retrospectiva:
		- Favorable
		- Desfavorable
	+ Si el tipo de evaluación es Seguimiento anual:
		- Favorable
		- Solicitud de modificaciones
	+ Si el tipo de evaluación es Seguimiento final:
		- Favorable
		- Solicitud de aclaraciones
* **Informe:**pdf con el informe de evaluación o con el informe favorable dependiendo del dictamen de la memoria.

#### Asistentes

Listado con los miembros activos del comité indicando la asistencia o no a la reunión de convocatoria asociada al acta.

![](/attachments/597853568/597880362.png)  


Desde este listado el gestor/a puede realizar la siguiente acción:

* **Editar**: este botón representado por el icono ![](/attachments/597853568/597880383.png) y situado en la última columna "Acciones" de la tabla, permite al gestor/a modificar la asistencia de un miembro del comité a la reunión de evaluación.

A continuación se detalla el significado de cada una de las columnas del listado:

* **E\-mail:** correo electrónico del miembro del comité.
* **Nombre y apellidos:** nombre y apellidos del miembro del comité.
* **Asistencia:** se indica con el valor "Sí" la asistencia a la reunión y con un valor "No" la no asistencia.
* **Motivo:** motivo de la ausencia o no asistencia del miembro del equipo a la reunión.

##### Editar asistente

Se abre una pantalla que muestra un formulario que permite indicar si el miembro del comité va a asistir o no a la reunión de evaluación.

En la siguiente imagen se muestra el formulario.

![](/attachments/597853568/597880317.png)

A continuación se describe cada uno de los campos solicitados en este formulario:

* **Asistente:** campo de información, para indicar el nombre y apellidos del miembro del comité que se esta editando.
* **Asistencia:** campo obligatorio donde se debe de seleccionar entre el valor "Sí" o "No". Indica si el miembro del comité va a asistir o no a la reunión. En caso de seleccionar el valor "No" se muestra la siguiente imagen donde se pide que se introduzca el motivo de la ausencia.

![](/attachments/597853568/597880304.png)

* **Motivo**: campo visible y obligatorio únicamente si se ha marcado el valor "No" en el campo "Asistencia". Es un campo de texto libre para que el gestor/a introduzca el motivo de la no asistencia del miembro del comité a la reunión.

Al pulsar sobre el botón "Aceptar" los cambios se verán reflejados en el listado de asistentes del acta mostrando el icono de la admiración en el menú de "Asistentes" y el mensaje de información en la parte de abajo de la pantalla en la zona del "Área de acciones" para recordar al gestor/a que debe de pulsar el botón GUARDAR para que los cambios realizados  se consoliden.

![](/attachments/597853568/597880354.png)  


Si se pulsa el botón "GUARDAR" se modifica la acta con los nuevos datos introducidos o con los cambios realizados en cada una de las pantallas (Datos generales, Asistentes o Comentarios)

Se muestra un mensaje de que la acta se ha modificado correctamente igual que el de la siguiente imagen.

![](/attachments/597853568/597880353.png)  


  


  


#### Comentarios

Listado de comentarios sobre las memoria evaluadas en la convocatoria de reunión aportados por el equipo evaluador una vez que se ha elaborado el acta de la reunión.

Como se indicaba previamente, en el apartado de datos generales se muestra el resumen del estado de revisión del acta por parte del equipo evaluador, indicando si cada miembro ha remitido algún comentario o aún no lo ha hecho.

![](/attachments/597853568/842039350.png)

  


El equipo de gestión (Secretaría) podrá visualizar los comentarios aportados por el equipo evaluador, una vez que estos los hayan remitido a Secretaría. Si los comentarios aún no han sido enviados a Secretaría no serán visibles para el equipo de gestión.

![](/attachments/597853568/842039351.png)

  


El equipo de gestión podrá visualizar todos los comentarios de los miembros del equipo evaluador que hubieran sido enviados a Secretaría pero no podrá modificarlos.

El equipo de gestión también podrá añadir sus propios comentarios sobre acta pero esto no supondrá que se actualicen los comentarios de Evaluación de la memoria correspondiente. Si cualquier comentario aportado sobre acta, ya sea procedente de un miembro del equipo evaluador ya sea del propio equipo de gestión, se desea que figure como comentario de Evaluación de la memoria deberá incorporarse expresamente a la Evaluación de memoria, retrospectiva o seguimiento correspondiente.

  


Desde este listado el gestor/a puede realizar las siguientes acciones:

1. **Añadir comentario**:  esta acción se encuentra disponible a través del botón "Añadir comentario" disponible a pie del listado de comentarios. Permite al gestor/a introducir un nuevo comentario al acta. Únicamente estará activo cuando todas las memorias ya están evaluadas por la comisión y, por tanto, disponen de un dictamen. En el caso de que alguna memoria no disponga de dictamen, el botón se mostrará deshabilitado. Estos comentarios no forman parte del informe de evaluación, son únicamente aportaciones sobre acta.

![](/attachments/597853568/597880356.png)

**2\. Editar:** esta acción representada por el icono ![](/attachments/597853568/597880383.png) permite al gestor/a modificar los datos del comentario del acta. Esta acción solamente estará disponible sobre los comentarios que hubiera añadido el/la propio/a gestor/a. Los comentarios aportados por otros miembros del equipo evaluador sólo podrán ser consultados.

**3\. Eliminar**: este botón representado por el icono ![](/attachments/597853568/597880381.png)y situado en la última columna "Acciones" de la tabla, permite gestor/a eliminar el comentario del acta. Esta acción solamente estará disponible sobre los comentarios que hubiera añadido el/la propio/a gestor/a. Los comentarios aportados por otros miembros del equipo evaluador sólo podrán ser consultados.

A continuación se detalla el significado de cada una de las columnas del listado:

* **Evaluador:** nombre y apellidos del evaluador/a que ha dado de alta el comentario en el acta.
* **Memoria:** referencia de la memoria a la que se le esta añadiendo el comentario.
* **Bloque:** bloque del formulario de memoria al que se le esta añadiendo el comentario.
* **Apartado:** apartado del formulario de memoria al que se le esta añadiendo el comentario.
* **Subapartado:** subapartado del formulario de memoria al que se le esta añadiendo el comentario.
* **Comentarios:** texto con el comentario que se quiere aportar en el apartado seleccionado de la memoria.

##### Añadir comentario

Los comentarios aportados a la acta no se incluyen en el  informe de evaluación de la memoria, son únicamente comentarios de la acta, tiene que ser el gestor/a el que los añada manualmente a la evaluación o seguimiento desde la opción de menú "Evaluaciones" (si es una evaluación de una memoria o retrospectiva) o de "Seguimientos" (si es una evaluación del formulario anual o final de la memoria).

Al pulsar sobre el botón "**Añadir Comentario**", se abrirá un formulario como el mostrado en la siguiente imagen.

![](/attachments/597853568/597880347.png)

A continuación se describe cada uno de los campos solicitados en este formulario:

* **Memoria**: campo obligatorio donde se debe de seleccionar una de las memorias evaluadas en la convocatoria de reunión. Se muestra un listado con la referencia de las distintas memorias.
* **Bloque**: campo obligatorio donde se debe de seleccionar uno de los bloques que forman el formulario de la memoria seleccionada en el campo "Memoria". Una vez seleccionado el bloque se muestra tal y como muestra la siguiente imagen, los apartados del bloque seleccionado, siendo obligatorio seleccionar un apartado o bien un subapartado del bloque (pulsar sobre uno de los cuadrados)

![](/attachments/597853568/597880345.png)

* **Comentario**: campo obligatorio de texto libre donde el evaluador/a  o gestor/a expone el comentario que quiere aportar en el apartado seleccionado de la memoria.

Al pulsar sobre el botón "Añadir" el comentario se añadirá al listado de comentarios de la acta mostrando el icono de la admiración en el menú de "Comentarios" y el mensaje de información en la parte de abajo de la pantalla en la zona del "Área de acciones" para recordar al evaluador/a o gestor/a que debe de pulsar el botón GUARDAR para que los cambios realizados (en este caso un nuevo comentario) se consoliden.

 ![](/attachments/597853568/597880352.png)  


Si se pulsa el botón "GUARDAR" se modifica la acta con los cambios realizados en la pantalla Comentarios (única pantalla donde el evaluador/a puede realizar cambios)

Se muestra un mensaje de que la acta se ha modificado correctamente igual que el de la siguiente imagen.

![](/attachments/597853568/597880350.png)  


##### Editar comentario

Solamente se podrán modificar los comentarios que hubieran sido creados por el/la propio/a gestor/a. Tras pulsar la acción editar se muestra una ventana con los datos del comentario, pudiendo modificar cualquiera de sus campos:

![](/attachments/597853568/597880341.png)

  


Al pulsar sobre el botón "Aceptar" el comentario se modificará y los cambios se verán reflejados en el listado de comentarios del acta mostrando el icono de la admiración en el menú de "Comentarios" y el mensaje de información en la parte de abajo de la pantalla en la zona del "Área de acciones" para recordar al evaluador/a que debe de pulsar el botón GUARDAR para que los cambios realizados (en este caso una modificación de un comentario) se consoliden.

![](/attachments/597853568/842039354.png)

Si se pulsa el botón "GUARDAR" se modifica la acta con los cambios realizados en la pantalla Comentarios (única pantalla donde el evaluador/a puede realizar cambios)

Se muestra un mensaje de que la acta se ha modificado correctamente igual que el de la siguiente imagen.

![](/attachments/597853568/597880350.png)

##### Eliminar comentario

Los comentarios aportados a la acta no se incluyen en el  informe de evaluación de la memoria, son únicamente comentarios de la acta, tiene que ser el gestor/a el que los añada manualmente a la evaluación o seguimiento desde la opción de menú "Evaluaciones" (si es una evaluación de una memoria o retrospectiva) o de "Seguimientos" (si es una evaluación del formulario anual o final de la memoria).

Cuando se pulsa el icono de eliminar comentario se muestra una ventana emergente con un mensaje de confirmación.

![](/attachments/597853568/597880337.png)

En caso de responder afirmativamente (botón "Aceptar") el comentario desaparecerá del listado de comentarios. Se muestra el icono de la admiración en el menú de "Comentarios" y el mensaje de información en la parte de abajo de la pantalla en la zona del "Área de acciones" para recordar al evaluador/a que debe de pulsar el botón GUARDAR para que los cambios realizados (en este caso la eliminación de un comentario) se consoliden.

### Ver acta

Si el acta está en estado "Finalizada" el/la gestor/a únicamente podrá visualizar el acta en modo consulta (sin que pueda modificar ningún dato). Se mostrará el detalle del acta:

![](/attachments/597853568/841089233.png)

  


* **Datos generales**: conjunto de datos de información general sobre el acta.
* **Memorias**: conjunto de memorias que se han evaluado en la convocatoria de reunión asociada al acta.
* **Asistentes**: conjunto de miembro del comité indicando si han asistido o no a la convocatoria de reunión.
* **Comentarios**: conjunto de comentarios aportados por los distintos miembros del comité una vez que las memorias han sido evaluadas para informar de posibles errores o discrepancias con lo acordado en la reunión.

#### Datos generales

Formulario de consulta con los datos de información básica de una acta.

  


![](/attachments/597853568/841089233.png)

  


A continuación se describe cada uno de los campos de este formulario:

* **Reunión de evaluación:** código de la convocatoria de reunión asociada al acta.
* **Hora inicio:** hora de inicio de la convocatoria de reunión.
* **Hora fin:** hora de finalización de la convocatoria de reunión.
* **Resumen:** resumen de lo acordado en la reunión.
* **Comentarios al acta notificados por el equipo evaluador**: Se muestra una tabla resumen del estado de revisión del acta por parte del equipo evaluador. Se listarán todos los miembros activos del equipo evaluador y para cada uno de ellos se indicarán si ha aportado algún comentario a las memorias sobre el acta y si estos comentarios han sido remitidos ya ha secretaría o no. El detalle de estos comentarios estará disponible en el apartado comentarios, siempre y cuando éstos hubieran sido enviados a secretaría (es decir, figure un Sí en la columna Enviados a secretaría de esta tabla).

#### Memorias

Listado de memorias que se han evaluado en la convocatoria de reunión asociada al acta.

![](/attachments/597853568/597880483.png)  


A continuación se detalla el significado de cada una de las columnas del listado:

* **Referencia memoria:** código identificativo de la memoria.
* **Versión:** versión de la memoria.
* **Dictamen:** dictamen obtenido por la memoria. Dependiendo del tipo de evaluación el valor del dictamen podrá ser.
	+ Si el tipo de evaluación es Memoria:
		- Favorable
		- Favorable pendiente de revisión mínima
		- Pendiente de correcciones
		- No procede evaluar
	+ Si el tipo de evaluación es Retrospectiva:
		- Favorable
		- Desfavorable
	+ Si el tipo de evaluación es Seguimiento anual:
		- Favorable
		- Solicitud de modificaciones
	+ Si el tipo de evaluación es Seguimiento final:
		- Favorable
		- Solicitud de aclaraciones
* **Informe:**pdf con el informe de evaluación o con el informe favorable dependiendo del dictamen de la memoria.

#### Asistentes

Listado con los miembros del comité indicando la asistencia o no a la reunión de convocatoria asociada al acta.

![](/attachments/597853568/597880482.png)

A continuación se detalla el significado de cada una de las columnas del listado:

* **E\-mail:** correo electrónico del miembro del comité.
* **Nombre y apellidos:** nombre y apellidos del miembro del comité.
* **Asistencia:** se indica con el valor "Sí" la asistencia a la reunión y con un valor "No" la no asistencia.
* **Motivo:** motivo de la ausencia o no asistencia del miembro del equipo a la reunión.

#### Comentarios

Listado de comentarios aportados por el equipo evaluador sobre el acta de la reunión de convocatoria. Hacen referencia a las diferentes evaluaciones de memorias incluidas en el acta.

![](/attachments/597853568/597880487.png)

A continuación se detalla el significado de cada una de las columnas del listado:

* **Evaluador:** nombre y apellidos del evaluador/a que ha dado de alta el comentario en el acta.
* **Memoria:** referencia de la memoria a la que se le esta añadiendo el comentario.
* **Bloque:** bloque del formulario de memoria al que se le esta añadiendo el comentario.
* **Apartado:** apartado del formulario de memoria al que se le esta añadiendo el comentario.
* **Subapartado:** subapartado del formulario de memoria al que se le esta añadiendo el comentario.
* **Comentarios:** texto con el comentario que se quiere aportar en el apartado seleccionado de la memoria.

### Descargar documento acta

Si se pulsa el icono "Ver fichero" ![](/attachments/597853568/597880332.png) situado en la parte inferior  de la pantalla en el "Área de acciones", se abre en otra pantalla el fichero de la acta con la información de la acta (datos generales de la acta), número de evaluaciones nuevas, número de evaluaciones que son revisiones y el listado de memorias evaluadas indicando el número de versión y el dictamen.

### Finalizar acta

Funcionalidad por la que el gestor/a da por finalizada una acta. Sólo esta disponible si se cumple:

* Que la acta esta en estado "En elaboración".
* Todas las memorias, que no son de revisión mínima, están evaluadas (tienen un dictamen asignado).

Se realizarán las siguientes  acciones:

* Cambiar el estado del acta a "Finalizada", por lo que ya no se podrá modificar los datos del acta ni realizar ningún cambio en ninguna de las evaluaciones de memorias asociadas a la convocatoria (las que no son de revisión mínima).
* Cambiar el estado de todas las memorias asignadas a la convocatoria de reunión asociada al acta, según el dictamen de la evaluación (a todas las memorias que no son de revisión mínima).
* Notificar al personal de investigación de que ya tienen disponible el informe favorable o de evaluación a través el envío de un comunicado (sólo para las evaluaciones que no son de revisión mínima)

Una vez realizado todos los cambios se muestra un aviso de que la acta se ha finalizado correctamente.

![](/attachments/597853568/597880485.png)

### Exportar

Si se pulsa el icono "Exportar" ![](/attachments/597853568/597880386.png) situado en la parte inferior  de la pantalla en el "Área de acciones", se muestra una ventana emergente que permite seleccionar el formato de exportación y la información a incluir en la generación del informe asociado al listado de actas.

![](/attachments/597853568/597880478.png)  


A continuación se detalla el significado de cada uno de los campos del formulario:

* **Seleccione el tipo de exportación**: indica el tipo del formato del fichero exportado. Se permite dos posibles formatos:
	+ XLSX
	+ CSV
* **Seleccione los apartado a incluir en el informe**: por defecto se incluyen todos los apartados de información que forman una acta:
	+ **Datos generales**: conjunto de datos de información general sobre la acta. Este apartado no se muestra para marcar o desmarcar porque siempre se incluye en la exportación. Contiene los siguientes campos:  
	
		- Comité**:**comité que va a realizar las evaluaciones de las memorias asignadas a la convocatoria de reunión asociada al acta.
		- Fecha evaluación**:** fecha de celebración de la convocatoria de reunión.
		- Nº acta: número de la acta.
		- Tipo convocatoria: indica el tipo de la convocatoria. Campo con tres posibles valores:
			* Ordinaria
			* Extraordinaria
			* Seguimiento
		- Nº iniciales: número de memorias iniciales (nuevas) que se van a revisar o se han revisado en la reunión de evaluación asociada al acta.
		- Nº revisiones: Número de memorias reevaluadas que se van a revisar o se han revisado en la reunión de evaluación asociada a la acta.
		- Nº total: la suma suma del número de iniciales y número de revisiones
		- Estado: estado de la acta. campos con dos posibles valores:
			* En elaboración
			* Finalizada
	+ **Memorias**: conjunto de memorias evaluadas en la acta. Por cada memoria se exportan los siguientes campos:  
	
		- Referencia: código identificativo de la memoria.
		- Versión: versión de la evaluación.
		- Dictamen: dictamen obtenido por la memoria en la evaluación.

Se puede desmarcar la opción "Todos" lo que hará que se desmarque el bloque de "Memorias" o bien desmarcar directamente el bloque de "Memorias" sino se desea que se exporten los datos de las memorias incluidas en la acta. Los datos generales de la acta siempre se exportarán.

![](/attachments/597853568/597880477.png)  


Una vez seleccionado el formato y los bloques de información al pulsar sobre el botón "**Exportar**" se genera el informe asociado al listado de acuerdo al formato de exportación seleccionado. A continuación se muestra una imagen del fichero exportado.

![](/attachments/597853568/597880480.png)




