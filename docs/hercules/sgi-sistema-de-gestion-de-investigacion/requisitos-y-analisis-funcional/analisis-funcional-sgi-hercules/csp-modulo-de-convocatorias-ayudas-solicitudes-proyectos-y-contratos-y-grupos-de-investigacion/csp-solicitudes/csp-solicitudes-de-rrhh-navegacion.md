# Hércules : CSP \- Solicitudes de RRHH \- Navegación



Las solicitudes asociadas a las convocatorias de RRHH del plan propio (predoctorales, postdoctorales e iniciación) se tratarán de forma genérica. En el SGI se identificarán  como solicitudes de RRHH (campo "tipo solicitud SGI" de convocatoria). No se realizará ninguna particularización para las solicitudes predoctorales, postdoctorales o de iniciación, y el SGI no cubrirá el proceso de baremación de ninguna de ellas.

A grandes rasgos el flujo de las solicitudes de RRHH implementado en el SGI consta de los siguientes pasos:

* Registro de la convocatoria por parte de la unidad de gestión correspondiente.
* Registro de la solicitud asociada a la convocatoria por parte del personal investigador solicitante (perteneciente o no a la Universidad).
* Validación de la solicitud por parte de la persona propuesta como tutor/a (personal investigador perteneciente a la Universidad).
* Gestión de la solicitud por parte de la unidad de gestión correspondiente hasta la concesión/denegación final de la misma.
* Creación del proyecto, si procede (solicitud concedida), asociado a la solicitud.

### Unidad de gestión \- Registro de convocatoria en el SGI

El flujo de una solicitud de RRHH en el SGI comienza con la creación y registro de la correspondiente convocatoria por parte de la unidad de gestión. Los datos con los que se registran las convocatorias en el SGI son comunes, es decir, no existe ninguna particularización concreta para las convocatorias de ayudas postdoctorales. Las consideraciones a tener en cuenta en la creación de la convocatoria para que de ella deriven solicitudes postdoctorales son

* Tipo solicitud SGI \= RRHH. La convocatoria se deberá crear indicando en el campo "tipo solicitud  SGI" el valor "RRHH".
* Se asignarán a la convocatoria el modelo de ejecución, tipo de finalidad y unidad de gestión correspondientes de acuerdo a los datos de configuración del SGI.
* Para permitir que el registro de las solicitudes sea realizado por el propio personal investigador a través del propio SGI se deberá añadir a la convocatoria la siguiente información:
	+ Apartado fases:
		- Añadir al menos una fase y las fechas asociadas a la misma.
	+ Apartado "Configuración de solicitudes":
		- El campo "Habilitar tramitación de solicitudes en el SGI" debe tomar valor "sí".
		- Se debe especificar la fase, de las indicadas en el apartado fases, que va a delimitar el plazo de presentación de las solicitudes.
		- Se podrá indicar uno o varios tipos de documentos que deberán ser adjuntados por el personal investigador en la solicitud. Los tipos de documento que se deseen especificar deben haber sido configurados en el modelo de ejecución correspondiente (subvención, recursos propios, etc. el que aplique en cada momento de acuerdo a la convocatoria).
	+ Apartado requisitos IP
		- Especificación de las restricciones correspondientes en cuanto a nivel académico y/o categoría profesional y las fechas de obtención del mismo
	+ Apartado requisitos Equipo
		- Especificación de las restricciones correspondientes en cuanto a nivel académico y/o categoría profesional y las fechas de obtención del mismo del tutor/a

  


  


A continuación se adjuntan a modo de muestra una serie de capturas del módulo de Convocatorias con alguno de los apartados mencionados anteriormente

* Apartado de fases

![](/attachments/597852455/597876683.png)

  


* Apartado de requisitos IP

![](/attachments/597852455/597876685.png)

  


* Apartado configuración solicitudes

![](/attachments/597852455/597876682.png)

  


  


### Personal investigador propio \- Registro de la solicitud

El personal investigador con su acceso al SGI tendrá disponible la opción CSP \- Convocatorias, a través de la que tendrá disponible el listado de las convocatorias que se encuentren en estado "registrada" y para las que se haya habilitado la tramitación de solicitudes a través del SGI:

