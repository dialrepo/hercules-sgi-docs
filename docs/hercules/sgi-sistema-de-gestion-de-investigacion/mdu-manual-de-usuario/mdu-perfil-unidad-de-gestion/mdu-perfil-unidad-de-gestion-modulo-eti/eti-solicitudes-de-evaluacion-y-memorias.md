# Hércules : ETI\-Solicitudes de evaluación y memorias



## Solicitudes de evaluación

Las solicitudes de evaluación serán creadas por el personal de investigación de la Universidad para solicitar la evaluación de su proyecto de investigación ante una comisión de ética debido a que en su proyecto se trabaja con seres humanos, con animales o con agentes biológicos. El personal de investigación dependiendo con lo que vaya a trabajar tendrá que crear dentro de la solicitud de evaluación, la memoria o memorias correspondientes. Son las memorias las que se envían al comité de ética para su evaluación. El personal de gestión tendrá acceso en modo consulta a todas las solicitudes de evaluación realizadas por el personal de investigación así como a sus memorias.

La primera opción del menú principal de Ética es "Solicitudes de evaluación" que muestra en la parte superior de la pantalla el buscador y en la parte inferior el resultado de la búsqueda sin aplicar ningún filtro tal como muestra la siguiente imagen.

![](/attachments/597853564/841089249.png)  


Los campos disponibles en el formulario de la búsqueda son:

* **Código**: código de referencia de la solicitud de evaluación. Tiene el formato YYYY/secuencia, donde YYYY es el año en el que ha dado de alta la solicitud de evaluación y secuencia en un código secuencial desde 001 hasta 999 relativo al año. Cuando se cambie de año se vuelve a empezar en 001\.
* **Título del proyecto**: nombre o título del proyecto de investigación el cual se va a someter a la evaluación por parte del comité de ética.
* **Comité**: es un desplegable con las siguiente opciones:
	+ CEI
	+ CEEA
	+ CBE
