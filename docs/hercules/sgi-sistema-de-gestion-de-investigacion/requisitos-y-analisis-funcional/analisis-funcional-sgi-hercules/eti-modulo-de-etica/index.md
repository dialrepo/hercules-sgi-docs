# Hércules : ETI \- Módulo de ética



  


Módulo del SGI que implementa el ciclo de gestión de la Ética en proyectos de investigación.

### 1\. Descripción funcional

El módulo de Ética permite realizar la gestión de las solicitudes de evaluación ética de proyectos de investigación de forma integrada en el SGI Hércules: el personal investigador realizará las solicitudes de evaluación ética de sus proyectos que serán tramitadas por el personal de gestión correspondiente.

Este módulo debe gestionar un sistema de roles y permisos, para implementar tres grandes funciones:

* La del personal investigador que crea peticiones de evaluación de proyectos en los que se incluye una o varias memorias que serán evaluadas por el comité o comités correspondiente. El personal investigador podrá ser una persona perteneciente a la Universidad o bien un usuario externo (previamente dato de alta en el SGI como usuario externo y con credenciales)
* La del personal de gestión encargado de realizar la gestión de las solicitudes de evaluaciones de proyectos y asignando los dictámenes.
* La del personal evaluador que participará en la reuniones de evaluación y revisará las memorias.

Cada solicitud de evaluación ética que se genera está compuesta por una o varias memorias, en función de la naturaleza del proyecto desde el punto de vista ético. Es decir, en función del uso que sea necesario hacer de seres humanos, sus datos o sus muestras (se generará una memoria  de tipo M10\), de  animales (se generará una o varias memorias de tipo M20\) y/o de agentes biológicos (se generará una memoria de tipo M30\).

A continuación se detalla el flujo de solicitud de una evaluación ética de proyecto desde la fase de solicitud de convocatoria (módulo CSP):

![](/attachments/597853840/597868578.jpg)

El personal de gestión o de investigación al propio investigador una vez creada la solicitud de convocatoria tiene la posibilidad de hacer uso de un formulario de autoevaluación que determina si el proyecto debe de someterse a evaluación ética. En caso afirmativo, se podrá iniciar la creación de la solicitud de evaluación ética que tomará datos iniciales de la propia solicitud de proyecto cumplimentada en el módulo CSP.

La solicitud de evaluación ética también puede registrarse en el SGI sin necesidad de haber creado previamente la solicitud de proyecto en el módulo CSP.

Una solicitud de evaluación ética de proyecto estará formada por una serie de datos generales del proyecto, por un equipo investigador y por las memorias que corresponda. A través de las memorias se recogerá toda la información necesaria para realizar la evaluación ética del proyecto.  Estas memorias se presentarán en el SGI a modo de formularios con una serie de cuestiones predefinidas. El SGI dispondrá de tres formularios o tipos memorias predefinidas:

* Formulario de memoria M10, específico para recoger los datos necesarios para la evaluación del proyecto por parte del comité ético de investigación con seres humanos.
* Formulario de memoria M20, específico para recoger los datos necesarios para la evaluación del proyecto por parte del comité ético de experimentación animal.
* Formulario de memoria M30, específico para recoger los datos necesarios para la evaluación del proyecto por parte del comité ético para investigación con agentes biológicos.

El personal de gestión recibirá todas las solicitudes de evaluación ética y las incluirá en las correspondientes convocatorias de reunión para su evaluación.

A continuación se detalla el flujo de la creación de una convocatoria reunión de evaluación para un comité:

### 

El gestor crea un nueva convocatoria para un comité y una fecha concreta y con una fecha límite de presentaciones de peticiones de evaluación de proyectos.

Se manda notificación a todos los miembros activos del comité.

Una vez creada la convocatoria el gestor puede ir asignando a las peticiones de evaluación de proyectos  que han sido enviadas desde los investigadores (y que estén en plazo) y que por lo tanto están en estado "En secretaria", el par de evaluadores que van a realizar su evaluación.

Los evaluadores únicamente deben de realizar lo que se llama Ficha de evaluador que lleva las anotaciones de cada uno de los apartados antes de la reunión de evaluación.

Cada par evaluador tiene uno o más peticiones de  evaluación de proyectos a evaluar en la misma reunión de comité.

En la reunión de evaluación con los informes de petición de los distintos proyectos (entregados por los investigadores) y con las fichas de los evaluadores se llega a un resultado que es un acta y un informe para cada uno de los proyectos revisados. Dicha documentación  es realizada por el gestor.

  


El personal de gestión creará las convocatorias de reunión para cada uno de los comités. Cada convocatoria tendrá un fecha de celebración concreta y una fecha límite de presentación de solicitudes de evaluación de proyectos para que puedan ser incluidas en dicha convocatoria. En cada convocatoria de reunión se incluirán varias solicitudes de evaluación remitidas por parte del personal investigador. Las memorias de cada solicitud de evaluación serán incluidas en una o varias convocatorias de reunión dependiendo del comité por el que deban ser evaluadas (seres humanos, experimentación animal o experimentación con agentes biológicos). Para cada memoria incluida en una convocatoria de reunión se asignará un par evaluador. El par evaluador estará formado por miembros del comité correspondiente y actuarán como evaluadores responsables, si bien la memoria podrá ser revisada por todos lo miembros del comité. 

Cuando se convoca una nueva reunión de evaluación todos los miembros activos del comité correspondiente son debidamente informados a través de notificación remitida de forma automática por el SGI.

El personal evaluador (miembros del comité) podrán revisar y aportar comentarios sobre las memorias incluidas en una reunión de evaluación, con carácter previos a la celebración de la misma. Todos los comentarios aportados por los diferentes miembros del comité conformarán la Ficha del equipo evaluador que estará a disposición de todos los miembros del comité y del personal de gestión.

En la reunión de evaluación el personal de gestión y los miembros del comité asignarán un dictamen a cada memoria, que deberá ser registrado por el personal de gestión. Tras finalizar la reunión el personal de gestión elaborará el acta de la misma. Cada memoria evaluada en la reunión dispondrá de un informe de evaluación resultante en el que figurará el dictamen otorgado y que podrá ser descargado por la persona investigadora solicitante.

  


A continuación se incluye una imagen que recoge el modelo de dominio de alto nivel del módulo de Ética.

  


![](/attachments/597853840/841089092.bmp)

  


  


Los actores involucrados en el módulo de ética se recogen en ETI \- Actores

A continuación se amplia la descripción funcional del módulo de Ética desde el punto de vista de los diferentes actores involucrados

  


#### 2\.1 Nueva petición o solicitud de evaluación ética

Las peticiones o solicitudes de evaluación de ética pueden iniciarse directamente desde la creación de una solicitud de proyecto del módulo CSP pero también podrán crearse directamente desde el módulo de Ética, sin que queden en este caso vinculadas a ninguna solicitud de proyecto del módulo CSP.