![](/attachments/597852455/597876681.png)

#### Detalle convocatoria

Desde el listado de convocatorias, el personal investigador podrá acceder al detalle de la convocatoria:

![](/attachments/597852455/597876719.png)

  


Desde el detalle de la convocatoria tendrá disponible, entre otra, la información relativa a:

* Datos generales

![](/attachments/597852455/597876731.png)

* Fases

![](/attachments/597852455/597876734.png)

* Documentos

![](/attachments/597852455/597876679.png)

* Requisitos exigidos

![](/attachments/597852455/597876732.png)

  


#### Tramitar convocatoria \- Registrar solicitud

Desde el listado de convocatorias, siempre que la convocatoria se encuentre dentro del plazo de presentación de solicitudes configurado por la unidad de gestión, estará disponible la opción "Tramitar convocatoria", que va a permitir al personal investigador registrar una solicitud sobre la convocatoria.

![](/attachments/597852455/597876726.png)

  


Al pulsar el botón tramitar se inicia el registro de la solicitud. Inicialmente solo se introducirán los datos generales de la solicitud, apartado común a todos los tipos de solicitud (proyectos, grupo y RRHH).

![](/attachments/597852455/597876721.png)

  


En esta pantalla inicial el personal investigador podría indicar la modalidad a la que se acoge. No será un dato obligatorio y la disponibilidad del detalle de modalidades dependerá tanto de la naturaleza de la convocatoria como del detalle con el que la unidad de gestión hubiera registrado la convocatoria.

Al guardar esta pantalla inicial, el SGI comprobará el cumplimiento de los requisitos establecidos en el apartado "requisitos IP" de la convocatoria a partir de los datos recuperados del sistema de gestión de RRHH para la persona solicitante. En caso de no cumplirse se mostrará un mensaje informativo pero no se impedirá continuar con el registro de la solicitud.

![](/attachments/597852455/597876739.png)

  


Introducidos los datos generales de la solicitud estarán disponibles los apartados propios de la solicitud RRHH.

##### Solicitud RRHH \- Datos del solicitante

El prototipo de pantalla es el siguiente:

![](/attachments/597852455/597859545.png)

  


Los campos marcados en tono gris, se mostrarán en modo lectura, es decir, no podrán ser modificados por la persona solicitante. Serán recuperados, a través de la correspondiente de la integración, del sistema de gestión de personas o sistema de gestión de recursos humanos. En esta pantalla la persona solicitante solo podrá cumplimentar los campos:

* Universidad de origen.
* Área ANEP. No será obligatorio indicar un área ANEP. Solo se podrá seleccionar un área.

La cobertura a las áreas ANEP se dará a través de la estructura genérica del SGI "clasificación". 

![](/attachments/597852455/597876709.png)

  


Se limitará la selección a un solo elemento, es decir, una solicitud RRHH se podrá vincular a una única área.

  


##### Solicitud RRHH \- Datos tutor/a

Será obligatorio indicar la persona propuesta como tutor/a de la ayuda de RRHH. 

![](/attachments/597852455/597859546.png)

La introducción del nombre de la persona que actuará como tutor/a se deberá realizar obligatoriamente a través del buscador de personas, componente horizontal a todo el SGI e integrado con el sistema de gestión de personas de la Universidad. De manera automática y a modo informativo se recuperará una determinada información de la persona seleccionada:

* Nombre y apellidos
* Categoría
* Departamento
* Centro
* Teléfono
* Email

No será posible introducir ningún tipo de modificación sobre estos campos.

  


##### Solicitud RRHH \- Requisitos convocatoria

Esta pantalla se alimentará a partir de los requisitos establecidos en la convocatoria (apartados "requisitos IP" y "requisitos Equipo"). Para el caso del personal propio se realiza la comprobación automáticamente a partir de la información recuperada del sistema de gestión de personas / recursos humanos  mostrándose el aviso correspondiente. Para el caso de usuarios externo no se podrá realizar dicha comprobación al no tener datos de los mismos.