* **Datos del solicitante**: campo para buscar por nombre o apellidos o email de la persona que ha creado la solicitud de evaluación.
* **Estado memoria**: estado de la memoria, puede tener uno de los valores comentados en el apartado [Estados de una memoria](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-de-investigacion/mdu-perfil-de-investigacion-modulo-eti.md#MDUPerfildeinvestigaciónMóduloETI-Estadosdeunamemoria "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-de-investigacion/mdu-perfil-de-investigacion-modulo-eti.md#MDUPerfildeinvestigaciónMóduloETI-Estadosdeunamemoria")

  


Tras pulsar el botón “Buscar”,  se muestra el listado de solicitudes de evaluación que cumplan con los parámetros introducidos en el formulario. Todos los filtros de búsqueda actuarán como una conjunción "y", es decir, las solicitudes de evaluación que se muestren en el listado de resultados deberán cumplir todos los filtros especificados.

Al igual que el resto de listados de la aplicación, el resultado de la búsqueda es un listado compuesto por una tabla paginada, con sus columnas de información y una última columna de acciones.

  


![](/attachments/597853564/841089250.png)

  


  


En el listado se presenta la siguiente información:

* Aviso: El icono de advertencia![](https://confluence.treelogic.com/download/thumbnails/141927441/icono_aviso.png?version=1&modificationDate=1697032292461&api=v2) ![](/attachments/597853564/841089251.png) se mostrará cuando la solicitud de evaluación contenga una o más memorias que está pendiente de ser gestionada por Secretaría (deban de ser incluidas en una convocatoria de reunión o deba otorgarse un dictamen directamente por tener un estado de revisión mínima):
	+ Memorias nuevas, modificadas o de ratificación que hayan sido remitidas a secretaría. Ya estén en primera evaluación o superiores.
	+ Memorias nuevas, modificadas o de ratificación que hayan sido remitidas a secretaría y se encuentren pendiente de revisión mínima  (estado "en secretaría revisión mínina")
	+ Seguimientos anuales remitidos a secretaría
	+ Seguimientos anuales remitidos en secretaría y que estén en estado "modificación" (estado "en secretaría seguimiento anual modificación")
	+ Seguimientos finales remitidos a secretaría
	+ Seguimientos anuales remitidos en secretaría y que estén en estado "aclaraciones" (estado "en secretaría seguimiento final aclaraciones")
	+ Retrospectivas (experimentación animal, CEEA) remitidas a secretaría

Al pasar el ratón por el icono de advertencia se mostrará un tooltip que contendrá la referencia de la memoria incluida en la solicitud de evaluación que debe de ser gestionada (de acuerdo a lo indicado previamente).

  


![](/attachments/597853564/841089252.png)

  


* Solicitante: Persona que realiza la solicitud
* Título del proyecto: Título de la solicitud de evaluación (del proyecto que se someterá a evaluación ética).
* Memoria CEI: Referencia de la memoria del comité de seres humanos que se incluye en la solicitud de evaluación. Para cada memoria se muestra la referencia de la memoria, el estado de la misma y la versión en la que se encuentra. Si existiese más de una memoria para este comité, se mostrarán todas separadas por el carácter ",". Si la cadena de texto compuesta por la referencia, el estado y el número de versión de todas las memoria superase el tamaño visible en la tabla, se podrá ver el contenido completo en un tooltip que se mostrará al pasar el ratón por la cadena de texto mostrada.

![](/attachments/597853564/841089253.png)

  


* Memoria CEEA: Referencia de la memoria del comité de experimentación animal que se incluye en la solicitud de evaluación. Para cada memoria se muestra la referencia de la memoria, el estado de la misma y la versión en la que se encuentra. Si existiese más de una memoria para este comité, se mostrarán todas separadas por el carácter ",". Si la cadena de texto compuesta por la referencia, el estado y el número de versión de todas las memoria superase el tamaño visible en la tabla, se podrá ver el contenido completo en un tooltip que se mostrará al pasar el ratón por la cadena de texto mostrada.
* Memoria CBE: Referencia de la memoria del comité de experimentación con agentes biológicos que se incluye en la solicitud de evaluación. Para cada memoria se muestra la referencia de la memoria, el estado de la misma y la versión en la que se encuentra. Si existiese más de una memoria para este comité, se mostrarán todas separadas por el carácter ",". Si la cadena de texto compuesta por la referencia, el estado y el número de versión de todas las memoria superase el tamaño visible en la tabla, se podrá ver el contenido completo en un tooltip que se mostrará al pasar el ratón por la cadena de texto mostrada.

  


Desde este listado el personal de gestión puede realizar las siguientes acciones:

* **Consultar**: este botón representado por el icono ![](/attachments/597853564/597880469.png)![](https://confluence.treelogic.com/download/thumbnails/141927441/IconoVer.png?version=1&modificationDate=1659440545668&api=v2) y situado en la última columna "Acciones" de la tabla, permite al personal de gestión ver el detalle de una solicitud de evaluación.
* **Exportar**: este botón representado por el icono  ![](/attachments/597853564/597880472.png)![](https://confluence.treelogic.com/download/thumbnails/141927441/IconoExportar.png?version=1&modificationDate=1659440545675&api=v2) y situado en la parte inferior  de la pantalla en el "Área de acciones", permite la generación del informe asociado al listado de solicitudes de evaluación.

### Consultar solicitud evaluación

La consulta de una solicitud de evaluación (el botón del icono del ojo) abre el formulario de "Datos generales" de una solicitud de evaluación en modo consulta.

La consulta de una solicitud de evaluación esta formada por los siguientes bloques de información:

![](/attachments/597853564/841089243.png)  


  


* **Datos generales**: conjunto de datos de información general sobre el proyecto de investigación que se quiere evaluar.
* **Equipo investigador**: conjunto de personas que forman parte del equipo investigador del proyecto.
* **Asignación de tareas**: conjunto de tareas a realizar por cada una de las personas del equipo investigador en la memoria o memorias correspondientes.
* **Memorias**: memoria o memorias que se tienen que evaluar por el comité ético.

El personal de gestión únicamente puede visualizar la información de la solicitud de evaluación y de sus memorias, pero no podrá modificar sus datos. Es el solicitante de la solicitud de evaluación o bien el responsable de memoria los únicos que pueden modificar los datos.

#### Datos generales

Formulario con los datos de información básica de una solicitud de evaluación.

![](/attachments/597853564/841089243.png)  


A continuación se describe cada uno de los campos de este formulario:

* **Código solicitud convocatoria**: sólo es visible si la solicitud de convocatoria ha sido creada automáticamente a partir de una solicitud de convocatoria (módulo CSP del SGI). Representa al código interno de la solicitud de convocatoria.

![](/attachments/597853564/597880512.png)

* **Código:** código de referencia de la solicitud de evaluación. Tiene el formato YYYY/secuencia, donde YYYY es el año en el que ha dado de alta la solicitud de evaluación y secuencia en un código secuencial desde 001 hasta 999 relativo al año. Cuando se cambie de año se vuelve a empezar en 001\.
* **Título**: título del proyecto para el que se presenta la solicitud de evaluación de ética.
* **Tipo de actividad**: campo donde se debe de seleccionar uno de los tres posibles valores:
	+ Investigación tutelada: si se selecciona Investigación tutelada se mostrará un nuevo campo "Tipo de investigación tutelada"
	+ Práctica docente
	+ Proyecto de investigación

![](/attachments/597853564/597880517.png)  


* **Tipo de investigación tutelada:** sólo es visible en el caso de que en el campo "Tipo de actividad" se escoja la opción de "Investigación tutelada". Campo donde se debe de  seleccionar uno de los tres posibles valores:
	+ Tesis Doctoral
	+ Trabajo Fin de Grado
	+ Trabajo Fin de Máster
* **¿Se dispone de financiación para realizar el proyecto?**: campo donde se debe de seleccionar el valor "Sí" o "No" dependiendo de si el proyecto dispone de financiación o no.
* **Órgano financiador:**  campo donde se debe de introducir el nombre del órgano financiador del proyecto.
* **Estado:** campo donde se debe seleccionar uno de los siguientes valores: 
	+ Concedido
	+ Denegado
	+ Solicitado
* **Importe financiación:** campo dondese debe de introducir el importe de la financiación del proyecto.
* **¿Se se rechaza su solicitud de financiación ejecutará el proyecto con fondos propios?**: sólo es visible si la solicitud de convocatoria ha sido creada automáticamente a partir de una solicitud de convocatoria (módulo CSP del SGI).

![](/attachments/597853564/597880507.png)

* **Fecha inicio**: campo donde se debe de introducir la fecha de inicio del proyecto.
* **Fecha fin**: campo donde se debe de introducir la fecha de finalización del proyecto.
* **Resumen**: campo donde se debe de introducir el resumen del proyecto.
* **Valor social**: campo donde se debe seleccionar uno de los siguientes valores:
	+ Investigación fundamental
	+ Investigación aplicada a la prevención, diagnóstico o tratamiento de alteraciones o de enfermedades físicas, psíquicas u otras anomalías o de sus efectos en los seres humanos, los animales o las plantas.
	+ Investigación aplicada a la evaluación, detección, regulación o modificación de las condiciones fisiológicas, psicológicas o sociales en los seres humanos, los animales o las plantas
	+ Investigación aplicada al desarrollo y la fabricación de aparatos, ayudas técnicas o informáticas, fármacos, alimentos, piensos y otras sustancias o productos, así como la realización de pruebas para comprobar su calidad, eficacia y seguridad
	+ Investigación aplicada a la protección o mejora de las condiciones sociales, políticas, económicas o ambientales en interés del bienestar y/o la salud de los seres humanos.
	+ Investigación aplicada al bienestar de los animales y/o a la mejora de las condiciones de producción de los animales y las plantas.
	+ Investigación dirigida a la protección y conservación de las especies y del medio natural.
	+ Enseñanza superior o la formación para la adquisición o mejora de las aptitudes profesionales.
	+ Investigación jurídica o médico\-legal.
	+ Otra finalidad.

En caso de que se seleccione el valor "Otra finalidad" se debe de introducir de forma obligatoria el campo "Especificar"

Este campo corresponderá con el apartado 1\.1 VALOR SOCIAL DEL PROYECTO del formulario de la memoria.

* **Especificar**: sólo es visible en el campo de que en el campo "Valor social" se escoja la opción "Otra finalidad". En este caso este campo se debe de introducir un campo de texto libre.
* **Objetivos científicos**: campo donde se debe de introducir los principales objetivos científicos del proyecto. Este campo corresponderá con el apartado 3\.1 OBJETIVOS CIENTÍFICOS DEL PROYECTO del formulario de la memoria.
* **Diseño metodológico**: campo donde se debe de introducir una descripción del diseño metodológico del proyecto. Este campo corresponderá con el apartado 3\.2 DISEÑO METODOLÓGICO DEL PROYECTO del formulario de la memoria

#### Equipo investigador

Muestra en una tabla el listado de miembros del equipo investigador del proyecto (o práctica docente).

![](/attachments/597853564/597880504.png)  


A continuación se detalla el significado de cada una de las columnas del listado:

* **E\-mail:** correo electrónico del miembro del equipo de investigación. Dato recuperado de los datos almacenados en la Universidad.
* **Nombre y apellidos:** nombre y apellidos del miembro del equipo de investigación. Datos recuperados de los datos almacenados en la Universidad.
* **Vinculación:** categoría profesional del miembro del equipo de investigación. Dato recuperado de los datos almacenados en la Universidad.
* **Nivel académico:** nivel académicodel miembro del equipo de investigación. Dato recuperado de los datos almacenados en la Universidad.

#### Asignación de tareas

Muestra el listado de tareas asignadas a las personas que forman parte del equipo en la memoria o memorias de la solicitud de evaluación.

Los datos introducidos en esta pantalla corresponderán con el apartado 2\.1 PERSONAL QUE LLEVARÁ A CABO LAS TAREAS del formulario de la memoria.

![](/attachments/597853564/597880511.png)  


A continuación se detalla el significado de cada una de las columnas del listado:

* **Nombre y apellidos**: nombre y apellidos del miembro del equipo de investigación al que se le ha asignado una tarea en una de las memorias de la solicitud de evaluación.
* **Referencia memoria**: código identificativo que representa a la memoria a la que se le ha asignado la tarea.
* **Tarea:** campo de texto libre donde se debe de introducir la descripción de la tarea que va a realizar la persona cuando la asignación de la tarea es para una memoria del comité CEI o CBE. Si la memoria es del comité CEEA el campo "Tarea" no será un campo de texto libre sino que se mostrará un desplegable con los siguientes valores donde se debe de seleccionar uno de ellos:
	+ Diseño de proyecto y procedimientos
	+ Manipulación de animales
	+ Eutanasia
* **Experiencia/Formación**: campo de texto libre donde se debe de introducir la experiencia que tiene la persona haciendo la tarea encomendada cuando la memoria es del comité CEI. Si la memoria es del comité CBE se debe de introducir la formación de la persona. Y si la memoria es del comité CEEA el campo "Experiencia/Formación" no será un campo de texto libre sino que se mostrará un desplegable con los siguientes valores donde se debe de seleccionar uno de ellos desplegable con los valores:
	+ A: Cuidado de los animales
	+ B: Eutanasia de los animales
	+ C: Realización de los procedimientos
	+ D: Diseño de los proyectos y procedimientos
	+ E: Responsable de la supervisión «in situ» del bienestar y cuidado de los animales
	+ F: Veterinario designado
	+ G: Sin especificar
	+ H: No requiere
* **Organismo**: campo para las tareas asignadas a memorias del comité CEEA y CBE donde se debe de introducir el organismo donde se ha formado la persona. Para las taras del comité CEI no será visible dicho campo.
* **Año**: campo para las tareas asignadas a memorias del comité CEEA y CBE donde se debe de introducir el año de obtención de la formación de la persona. Para las taras del comité CEI no será visible dicho campo.

#### Memorias

Muestra el listado de memorias que se van a evaluar o se evaluaron de la solicitud de evaluación.

![](/attachments/597853564/977141934.png)  


Desde este listado el personal de gestión puede realizar las siguientes acciones:

* **Consultar:** este botón representado por el icono ![](/attachments/597853564/597880469.png) y situado en la última columna "Acciones" de la tabla, permite al personal de gestión consultar los datos de una memoria. Provoca un cambio de contexto. El cambio de contexto es un cambio de entidad que recargará el espacio de trabajo con los datos y navegación de la nueva entidad (Memoria).
* **Volver al estado anterior**: este botón representado por el icono ![](/attachments/597853564/597880497.png) y situado en la última columna "Acciones" de la tabla, permite al personal de gestión volver a la memoria a su estado anterior. Únicamente se puede cambiar de estado una memoria cuando se encuentra en unos de estos estados:  

	+ En secretaría
	+ En secretaría revisión mínima
	+ En evaluación
	+ Archivada
* **Notificar revisión mínima**: este botón representado por el icono ![](https://confluence.treelogic.com/download/thumbnails/141927441/IconoNotificar.png?version=1&modificationDate=1713182670846&api=v2)y situado en la última columna "Acciones" de la tabla, permite al personal de gestión notificar a los miembros activos del comité de que el personal de investigación  ya ha realizado los cambios necesarios en la memoria y que la ha enviado a secretaría para que se evalúe de nuevo. Disponible únicamente para las evaluaciones que son de revisión mínima, es decir, aquellas memorias que previamente han tenido un dictamen "Favorable pendiente de revisión mínima"

A continuación se detalla el significado de cada una de las columnas de información del listado:

* **Referencia memoria**: código que representa a la memoria, es un dato generado automáticamente y tiene el formato Mxx/YYYY/secuencia donde xx sera 10, 20 o 30, YYYY será el año, secuencia será un código secuencial que empieza en 000 cada año y comité y va hasta 999 si es de tipo "Nueva", si es de tipo "Ratificación" lleva una R al final (Mxx/YYYY/secuenciaR), y si es de tipo "Modificación" se copia la referencia de la memoria original y se pone al final MRX donde X es un secuencial de las modificaciones que haya tenido la memoria.
* **Comité:** comité que va a realizar la evaluación de le memoria.
* **Estado:** estado de la memoria, puede tener uno de los valores comentados en el apartado [Estados de una memoria](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-de-investigacion/mdu-perfil-de-investigacion-modulo-eti.md#MDUPerfildeinvestigaciónMóduloETI-Estadosdeunamemoria "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-de-investigacion/mdu-perfil-de-investigacion-modulo-eti.md#MDUPerfildeinvestigaciónMóduloETI-Estadosdeunamemoria")
* **Fecha evaluación**: dependiendo del estado es la fecha de evaluación de la convocatoria de reunión en la que ha sido evaluada la memoria o es la fecha de evaluación de la próxima convocatoria de reunión en la que puede ser evaluada la memoria.
* **Fecha límite**: dependiendo del estado es la fecha límite de la convocatoria de reunión en la que ha sido evaluada la memoria o fecha límite hasta la que se aceptan memorias de la próxima convocatoria de reunión en la que puede ser evaluada la memoria.

##### Consultar memoria

La consulta de una memoria (el botón del icono del ojo) abre el formulario de "Datos generales" de una memoria en modo consulta.

La consulta de una memoria esta formada por los siguientes bloques de información:

![](/attachments/597853564/597880495.png)  


1. **Datos generales**: conjunto de datos de información general sobre la memoria que se quiere evaluar.
2. **Formulario**: conjunto de preguntas y respuestas que será diferente en función del material de investigación (humanos, animales o agentes biológicos) que forman el formulario de memoria que se va a evaluar.
3. **Documentación**: listado de documentos adjuntados a la memoria.
4. **Seguimiento anual**: conjuntos de preguntas y respuestas que forman el formulario del seguimiento anual que se va a evaluar.
5. **Seguimiento final**: conjuntos de preguntas y respuestas que forman el formulario del seguimiento final que se va a evaluar.
6. **Retrospectiva**: conjuntos de preguntas y respuestas que forman el formulario de retrospectiva que se va a evaluar.
7. **Evaluaciones**: listado de evaluaciones por las que ha pasado la memoria, incluye el informe de evaluación y/o el informe favorable de la memoria y de los seguimiento anual y final.
8. **Versiones**: listado de pdf generados a partir de los formularios de memoria, seguimiento anual, seguimiento final o retrospectiva enviados a secretaria.
9. **Solicitud evaluación**: enlace a la solicitud de evaluación a la que pertenece la memoria, es una opción de menú de navegación para ir a la consulta de la solicitud de evaluación.

El personal de gestión únicamente puede visualizar la información de la memoria, pero no podrá modificar sus datos. Es el solicitante de la solicitud de evaluación o bien el responsable de memoria los únicos que pueden modificar los datos.

###### Datos generales

Formulario con los datos de información básica de una memoria.

![](/attachments/597853564/597880502.png)  


A continuación se describe cada uno de los campos de este formulario:

* **Comité**: campo donde se debe de seleccionar uno de los tres posibles valores:  

	+ CEI (Comité de Ética de Investigación)
	+ CEEA (Comité de Ética de Experimentación Animal)
	+ CBE (Comité de Ética de Bioseguridad en Experimentación)

Indica el comité que debe de valorar la memoria.

* **Tipo de memoria**: campo donde se debe de seleccionar uno de los tres posibles valores:
	+ Nueva: el personal de investigación debe de cumplimentar todos los datos del formulario de memoria. Disponible si en comité se ha seleccionado CEI, CEEA o CBE
	+ Ratificación: únicamente se puede seleccionar una ratificación del comité CEI. Las memoria de tipo "Ratificación" para el CEI sirven para indicar el nuevo equipo de investigación de la memoria. Sólo se dejará cumplimentar los apartados **5\.8 Documentación adicional** y **5\.9 Aclaraciones al comité** del formulario de memoria, el resto de apartados se mostrarán en modo consulta sin que el personal de investigación pueda cumplimentarlos. El apartado **2\.1 Personal que llevará a cabo las tareas con seres humanos, sus muestras y/o sus datos** como en cualquier otra memoria se cumplimenta a partir de los datos introducidos en la pantalla de "Asignación de tareas" de la solicitud de evaluación.
	+ Modificación: el personal de investigación selecciona la memoria de la cual quiere hacer una modificación y se copian todos los datos introducidos en la memoria seleccionada para que en la nueva memoria ya tenga esos datos de partida y pueda realizar los cambios oportunos. Disponible si en comité se ha seleccionado CEI, CEEA o CBE
* **Responsable memoria**: campo opcional donde se debe de seleccionar la persona que el personal de investigación quiere poner como responsable de la memoria. Dicha persona podrá modificar los datos de la solicitud de evaluación y de la memoria. Lo que no puede hacer es "Enviar a secretaría" la memoria, dicha acción sólo puede hacerla la persona que ha creado la solicitud de evaluación y la memoria.
* **Memoria original:** sólo es visible en el caso de que en el campo "Tipo de memoria" se escoja la opción de "Modificación". En este caso este campo es obligatorio y se debe de seleccionar una de las memorias de la solicitud de evaluación de la cual se quiere copiar todos sus apartados. Las memorias disponibles será aquellas que son del mismo comité que la memoria que se quiere crear y ya haya sido evaluada.
* **Título descriptivo:** sólo es visible en el caso de que en el campo "Comité" se escoja la opción de "CEEA". En este caso se debe de introducir el procedimiento y la especie animal. Este campo corresponderá con el apartado 3\.3 TÍTULO DESCRIPTIVO del formulario de la memoria.
* **Código órgano competente**: sólo es visible en el caso de que en el campo "Comité" se escoja la opción de "CEEA". En este caso este campo es opcional donde se debe de introducir el código del órgano competente. Este dato únicamente se utiliza para mostrarlo en el informe favorable de retrospectiva. El personal de investigación cuando pase el dictamen favorable de la memoria y reciba el código de autorización del órgano competente podrá introducirlo en este campo.

###### Formulario

Información específica de la solicitud de evaluación que será diferente en función del material de investigación (humanos, animales o agentes biológicos). El personal de investigación debe de responder a todas las preguntas sobre su diseño cuyas respuestas permitirán la evaluación ética, metodológica y legal del proyecto. El personal de gestión únicamente puede visualizar la información del formulario, pero no podrá modificar sus datos. Es el solicitante de la solicitud de evaluación o bien el responsable de memoria los únicos que pueden modificar los datos.

![](/attachments/597853564/597880499.png)  


El formulario se divide en:

1. **Bloques del formulario:** Conjunto de apartados. Será necesario que todos los apartados obligatorios del bloque estén informados para poder pasar al siguiente bloque. No se puede navegar del bloque 1 al bloque 3, sin pasar por el bloque 2\. Los bloques son:
* + Valor social y justificación
	+ Cualificación del equipo investigador
	+ Validez científica y metodológica
	+ Aspectos éticos específicos
	+ Cumplimiento de la documentación

Para pasar de un bloque a otro se pueden usar los botones de "**Anterior**" o "**Siguiente**" o bien pulsando directamente sobre el número del bloque (siempre y cuando ya se haya pasado por él) tal y como muestra la siguiente imagen. Del bloque 2 podremos pasar el bloque 1 o al bloque 3, pero no al bloque 4\.

![](/attachments/597853564/597880491.png)

**2\. Apartados dentro de cada bloque:** Dependiendo del material de investigación usado en el proyecto (humanos, animales o agentes biológicos) los apartados son diferentes. Para ver el contenido del apartado el personal de gestión puede pinchar con el ratón en el apartado concreto (sobre el título) y éste se expandirá para mostrar su contenido (tanto la pregunta como la respuesta). El icono del candado ![](/attachments/597853564/597880489.png) indica que el personal de gestión no puede realizar modificaciones en los apartados del formulario.

![](/attachments/597853564/597880494.png)

  


En las memorias de tipo modificación se mostrará un icono que identificará los apartados sobre los que se han introducido cambios respecto a la memoria original sobre la que se solicita la modificación. El icono que representa apartado con cambios es ![](/attachments/597853564/699498546.png) y el aspecto de un bloque de memoria que contiene un apartado con cambios es:

![](/attachments/597853564/699498547.png)

  


###### Documentación

Pantalla donde se visualizan los documentos adjuntados a la memoria a cada uno de sus formularios (memoria, seguimiento anual, seguimiento final y/o retrospectiva)

![](/attachments/597853564/597880492.png)  


La pantalla esta dividida en 4 bloques de documentos:

1. **Memoria**: documentos adjuntados por el personal de investigación mencionados en el bloque 5 del formulario de la memoria. El personal de gestión puede añadir un documento o eliminar un documento de los ya adjuntados si la memoria está en cualquier estado excepto en el estado "En elaboración", "Completada" o "En secretaría". Se permite modificar documentos cuando la memoria ya ha pasado al estado "En evaluación".
2. **Seguimiento anual**: documentos adjuntados por el personal de investigación para el formulario de seguimiento anual (pdf de las publicaciones que se hubiesen generado con el proyecto, autorización de centros escolares, residenciales, etc.). El personal de gestión no puede añadir ni eliminar documentos asociados al formulario de seguimiento anual.
3. **Seguimiento final**: documentos adjuntados por el personal de investigación para el formulario de seguimiento final (pdf de las publicaciones que se hubiesen generado con el proyecto). El personal de gestión no puede añadir ni eliminar documentos asociados al formulario de seguimiento final.
4. **Retrospectiva**: documentos adjuntados por el personal de investigación para el formulario de retrospectiva (hoja de control). El personal de gestión no puede añadir ni eliminar documentos asociados al formulario de retrospectiva.

Al pulsar sobre el botón "**Añadir Documento**" del bloque de Memoria, se abrirá un formulario como el mostrado en la siguiente imagen.

![](/attachments/597853564/597880448.png)

A continuación se describe cada uno de los campos solicitados en este formulario:

* **Nombre**: campo obligatorio donde se debe de introducir el nombre que se quiere dar al documento, un nombre que lo represente.
* **Fichero:** campo obligatorio donde se debe de seleccionar el fichero que se quiere adjuntar y entregar a la comisión.

Una vez introducidos todos los campos obligatorios se activará el botón "Añadir". Si se pulsa el documento se añadirá al listado de documentos de la memoria mostrando el icono de la admiración en el menú de "Documentación" y el mensaje de información en la parte de abajo de la pantalla en la zona del "Área de acciones" para recordar al personal de gestión que debe de pulsar el botón GUARDAR para que los cambios realizados (en este caso un nuevo documento) se consoliden.

Los documentos adjuntados por el personal de gestión se les asigna automáticamente el tipo documento "Documentación adicional"

![](/attachments/597853564/597880447.png)  


###### Seguimiento anual

Contiene la información necesaria para cumplimentar el formulario del seguimiento anual de una memoria (seguimiento que se hace al año de iniciarse el proyecto). El personal de investigación debe de responder a todas las preguntas. El personal de gestión únicamente puede visualizar la información del formulario de seguimiento anual, pero no podrá modificar sus datos. Es el solicitante de la solicitud de evaluación o bien el responsable de memoria los únicos que pueden modificar los datos.

![](/attachments/597853564/597880451.png)

###### Seguimiento final

Contiene la información necesaria para cumplimentar el formulario del seguimiento final de una memoria (seguimiento que se hace al año de finalizarse el proyecto). El personal de investigación debe de responder a todas las preguntas. El personal de gestión únicamente puede visualizar la información del formulario de seguimiento final, pero no podrá modificar sus datos. Es el solicitante de la solicitud de evaluación o bien el responsable de memoria los únicos que pueden modificar los datos.

![](/attachments/597853564/597880450.png)

###### Retrospectiva

Contiene la información necesaria para cumplimentar el formulario retrospectiva de una memoria. El personal de investigación debe de responder a todas las preguntas. El personal de gestión únicamente puede visualizar la información del formulario de retrospectiva, pero no podrá modificar sus datos. Es el solicitante de la solicitud de evaluación o bien el responsable de memoria los únicos que pueden modificar los datos.

Únicamente se mostrará el formulario de Retrospectiva (se muestra la opción de menú "Retrospectiva") si la memoria es de tipo CEEA y el personal de investigación había informado en el apartado 5\.3 EVALUACIÓN RETROSPECTIVA del formulario de memoria que requiere retrospectiva.  


![](/attachments/597853564/597880444.png)

###### Evaluaciones

Listado de evaluaciones por las que ha pasado la memoria y sus seguimientos. Cada vez que el personal de investigación envíe a secretaría una memoria o un seguimiento para su evaluación se mostrará una fila con el resultado de su evaluación, en caso de que no se haya completado la evaluación  se muestra la fila pero sin el dictamen y sin el informe de evaluación o  favorable.

![](/attachments/597853564/977141850.png)  


A continuación se detalla el significado de cada una de las columnas del listado:

* **Tipo:** indica el tipo de evaluación. Los posibles valores que puede tomar dicho campo son:
	+ Memoria
	+ Retrospectiva
	+ Seguimiento anual
	+ Seguimiento final
* **Nº de versión:** versión de la evaluación. Se genera una versión de evaluación por cada formulario que se envíe a secretaría.  Cada tipo de evaluación tiene su propia versión.
* **Dictamen:** resultado de la evaluación. Si la evaluación no se completado no se informará de este campo. Dependiendo del tipo de evaluación el valor del dictamen podrá ser.
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
* **Ficha equipo evaluador:** pdf con el informe de la ficha del equipo evaluador. Sólo estará disponible si la evaluación se ha finalizado. Al seleccionar el icono del pdf ![](/attachments/597853564/597880446.png)se podrá descargar el informe.
* **Informe Evaluación:**pdf con el informe de evaluación. Sólo estará disponible si la evaluación se ha finalizado y el dictamen no es favorable. Al seleccionar el icono del pdf ![](/attachments/597853564/597880446.png) se podrá descargar el informe.
* **Informe Favorable:** pdf con el informe favorable. Sólo estará disponible si la evaluación se ha finalizado y el dictamen es favorable. Las evaluaciones de seguimiento anual y final no tienen informe asociado, sólo las evaluaciones de tipo memoria y retrospectiva. Al seleccionar el icono del pdf ![](/attachments/597853564/597880446.png) se podrá descargar el informe.

###### Versiones

Listado de informes(pdf) generados a partir de los formularios de memoria, seguimiento anual, seguimiento final o retrospectiva enviados a secretaria. Cada vez que el personal de investigación envíe a secretaría una memoria o un seguimiento para su evaluación se mostrará una fila con la información recogida en el formulario hasta ese momento.

![](/attachments/597853564/1100513311.png)  


Al seleccionar el icono del pdf ![](/attachments/597853564/597880446.png) se podrá descargar el informe de la versión.

  


El nombre de la versión sigue el siguiente formato :

* NumeroRefenciaMemoria\_vz, donde z es un número de versión (1,2,3,...) si el tipo de evaluación es Memoria.
* NumeroRefenciaMemoria\_SA\_vz, donde z es un número de versión (1,2,3,...) si el tipo de evaluación es Seguimiento anual
* NumeroRefenciaMemoria\_SF\_vz, donde z es un número de versión (1,2,3,...) si el tipo de evaluación es Seguimiento final
* NumeroRefenciaMemoria\_R\_vz, donde z es un número de versión (1,2,3,...) si el tipo de evaluación es Retrospectiva
##### Memoria \- Indicar subsanación

El perfil de gestión tiene la opción de indicar que una memoria debe de ser subsanada antes de poder ser incluida en una convocatoria de reunión de evaluación del comité correspondiente. Para ello, desde el detalle de la memoria se dispondrá del botón "Indicar subsanación".

![](/attachments/597853564/841089100.png)

El botón "Indicar subsanación" solamente estará disponible para las memorias en estado "en secretaría".

Al pulsar este botón se mostrará una ventana emergente en la que se debe de introducir un comentario.  Este comentario será visible para la persona que solicita la evaluación de la memoria (perfil de investigación).

  


![](/attachments/597853564/841089101.png)

  


Una vez introducido el comentario se activará el botón "Aceptar":

![](/attachments/597853564/841089102.png)

  


Tras pulsar el botón "Aceptar" se mostrará un mensaje de confirmación.

![](/attachments/597853564/841089103.png)

  


De forma automática, se remitirá un comunicado a la persona que solicita la evaluación de la memoria informando que debe subsanar la memoria en los términos recogidos en el comentario.

  


Una memoria en estado "en subsanación" deberá ser modificada por su responsable y vuelta a remitir a Secretaría.

Cuando una memoria está en estado subsanación se mostrará el comentario indicado en la pantalla de Datos generales.

![](/attachments/597853564/841089104.png)

##### Volver al estado anterior

Acción por la que el personal de gestión puede cambiar el estado de la memoria a su estado anterior dependiendo del estado actual de la memoria. No se puede realizar con todos los estados. Únicamente se pueden hacer los siguientes cambios de estado:

* Si el estado de la memoria es  "**En secretaría**" al pulsar sobre la acción "Volver estado anterior" se volverá al estado :
	+ Completada: si no tiene evaluaciones asociadas
	+ Pendiente de correcciones: si la última evaluación tiene un dictamen "Pendiente de correcciones"
	+ No procede evaluar: si la última evaluación tiene un dictamen "No procede evaluar"

Se elimina la versión del fichero .pdf del formulario en la pantalla "Versiones".

* Si el estado de la memoria es "**En secretaría revisión mínima**" al pulsar sobre la acción "Volver estado anterior" se volverá al estado "Favorable pendiente de revisión mínima". Se elimina la versión del fichero .pdf del formulario en la pantalla "Versiones".
* Si el estado de la memoria es "**Archivada**" al pulsar sobre la acción "Volver estado anterior" se volverá al estado:
	+ Pendiente de correcciones: si la última evaluación tiene un dictamen "Pendiente de correcciones"
	+ No procede evaluar: si la última evaluación tiene un dictamen "No procede evaluar"
	+ Favorable pendiente de revisión mínima: si la última evaluación tiene un dictamen "Favorable pendiente de revisión mínima"
* Si el estado de la memoria es  "**En evaluación**" al pulsar sobre la acción "Volver estado anterior" se volverá al estado "En secretaría". En estos casos se elimina la evaluación creada.

Si se pulsa el icono "Volver estado anterior" ![](/attachments/597853564/597880437.png) situado en la última columna "Acciones" de la tabla de **memorias** de una solicitud de evaluación, se muestra una ventana emergente de confirmación donde se le pregunta al personal de investigación si realmente desea enviar la memoria.

![](/attachments/597853564/597880435.png)  


En caso de responder afirmativamente (botón "Aceptar") la memoria se cambiará a su estado anterior y se mostrará un aviso de que la memoria se ha cambiado de estado correctamente como el mostrado en la siguiente imagen. Si se pulsa el botón de "Cancelar" de la ventana emergente se volverá a activar la pantalla del listado de Memorias sin realizar ningún cambio sobre la memoria (no se cambia de estado).

![](/attachments/597853564/597880440.png)  


### Exportar

Si se pulsa el icono "Exportar" ![](/attachments/597853564/597880472.png) situado en la parte inferior  de la pantalla en el "Área de acciones", se muestra una ventana emergente que permite seleccionar el formato de exportación y la información a incluir en la generación del informe asociado al listado de solicitudes de evaluación.

![](/attachments/597853564/597880438.png)  


A continuación se detalla el significado de cada uno de los campos del formulario:

* **Seleccione el tipo de exportación**: indica el tipo del formato del fichero exportado. Se permite dos posibles formatos:
	+ XLSX
	+ CSV
* **Seleccione los apartado a incluir en el informe**: por defecto se incluyen todos los apartados de información que forman una solicitud de evaluación:
	+ **Datos generales**: conjunto de datos de información general sobre la solicitud de evaluación (proyecto de investigación a evaluar). Este apartado no se muestra para marcar o desmarcar porque siempre se incluye en la exportación. Contiene los siguientes campos:  
	
		- Nombre solicitante: nombre de la persona que ha creado la solicitud de evaluación. Dato recuperado de la Universidad.
		- Apellidos solicitante: apellidos de la persona que ha creado la solicitud de evaluación. Dato recuperado de la Universidad.
		- Código: código de referencia de la solicitud de evaluación. Tiene el formato YYYY/secuencia, donde YYYY es el año en el que ha dado de alta la solicitud de evaluación y secuencia en un código secuencial desde 001 hasta 999 relativo al año. Cuando se cambie de año se vuelve a empezar en 001\.
		- Código de la solicitud de convocatoria: sólo informado si la solicitud de convocatoria ha sido creada automáticamente a partir de una solicitud de convocatoria (módulo CSP del SGI). Representa al código interno de la solicitud de convocatoria.
		- Título del proyecto: título del proyecto para el que se presenta la solicitud de evaluación de ética.
		- Tipo de actividad: campo con tres posibles valores:
			* Investigación tutelada
			* Práctica docente
			* Proyecto de investigación
		- Tipo de investigación tutelada: sólo informado en el caso de que en el campo "Tipo de actividad" tenga el valor "Investigación tutelada". Campo con tres posibles valores:
			* Tesis Doctoral
			* Trabajo Fin de Grado
			* Trabajo Fin de Máster
		- Órgano financiador: nombre del órgano financiador del proyecto, sólo informado si se dispone de financiación para el proyecto de investigación.
		- Importe financiación:  importe de la financiación del proyecto, sólo informado si se dispone de financiación para el proyecto de investigación.
		- Fecha inicio: fecha de inicio del proyecto.
		- Fecha fin: fecha de finalización del proyecto.
	+ **Equipo investigador**: conjunto de personas que forman parte del equipo investigador de la solicitud de evaluación. Por cada persona del equipo se exportan los siguientes campos:  
	
		- E\-mail: correo electrónico del miembro del equipo de investigación. Dato recuperado de los datos almacenados en la Universidad.
		- Nombre**:** nombre del miembro del equipo de investigación. Datos recuperados de los datos almacenados en la Universidad.
		- Apellidos**:** apellidos del miembro del equipo de investigación. Datos recuperados de los datos almacenados en la Universidad.
		- Vinculación**:** categoría profesional del miembro del equipo de investigación. Dato recuperado de los datos almacenados en la Universidad.
	+ **Asignación de tareas**: conjunto de tareas a realizar por cada una de las personas del equipo investigador en la memoria o memorias correspondientes. Por cada tarea asignada a un persona del equipo se exportan los siguientes campos:  
	
		- Nombre: nombre del miembro del equipo de investigación al que se le ha asignado una tarea en una de las memorias de la solicitud de evaluación. Dato recuperado de los datos almacenados en la Universidad.
		- Apellidos: apellidos del miembro del equipo de investigación al que se le ha asignado una tarea en una de las memorias de la solicitud de evaluación. Dato recuperado de los datos almacenados en la Universidad.
		- Referencia memoria: código identificativo que representa a la memoria a la que se le ha asignado la tarea.
		- Tarea**:** descripción de la tarea que va a realizar la persona.
		- Experiencia/Formación: experiencia o formación que tiene la persona haciendo la tarea encomendada.
	+ **Memorias**: memoria o memorias dadas de alta en la solicitud de evaluación. Por cada memoria se exportan los siguientes campos:  
	
		- Referencia: código que representa a la memoria.
		- Estado**:** estado de la memoria, puede tener uno de los valores comentados en el apartado [Estados de una memoria](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-de-investigacion/mdu-perfil-de-investigacion-modulo-eti.md#MDUPerfildeinvestigaciónMóduloETI-Estadosdeunamemoria "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-de-investigacion/mdu-perfil-de-investigacion-modulo-eti.md#MDUPerfildeinvestigaciónMóduloETI-Estadosdeunamemoria")
		- Fecha evaluación: dependiendo del estado es la fecha de evaluación de la convocatoria de reunión en la que ha sido evaluada la memoria o es la fecha de evaluación de la próxima convocatoria de reunión en la que puede ser evaluada la memoria.

Se puede desmarcar la opción "Todos" lo que hará que se desmarquen el resto de bloques y el personal de gestión puede marcar el que quiere concretamente. Los datos generales de la solicitud de evaluación siempre se exportarán.

![](/attachments/597853564/597880432.png)

Una vez seleccionado el formato y los bloques de información al pulsar sobre el botón "**Exportar**" se genera el informe asociado al listado de acuerdo al formato de exportación seleccionado. A continuación se muestra una imagen del fichero exportado.

![](/attachments/597853564/597880431.png)

## Memorias

La segunda opción del menú principal de Ética es "Memorias" que muestra en la parte superior de la pantalla el buscador y en la parte inferior el resultado de la búsqueda sin aplicar ningún filtro tal como muestra la siguiente imagen.

Es una acceso directo a todas las memorias de todas las solicitudes de evaluación creadas en el sistema. Es una forma rápida de ir a la consulta de una memoria sin necesidad de ir por la opción del menú de "Solicitudes de evaluación".

![](/attachments/597853564/977141935.png)  


Los campos disponibles en el formulario de la búsqueda son:

* **Comité**: es un desplegable a través del que se seleccionará el comité al que está asociada la memoria. El listado de comités disponible será el configurado en la implantación del SGI. En una implantación genérica serán:
	+ CEI: Comité de Ética de Seres Humanos
	+ CEEA: Comité de Ética para Experimentación Animal
	+ CBE: Comité de Ética en Bioseguridad
* **Título del proyecto:** nombre o título del proyecto de investigación el cual se va a someter a la evaluación por parte del comité de ética.
* **Solicitante:** campo para buscar por nombre o apellidos o email de la persona que ha creado la solicitud de evaluación a la que pertenece la memoria.
* **Referencia memoria**: código que identifica a la memoria.
* **Estado**: estado de la memoria, es un campo desplegable con los distintos estados por lo que puede pasar una memoria. Ver apartado [Estados de una memoria](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-de-investigacion/mdu-perfil-de-investigacion-modulo-eti.md#MDUPerfildeinvestigaciónMóduloETI-Estadosdeunamemoria "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-de-investigacion/mdu-perfil-de-investigacion-modulo-eti.md#MDUPerfildeinvestigaciónMóduloETI-Estadosdeunamemoria") para una descripción detallada de cada uno de los posibles estados.
* **Contiene texto**: campo para introducir una cadena de texto. Se buscará la aparición de esta cadena de texto en cualquier apartado del formulario de memoria.

Tras pulsar el botón “Buscar”, se muestra el listado de memorias que cumplan con los parámetros introducidos en el formulario.

Al igual que el resto de listados de la aplicación, el resultado de la búsqueda es un listado compuesto por una tabla paginada, con cinco columnas de información y una última columna de acciones.

Desde este listado el personal de gestión puede realizar las siguientes acciones:

* **Consultar:** este botón representado por el icono ![](/attachments/597853564/597880469.png) y situado en la última columna "Acciones" de la tabla, permite al personal de gestión consultar los datos de una memoria.
* **Volver al estado anterior**: este botón representado por el icono ![](/attachments/597853564/597880497.png) y situado en la última columna "Acciones" de la tabla, permite al personal de gestión volver a la memoria a su estado anterior. Únicamente se puede cambiar de estado una memoria cuando se encuentra en unos de estos estados:  

	+ En secretaría
	+ En secretaría revisión mínima
	+ En evaluación
	+ Archivada
* **Notificar revisión mínima**: este botón representado por el icono ![](https://confluence.treelogic.com/download/thumbnails/141927441/IconoNotificar.png?version=1&modificationDate=1713182670846&api=v2)y situado en la última columna "Acciones" de la tabla, permite al personal de gestión notificar a los miembros activos del comité de que el personal de investigación  ya ha realizado los cambios necesarios en la memoria y que la ha enviado a secretaría para que se evalúe de nuevo. Disponible únicamente para las evaluaciones que son de revisión mínima, es decir, aquellas memorias que previamente han tenido un dictamen "Favorable pendiente de revisión mínima"
* **Exportar:** este botón representado por el icono  ![](/attachments/597853564/597880472.png) y situado en la parte inferior  de la pantalla en el "Área de acciones", permite la generación del informe asociado al listado de memorias.

  


A continuación se detalla el significado de cada una de las columnas de información del listado:

* **Solicitante:**nombre y apellidos de la persona que ha creado la solicitud de evaluación a la que pertenece la memoria.
* **Referencia memoria**: código que representa a la memoria, es un dato generado automáticamente y tiene el formato Mxx/YYYY/secuencia donde xx sera 10, 20 o 30, YYYY será el año, secuencia será un código secuencial que empieza en 000 cada año y comité y va hasta 999 si es de tipo "Nueva", si es de tipo "Ratificación" lleva una R al final (Mxx/YYYY/secuenciaR), y si es de tipo "Modificación" se copia la referencia de la memoria original y se pone al final MRX donde X es un secuencial de las modificaciones que haya tenido la memoria.
* **Comité:** comité que va a realizar la evaluación de le memoria.
* **Estado:** estado de la memoria, puede tener uno de los valores comentados en el apartado [Estados de una memoria](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852717#MDUPerfildeinvestigaci%C3%B3nM%C3%B3duloETI-8.Anexo-Estadosdeunamemoria "https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852717#MDUPerfildeinvestigaci%C3%B3nM%C3%B3duloETI-8.Anexo-Estadosdeunamemoria")
* **Fecha evaluación**: dependiendo del estado es la fecha de evaluación de la convocatoria de reunión en la que ha sido evaluada la memoria o es la fecha de evaluación de la próxima convocatoria de reunión en la que puede ser evaluada la memoria.
* **Fecha límite**: dependiendo del estado es la fecha límite de la convocatoria de reunión en la que ha sido evaluada la memoria o fecha límite hasta la que se aceptan memorias de la próxima convocatoria de reunión en la que puede ser evaluada la memoria.

### Consultar memoria

Funcionalidad descrita dentro del apartado de memorias de una solicitud de evaluación, ver enlace [Solicitudes evaluación \- Memorias \- Consultar memoria](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853564#ETISolicitudesdeevaluaci%C3%B3nymemorias-Consultarmemoria "https://confluence.um.es/confluence/pages/viewpage.action?pageId=597853564#ETISolicitudesdeevaluaci%C3%B3nymemorias-Consultarmemoria")

  


#### Indicar subsanación de memoria

Funcionalidad descrita dentro del apartado de memorias de una solicitud de evaluación,

### Volver al estado anterior

Funcionalidad descrita dentro del apartado de memorias de una solicitud de evaluación, ver enlace [Solicitudes de evaluación \- Memorias \- Volver al estado anterior](https://confluence.um.es/confluence/pages/viewpage.action?pageId=141927441#ETISolicitudesdeevaluaci%C3%B3nymemorias-Volveralestadoanterior "https://confluence.um.es/confluence/pages/viewpage.action?pageId=141927441#ETISolicitudesdeevaluaci%C3%B3nymemorias-Volveralestadoanterior")

### Exportar

Si se pulsa el icono "Exportar" ![](/attachments/597853564/597880472.png) situado en la parte inferior  de la pantalla en el "Área de acciones", se muestra una ventana emergente que permite seleccionar el formato de exportación y la información a incluir en la generación del informe asociado al listado de memorias.

![](/attachments/597853564/597880467.png)

 

A continuación se detalla el significado de cada uno de los campos del formulario:

* **Seleccione el tipo de exportación**: indica el tipo del formato del fichero exportado. Se permite dos posibles formatos:
	+ XLSX
	+ CSV
* **Seleccione los apartado a incluir en el informe**: por defecto se incluyen todos los apartados de información que forman una memoria:
	+ **Datos generales**: conjunto de datos de información general sobre la memoria. Este apartado no se muestra para marcar o desmarcar porque siempre se incluye en la exportación. Contiene los siguientes campos:  
	
		- Referencia: código que representa a la memoria.
		- Comité: comité que va a realizar la evaluación de le memoria.
		- Estado**:** estado de la memoria, puede tener uno de los valores comentados en el apartado [Estados de una memoria](/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-de-investigacion/mdu-perfil-de-investigacion-modulo-eti.md#MDUPerfildeinvestigaciónMóduloETI-Estadosdeunamemoria "/hercules/sgi-sistema-de-gestion-de-investigacion/mdu-manual-de-usuario/mdu-perfil-de-investigacion/mdu-perfil-de-investigacion-modulo-eti.md#MDUPerfildeinvestigaciónMóduloETI-Estadosdeunamemoria")
		- Fecha evaluación: dependiendo del estado es la fecha de evaluación de la convocatoria de reunión en la que ha sido evaluada la memoria o es la fecha de evaluación de la próxima convocatoria de reunión en la que puede ser evaluada la memoria.
		- Nombre solicitante: nombre de la persona que ha creado la solicitud de evaluación a la que pertenece la memoria. Dato recuperado de la Universidad.
		- Apellidos solicitante: apellidos de la persona que ha creado la solicitud de evaluación a la que pertenece la memoria. Dato recuperado de la Universidad.
		- Nombre responsable: nombre de la persona que se ha puesto como responsable de la memoria, en caso de estar informado dicho campo. Dato recuperado de la Universidad.
		- Apellidos responsable: apellidos de la persona que se ha puesto como responsable de la memoria, en caso de estar informado dicho campo. Dato recuperado de la Universidad.
	+ **Evaluaciones**: conjunto de evaluaciones por las que ha pasado la memoria y sus seguimientos.  
	
		- Tipo**:** indica el tipo de evaluación. Campo con cuatro posibles valores:  
		
			* Memoria
			* Retrospectiva
			* Seguimiento anual
			* Seguimiento final
		- Versión**:** versión de la evaluación. Se genera una versión de evaluación por cada formulario que se envíe a secretaría.  Cada tipo de evaluación tiene su propia versión.
		- Dictamen**:** resultado de la evaluación. Si la evaluación no se completado no se informará de este campo. Dependiendo del tipo de evaluación el valor del dictamen podrá ser.
			* Si el tipo de evaluación es Memoria:
				+ Favorable
				+ Favorable pendiente de revisión mínima
				+ Pendiente de correcciones
				+ No procede evaluar
			* Si el tipo de evaluación es Retrospectiva:
				+ Favorable
				+ Desfavorable
			* Si el tipo de evaluación es Seguimiento anual:
				+ Favorable
				+ Solicitud de modificaciones
			* Si el tipo de evaluación es Seguimiento final:
				+ Favorable
				+ Solicitud de aclaraciones

Se puede desmarcar la opción "Todos" lo que hará que se desmarque el bloque de "Evaluaciones" o bien desmarcar directamente el bloque de "Evaluaciones" sino se desea que se exporten los datos de las evaluaciones de cada una de las memorias. Los datos generales de la memoria siempre se exportarán.

![](/attachments/597853564/597880466.png)  


Una vez seleccionado el formato y los bloques de información al pulsar sobre el botón "**Exportar**" se genera el informe asociado al listado de acuerdo al formato de exportación seleccionado. A continuación se muestra una imagen del fichero exportado.

![](/attachments/597853564/597880468.png)  