La creación desde el módulo de Ética se realizará desde el botón Añadir solicitud disponible en el listado inicial del apartado Solicitudes de evaluación [IU\-ETI\-0060\-001 Búsqueda y listado de solicitudes de evaluación \- Solicitante](https://confluence.treelogic.com/pages/viewpage.action?pageId=87818959 "https://confluence.treelogic.com/pages/viewpage.action?pageId=87818959")

La creación de una nueva solicitud de evaluación ética requiera la recogida de los siguientes campos:

* Título del proyecto: caja de texto
* Tipo de actividad: desplegable con los valores:
	+ Proyecto de investigación
	+ Práctica docente
	+ Investigación tutelada
* Tipo de investigación tutelada
	+ Tesis doctoral
	+ Trabajo Fin de Máster
	+ Trabajo Fin de Grado
* ¿Se dispone de financiación para realizar el proyecto? : Desplegable con dos valores "Sí" o "No". En caso de seleccionar el valor "Si" se mostrarán el resto de campos:  

	+ Órgano financiador: campo de texto libre
	+ Estado: desplegable con dos valores  
	
		- Solicitado
		- Concedido
		- Denegado
	+ Importe financiación
* Fecha inicio: calendario para marcar el día
* Fecha fin: calendario para marcar el día
* Resumen del proyecto: caja de texto
* Valor social del proyecto: caja de texto
* Objetivos científicos del proyecto: caja de texto
* Diseño metodológico del proyecto: caja de texto

Además, la solicitud de evaluación ética constará, en la fase de creación del apartado:

* Equipo investigador. Permitirá añadir a los miembros del equipo de proyecto. Por defecto, se añadirá siempre a la persona que realiza la solicitud de evaluación.

  


La creación de una nueva solicitud de evaluación de ética queda cubierta con los siguientes formularios:

* [IU\-ETI\-0060\-003 \- Creación petición de evaluación \- Datos generales](https://confluence.treelogic.com/pages/viewpage.action?pageId=171409482 "https://confluence.treelogic.com/pages/viewpage.action?pageId=171409482")
* [IU\-ETI\-0060\-004 \- Creación petición de evaluación \- Equipo investigador](https://confluence.treelogic.com/pages/viewpage.action?pageId=87818985 "https://confluence.treelogic.com/pages/viewpage.action?pageId=87818985")

  


La solicitud de evaluación ética se creará con estos datos iniciales (datos generales y equipo) dando posteriormente opción a continuar con la introducción de nuevos apartados:

* Asignación de tareas
* Memorias a evaluar

Ambos apartados se explican en al funcionalidad de Edición de solicitud de evaluación.

#### 2\.2 Edición de solicitud de evaluación de ética

Desde el listado inicial de solicitudes de evaluación de ética [IU\-ETI\-0060\-001 Búsqueda y listado de solicitudes de evaluación \- Solicitante](https://confluence.treelogic.com/pages/viewpage.action?pageId=87818959 "https://confluence.treelogic.com/pages/viewpage.action?pageId=87818959") se permitirá la edición de una solicitud de evaluación.

La información de una solicitud de evaluación de ética estará agrupada en los siguientes apartados:

* Datos generales
* Equipo investigador
* Asignación de tareas
* Memorias

##### 2\.2\.1 Solicitud de evaluación \- Datos generales

Los campos del apartado "Datos generales" diferirán según la solicitud de evaluación proceda de la creación desde el módulo de Ética o de la creación directa a través de la autoevaluación de una solicitud de proyecto del módulo de CSP

Si la solicitud de evaluación ética se ha creado desde este módulo, los campos disponibles en la modificación de la misma soerán:

* Código petición: será un código con el formato YYYY/secuencia , donde YYYY es el año y secuencia en un código secuencial desde 000 hasta 999 del año. Se generará solo al crear una nueva petición.
* Título del proyecto.
* Tipo de actividad: desplegable con los valores:
	+ Proyecto de investigación
	+ Práctica docente
	+ Investigación tutelada
* Tipo de investigación tutelada
	+ Tesis doctoral
	+ Trabajo Fin de Máster
	+ Trabajo Fin de Grado
* ¿Se dispone de financiación para realizar el proyecto? : Desplegable con dos valores "Sí" o "No". En caso de seleccionar el valor "Si" se mostrarán el resto de campos:  

	+ Órgano financiador: campo de texto libre
	+ Estado: desplegable con dos valores  
	
		- Solicitado
		- Concedido
		- Denegado
	+ Importe financiación
* Fecha inicio.
* Fecha fin.
* Resumen del proyecto.
* Especificar (únicamente aparece si en el desplegable de "Valor social" se ha escogido la opción "10\. Otra finalidad")
* Valor social del proyecto.
* Objetivos científicos del proyecto.
* Diseño metodológico del proyecto.

  


En el caso de que la solicitud de evaluación ética se haya creado desde el formulario de autoevaluación tras crear una solicitud de proyecto en el módulo de CSP, tendrá disponibles los siguientes campos:

* Código de la solicitud de convocatoria: en modo lectura, se obtiene de la solicitud de convocatoria.
* Código petición: será un código con el formato YYYY/secuencia , donde YYYY es el año y secuencia en un código secuencial desde 000 hasta 999 del año. Se generará solo al crear una nueva petición.
* Título del proyecto: en modo lectura, se obtiene de la solicitud de convocatoria cuando se crea la petición de evaluación.
* Tipo de actividad: desplegable con los valores:
	+ Proyecto de investigación
	+ Práctica docente
	+ Investigación tutelada
* Tipo de investigación tutelada
	+ Tesis doctoral
	+ Trabajo Fin de Máster
	+ Trabajo Fin de Grado
* ¿Se dispone de financiación para realizar el proyecto? : Se pondrá el valor "Si" por venir de una solicitud de convocatoria y se mostrarán el resto de campos:  

	+ Órgano financiador: en modo lectura (se pondrá el nombre de la entidad financiadora de la solicitud de convocatoria)
	+ Estado: desplegable con dos valores:(se pondrá el valor Solicitado)  
	
		- Solicitado
		- Concedido
		- Denegado
	+ Importe financiación (será el campo Importe  financiación de la entidad financiadora de la solicitud de convocatoria), en modo lectura
* ¿Si se rechaza su solicitud de financiación ejecutará el proyecto con fondos propios?: Desplegable con los valores  Sí o No.
* Fecha inicio:
* Fecha fin:
* Resumen del proyecto: en modo lectura, se obtiene de la solicitud de convocatoria cuando se crea la petición de evaluación.
* Valor social: desplegable con los valores:
	+ 1\. Investigación fundamental
	+ 2\. Investigación aplicada a la prevención, diagnóstico o tratamiento de alteraciones o de enfermedades físicas, psíquicas u otras anomalías o de sus efectos en los seres humanos, los animales o las plantas.
	+ 3\. Investigación aplicada a la evaluación, detección, regulación o modificación de las condiciones fisiológicas, psicológicas o sociales en los seres humanos, los animales o las plantas
	+ 4\. Investigación aplicada al desarrollo y la fabricación de aparatos, ayudas técnicas o informáticas, fármacos, alimentos, piensos y otras sustancias o productos, así como la realización de pruebas para comprobar su calidad, eficacia y seguridad
	+ 5\. Investigación aplicada a la protección o mejora de las condiciones sociales, políticas, económicas o ambientales en interés del bienestar y/o la salud de los seres humanos.
	+ 6\. Investigación aplicada al bienestar de los animales y/o a la mejora de las condiciones de producción de los animales y las plantas.
	+ 7\. Investigación dirigida a la protección y conservación de las especies y del medio natural.
	+ 8\. Enseñanza superior o la formación para la adquisición o mejora de las aptitudes profesionales.
	+ 9\. Investigación jurídica o médico\-legal.
	+ 10\. Otra finalidad.
* Especificar: caja de texto que únicamente aparece si en el desplegable de "Valor social" se ha escogido la opción "10\. Otra finalidad"
* Objetivos científicos del proyecto: caja de texto
* Diseño metodológico del proyecto: caja de texto

  


El prototipo de pantalla que da cobertura a la modificación a los datos generales de una solicitud de evaluación ética es:

[IU\-ETI\-0060\-005\-001 \- Modificación petición de evaluación \- Datos generales](https://confluence.treelogic.com/pages/viewpage.action?pageId=171409552 "https://confluence.treelogic.com/pages/viewpage.action?pageId=171409552")

##### 2\.2\.2 Solicitud de evaluación \- Equipo investigador

En este apartado de la solicitud de evaluación ética quedarán recogidos todos los miembros del equipo de investigación del proyecto a evaluar.

Por defecto, en la creación de la solicitud de evaluación se habrá incluido automáticamente en el equipo de investigación a la persona que realiza la solicitud de evaluación de ética.

En el caso de que la solicitud de evaluación ética proceda de una solicitud de proyecto del módulo CSP se habrán incluido automáticamente en el equipo de investigación todos los miembros del equipo que se hubieran indicado en la solicitud de proyecto.

En cualquiera de los dos casos se podrán añadir nuevas personas al equipo de investigación de la solicitud de evaluación de ética, sin que esto suponga la actualización automática del equipo de la solicitud de proyecto ni del proyecto derivado en el módulo CSP.

En el apartado Equipo investigador de la solicitud de evaluación ética se mostrará el listado con las personas del equipo

* Nombre y apellidos
* Email
* Vinculación
* Nivel académico
* Acciones:  Eliminar

Y se dará la posibilidad de añadir nuevos miembros al equipo.

[IU\-ETI\-0060\-005\-001 \- Modificación petición de evaluación \- Datos generales](https://confluence.treelogic.com/pages/viewpage.action?pageId=171409552 "https://confluence.treelogic.com/pages/viewpage.action?pageId=171409552")

  


###### Nueva persona del equipo

Para añadir a una persona al equipo de investigación se dispondrá de un buscador de personas que realice la búsqueda sobre el sistema corporativo de gestión de personas con el que se integre el SGI. Se recuperará la información que permita identificar a la persona:

* Email
* Nombre y apellidos
* Vinculación con la universidad
* Nivel académico

[IU\-ETI\-0060\-006 Equipo investigador \- añadir \- modificar](https://confluence.treelogic.com/pages/viewpage.action?pageId=87819195 "https://confluence.treelogic.com/pages/viewpage.action?pageId=87819195")

###### Eliminar persona del equipo

Se eliminará la persona del equipo de trabajo y las tareas que tuviera asociadas a las diferentes memorias. Sólo se habilitará la posibilidad de eliminar a un miembro del equipo cuando todas las memorias sobre las que tenga tareas asignadas figure en uno de los siguientes estados:

* En elaboración
* Completada
* Favorable pendiente de revisión mínima
* Pendiente de correcciones
* No procede evaluar

La persona que realiza la solicitud de evaluación de ética no podrá ser eliminada del equipo de investigación.

La acción de eliminar a un miembro del equipo estará disponible en el listado del equipo de investigación de la solicitud de evaluación.

[IU\-ETI\-0060\-005\-002 Modificación petición de evaluación \- Equipo de trabajo](https://confluence.treelogic.com/pages/viewpage.action?pageId=171409579 "https://confluence.treelogic.com/pages/viewpage.action?pageId=171409579")

  


##### 2\.2\.3 Solicitud de evaluación \- Asignación de tareas

Sobre las personas del equipo de investigación podrán asociarse tareas en las distintas memorias incluidas en la misma solicitud de evaluación.

La información de las tareas variará ligeramente en función del tipo de memoria (M10 \- seres humanos, M20 \- experimentación animal, M30 \- agentes biológicos).

En este apartado se listarán las tareas asignadas a cualquiera de las memorias incluidas en la solicitud de evaluación. Se mostrará un listado con las siguientes columnas.

* Nombre y apellidos
* Referencia memoria
* Tarea
* Formación: para la memoria M10 será la experiencia y para las memoria M20 y M30 será la formación específica.
* Organismo: se informará para las memorias M20 y M30
* Año: se informará para las memorias M20 y M30

Se permitirá modificar y eliminar cada tarea, así como crear nuevas tareas.

[IU\-ETI\-0060\-005\-003 \- Modificación petición de evaluación \- Asignación tareas](https://confluence.treelogic.com/pages/viewpage.action?pageId=171409664 "https://confluence.treelogic.com/pages/viewpage.action?pageId=171409664")

###### Nueva tarea

La creación de una nueva tarea exigirá campos ligeramente diferentes según el tipo de memoria

Para las memorias M10 (seres humanos):

* Nombre y apellidos: desplegable con el nombre y apellidos de las personas del equipo
* Memoria: desplegable con las memorias del proyecto
* Tarea: caja de texto
* Experiencia: caja de texto

Para las memorias M20 (experimentación animal):

* Nombre y apellidos: desplegable con el nombre y apellidos de las personas del equipo
* Memoria: desplegable con las memorias del proyecto
* Tarea: desplegable con los valores:
	+ Diseño de proyecto y procedimientos
	+ Manipulación de animales
	+ Eutanasia
* Formación: desplegable con los valores:
	+ A: Cuidado de los animales
	+ B: Eutanasia de los animales
	+ C: Realización de los procedimientos
	+ D: Diseño de los proyectos y procedimientos
	+ E: Responsable de la supervisión «in situ» del bienestar y cuidado de los animales
	+ F: Veterinario designado
	+ G: Sin especificar
	+ H: No requiere
* Organismo: caja de texto
* Año: caja de texto

Para las memorias M30 (agentes biológicos):

* Nombre y apellidos: desplegable con el nombre y apellidos de las personas del equipo
* Memoria: desplegable con las memorias del proyecto
* Tarea: caja de texto
* Formación en riesgo biológico: caja de texto
* Organismo: caja de texto
* Año: caja de texto

  


[IU\-ETI\-0060\-007 Asignación de tareas \- Añadir\-Modificar](https://confluence.treelogic.com/pages/viewpage.action?pageId=87819213 "https://confluence.treelogic.com/pages/viewpage.action?pageId=87819213")

###### Edición tarea

La modificación de una tarea ya creada requiere los mismos datos que su creación.

La modificación de una tarea está disponible desde el listado de tareas de una solicitud de evaluación:

[IU\-ETI\-0060\-007 Asignación de tareas \- Añadir\-Modificar](https://confluence.treelogic.com/pages/viewpage.action?pageId=87819213 "https://confluence.treelogic.com/pages/viewpage.action?pageId=87819213")

###### Eliminar tarea

Se eliminará una tarea, vinculada a una memoria y una miembro del equipo. Las taras sólo se podrán eliminar cuando la memoria a la que están vinculadas se encuentre en uno de los siguientes estados:

* En elaboración
* Completada
* Favorable Pendiente de Modificaciones Mínimas
* Pendiente de correcciones
* No procede evaluar

La eliminación de una tarea está disponible desde el listado de tareas de la solicitud de evaluación.

[IU\-ETI\-0060\-005\-003 \- Modificación petición de evaluación \- Asignación tareas](https://confluence.treelogic.com/pages/viewpage.action?pageId=171409664 "https://confluence.treelogic.com/pages/viewpage.action?pageId=171409664")

##### 2\.2\.4 Solicitud de evaluación \- Memorias

Una solicitud de evaluación ética podrá incluir una o varias memorias. Cada memorias estará asociada a un comité de evaluación (seres humanos, experimentación animal o agentes biológicos)

Cada memoria tendrá un estado que es relativo al proceso de evaluación de la misma.

  


Ver detalle de estados en el apartado [Flujo de estados de memoria](https://confluence.treelogic.com/pages/viewpage.action?pageId=81837061#ETIM%C3%B3dulode%C3%A9tica-flujo_estados_memoria "https://confluence.treelogic.com/pages/viewpage.action?pageId=81837061#ETIM%C3%B3dulode%C3%A9tica-flujo_estados_memoria").

  


En el apartado Memorias de una solicitud de evaluación se mostrará el listado de las memorias incluidas en la solicitud, incluyendo las siguientes columnas:

* Referencia memoria
* Comité
* Estado.
* Fecha evaluación, Fecha límite:  

	+ Si el estado de la memoria es **Completada**,  **En secretaría**: La fecha de evaluación y la fecha límite se sacarán se sacará de la próxima convocatoria de reunión de tipo "Ordinaria" o "Extraordinaria" que haya del mismo comité que la memoria, que no tenga el acta asociada a finalizada, y que la fecha límite de la convocatoria sea mayor a la fecha actual y si existe dos o mas, se cogerá la primera, la que tenga la fecha de evaluación menor.
	+ Si el estado de la memoria es**En evaluación, Pendiente de correcciones, No procede evaluar, Favorable pendiente de revisión mínima, En secretaria revisión mínima, Fin evaluación, Desfavorable**: La fecha de evaluación y la fecha límite se sacarán de la convocatoria de reunión asociada a la evaluación asignada a la memoria de tipo "Memoria" y que sea la última versión (versión mayor)
	+ Si el estado de la memoria es **Completada****seguimiento anual**,  **En secretaría seguimiento anual**: La fecha de evaluación y la fecha límite se sacarán de la próxima convocatoria de reunión de tipo "Seguimiento" que haya del mismo comité que la memoria, que no tenga el acta asociada a finalizada, y que la fecha límite de la convocatoria sea mayor a la fecha actual y si existe dos o mas, se cogerá la primera, la que tenga la fecha de evaluación menor.
	+ Si el estado de la memoria es**En evaluación seguimiento anual, Solicitud modificación, Fin evaluación seguimiento anual**: La fecha de evaluación y la fecha límite se sacarán de la convocatoria de reunión asociada a la evaluación asignada a la memoria de tipo "Seguimiento anual" y que sea la última versión (versión mayor)
	+ Si el estado de la memoria es**Completada seguimiento final**,  **En secretaría seguimiento final**: La fecha de evaluación y la fecha límite se sacarán de la próxima convocatoria de reunión de tipo "Seguimiento" que haya del mismo comité que la memoria, que no tenga el acta asociada a finalizada, y que la fecha límite de la convocatoria sea mayor a la fecha actual y si existe dos o mas, se cogerá la primera, la que tenga la fecha de evaluación menor.
	+ Si el estado de la memoria es**En evaluación seguimiento final, En secretaría seguimiento final aclaraciones, En aclaración seguimiento final, Fin evaluación seguimiento final**: La fecha de evaluación y la fecha límite se sacarán de la convocatoria de reunión asociada a la evaluación asignada a la memoria de tipo "Seguimiento final" y que sea la última versión (versión mayor)
	+ Si el estado de la memoria es**Archivado**: se dejan vacías
* Acciones: Editar / Eliminar (desactivar) / Enviar a Secretaría / Enviar a Secretaría Retrospectiva

  


El prototipo de pantalla del apartado Memorias de una solicitud de evaluación es:

[IU\-ETI\-0060\-005\-004 \- Modificación petición de evaluación \- Memorias](https://confluence.treelogic.com/pages/viewpage.action?pageId=171409683 "https://confluence.treelogic.com/pages/viewpage.action?pageId=171409683")

  


###### Creación de nueva memoria

Solamente se podrán crear memorias asociadas a una solicitud de evaluación. La opción para crear una nueva memoria está disponible en el listado de memorias [IU\-ETI\-0060\-005\-004 \- Modificación petición de evaluación \- Memorias](https://confluence.treelogic.com/pages/viewpage.action?pageId=171409683 "https://confluence.treelogic.com/pages/viewpage.action?pageId=171409683")

Una nueva memoria se creará con unos datos mínimos, agrupados en un apartado de Datos generales, para pasar a permitir la introducción de más bloques de datos en la modificación de la memoria.

####### Datos generales

* Comité: desplegable con los valores de los comités configurados en el SGI. Los nombres de estos comités podrán variar de una Universidad a otra.
	+ CEISH (nombre ejemplo para el comité de evaluación ética de investigación con seres humanos)
	+ CEEA (nombre ejemplo para el comité ético de experimentación animal)
	+ CEIAB (nombre ejemplo para el comité ético de investigación con agente biológicos)
* Tipo de memoria: desplegable con los valores dependiendo del tipo de comité:
	+ Si comité "seres humanos"
		- Nueva
		- Ratificación
		- Modificación
	+ Si comité "experimentación animal"
		- Nueva
		- Modificación
	+ Si comité "agentes biológicos"
		- Nueva
		- Modificación
* Memoria original:  desplegable con las referencias de las memorias del comité elegido si se ha elegido en Tipo la opción de "Modificación"
* Título descriptivo: caja de texto. Sólo estará disponible si se está creando una memoria para el comité de experimentación animal.
* Responsable de memoria: desplegable con las distintas personas del equipo.

Una vez que se cumplimenten los datos mínimos se podrá crear la memoria. El estado inicial de una memoria es "En elaboración".

Se genera la referencia de la memoria de forma automática con el siguiente formato: Mxx/YYYY/secuencia, donde:

* xx tomará el valor 10, 20 ó 30 en función del comité de evaluación al que se asocie la memoria
	+ 10 \- comité de seres humanos
	+ 20 \- comité de experimentación animal
	+ 30 \- comité de agentes biológicos
* YYYY será el año en curso
* Secuencia:
	+ será un código secuencial de tres dígitos que comienza en 000 cada año y comité y va hasta 999
	+ si la memoria es de tipo "ratificación" se añade una R al final de la secuencia  (Mxx/YYYY/secuenciaR)
	+ si la memoria es de tipo "modificación" se copia la referencia de la memoria original y se añade la cadena "MRX" al final, siendo X a su vez un secuencial de todas las modificaciones que se hayan realizado sobre la memoria original.

Si se crea una memoria de tipo Modificación se hace una copia de la memoria (de nueva) tanto del formulario como de los documentos subidos de tipo memoria. Se debe de mostrar un desplegable con las memorias que existan en la solicitud de evaluación para ese comité, y que dispongan de un dictamen favorable.

El prototipo de pantalla para la creación inicial de una memoria dentro de una solicitud de evaluación ética es:

[IU\-ETI\-0060\-008 Memoria \- Datos generales \- Creación](https://confluence.treelogic.com/pages/viewpage.action?pageId=87819233 "https://confluence.treelogic.com/pages/viewpage.action?pageId=87819233")

###### Edición de memoria

En la edición de una memoria se muestra la siguiente información.

####### Datos generales

* Comité: en modo consulta.
* Tipo: en modo consulta.
* Referencia memoria: en modo consulta. Se crea de forma automática con el siguiente formato: Mxx/YYYY/secuencia, donde xx sera 10, 20 o 30, YYYY será el año, secuencia será un código secuencial que empieza en 000 cada año y comité y va hasta 999 si es de tipo "Nueva", si es de tipo "Ratificación" lleva una R al final (Mxx/YYYY/secuenciaR), y si es de tipo "Modificación" se copia la referencia de la memoria original y se pone al final MRX donde X es un secuencial de las modificaciones que haya tenido la memoria.
* Título descriptivo: caja de texto
* Responsable: desplegable con las distintas personas del equipo.

####### Formulario de memoria

Solo se puede modificar el formulario si el estado de la memoria es "En elaboración" o  "Completada" o "Favorable Pendiente de Modificaciones Mínimas" o "Pendiente de correcciones"  


Se mostrará el formulario dependiendo del tipo de comité y tipo de memoria que se haya elegido en la creación de la memoria y en el proyecto:

* Los campos de una memoria de tipo "Nueva" y "Modificación" para el CEISH  se explican en el siguiente enlace [Formulario M10](https://confluence.treelogic.com/display/HERCULES/Formulario+M10 "https://confluence.treelogic.com/display/HERCULES/Formulario+M10").
* Los campos de una memoria de tipo "Nueva" y "Modificación" para el CEEA  se explican en el siguiente enlace [Formulario M20\.](https://confluence.treelogic.com/display/HERCULES/Formulario+M20 "https://confluence.treelogic.com/display/HERCULES/Formulario+M20")
* Los campos de una memoria de tipo "Nueva" y "Modificación"  para el CEIAB  se explican en el siguiente enlace "Formulario M30".
* Las memorias de tipo "Ratificación" no tienen asociado formulario, únicamente se rellena datos generales y equipo investigador.

Cuando el formulario este completo se ha llegado al bloque V  se cambia el estado de la memoria a "Completada".

Todos los campos activos del formulario son obligatorios.

Cuando el  estado de la memoria es "Favorable Pendiente de Revisión Mínima" o "Pendiente de correcciones"  se deben de mostrar los comentarios asociados a los apartados correspondientes y únicamente dejar modificar dichos apartados. Los comentarios serán los creados en la evaluación última de la memoria.

####### Documentación

Se muestran los listados de Documentos del formulario de Memoria, del formulario de Seguimiento Anual, del formulario de Seguimiento Final y del formulario de Retrospectiva si es una memoria de animales (M20\).

Documentos Formulario Memoria

Solo se puede adjuntar o eliminar documentos del formulario de la Memoria si el estado de la memoria es uno de los siguientes:

* En elaboración
* Completada
* Subsanación
* Favorable Pendiente de Modificaciones Mínimas
* Pendiente de correcciones

Se muestra el listado de documentos que se deben de adjuntar (los que se confirmaron en el formulario de la memoria) con las siguientes columnas:

* Documento: nombre del documento
* Aportado: Sí o No
* Acciones:  Eliminar / Ver

También habrá un botón para adjuntar el documento. Para dar de alta un nuevo documento se piden los siguientes campos:

* Documento: desplegable con los nombres de los documentos del listado que en el campo "Aportado" tienen valor "No"
* Botón "Examinar" para adjuntar un fichero del equipo del usuario

El documento se almacenará en el repositorio documental del SGI al pulsar el botón de Guardar.

El eliminar el documento lo volverá a poner como "Aportado" a "No" y se eliminará el documento del sistema cuando se pulse el botón Guardar. Sólo se puede eliminar si el documento esta aportado.

El ver lo que hace es descargarse el documento, para ver un documento debe de estar aportado.

Tipo de documento requeridos en una memoria M10:

* Consentimiento
* Documento de aceptación de colaboración
* Documento de Autorización de Responsable de Centro
* Documento de Cesión de Muestras
* Documento de registro de tratamiento de datos RGPD
* Documento de Seguridad de Fichero
* Informe de la Comisión de Garantías
* Otra documentación

Tipo de documento requeridos en una memoria M20:

* Acreditaciones
* Informe veterinario por reutilización
* Resumen Anónimo no técnico RANT
* Solicitud Razonada dirigida al Comité Habilitado y al Órgano Competente
* Otra documentación

Tipo de documento  requeridos en una memoria M30:

* Notificación de uso de Agentes biológicos
* Protocolo de actuación
* Seguro de responsabilidad
* Otra documentación

Documentos Formulario Seguimiento Anual  


Solo se puede adjuntar o eliminar documentos del formulario de Seguimiento anual si el estado de la memoria es uno de los siguientes:

* Fin evaluación
* Completada seguimiento anual

Se muestra el listado de documentos adjuntados con las siguientes columnas:

* Documento: nombre del documento
* Acciones:  Eliminar / Ver

También habrá un botón para adjuntar el documento. Para dar de alta un nuevo documento se piden los siguientes campos:

* Botón "Examinar" para adjuntar un fichero del equipo del usuario

El documento se almacenará en el repositorio documental del SGI al pulsar el botón de Guardar.

El eliminar el documento se eliminará el documento del sistema cuando se pulse el botón Guardar.

El ver lo que hace es descargarse el documento, para ver un documento debe de estar aportado.

Documentos Formulario Seguimiento Final  


Solo se puede adjuntar o eliminar documentos del formulario de Seguimiento final si el estado de la memoria es uno de los siguientes:

* Fin de evaluación seguimiento anual
* Completada seguimiento final
* En aclaración seguimiento final

Se muestra el listado de documentos adjuntados con las siguientes columnas:

* Documento: nombre del documento
* Acciones:  Eliminar / Ver

También habrá un botón para adjuntar el documento. Para dar de alta un nuevo documento se piden los siguientes campos:

* Botón "Examinar" para adjuntar un fichero del equipo del usuario

El documento se almacenará en el repositorio documental del SGI al pulsar el botón de Guardar.

El eliminar el documento se eliminará el documento del sistema cuando se pulse el botón Guardar.

El ver lo que hace es descargarse el documento, para ver un documento debe de estar aportado.

  


Documentos Formulario Retrospectiva

Sólo se muestra si la memoria es de tipo M20 (animales) y la memoria tiene el campo requiere retrospectiva a Sí (es decir, el investigador lo ha rellenado en su formulario de memoria).

Sólo se puede adjuntar o eliminar documentos del formulario de Retrospectiva si el estado de la retrospectiva es uno de los siguientes:

* Pendiente
* Completada

Se muestra el listado de documentos adjuntados con las siguientes columnas:

* Documento: nombre del documento
* Acciones:  Eliminar / Ver

También habrá un botón para adjuntar el documento. Para dar de alta un nuevo documento se piden los siguientes campos:

* Botón "Examinar" para adjuntar un fichero del equipo del usuario

El documento se almacenará en el repositorio documental del SGI al pulsar el botón de Guardar.

El eliminar el documento se eliminará el documento del sistema cuando se pulse el botón Guardar.

El ver lo que hace es descargarse el documento, para ver un documento debe de estar aportado.

  


####### Seguimiento anual

Únicamente se mostrará el formulario activo para edición de Seguimiento anual si la memoria esta en estado "Fin evaluación" y ha pasado 1 año desde la fecha de inicio del proyecto. En otro caso se mostrará en modo consulta.

Se mostrará el formulario de tipo Seguimiento final. Los documentos se adjuntarán desde la opción de "Documentación"

Una vez que se cumplimente se cambiará el estado de la memoria a "Completada seguimiento anual".

####### Seguimiento final

Únicamente se mostrará el formulario activo para edición de Seguimiento final si la memoria esta en estado "Fin evaluación seguimiento anual" y ha pasado 1 año desde la fecha de fin del proyecto. EEn otro caso se mostrará en modo consulta.

Se mostrará el formulario de tipo Seguimiento final . Los documentos se adjuntarán desde la opción de "Documentación"

Una vez que se cumplimente se cambiará el estado de la memoria a "Completada seguimiento final".

####### Retrospectiva

Únicamente se mostrará el formulario de Retrospectiva si la memoria es de tipo CEEA y el investigador había indicado en la memoria que requería retrospectiva.

Si la fecha actual es igual o mayor a la fecha de retrospectiva indicada en la memoria por el investigador el formulario se mostrará en modo edición, sino se mostrará en modo consulta.

Una vez que se cumplimente se cambiará el estado de la retrospectiva a "Completada".

Los estados de la retrospectiva son:

* Pendiente: cuando el investigador en su formulario de memoria indica que requiere retrospectiva e indica la fecha
* Completada: cuando el investigador rellena el informe de Retrospectiva
* En secretaría: cuando el investigador desde el listado de memoria pulsa sobre la acción de Enviar a Secretaría la Retrospectiva
* En evaluación: cuando el gestor la selecciona para su evaluación en una convocatoria de reunión.
* Fin evaluación: cuando la evaluación se realiza y se pone su dictamen a "Favorable"

Los documentos se adjuntarán desde la opción de "Documentación".

####### Informes

Se muestra un listado de informes en formato pdf. El informe pdf contiene los datos generales del proyecto junto con los datos de todo el formulario. El nombre sigue un formato NumeroRefenciaMemoria\_vz, donde z es un número de versión (1,2,3,...)

Es un listado porque una misma memoria puede tener varias versiones, la inicial, y luego tantas reevaluaciones como hubiesen hecho falta. Cada vez que el investigador  ha enviado a secretaría su memoria se crea un un fichero en formato pdf con los datos del proyecto y con los datos del formulario y es subido al respositorio documental y el sistema guarda en informes el identificador del documento.

Por ejemplo: M20\_2020\_035\_v1 , M20\_2020\_035\_v2 , M20\_2020\_035\_v3 , porque ha sido enviada a secretaria y evaluada por el comité 3 veces. 

También se mostrará el informe de seguimiento anual con el formato NumeroRefenciaMemoria\_SA\_vz, los informes de seguimiento final con el formato NumeroRefenciaMemoria\_SF\_vz y el informe de retrospectiva en caso de que exista retrospectiva con el formato NumeroRefenciaMemoria\_RETRO\_vz. Igual que los informes de memoria son creados cuando se Enviá a secretaría los informes de seguimiento y/o el de retrospectiva.

####### Evaluaciones

Se muestra el listado de la evaluaciones de la memoria. Tendrá las siguientes columnas:

* Tipo (Memoria, Seguimiento o Retrospectiva)
* Número de versión
* Dictamen
* Enlace al informe de evaluación:
	+ si la evaluación es de tipo memoria y el dictamen es "Favorable pendiente de revisión mínima" o "Pendiente de correcciones" o "No procede evaluar"
	+ si la evaluación es de tipo seguimiento anual y el dictamen es "Solicitud de modificaciones"
	+ si la evaluación es de tipo seguimiento final y el dictamen es "Solicitud de aclaraciones".
* Enlace al informe favorable (si dictamen "Favorable")

###### Eliminar (desactivar) memoria

Únicamente se mostrará el icono de eliminar si la memorias está en los estados "En elaboración" y/o  "Completada", es decir, no se ha enviado nada a Secretaría y no tienen ninguna evaluación asociada.

Se desactivará la memoria. Funcionalidad transversal a toda la aplicación del SGI.

###### Enviar a secretaría

El responsable de la memoria podrá modificar los datos del proyecto y de la memoria (formulario, documentación), pero no podrá Enviar a secretaría. Únicamente el solicitante de la petición de evaluación del proyecto podrá enviar a secretaría.

El enviar a secretaría tiene que hacer las siguientes funcionalidades:

* Cambiar el estado de la memoria:
	+ Si el estado de la memoria es "Completada" , "Pendiente de correcciones" o "No procede evaluar" se cambia a "En secretaría"
	+ Si el estado de la memoria es  "Favorable pendiente de revisión mínima" se cambia a "En secretaría revisión mínima".
	+ Si el estado de la memoria es "Completada seguimiento anual"  se cambia a "En secretaría seguimiento anual"
	+ Si el estado de la memoria es "Completada seguimiento final"  se cambia a "En secretaría seguimiento final"
	+ Si el estado de la memoria es  "En aclaración seguimiento final" se cambia a "En secretaría seguimiento final aclaraciones".
* Se guarda la fecha de envío a secretaría para que luego no se pueda añadir a una convocatoria de reunión cuya fecha límite haya sobrepasado.
* Se crea un un fichero en formato pdf con los datos del proyecto y con los datos del formulario y es subido al repositorio documental y el sistema guarda en informes el identificador del documento.
* En el caso de que sea una memoria en estado "Favorable pendiente de revisión mínima" al enviar a secretaría se le debe de crear ya la evaluación para esa memoria con los datos de la evaluación anterior, es decir, se le asigna a la misma convocatoria de reunión y el mismo par de evaluadores que provocaron el dictamen "Favorable pendiente de revisión mínima" y con el campo de es revisión mínima para poder distinguir las evaluaciones que tienen que pasar por una convocatoria de reunión y las que no.
* En el caso de que sea una memoria en estado "En aclaración seguimiento final" al enviar a secretaría se le debe de crear ya la evaluación de tipo seguimiento con los datos de la evaluación de seguimiento anterior, es decir, se le asigna a la misma convocatoria de reunión y el mismo par de evaluadores que provocaron el dictamen "Solicitud de aclaraciones" y con el campo de es revisión mínima para poder distinguir las evaluaciones que tienen que pasar por una convocatoria de reunión y las que no.

###### Enviar a secretaria retrospectiva

Únicamente el solicitante de la petición de evaluación del proyecto podrá enviar a secretaría la retrospectiva.

Ésta acción únicamente se muestra cuando la memoria es de tipo CEEA, requiere retrospectiva y el estado de la misma tiene el valor "Completada".

El enviar a secretaría retrospectiva tiene que hacer las siguientes funcionalidades:

* Cambiar el estado de la retrospectiva a "En secretaría"
* Se crea un un fichero en formato pdf con los datos del formulario y es subido al repositorio documental y el sistema guarda en informes el identificador del documento.

#### Eliminar (desactivar) petición de evaluación

Únicamente se mostrará el icono del Desactivar si todas las memorias están en los estados "En elaboración" y/o  "Completada", es decir, no se ha enviado nada a Secretaría y no tienen ninguna evaluación.

Se desactivará la memoria. Funcionalidad transversal a toda la aplicación del SGI.

#### Formulario autoevaluación (checklist)

En el módulo de Convocatorias, Solicitudes y Proyectos (CSP) cuando se esta creando una solicitud de convocatoria se debe mostrar el formulario de auto checklist para que el investigador lo rellene y dependiendo de sus resultados se haga la creación automática de la petición de evaluación del proyecto de investigación.

El formulario contará con las siguientes preguntas (de respuestas Sí/No):

* Mi investigación conlleva la recogida de datos personales y anónimos de seres humanos (a través de cuestionarios, entrevistas, grupos de discusión, grabaciones de audio o video, fotografías…).
* Mi investigación permite identificar a los participantes (o permite que puedan llegar a ser identificables a partir de los datos recogidos).
* Mi investigación conlleva el estudio con animales de experimentación. Sobre la recogida de muestras biológicas del estudio a realizar.
* Mi investigación conlleva la recogida y tratamiento de muestras biológicas –de humanos o animales– (saliva, sangre, cabello, tejidos…).
* Mi investigación cuenta con informe favorable pero se van a realizar cambios.
* Mi investigación supone trabajar con personas.

En el caso de que se conteste a una de las preguntas que Sí ya es necesario someter la investigación ante la Comisión de Ética de investigación. Y por lo tanto en este momento se crearía la petición de evaluación a partir de los datos de la solicitud de convocatoria y de la persona que esta solicitando la solicitud.

Se informan los siguientes datos de la petición de evaluación:

* Solicitud de convocatoria asociada
* Título del proyecto
* ¿Se dispone de financiación para realizar el proyecto?  

	+ Órgano financiador: campo de texto libre (se pondrá el nombre de la entidad financiadora de la solicitud de convocatoria)
	+ Estado: desplegable con dos valores:(se pondrá el valor Solicitado)  
	
		- Solicitado
		- Concedido
		- Denegado
	+ Importe financiación
* Resumen

Se añade al equipo investigador de la petición  de evaluación al investigador solicitante y en caso de existir mas investigadores en el equipo de investigación se añaden también.

  


  


### Perfil Gestor (ACT\-ETI\-001\-Gestor)

#### Peticiones de evaluación

Se verá la misma funcionalidad que la del perfil investigador exceptuando que los gestores podrán visualizar todas las peticiones y no como los investigadores que sólo pueden acceder a las suyas. Podrán también buscar por solicitante y estado de la memoria.

Accederán en modo consulta, sin poder modificar los datos, excepto la funcionalidad de volver al estado anterior en los siguientes casos:

* una memoria que se ha enviado a secretaria a su estado anterior
* una memoria archivada volver al estado anterior
* volver al estado en secretaría una solicitud en evaluación

##### Subsanación

Con carácter previo a la inclusión de las memoria en la convocatoria de reunión de evaluación correspondiente, los ACT\-ETI\-001\-Gestor podrán indicar a la persona solicitante que se debe subsanar la memoria. Indicarán a través de un comentario la información a trasladar a la persona solicitante. Cuando una memoria está en estado subsanación, la persona solicitante deberá aportar los cambios indicados y proceder de nuevo a enviar a secretaría.

##### Volver estado anterior

Desde el listado de memoria de una petición de evaluación de un proyecto, se muestran como al investigador las siguientes columnas pero con las siguientes acciones:

* Referencia memoria
* Comité
* Estado.
* Fecha evaluación
* Fecha límite
* Acciones: Ver / Volver estado anterior

El gestor sólo puede ver la memoria en modo consulta, pero si puede realizar los siguientes cambios de estado:

* Si el estado de la memoria es  "Enviar secretaría" al pulsar sobre la acción *Volver estado anterior* se volverá al estado "Completada" (sino tiene evaluaciones asociadas),  "Pendiente de correcciones" (si la última evaluación tiene un dictamen "Pendiente de correcciones" ),  o "No procede evaluar"  (si la última evaluación tiene un dictamen "No procede evaluar" )
* Si el estado de la memoria es  "Enviar secretaría revisión mínima" al pulsar sobre la acción *Volver estado anterior* se volverá al estado "Favorable pendiente de revisión mínima"
* Si es estado de la memoria es "Archivada" al pulsar sobre la acción *Volver estado anterior* se volverá al estado "Pendiente de correcciones" (si la última evaluación tiene un dictamen "Pendiente de correcciones" ),  o "No procede evaluar"  (si la última evaluación tiene un dictamen "No procede evaluar" ) o "Favorable pendiente de revisión mínima" (si la última evaluación tiene un dictamen ""Favorable pendiente de revisión mínima" )
* Si el estado de la memoria es  "En evaluación" al pulsar sobre la acción *Volver estado anterior* se volverá al estado "En secretaría". Habrá que eliminar la evaluación creada.

#### Convocatorias reunión

Se muestra un buscador para poder filtrar por lo campos:

* Comité
* Fecha de evaluación (desde , hasta)
* Convocatoria: ordinarias, extraordinarias y de seguimiento

El resultado serán todas las convocatorias de reunión que cumplan con los criterios seleccionados. Las columnas a mostrar son:

* Comité
* Fecha de evaluación
* Código
* Hora
* Lugar
* Convocatoria
* Fecha de envío
* Acciones: Editar, Envío, Eliminar (desactivar)

También habrá un botón para añadir una nueva convocatoria.

##### Nueva convocatoria reunión

Para dar de alta una nueva convocatoria se necesitan los siguiente campos obligatorios:

###### Datos generales

* Comité: desplegable con los valores:  

	+ CEISH
	+ CEEA
	+ CEIAB
* Fecha evaluación: calendario para marcar el día
* Fecha límite: calendario para marcar el día (por defecto una semana antes de la reunión)
* Convocatoria: desplegable con los valores:
	+ Ordinaria
	+ Extraordinaria
	+ Seguimiento
* Hora de inicio: reloj para marcar la hora exacta: 00:00\.
* Lugar: caja de texto con el lugar de la reunión.
* Orden del día: caja de texto para escribir el orden del día.
* Listado de convocantes: será el listado de todos los miembros activos del comité seleccionado (NIF, nombre, apellidos, correo). Se autocompleta automáticamente al seleccionar el comité. Se crea internamente los asistentes de la reunión de convocatoria con todos el check de asistencia a sí.

###### Asignación memorias

Se muestra el listado de memorias asignadas a la convocatoria de reunión para su evaluación

El listado tendrá las siguientes columnas:

* Memoria
* Evaluador1
* Evaluador2
* Acciones: Editar / Eliminar

La acción eliminar borra la fila del listado de memorias.

Para dar de alta una nueva memoria se muestra una pantalla con la siguiente información:

* Memoria:  

	+ Si la convocatoria es de tipo "Ordinaria" o "Extraordinaria":
		- Desplegable con las memorias en estado "En secretaria" y la fecha de envío es igual o menor a la fecha límite de la convocatoria de reunión. También se comprobará que si la petición viene de una solicitud de convocatoria el campo estado de financiación  tiene que tener el valor "Concedido" o bien el valor "Denegado" pero tiene que tener marcada la opción que se se va a financiar con fondos propios del investigador. En caso de no cumplirse esto no se añade en el listado, para no evaluar una memoria de un proyecto denegado sin financiación. También se mostrarán las memorias que tenga una retrospectiva en estado "En secretaría". Las retrospectivas se tratarán como una evaluación de memoria lo único que se evalúa el informe de retrospectiva y no el de memoria.
	+ Si la convocatoria es de tipo "Seguimiento"
		- Desplegable con las memorias en estado "En secretaría seguimiento anual" y "En secretaría seguimiento final" y la fecha de envío es igual o menor a la fecha límite de la convocatoria de reunión.
* Evaluador 1: desplegable con los evaluadores activos del comité indicado en la convocatoria y que no entre en conflicto de intereses con ningún miembro del equipo investigador de la memoria seleccionada.
* Evaluador 2: desplegable con los evaluadores activos del comité indicado en la convocatoria y que no entre en conflicto de intereses con ningún miembro del equipo investigador de la memoria seleccionada.

###### Botones

Una vez que se da al botón Guardar puede pasar:

* si el tipo de la convocatoria es de tipo Ordinaria" o "Extraordinaria", se crea la convocatoria, se crean las evaluaciones de tipo "memoria" para las memoria del listado de memorias a evaluar en la reunión de convocatoria indicando que no son de revisión mínima y se les cambia el estado de las memoria a "En evaluación". Se vuelve a la pantalla de listado de Convocatorias.
* si el tipo de la convocatoria es de tipo Ordinaria" o "Extraordinaria", pero se esta asignando una memoria que no esta en estado "En secretaria" sino en un estado mas avanzado y con el campo estado retrospectiva con valor "En secretaria", se crea la evaluación de tipo "retrospectiva"  y se cambia el estado de la retrospectiva a "En evaluación". Se vuelve a la pantalla de listado de Convocatorias.
* En el caso de que la convocatoria sea de tipo "Seguimiento", se crea la convocatoria, se crean las evaluaciones de tipo "seguimiento" para las memorias del listado de memorias a evaluar en la reunión de convocatoria indicando que no son de revisión mínima y se les cambia el estado de las memoria a "En evaluación seguimiento anual" o "En evaluación seguimiento final".
* Para las nuevas memorias asignadas se debe de comunicar al solicitante de la memoria de la fecha de convocatoria de su memoria (a través del modulo de AVISOS)

Al crear la convocatoria se genera un código de convocatoria con el formato ACTAsecuencial/YYYY/COMITE , donde COMITE es el comité elegido, YYYY es el año de la fecha de evaluación y secuencial es el número del acta que corresponde a la convocatoria, es un secuencial por comité. Hay tres secuenciales uno por cada comité (no es por año). (Al crear el acta asociada se le debe de poner este número de acta). Ejemplo: ACTA125/2020/CEISH

Habrá un botón Cancelar para regresar al listado de Convocatorias sin guardar los cambios.

##### Edición convocatoria reunión

Una vez que el acta asociada a la convocatoria de la reunión se haya Finalizado no se podrá modificar nada de la convocatoria de la reunión.

Desde el listado al editar una convocatoria del listado se mostrará la siguiente información:

###### Datos generales

Se muestran los mismos campos que en nueva convocatoria.

###### Asignación memorias

Se muestran los mismos campos que en nueva convocatoria.

###### Botones

Una vez que se da al botón Guardar  se modifica la convocatoria, se crean las evaluaciones para las memoria del listado de memorias a evaluar en la reunión de convocatoria  indicando que no son de revisión mínima y se les cambia el estado de las memoria a "En evaluación". En caso de eliminar una memoria se cambia el estado a "En secretaria"  y se borra la evaluación creada, siempre y cuando no hay dictamen ni haya comentarios creados, es decir, no se ha empezado a trabajar en la evaluación.

Para las nuevas memorias asignadas se debe de comunicar al solicitante de la memoria de la fecha de convocatoria de su memoria.

Habrá un botón Cancelar para regresar al listado de Convocatorias sin guardar los cambios.

##### Envío convocatoria reunión

Desde el listado de convocatoria si se elige la convocatoria pinchando el botón Envío, se envía la convocatoria de la reunión a todos los miembros integrantes del comité, incluida la secretaria técnica (administrador) y se guardará la fecha de envío. Y se eliminará dicha opción de la convocatoria, para que no se pueda volver a enviar.

##### Eliminar (desactivar)  convocatoria reunión

Sólo se podrá eliminar una convocatoria sino tiene memorias asignadas y no tiene el acta asignada.

Se desactivará la convocatoria de reunión. Funcionalidad transversal a toda la aplicación del SGI.

No saldrá dicha convocatoria en las búsquedas ni será accesible por el gestor, a no ser que un administrador vuelva a activar dicha convocatoria.

#### Evaluaciones

El listado de evaluaciones  (de tipo memoria o retrospectiva) a mostrar se obtiene buscando las memorias en estado "En evaluación" o "En secretaria revisión mínima" y para esas memorias sacar la evaluación de la versión mayor (que será la que no esta evaluada y se tiene que evaluar) y aquellas memoria que son de tipo CEEA y requiere retrospectiva y esté en estado retrospectiva con el valor "En evaluación".

Se muestra un buscador para poder filtrar por lo campos:

* Comité
* Fecha de evaluación (desde, hasta)
* Referencia de la memoria
* Solicitante: se muestra un botón para poder buscar entre los solicitantes de peticiones de evaluación por número de documento, nombre y apellidos.
* Convocatoria

El resultado serán todas las memorias que cumplan con los criterios seleccionados. Las columnas a mostrar son:

* Comité
* Fecha evaluación
* Referencia de la memoria
* Solicitante
* Dictamen
* Versión
* Acciones: Evaluar

##### Evaluar

Se muestra una pantalla son tres pestañas. Una pestaña para almacenar el dictamen de la evaluación, otra para añadir comentarios en caso necesario y una última para mostrar la documentación asociada a la memoria.

Una vez acabada la evaluación (botón Guardar) se guardará el dictamen y los comentarios en caso necesario y dependiendo de si la evaluación es de revisión mínima o no se tendrán dos situaciones

* Si la evaluación no es de revisión mínima  se mantendrá el estado "En evaluación" mientras que el acta asociada a la convocatoria de la reunión siga en estado "Creación". Cuando se cambie el estado del acta a "Finalizada" todas las memorias evaluadas en la reunión de convocatoria  y que no sean de revisión mínima se pasarán al estado correspondiente dependiendo del dictamen. Si es una evaluación de retrospectiva se pasará el campo estadoRetrospectiva a "Fin evaluación".
* Si la evaluación es de revisión mínima en ese momento ya se cambia el estado de la memoria al correspondiente dependiendo del dictamen.

###### Evaluación

* Comité: en modo consulta
* Fecha de evaluación: en modo consulta
* Referencia de la memoria: en modo consulta
* Solicitante: en modo consulta
* Versión: en modo consulta
* Dictamen:  

	+ Desplegable con los posibles valores si se trata de una evaluación de memoria:  
	
		- Favorable
		- Favorable pendiente de revisión mínima: No es necesario que vuelva a comité de evaluación. Es obligatorio añadir comentarios en la pestaña de "Comentarios"
		- Pendiente de correcciones: Debe de volver a comité de evaluación. Existe un plazo de 45 días para presentar las correcciones, en caso de no recibir la nueva solicitud con las correcciones en ese plazo, la petición de evaluación pasaría a estado "Archivado", debiendo iniciar una nueva petición para reactivarlo. Es obligatorio añadir comentarios en la pestaña de "Comentarios"
		- No procede evaluar: Se concluye que el proyecto no es necesario que pase por el comité de ética.
	+ Desplegable con los posibles valores si se trata de una evaluación de retrospectiva:
		- Favorable
		- Desfavorable
* Comentario: únicamente si el dictamen seleccionado es "No procede evaluar"
* Ver informe: se genera automáticamente un informe pdf dependiendo del valor del dictamen:
	+ Informe evaluación: si el dictamen es "Favorable pendiente de revisión mínima" o "Pendiente de correcciones" o "No procede evaluar" .  Se genera a partir de una plantilla donde irá los datos de la memoria y los comentarios añadidos en la pestaña de "Comentarios"
	+ Informe favorable: si el dictamen es "Favorable". Se genera a partir de una plantilla.
* Listado con las evaluaciones anteriores mostrando las siguientes columnas:
	+ Referencia de la memoria
	+ Versión
	+ Fecha evaluación
	+ Dictamen
	+ Nº de comentarios
	+ PDF  evaluación: Enlace al informe favorable (dictamen es "Favorable") o al informe evaluación (dictamen "Favorable pendiente de revisión mínima" o "Pendiente de correcciones").

###### Comentarios

En el caso de que el dictamen seleccionado sea "Favorable pendiente de revisión mínima" o "Pendiente de correcciones" es obligatorio que al menos exista un comentario.

Para dar de alta un comentario se necesitan los siguientes campos:

* Bloque: desplegable con el nombre de los 5 bloques del formulario asociado al comité que tiene asignada la memoria.
* Apartado: desplegable con los apartados del bloque seleccionado.
* Subapartado: desplegable con los subapartados del apartado seleccionado.
* Comentario: caja de texto para introducir el comentario respecto al subapartado o apartado.

Se irá mostrando una lista con los comentarios dados de alta. Se podrán eliminar y modificar los comentarios.

Hasta pulsar el botón de Guardar no se harán efectivos los cambios.

###### Documentación

Listado con toda la documentación relativa a la memoria:

* Ficha evaluador
* Informe en .pdf del formulario entregado por el investigador
* Documentación entregada por el investigador adjunta al formulario

#### Seguimiento

Todas las memorias tienen un seguimiento en el primer año y uno final, independientemente del número de años de duración.

El listado de evaluaciones  (de tipo seguimiento) de seguimientos a mostrar se obtiene buscando las memorias en estado "En evaluación seguimiento anual"  "En evaluación seguimiento final" o "En secretaría seguimiento final aclaraciones" y para esas memorias sacar la evaluación de la versión mayor (que será la que no esta evaluada y se tiene que evaluar)

Se muestra un buscador para poder filtrar por lo campos:

* Comité
* Fecha de evaluación (desde, hasta)
* Referencia de la memoria
* Solicitante: se muestra un botón para poder buscar entre los solicitantes de peticiones de evaluación por número de documento, nombre y apellidos.
* Convocatoria

El resultado serán todas las memorias que cumplan con los criterios seleccionados. Las columnas a mostrar son:

* Comité
* Fecha evaluación
* Referencia de la memoria
* Solicitante
* Dictamen
* Versión
* Acciones: Evaluar

##### Evaluar

Se muestra una pantalla son tres pestañas. Una pestaña para almacenar el dictamen de la evaluación, otra para añadir comentarios en caso necesario y una última para mostrar la documentación asociada al seguimiento.

Una vez acabada la evaluación (botón Guardar) se guardará el dictamen y los comentarios en caso necesario y dependiendo de si la evaluación es de revisión mínima o no se tendrán dos situaciones

* Si la evaluación no es de revisión mínima  se mantendrá el estado "En evaluación seguimiento anual" o "En evaluación seguimiento final" mientras que el acta asociada a la convocatoria de la reunión siga en estado "Creación". Cuando se cambie el estado del acta a "Finalizada" todas las memorias evaluadas en la reunión de convocatoria  y que no sean de revisión mínima se pasarán al estado correspondiente dependiendo del dictamen.
* Si la evaluación es de revisión mínima en ese momento ya se cambia el estado de la memoria al correspondiente dependiendo del dictamen.

###### Evaluación

* Comité: en modo consulta
* Fecha de evaluación: en modo consulta
* Referencia de la memoria: en modo consulta
* Solicitante: en modo consulta
* Versión: en modo consulta
* Dictamen: desplegable con los posibles valores:
* + Si la evaluación es de seguimiento es anual (estado "En evaluación seguimiento anual "):
	+ - Favorable
		- Solicitud de modificaciones: Se tendrá que crear una nueva memoria de Modificación. Es obligatorio añadir comentarios en la pestaña de "Comentarios"
	+ Si la evaluación es de seguimiento es final (estado "En evaluación seguimiento final "):
		- Favorable
		- Solicitud de aclaraciones: No es necesario que vuelva a comité de evaluación. Es obligatorio añadir comentarios en la pestaña de "Comentarios"
* Ver informe: se genera automáticamente un informe pdf dependiendo del valor del dictamen:
	+ Informe evaluación: si el dictamen es "Solicitud de modificaciones" o "Solicitud de aclaraciones".  Se genera a partir de una plantilla donde irá los datos de la memoria y los comentarios añadidos en la pestaña de "Comentarios"
	+ Informe favorable: NO se genera informe
* Listado con las evaluaciones anteriores de la memoria mostrando las siguientes columnas:
	+ - Referencia de la memoria
		- Versión
		- Fecha evaluación
		- Dictamen
		- Nº de comentarios
		- PDF  evaluación: Enlace al informe favorable (dictamen es "Favorable") o al informe evaluación (dictamen "Favorable pendiente de revisión mínima" o "Pendiente de correcciones").

###### Comentarios

En el caso de que el dictamen seleccionado sea "Solicitud de modificaciones" o "Solicitud de aclaraciones" es obligatorio que al menos exista un comentario.

Para dar de alta un comentario se necesitan los siguientes campos:

* Bloque: desplegable con el nombre de los 5 bloques del formulario asociado al comité que tiene asignada la memoria.
* Apartado: desplegable con los apartados del bloque seleccionado.
* Subapartado: desplegable con los subapartados del apartado seleccionado.
* Comentario: caja de texto para introducir el comentario respecto al subapartado o apartado.

Se irá mostrando una lista con los comentarios dados de alta. Se podrán eliminar y modificar los comentarios.

Hasta pulsar el botón de Guardar no se harán efectivos los cambios.

###### Documentación

Listado con toda la documentación relativa al seguimiento:

* Ficha evaluador
* Informe en .pdf del formulario entregado por el investigador
* Documentación entregada por el investigador adjuntada al formulario

#### Actas

Listado de las actas de las convocatorias de reunión.

Se muestra un buscador para poder filtrar por lo campos:

* Comité
* Fecha de evaluación (desde, hasta)
* Número de acta
* Estado

El resultado serán todas las actas que cumplan con los criterios seleccionados. Las columnas a mostrar son:

* Comité
* Fecha de evaluación
* Número de acta
* Convocatoria
* Nº de evaluaciones (iniciales)
* Nº de revisiones
* Nº total
* Estado
* Acciones: Editar / Ver acta / Finalizar

El estado de una acta puede tomar dos valores:

* En elaboración: cuando se crea el acta y se esta modificando.
* Finalizada: cuando todas las memorias  han sido evaluadas (tienen un dictamen asignado) y se ha seleccionado la acción de Finalizar.

También habrá un botón para añadir una nueva acta.

NOTA: Cuando en una misma acta haya mas de una evaluación de una misma memoria (debido a que ha tenido una evaluación con dictamen "Favorable pendiente de revisión mínima" y luego ya otra donde se le ha puesto el dictamen "Favorable" pero sin pasar por otra convocatoria) únicamente se contabilizará como una evaluación (la primera en la que ha sacado el dictamen  "Favorable pendiente de revisión mínima"),  para obtener los datos Nº de evaluaciones (iniciales), Nº de revisiones y Nº total. Es decir, para obtener esos tres datos no se contabilizan las evaluaciones donde el flag de revisión mínima es true.

##### Nueva acta

Para dar de alta una nueva acta se necesitan los siguiente campos:

* Reunión de evaluación: se muestra un desplegable indicando el código de la convocatoria de reunión de aquellas convocatorias de reunión que no tienen un acta asociada.
* Hora de inicio: se selecciona una hora y minutos.
* Hora de fin: se selecciona una hora y minutos.
* Resumen del acta: caja de texto para rellenar con el contenido del acta

Una vez que se da al botón Guardar, se crea el acta en estado "En elaboración", y se vuelve a la pantalla de listado de Actas.

Por defecto al crear una acta se ponen todos los asistentes como que han asistido. En caso de que uno o varios no puedan asistir se tendrá que ir a la pestaña de Asistentes y editarlos y ponerles el motivo de la falta de asistencia.

El número de acta se saca del código de la convocatoria (que ya lo tiene asignado)

##### Editar acta

Sólo se puede editar una acta si esta en estado "En elaboración".

Desde el listado de actas al editar una acta se muestran sus datos descriptivos y un resumen de las memorias evaluadas

###### Datos generales

* Nº acta: en modo consulta.
* Reunión de evaluación: fecha de la reunión y el tipo de comité
* Hora de inicio: se selecciona una hora y minutos.
* Hora de fin: se selecciona una hora y minutos.
* Resumen del acta: caja de texto para rellenar con el contenido del acta

###### Memorias

Listado de las evaluaciones de memoria que no son de revisión mínima de la  reunión con las siguientes columnas:

* Nº de referencia
* Versión
* Dictamen
* Informe de evaluación o informe favorable.

NOTA: Cuando en una misma acta haya mas de una evaluación de una misma memoria (debido a que ha tenido una evaluación con dictamen "Favorable pendiente de revisión mínima" y luego ya otra donde se le ha puesto el dictamen "Favorable" pero sin pasar por otra convocatoria) únicamente se visualizará  la  evaluación que ha sacado el dictamen  "Favorable pendiente de revisión mínima". Es decir, no se muestran las evaluaciones donde el flag de revisión mínima es true.

###### Asistentes

Listado con los evaluadores activos del comité. Se muestran las columnas:

* Nº documento: Número de documento del evaluador del comité
* Nombre y apellidos: nombre y apellidos del evaluador del comité
* Asistencia (Sí /No): si ha podido asistir o no a la reunión de convocatoria
* Motivo no asistencia: en caso de no asistir el motivo de la causa.
* Acciones: Editar

##### Ver acta

Se genera el informe .pdf del acta.

##### Finalizar acta

Sólo se puede finalizar una acta si esta en estado "En elaboración".

Para poder finalizar una acta deben de estar evaluadas todas sus evaluaciones de memorias que no son de revisión mínima, es decir, que todas tengan un dictamen.

Se pasa a estado "Finalizada" por lo que ya no se podrá modificar los datos del acta ni realizar ningún cambio en ninguna de las evaluaciones de memorias asociadas a la convocatoria (las que no son de revisión mínima)

El finalizar el acta implica cambiar el estado según el dictamen de la evaluación a todas las memorias implicadas (aquellas que no son de revisión mínima). 

  


#### Evaluadores

Listado de evaluadores que forman o han formado parte de los comités.

Se muestra un buscador para poder filtrar por lo campos:

* Comité
* Estado
* Número de documento
* Nombre

El resultado serán todas los evaluadores que cumplan con los criterios seleccionados. Las columnas a mostrar son:

* Nombre y los apellidos: nombre y apellidos del evaluador
* Número de documento:Número de documento del evaluador
* Comité: comité al que pertenece
* Cargo que desempeña en el comité: puede tomar tres valores: sin valor, vocal o presidente
* Fecha de Alta: fecha a partir de la cual forma parte del comité de ética
* Fecha de Baja: fecha en la que se dio de baja como perteneciente al comité de ética
* Estado:  

	+ Activo: si  no tiene fecha baja o fecha baja es mayor a la actual
	+ Inactivo: si fecha baja es menor a la fecha actual
* Acciones: Editar / Eliminar (desactivar)

También habrá un botón para añadir un nuevo evaluador.

##### Alta evaluador

Para dar de alta un nuevo evaluador se necesitan los siguiente campos:

* Evaluador: caja de texto deshabilitada donde se guardará el nombre y apellidos del evaluador seleccionado. Para ello se buscará con el botón Buscar que abrirá una pantalla para buscar a los evaluadores por diferentes filtros de búsqueda (pantalla común del módulo de usuarios). Se buscará en el sistema de personas y se recuperarán sus datos.
* Comité: desplegable con los tres comités.
* Cargo que desempeña en el comité: desplegable con los valores:
	+ Presidente
	+ Vocal
* Fecha de Alta: calendario para marcar el día
* Fecha de Baja: calendario para marcar el día
* Resumen de Actividad: caja de texto

Se comprobará que un mismo evaluador no este en el mismo comité, es decir, que sus fechas no se solapen. Podrá existir dos o mas veces siempre y cuando tenga rangos de fechas distintos.

Un evaluador puede ser una persona de la propio Universidad o bien un usuario externo a ella, pero siempre tienen que estar dado de alta en el sistema de personas y tener credenciales.

##### Editar evaluador

Será una pantalla como la de nuevo evaluador en los que se pueden modificar sus datos.

##### Eliminar (desactivar) evaluador

Se desactivará el evaluador. Funcionalidad transversal a toda la aplicación del SGI.

No saldrá dicho evaluador en las búsquedas ni podrá evaluar memorias, a no ser que un administrador vuelva a activar dicho evaluador.

### Perfil Evaluador (ACT\-ETI\-004\-Evaluador, ACT\-ETI\-005\-Técnico)

#### Evaluaciones

El listado de evaluaciones se obtiene buscando las memorias en estado "En evaluación" o "En secretaria revisión mínima" y para esas memorias sacar la evaluación de la versión mayor (que será la que no esta evaluada y se tiene que evaluar) y aquellas memoria que son de tipo CEEA y requiere retrospectiva y esté en estado retrospectiva con el valor "En evaluación" y asignadas al evaluador que esta entrando en la aplicación. Tiene que estar asignado como evaluador 1 o evaluador 2 de la evaluación.

Se muestra un buscador para poder filtrar por lo campos:

* Comité
* Fecha de evaluación
* Referencia de la memoria
* Convocatoria

El resultado serán todas las memorias que cumplan con los criterios seleccionados. Las columnas a mostrar son:

* Comité
* Fecha evaluación
* Referencia de la memoria
* Solicitante
* Versión
* Acciones: Evaluar

##### Evaluar

En caso de que entre la fecha actual mas tres días es igual o mayor a la fecha de evaluación no le saldrá esta acción activada para las memorias en estado "En evaluación". A un evaluador se le deja evaluar una memoria hasta 3 días antes de la evaluación.

Se muestra una pantalla son tres pestañas. Una pestaña para añadir comentarios  y así construir la ficha del evaluador,  otra para ver los datos asociada a la memoria y otra con la documentación adjunta a la memoria.

###### Comentarios

Para dar de alta un comentario se necesitan los siguientes campos:

* Bloque: desplegable con el nombre de los 5 bloques del formulario asociado al comité que tiene asignada la memoria.
* Apartado: desplegable con los apartados del bloque seleccionado.
* Subapartado: desplegable con los subapartados del apartado seleccionado.
* Comentario: caja de texto para introducir el comentario respecto al subapartado o apartado.

Se irá mostrando una lista con los comentarios dados de alta. Se podrán eliminar y modificar los comentarios.

Hasta pulsar el botón de Guardar no se harán efectivos los cambios.

###### Datos memoria

* Comité: en modo consulta
* Fecha de evaluación: en modo consulta
* Referencia de la memoria: en modo consulta
* Solicitante: en modo consulta
* Versión: en modo consulta
* Listado con las evaluaciones anteriores mostrando las siguientes columnas:
	+ Referencia de la memoria
	+ Versión
	+ Fecha evaluación
	+ Dictamen
	+ Nº de comentarios
	+ PDF  evaluación: Enlace al informe favorable (dictamen es "Favorable") o al informe evaluación (dictamen "Favorable pendiente de revisión mínima" o "Pendiente de correcciones").

Toda la pantalla es de información para el evaluador.

  


### Perfil administrador (ACT\-ETI\-007\-Administrador)

Únicamente accederá a una opción del menú de Configuración para configurar ciertos tiempos que se usan en el módulo de ética.

El administrador sólo podrá modificar el campos descripción y valor.



| Código | Descripción | Valor por defecto |
| --- | --- | --- |
| mesesArchivadaInactivo | Número de meses que tienen que pasar para que una memoria sin modificaciones en su estado "Favorable Pendiente de Modificaciones Mínimas"  o "No procede evaluar" pase a estado "Archivada" | 6 meses |
| diasArchivadaPendienteCorrecciones | Número de días que se tiene para presentar las correcciones de un dictamen "Pendiente correcciones" | 45 días |
| diasLimiteEvaluador | Número límite antes de la fecha de la reunión de evaluación que tienen los evaluadores para evaluar la memoria | 3 días |
| mesesAvisoProyectoCEEA | Número de meses anteriores a la fecha de inicio del proyecto para avisar del investigador que tiene que entregar el informe de la memoria de tipo CEEA | 2 meses |
| mesesAvisoProyectoCEISH | Número de meses anteriores a la fecha de inicio del proyecto para avisar del investigador que tiene que entregar el informe de la memoria de tipo CEISH | 2 meses |
| mesesAvisoProyectoCEIAB | Número de meses anteriores a la fecha de inicio del proyecto para avisar del investigador que tiene que entregar el informe de la memoria de tipo CEIAB | 2 meses |

## Comunicados

* Notificar de cambios en la memoria realizados
* Convocatoria de reunión comité
* Acta de evaluación finalizada (evaluaciones que no son de revisión mínima)
* Dictamen de evaluación de memoria de revisión mínima disponible
* Dictamen de evaluación de seguimiento de memoria de revisión mínima disponible
* Informe de seguimiento anual pendiente
* Informe de seguimiento final pendiente
* Informe de retrospectiva de memoria tipo CEEA pendiente
* Memoria con dictamen "Favorable Pendiente de Modificaciones Mínimas" archivada automáticamente
* Memoria  con dictamen "Pendiente de correcciones" archivada automáticamente

Ver análisis de este apartado en [ETI \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md").

## Informes

Listado de informes a generar a partir de plantillas:



| Descripción | IU que lo usa | Ejemplo del informe |
| --- | --- | --- |
| Informe formulario M10 | [IU\-ETI\-0020\-002 Evaluar memoria \- Gestor](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0020-gestion-de-evaluaciones/iu-eti-0020-002-evaluar-memoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0020-gestion-de-evaluaciones/iu-eti-0020-002-evaluar-memoria.md")(en la pestaña de Documentación)[IU\-ETI\-0050\-002 Evaluar memoria \- Evaluador](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0050-evaluaciones-y-seguimientos-evaluador/iu-eti-0050-002-evaluar-memoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0050-evaluaciones-y-seguimientos-evaluador/iu-eti-0050-002-evaluar-memoria.md")(en la pestaña de Documentación) | [Informe formulario CEISH](https://treetkcom.sharepoint.com/:b:/r/sites/Produccin/Documentos%20compartidos/Innovacion/03_productos/hercules/02_requisitos/etica/info_um/informeFormularioCEISH.pdf?csf=1&web=1&e=PKOcSb "https://treetkcom.sharepoint.com/:b:/r/sites/Produccin/Documentos%20compartidos/Innovacion/03_productos/hercules/02_requisitos/etica/info_um/informeFormularioCEISH.pdf?csf=1&web=1&e=PKOcSb") |
| Informe formulario M20 | [IU\-ETI\-0020\-002 Evaluar memoria \- Gestor](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0020-gestion-de-evaluaciones/iu-eti-0020-002-evaluar-memoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0020-gestion-de-evaluaciones/iu-eti-0020-002-evaluar-memoria.md")(en la pestaña de Documentación)[IU\-ETI\-0050\-002 Evaluar memoria \- Evaluador](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0050-evaluaciones-y-seguimientos-evaluador/iu-eti-0050-002-evaluar-memoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0050-evaluaciones-y-seguimientos-evaluador/iu-eti-0050-002-evaluar-memoria.md")(en la pestaña de Documentación) | [Informe formulario CEEA](https://treetkcom.sharepoint.com/:b:/r/sites/Produccin/Documentos%20compartidos/Innovacion/03_productos/hercules/02_requisitos/etica/info_um/informeFormularioCEEA.pdf?csf=1&web=1&e=H8WPoh "https://treetkcom.sharepoint.com/:b:/r/sites/Produccin/Documentos%20compartidos/Innovacion/03_productos/hercules/02_requisitos/etica/info_um/informeFormularioCEEA.pdf?csf=1&web=1&e=H8WPoh") |
| Informe formulario M30 | [IU\-ETI\-0020\-002 Evaluar memoria \- Gestor](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0020-gestion-de-evaluaciones/iu-eti-0020-002-evaluar-memoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0020-gestion-de-evaluaciones/iu-eti-0020-002-evaluar-memoria.md")(en la pestaña de Documentación)[IU\-ETI\-0050\-002 Evaluar memoria \- Evaluador](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0050-evaluaciones-y-seguimientos-evaluador/iu-eti-0050-002-evaluar-memoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0050-evaluaciones-y-seguimientos-evaluador/iu-eti-0050-002-evaluar-memoria.md")(en la pestaña de Documentación) | [Informe formulario CEIAB](https://treetkcom.sharepoint.com/:b:/r/sites/Produccin/Documentos%20compartidos/Innovacion/03_productos/hercules/02_requisitos/etica/info_um/informeFormularioCEIAB.pdf?csf=1&web=1&e=VIKD1V "https://treetkcom.sharepoint.com/:b:/r/sites/Produccin/Documentos%20compartidos/Innovacion/03_productos/hercules/02_requisitos/etica/info_um/informeFormularioCEIAB.pdf?csf=1&web=1&e=VIKD1V") |
| Informe Ficha evaluador | [IU\-ETI\-0020\-002 Evaluar memoria \- Gestor](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0020-gestion-de-evaluaciones/iu-eti-0020-002-evaluar-memoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0020-gestion-de-evaluaciones/iu-eti-0020-002-evaluar-memoria.md")(en la pestaña de Documentación) | [Ficha evaluador CEEA](https://treetkcom.sharepoint.com/:w:/r/sites/Produccin/Documentos%20compartidos/Innovacion/03_productos/hercules/02_requisitos/etica/info_um/FICHA%20EVALUADOR%20CEEA.docx?d=we947d4c27c414ab7879002a3d2ed0b60&csf=1&web=1&e=Z3cSeA "https://treetkcom.sharepoint.com/:w:/r/sites/Produccin/Documentos%20compartidos/Innovacion/03_productos/hercules/02_requisitos/etica/info_um/FICHA%20EVALUADOR%20CEEA.docx?d=we947d4c27c414ab7879002a3d2ed0b60&csf=1&web=1&e=Z3cSeA")[Ficha evaluador CEIAB](https://treetkcom.sharepoint.com/:w:/r/sites/Produccin/Documentos%20compartidos/Innovacion/03_productos/hercules/02_requisitos/etica/info_um/FICHA%20EVALUADOR%20CEIAB.docx?d=wc8b150e6fefe4356ac3710ecf6005dc4&csf=1&web=1&e=jjPibJ "https://treetkcom.sharepoint.com/:w:/r/sites/Produccin/Documentos%20compartidos/Innovacion/03_productos/hercules/02_requisitos/etica/info_um/FICHA%20EVALUADOR%20CEIAB.docx?d=wc8b150e6fefe4356ac3710ecf6005dc4&csf=1&web=1&e=jjPibJ")[Ficha evaluador CEISH](https://treetkcom.sharepoint.com/:w:/r/sites/Produccin/Documentos%20compartidos/Innovacion/03_productos/hercules/02_requisitos/etica/info_um/FICHA%20EVALUADOR%20CEISH.docx?d=w2a42af26acef4bd1b8341065bc6a26dc&csf=1&web=1&e=yyDoOr "https://treetkcom.sharepoint.com/:w:/r/sites/Produccin/Documentos%20compartidos/Innovacion/03_productos/hercules/02_requisitos/etica/info_um/FICHA%20EVALUADOR%20CEISH.docx?d=w2a42af26acef4bd1b8341065bc6a26dc&csf=1&web=1&e=yyDoOr") |
| Informe Evaluación | [IU\-ETI\-0020\-002 Evaluar memoria \- Gestor](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0020-gestion-de-evaluaciones/iu-eti-0020-002-evaluar-memoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0020-gestion-de-evaluaciones/iu-eti-0020-002-evaluar-memoria.md")(en la pestaña de Evaluación en el listado de evaluaciones anteriores)[IU\-ETI\-0050\-002 Evaluar memoria \- Evaluador](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0050-evaluaciones-y-seguimientos-evaluador/iu-eti-0050-002-evaluar-memoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0050-evaluaciones-y-seguimientos-evaluador/iu-eti-0050-002-evaluar-memoria.md")(en la pestaña de Evaluación en el listado de evaluaciones anteriores)[IU\-ETI\-0060\-014 Memorias \- Edición evaluaciones \- Investigador](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-014-memorias-edicion-evaluaciones.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-014-memorias-edicion-evaluaciones.md") | [Informe pendiente de correcciones](https://treetkcom.sharepoint.com/:w:/r/sites/Produccin/Documentos%20compartidos/Innovacion/03_productos/hercules/02_requisitos/etica/info_um/INFORME%20PENDIENTE%20DE%20CORRECCIONES.docx?d=w1fe6f80663c8472a903e45b27ef0978f&csf=1&web=1&e=eQfqcJ "https://treetkcom.sharepoint.com/:w:/r/sites/Produccin/Documentos%20compartidos/Innovacion/03_productos/hercules/02_requisitos/etica/info_um/INFORME%20PENDIENTE%20DE%20CORRECCIONES.docx?d=w1fe6f80663c8472a903e45b27ef0978f&csf=1&web=1&e=eQfqcJ") |
| Informe Favorable | [IU\-ETI\-0020\-002 Evaluar memoria \- Gestor](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0020-gestion-de-evaluaciones/iu-eti-0020-002-evaluar-memoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0020-gestion-de-evaluaciones/iu-eti-0020-002-evaluar-memoria.md")(en la pestaña de Evaluación en el listado de evaluaciones anteriores)[IU\-ETI\-0050\-002 Evaluar memoria \- Evaluador](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0050-evaluaciones-y-seguimientos-evaluador/iu-eti-0050-002-evaluar-memoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0050-evaluaciones-y-seguimientos-evaluador/iu-eti-0050-002-evaluar-memoria.md")(en la pestaña de Evaluación en el listado de evaluaciones anteriores)[IU\-ETI\-0060\-014 Memorias \- Edición evaluaciones \- Investigador](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-014-memorias-edicion-evaluaciones.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-014-memorias-edicion-evaluaciones.md") | [Informe favorable](https://treetkcom.sharepoint.com/:b:/r/sites/Produccin/Documentos%20compartidos/Innovacion/03_productos/hercules/02_requisitos/etica/info_um/INFORME%20FAVORABLE.pdf?csf=1&web=1&e=y4pWca "https://treetkcom.sharepoint.com/:b:/r/sites/Produccin/Documentos%20compartidos/Innovacion/03_productos/hercules/02_requisitos/etica/info_um/INFORME%20FAVORABLE.pdf?csf=1&web=1&e=y4pWca") |
| Informe Acta | [IU\-ETI\-0030\-001 Búsqueda y listado de actas \- Gestor](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0030-gestion-de-actas/iu-eti-0030-001-busqueda-y-listado-de-actas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0030-gestion-de-actas/iu-eti-0030-001-busqueda-y-listado-de-actas.md") | No lo tenemos |
| Informe seguimiento anual | [IU\-ETI\-0100\-002 Evaluar memoria seguimiento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0100-gestion-de-seguimientos/iu-eti-0100-002-evaluar-memoria-seguimiento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0100-gestion-de-seguimientos/iu-eti-0100-002-evaluar-memoria-seguimiento.md")(en la pestaña de Documentación)[IU\-ETI\-0050\-007 Evaluar memoria seguimiento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0050-evaluaciones-y-seguimientos-evaluador/iu-eti-0050-007-evaluar-memoria-seguimiento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0050-evaluaciones-y-seguimientos-evaluador/iu-eti-0050-007-evaluar-memoria-seguimiento.md")(en la pestaña de Documentación) | [Seguimiento](https://treetkcom.sharepoint.com/:w:/r/sites/Produccin/Documentos%20compartidos/Innovacion/03_productos/hercules/02_requisitos/etica/info_um/SEGUIMIENTO%2014-6-20.docx?d=w64fa8efad06649658428478709158b01&csf=1&web=1&e=MEtcIs "https://treetkcom.sharepoint.com/:w:/r/sites/Produccin/Documentos%20compartidos/Innovacion/03_productos/hercules/02_requisitos/etica/info_um/SEGUIMIENTO%2014-6-20.docx?d=w64fa8efad06649658428478709158b01&csf=1&web=1&e=MEtcIs") |
| Informe seguimiento final | [IU\-ETI\-0100\-002 Evaluar memoria seguimiento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0100-gestion-de-seguimientos/iu-eti-0100-002-evaluar-memoria-seguimiento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0100-gestion-de-seguimientos/iu-eti-0100-002-evaluar-memoria-seguimiento.md")(en la pestaña de Documentación)[IU\-ETI\-0050\-007 Evaluar memoria seguimiento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0050-evaluaciones-y-seguimientos-evaluador/iu-eti-0050-007-evaluar-memoria-seguimiento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0050-evaluaciones-y-seguimientos-evaluador/iu-eti-0050-007-evaluar-memoria-seguimiento.md")(en la pestaña de Documentación) | [Seguimiento](https://treetkcom.sharepoint.com/:w:/r/sites/Produccin/Documentos%20compartidos/Innovacion/03_productos/hercules/02_requisitos/etica/info_um/SEGUIMIENTO%2014-6-20.docx?d=w64fa8efad06649658428478709158b01&csf=1&web=1&e=MEtcIs "https://treetkcom.sharepoint.com/:w:/r/sites/Produccin/Documentos%20compartidos/Innovacion/03_productos/hercules/02_requisitos/etica/info_um/SEGUIMIENTO%2014-6-20.docx?d=w64fa8efad06649658428478709158b01&csf=1&web=1&e=MEtcIs") |
| Informe retrospectiva | [IU\-ETI\-0020\-002 Evaluar memoria \- Gestor](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0020-gestion-de-evaluaciones/iu-eti-0020-002-evaluar-memoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0020-gestion-de-evaluaciones/iu-eti-0020-002-evaluar-memoria.md")(en la pestaña de Documentación)[IU\-ETI\-0050\-002 Evaluar memoria \- Evaluador](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0050-evaluaciones-y-seguimientos-evaluador/iu-eti-0050-002-evaluar-memoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0050-evaluaciones-y-seguimientos-evaluador/iu-eti-0050-002-evaluar-memoria.md")(en la pestaña de Documentación) | [Evaluación retrospectiva](https://treetkcom.sharepoint.com/:w:/r/sites/Produccin/Documentos%20compartidos/Innovacion/03_productos/hercules/02_requisitos/etica/info_um/EVALUACIO%CC%81N%20RETROSPECTIVA.docx?d=wc2f12cfa60314588b454c0da84b389e8&csf=1&web=1&e=blaSor "https://treetkcom.sharepoint.com/:w:/r/sites/Produccin/Documentos%20compartidos/Innovacion/03_productos/hercules/02_requisitos/etica/info_um/EVALUACIO%CC%81N%20RETROSPECTIVA.docx?d=wc2f12cfa60314588b454c0da84b389e8&csf=1&web=1&e=blaSor") |
| Modelo informe evaluación retrospectiva | [IU\-ETI\-0060\-014 Memorias \- Edición evaluaciones \- Investigador](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-014-memorias-edicion-evaluaciones.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-014-memorias-edicion-evaluaciones.md") | [Modelo informe evaluación retrospectiva](https://treetkcom.sharepoint.com/:w:/r/sites/Produccin/Documentos%20compartidos/Innovacion/03_productos/hercules/02_requisitos/etica/info_um/MODELO%20INFORME%20EVALUACI%C3%93N%20RETROSPECTIVA.doc?d=wb3dd5a4f04684e5086d077eeb87ad41d&csf=1&web=1&e=4wg6gc "https://treetkcom.sharepoint.com/:w:/r/sites/Produccin/Documentos%20compartidos/Innovacion/03_productos/hercules/02_requisitos/etica/info_um/MODELO%20INFORME%20EVALUACI%C3%93N%20RETROSPECTIVA.doc?d=wb3dd5a4f04684e5086d077eeb87ad41d&csf=1&web=1&e=4wg6gc") |
| Informe favorable de ratificación | [U\-ETI\-0020\-002 Evaluar memoria \- Gestor](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0020-gestion-de-evaluaciones/iu-eti-0020-002-evaluar-memoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0020-gestion-de-evaluaciones/iu-eti-0020-002-evaluar-memoria.md")(en la pestaña de Evaluación en el listado de evaluaciones anteriores)[IU\-ETI\-0050\-002 Evaluar memoria \- Evaluador](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0050-evaluaciones-y-seguimientos-evaluador/iu-eti-0050-002-evaluar-memoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0050-evaluaciones-y-seguimientos-evaluador/iu-eti-0050-002-evaluar-memoria.md")(en la pestaña de Evaluación en el listado de evaluaciones anteriores)[IU\-ETI\-0060\-014 Memorias \- Edición evaluaciones \- Investigador](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-014-memorias-edicion-evaluaciones.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-014-memorias-edicion-evaluaciones.md") | [Informe favorable de ratificación](https://treetkcom.sharepoint.com/:w:/r/sites/Produccin/Documentos%20compartidos/Innovacion/03_productos/hercules/02_requisitos/etica/info_um/INFORME%20FAVORABLE%20DE%20RATIFICACI%C3%93N.docx?d=w1568f4f863344bc88645aed5590d4a28&csf=1&web=1&e=18yAmz "https://treetkcom.sharepoint.com/:w:/r/sites/Produccin/Documentos%20compartidos/Innovacion/03_productos/hercules/02_requisitos/etica/info_um/INFORME%20FAVORABLE%20DE%20RATIFICACI%C3%93N.docx?d=w1568f4f863344bc88645aed5590d4a28&csf=1&web=1&e=18yAmz") |
| Informe favorable de modificación | [U\-ETI\-0020\-002 Evaluar memoria \- Gestor](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0020-gestion-de-evaluaciones/iu-eti-0020-002-evaluar-memoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0020-gestion-de-evaluaciones/iu-eti-0020-002-evaluar-memoria.md")(en la pestaña de Evaluación en el listado de evaluaciones anteriores)[IU\-ETI\-0050\-002 Evaluar memoria \- Evaluador](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0050-evaluaciones-y-seguimientos-evaluador/iu-eti-0050-002-evaluar-memoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0050-evaluaciones-y-seguimientos-evaluador/iu-eti-0050-002-evaluar-memoria.md")(en la pestaña de Evaluación en el listado de evaluaciones anteriores)[IU\-ETI\-0060\-014 Memorias \- Edición evaluaciones \- Investigador](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-014-memorias-edicion-evaluaciones.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-interfaz-de-usuario/iu-eti-0060-peticiones-de-evaluacion-investigador/iu-eti-0060-014-memorias-edicion-evaluaciones.md") | [Informe favorable de modificación (primera)](https://treetkcom.sharepoint.com/:w:/r/sites/Produccin/Documentos%20compartidos/Innovacion/03_productos/hercules/02_requisitos/etica/info_um/INFORME%20FAVORABLE%20DE%20MODIFICACI%C3%93N%20RELEVANTE.docx?d=w7c2b3fdf6ee34f9592540f8675480749&csf=1&web=1&e=yJmmSO "https://treetkcom.sharepoint.com/:w:/r/sites/Produccin/Documentos%20compartidos/Innovacion/03_productos/hercules/02_requisitos/etica/info_um/INFORME%20FAVORABLE%20DE%20MODIFICACI%C3%93N%20RELEVANTE.docx?d=w7c2b3fdf6ee34f9592540f8675480749&csf=1&web=1&e=yJmmSO") |

  


## Procesos





### Paso a archivado por inactividad (modificaciones mínimas)

Si han paso X días (cantidad indicada en la variable de configuración "**diasArchivadaInactivo**" definida en [IU\-ETI\-0080\- Configuración)](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852515 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852515") desde la fecha de estado de una memoria cuyos estados son "Favorable Pendiente de Modificaciones Mínimas"  o "No procede evaluar"  o "Solicitud modificación" se deberá de cambiar el estado a "Archivado" y actualizar la fecha de estado. También se debe enviar un comunicado al investigador según lo definido en [ETI \- Comunicados](https://confluence.um.es/confluence/display/HERCULES/ETI+-+Comunicados "https://confluence.um.es/confluence/display/HERCULES/ETI+-+Comunicados") en el comunicado **Memoria con dictamen "Favorable Pendiente de Modificaciones Mínimas" archivada automáticamente**.

### Paso a archivado por no presentar de nuevo el informe

Si han paso X meses (cantidad indicada en la variable de configuración "**mesesArchivadaPendienteCorrecciones**" definida en [IU\-ETI\-0080\- Configuración)](https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852515 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=597852515") desde la fecha de estado de una memoria  cuyo estado es  "Pendiente Correcciones" se deberá de cambiar el estado a "Archivado" y actualizar la fecha de estado. También se debe enviar un comunicado al investigador según lo definido en [ETI \- Comunicados](https://confluence.um.es/confluence/display/HERCULES/ETI+-+Comunicados "https://confluence.um.es/confluence/display/HERCULES/ETI+-+Comunicados") en el comunicado **Memoria  con dictamen "Pendiente de correcciones" archivada automáticamente**.  








### Casos de uso relacionados







### Interfaces relacionados






## Integraciones

* Módulo de avisos y alertas para los avisos definidos en [ETI \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md")
* Módulo de usuarios para buscar los usuarios en la parte del equipo de investigación de la petición de evaluación
* Módulo reporting para generar los informes pdf.
* Módulo CSP: formulario de auto check list tienen que estar en solicitud de convocatoria y si sale que hay que necesita una evaluación de de la comisión de ética se crea directamente la petición de evaluación con los datos de la solicitud de convocatoria. Definir que sacar en el desplegable de tipos de financiación para que sea igual que en CSP.
* Repositorio documental para subir o eliminar ficheros.
* SGE para notificar los datos de la factura a emitir cuando el creador de la petición de evaluación es un usuario externo a la Universidad (Actor Solicitante)

## Flujo de estados de una memoria

![](/attachments/597853840/841089094.bmp)

  


Se indica a continuación el significado de cada estado:

* En elaboración: estado temporal mientras la solicitud de evaluación ética del proyecto está siendo registrada. Es el estado inicial de la memoria.
* Completada: el/la solicitante ya ha introducido todas las respuestas del formulario de memoria. Una memoria en estado "completada" ya puede ser enviada a secretaría para su evaluación. Una memoria en estado "subsanación" también pasa a estado "completada" una vez que haya sido modificada.
* En secretaría: el/la solicitante pulsa el botón "Enviar a secretaría" asociado a una memoria completada. La memoria junto con el resto de datos de la solicitud de evaluación ética del proyecto se remiten al personal de gestión. La memoria está disponible para ser incluida en la convocatoria de reunión de evaluación del comité correspondiente.
* Subsanación: el personal de gestión revisa la memoria y aporta un comentario general indicando que se debe subsanar la memoria para poder incluirla en convocatoria de reunión de evaluación. Una memoria en "subsanación" podrá ser modificada por el/la solicitante.
* En evaluación: el personal de gestión incluye la memoria en una convocatoria de reunión de evaluación. La memoria está disponible para ser revisada por los miembros del comité correspondiente.  Una memoria en estado "en evaluación" no puede ser modificada.
* Fin evaluación: la memoria ha sido evaluada y en la convocatoria de reunión de evaluación se la otorgado dictamen "favorable". La memoria adquiere el estado "fin evaluación" una vez que se haya finalizado el acta asociada a la convocatoria de reunión en la que se ha evaluado (hasta este momento la memoria seguirá en estado "en evaluación" aunque ya disponga de dictamen "favorable").
* Favorable Pendiente de Revisión Mínima: la memoria ha sido evaluada y se le ha otorgado un dictamen "favorable de revisión mínima".  La memoria adquiere el estado "favorable pendiente de revisión mínima" una vez que se haya finalizado el acta asociada a la convocatoria de reunión en la que se ha evaluado (hasta este momento la memoria seguirá en estado "en evaluación" aunque ya disponga de dictamen). Una memoria en estado "favorable pendiente de revisión mínima" deberá ser modificada por el/la investigador/a solicitante y volver a ser remitida a secretaría. No será necesario que vuelva a entrar en una convocatoria de reunión de evaluación posterior, el personal de gestión podrá revisar la memoria y asignarle nuevo dictamen sin esperar a la siguiente convocatoria de reunión.
* Pendiente de correcciones: la memoria ha sido evaluada y se le ha otorgado un dictamen "pendiente de correcciones". La memoria adquiere el estado "pendiente de correcciones" una vez que se haya finalizado el acta asociada a la convocatoria de reunión en la que se ha evaluado (hasta este momento la memoria seguirá en estado "en evaluación" aunque ya disponga de dictamen). Una memoria en estado "pendiente de correcciones" debe de ser modificada por el/la investigador/a solicitante y deberá ser remitida nuevamente a secretaría. Una vez en secretaría, la memoria deberá entrar en una nueva convocatoria de reunión de evaluación.
* No procede evaluar:  la memoria ha sido evaluada y se le ha otorgado un dictamen "no procede evaluar". La memoria adquiere el estado "no procede evaluar" una vez que se haya finalizado el acta asociada a la convocatoria de reunión en la que se ha evaluado (hasta este momento la memoria seguirá en estado "en evaluación" aunque ya disponga de dictamen). Una memoria en estado "no procede evaluar" no podrá ser modificada. El ciclo de vida de la memoria finalizará transcurridos un número de días determinado (configurados en el SGI), tomando el estado final "archivada".
* Desfavorable: La memoria ha sido evaluado y se le ha dado el dictamen "desfavorable". La memoria adquiere el estado "desfavorable" una vez que se haya finalizado el acta asociada a la convocatoria de reunión en la que se ha evaluado (hasta este momento la memoria seguirá en estado "en evaluación" aunque ya disponga de dictamen). Una memoria en estado "desfavorable" no podrá ser modificada.  El ciclo de vida de la memoria finalizará transcurridos un número de días determinado (configurados en el SGI), tomando el estado final "archivada".
* En secretaría revisión mínima: una memoria cuyo estado sea "favorable pendiente de revisión mínima"  tomará el estado "en secretaría revisión mínima" cuando el/la investigador/a solicitante remite nuevamente la memoria a secretaría, tras haber introducido los cambios oportunos. Una memoria en estado  "en secretaría revisión mínima", podrá ser reevaluada por el personal de gestión sin necesidad de incluir la memoria en una nueva convocatoria de reunión.
* Completada seguimiento anual: Una memoria en estado "fin evaluación" (dictamen "favorable") tendrá activado el formulario de "seguimiento anual" transcurrido un año desde la fecha establecida como inicio del proyecto. Cuando el formulario de seguimiento anual esté completado la memoria adquiere el estado "completada seguimiento anual".
* En secretaría seguimiento anual: Una memoria en estado "completada seguimiento anual" deberá ser remita a secretaría para que sea evaluada. Cuando el/la investigador/a solicitante remite el formulario de seguimiento anual a secretaría para su evaluación, la memoria adquiere el estado "en secretaría seguimiento anual".
* En evaluación seguimiento anual: Una memoria en estado "en secretaría seguimiento anual" debe de ser incluida en una convocatoria de reunión de evaluación de tipo seguimiento. Cuando la memoria es incluida en una convocatoria de reunión adquiere el estado "en evaluación seguimiento anual".
* Solicitud modificación seguimiento anual: La memoria ha sido evaluada en su fase de seguimiento anual y se le ha otorgado dictamen "solicitud de modificación". La memoria adquiere el estado "solicitud de modificación" una vez que se haya finalizado el acta asociada a la convocatoria de reunión de seguimiento en la que se ha evaluado (hasta este momento la memoria seguirá en estado "en evaluación seguimiento anual" aunque ya disponga de dictamen). Una memoria en estado "solicitud de modificación" deberá ser modificada por el/la investigadora/a solicitante. Se deberá modificar el formulario de seguimiento anual de acuerdo a los comentarios recibidos en la evaluación.
* En secretaría seguimiento anual modificación: una memoria cuyo estado sea "solicitud modificación seguimiento anual" tomará el estado "en secretaría seguimiento anual modificación" cuando el/la investigador/a solicitante remite nuevamente la memoria a secretaría, tras haber introducido los cambios oportunos en el formulario de seguimiento anual. Una memoria en estado  "en secretaría seguimiento anual modificación", podrá ser reevaluada por el personal de gestión sin necesidad de incluir la memoria en una nueva convocatoria de reunión.
* Fin evaluación seguimiento anual: La memoria ha sido evaluada en su fase de seguimiento anual y se le ha otorgado dictamen "favorable". La memoria adquiere el estado "fin evaluación seguimiento anual" una vez que se haya finalizado el acta asociada a la convocatoria de reunión de seguimiento en la que se ha evaluado (hasta este momento la memoria seguirá en estado "en evaluación seguimiento anual" aunque ya disponga de dictamen). El formulario de seguimiento anual de una memoria ya no se podrá modificar una vez la memoria disponga del estado "fin evaluación seguimiento anual".
* Completada seguimiento final: Una memoria en estado "fin evaluación seguimiento anual" tendrá disponible el formulario de seguimiento final una vez que haya transcurrido un año desde la fecha de fin de proyecto indicada en la solicitud de evaluación. Cuando el/la investigador/a solicitante haya cumplimentado íntegramente las preguntas obligatorias del  formulario de seguimiento final, la memoria adquiere el estado "completada seguimiento final".
* En secretaría seguimiento final: Una memoria en estado "completada seguimiento final" debe ser remitida a secretaría para que se pueda proceder a su evaluación. Cuando el/la investigador/a solicitante remite una memoria en estado "en secretaría seguimiento final" a secretaría, ésta adquiere el estado "en secretaría seguimiento final".
* En evaluación seguimiento final: Una memoria en estado "en secretaría seguimiento final" debe de ser incluida en una convocatoria de reunión de tipo seguimiento para poder ser evaluada. En ese momento la memoria adquiere el estado "en evaluación seguimiento final".
* Fin evaluación seguimiento final: La memoria ha sido evaluada en su fase de seguimiento final y se le ha otorgado dictamen "favorable".  La memoria adquiere el estado "fin evaluación seguimiento final" una vez que se haya finalizado el acta asociada a la convocatoria de reunión de seguimiento en la que se ha evaluado (hasta este momento la memoria seguirá en estado "en evaluación seguimiento final" aunque ya disponga de dictamen).  El formulario de seguimiento final de una memoria ya no se podrá modificar una vez la memoria disponga del estado "fin evaluación seguimiento final". El ciclo de la memoria habrá finalizado tras alcanzar el estado "fin evaluación seguimiento final".
* En aclaración seguimiento final: La memoria ha sido evaluada en su fase de seguimiento final y se le ha otorgado dictamen "solicitud de aclaraciones". La memoria adquiere el estado "en aclaración seguimiento final" una vez que se haya finalizado el acta asociada a la convocatoria de reunión de seguimiento en la que se ha evaluado (hasta este momento la memoria seguirá en estado "en evaluación seguimiento final" aunque ya disponga de dictamen). Una memoria en estado "en aclaración seguimiento final" deberá ser modificada por el/la investigadora/a solicitante. Se deberá modificar el formulario de seguimiento final de acuerdo a los comentarios recibidos en la evaluación.
* En secretaría seguimiento final aclaraciones: una memoria cuyo estado sea "en aclaración seguimiento final"  tomará el estado "en secretaría seguimiento final" cuando el/la investigador/a solicitante remite nuevamente la memoria a secretaría, tras haber introducido los cambios oportunos en el formulario de seguimiento final. Una memoria en estado  "en secretaría seguimiento final", podrá ser reevaluada por el personal de gestión sin necesidad de incluir la memoria en una nueva convocatoria de reunión de seguimiento.
* Archivado: es el estado final que adquieren las memorias cuyo estado previo es "desfavorable", "pendiente de correcciones", "pendiente de revisión mínima", "solicitud de modificación" o "en aclaración seguimiento final" y hayan transcurrido un número de días determinado, configurados en el SGI. Una memoria en estado "archivado" no podrá ser modificada. Su ciclo de vida ha concluído.

  


## Modelo lógico

![](/attachments/597853840/841089095.bmp)

  