El personal de investigación podrá adjuntar un único documento acreditativo sobre cada requisito (no se limita el número de niveles académicos o categorías que pudieran haberse especificado en la convocatoria). Si surgiese la necesidad de tener que acreditar el requisitos con más de un documento, podrán ser introducidos en la  pestaña documentos.

No será obligatorio la aportación de los documentos acreditativos ni para el caso de personal propio ni para el caso de usuarios externos.

![](/attachments/597852455/597859547.png)

  


##### Solicitud RRHH \- Memoria

El último apartado de una solicitud de RRHH será la memoria. 

![](/attachments/597852455/597876792.png)

  


Serán de obligada cumplimentación los campos:

* Título del trabajo
* Resumen

Adicionalmente se proporcionará un campo abierto de Observaciones para que la persona solicitante pueda indicar cualquier otro comentario.

  


#### Solicitud \- Documentos

El apartado documentos es un apartado genérico común a todos los tipos de solicitud (proyectos, grupos, rrhh). Tiene como punto de partida el apartado Listado de documentos requeridos del apartado "Configuración solicitud" de la convocatoria, de forma que si la unidad de gestión especifica uno o varios documentos obligatorios sobre la convocatoria, éstos se mostrarán en el apartado documentos de la solicitud. Será obligatorio adjuntar los documentos establecidos por la convocatoria para que la persona solicitante pueda marcar la solicitud como "solicitada" (botón "cambiar estado solicitud").

El ejemplo adjunto muestra la visualización inicial del apartado documentos de una solicitud en el caso que en la convocatoria se hayan establecido como obligatorios los documentos de tipo CVA y Plan de trabajo.

![](/attachments/597852455/597876789.png)

  


La opción "añadir documento" permitirá adjuntar un documento.

![](/attachments/597852455/597876791.png)

  


Al adjuntar un documento se podrá especificar el Tipo de documento. Será el valor indicado en este tipo (y no el formato ni en ningún caso comprobación del contenido) el que permita al SGI realizar la comprobación de la obligatoriedad sobre los tipos de documento establecidos por la convocatoria.

![](/attachments/597852455/597876790.png)

  


Se recuerda que los tipos de documento disponibles en el desplegado "Tipo documento" del apartado Documentos de solicitudes serán los configurados en el modelo de ejecución al que pertenece la convocatoria que desencadena la solicitud. Los tipos de documento deben estar vinculados a la fase especificada como fase de presentación de solicitudes de la convocatoria (configurable en el apartado "Configuración de solicitudes" de la convocatoria).

  


Una vez adjuntados los documentos la vista del árbol de documentos de la solicitud tendría el siguiente aspecto:

![](/attachments/597852455/597876804.png)

  


No existe ningún límite para adjuntar documentos, la persona solicitante podría adjuntarse más documentos de los requeridos, indicando o no el tipo. Es decir, se podría adjuntar cualquier documento deseado se corresponda o no con uno de los tipos de documento configurados por la unidad de gestión para la fase de presentación de solicitudes.

  


En caso que fuese necesario establecer alguna plantilla sobre algún tipo de documento, la unidad de gestión pueden especificarlo en la sección "Documentos" de la convocatoria. Para cada documento incluido en la convocatoria la unidad de gestión tiene la libertad de indicar si es o no "público", es este parámetro el que marcará la visibilidad del documento por parte del personal investigador. Como se ha indicado en apartados previos el personal investigador tiene acceso al apartado de documentos de la convocatoria.  Se muestra a continuación, a modo de ejemplo, como el personal  investigador tendría disponible una plantilla para la elaboración del plan de trabajo.

![](/attachments/597852455/597876806.png)

  


#### Solicitud \- Cambiar estado

Cualquier solicitud se creará siempre en el estado inicial "borrador". La solicitud podrá permanecer en este estado hasta que la persona solicitante lo decida. Mientras la solicitud permanezca en este estado "borrador" la persona solicitante puede introducir cualquier cambio. El estado en el que se encuentra la solicitud en cada momento está disponible en el apartado Datos generales de la solicitud. También se mostrará como tooltip sobre el botón "Cambiar estado solicitud".

  


![](/attachments/597852455/597876799.png)

  


El ciclo de estados disponible para el personal investigador es común para cualquier tipo de solicitud (proyecto, grupo, rrhh), así como la forma de realizar ese cambio de estado. El cambio de estado se realizará haciendo uso del botón "Cambiar estado solicitud" que mostrará una ventana emergente con los cambios de estado posible en cada momento de la solicitud. En esta ventana se vuelve a mostrar el estado actual de la solicitud:

![](/attachments/597852455/597876803.png)

  


Sobre una solicitud en estado "borrador" el personal investigador solamente podrá pasar la solicitud a estado "solicitada" o "desistida":

![](/attachments/597852455/597876802.png)

  


Con el cambio de estado "solicitado" se realiza la comprobación de la disponibilidad de los documentos requeridos especificados en la convocatoria. En caso de no cumplirse se mostrará un mensaje de error y no será posible marcar la solicitud como "solicitada":

![](/attachments/597852455/597876805.png)

  


  


Cuando una solicitud pasa a estado "solicitada", el personal investigador no puede realizar modificaciones sobre la misma. De esta forma desde el listado de solicitudes la persona solicitante solo tendría opción a ver la solicitud en modo consulta

![](/attachments/597852455/597876798.png)

  


A partir del momento en que la solicitud de RRHH pasa a estado "solicitada" estará disponible para la persona indicada como tutor/a, que deberá validarla o rechazarla.

  


### Tutor/a del trabajo \- Validación de la solicitud

La persona indica como tutor/a de la ayuda de RRHH accederá con perfil de investigación al SGI. Tendrá disponible la opción de menú "Validación como tutor/a", desde la que podrá obtener el listado de solicitudes (RRHH) en las que fue incluido como tutor/a.

![](/attachments/597852455/597876813.png)

  


El check "pendientes", marcada por defecto, permitirá listar solamente las solicitudes que deben ser validadas. Serán las únicas solicitudes sobre las que se pueda modificar el estado. 

  


![](/attachments/597852455/597876747.png)

  


La persona indicada como a tutor/a del trabajo asociado a la ayuda de RRHH solamente podrá realizar el cambio de estado de la solicitud, no podrá modificar ningún dato de la misma, por lo que todos los campos se mostrarán en modo "solo lectura": 

![](/attachments/597852455/597876810.png)

  


La pantalla de cambio de estado será la común al personal investigador, limitando en este caso que los únicos estados posibles serán:

* Validada (valorar si el nombre del estado sería mejor que fuese validada responsable)
* Rechazada (valorar si el nombre del estado sería mejor que fuese rechazada responsable)

![](/attachments/597852455/597876760.png)

  


  


  


Una vez que el/la tutor/a ha validado la solicitud los siguientes cambios de estado de la misma han de ser realizados por la unidad de gestión.

Si el/la tutor/a ha rechazado la solicitud, el/la solicitante podrá modificar las solicitud para introducir los cambios necesarios y de esta forma volver a solicitarla (pudiendo haber cambiado a la persona propuesta como tutor/a).

### Unidad de gestión \- Gestión de la solicitud y creación del proyecto

La unidad de gestión podrá actuar sobre la solicitud de RRHH al igual que sobre el resto de solicitudes. Es decir, tendrá visibilidad de la misma desde la creación de la solicitud en estado Borrador, pudiendo modificar cualquier dato de la misma y pudiendo realizar cualquier cambio de estado.

Cuando la solicitud figure en uno de los siguientes estados:

* Concedida provisional
* Concedida provisional alegada
* Concedida provisional no alegada
* Concedida

La unidad de gestión podrá crear un proyecto vinculado a la solicitud. Para ello, desde el listado de solicitudes, se dispondrá del botón "Crear proyecto". El proyecto se creará componiendo de la siguiente forma sus datos básicos

* Título del proyecto: se propondrá como título la concatenación (por el carácter "\-") de los siguientes valores:
	+ Título de la convocatoria
	+ Año de la convocatoria (extraído del campo "fecha publicación" de la convocatoria"
	+ Nombre y apellidos del solicitante
* Fecha inicio: deberá ser introducida manualmente
* Fecha fin: se propondrá la fecha de inicio más la duración establecida en la convocatoria
* No se creará de manera automática ningún miembro del equipo

  


  


  


  





