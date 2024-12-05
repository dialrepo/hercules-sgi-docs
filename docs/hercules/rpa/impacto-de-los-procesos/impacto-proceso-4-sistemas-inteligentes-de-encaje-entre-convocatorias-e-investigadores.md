# Hércules : Impacto proceso 4\. Sistemas inteligentes de encaje entre convocatorias e investigadores



### Acciones qué realiza el proceso

Este proceso, [Proceso 4 : Sistemas Inteligentes de encaje entre convocatorias e investigadores](/hercules/rpa/modulo-de-automatizacion-y-gestion/analisis-y-procesos/proceso-4-sistemas-inteligentes-de-encaje-entre-convocatorias-e-investigadores/index.md "/hercules/rpa/modulo-de-automatizacion-y-gestion/analisis-y-procesos/proceso-4-sistemas-inteligentes-de-encaje-entre-convocatorias-e-investigadores/index.md"), es el encargado de enviar convocatorias a investigadores teniendo en cuenta las áreas temáticas de interés de estos. Este proceso está compuesto por dos subprocesos:

1. Proceso de notificación de perfil del investigador: este proceso es el encargado de recolectar las áreas temáticas de interés de un investigador. Para ello, envía un correo electrónico para que el investigador acceda a una página donde configura su perfil, ahí puntuará las áreas temáticas donde el investigador tenga interés. Además, este proceso le ofrece al investigador un listado de áreas basándose en las convocatorias a las que se ha suscrito. Un ejemplo de la página que permite configurar las áreas de interés al investigador es el siguiente: ![](/attachments/598147425/598148071.png)
2. Proceso de encaje entre convocatorias e investigadores: este proceso es el encargado de consultar las nuevas convocatorias insertadas en Hércules\-SGI y en base al área temática a la que pertenezcan dichas convocatorias, realizar el envío de la información a los investigadores que tengan configurado en sus perfiles dicha área. Este proceso se divide en:
* + Obtención de nuevas convocatorias en Hércules\-SGI utilizando un rango de fechas.
	+ Obtención de investigadores utilizando Hércules\-SGI, Hércules\-EDMA y la base de datos interna de Hércules\-RPA.
	+ Realizar el encaje entre convocatorias e investigadores utilizando un sistema de recomendación.
	+ Envío de convocatorias a investigadores que les pueda ser de su interés por correo electrónico.

Un ejemplo del envío de correo electrónico de una convocatoria a un investigador sería el siguiente:

  


![](/attachments/598147425/598148070.png)

Como podemos observar en la imagen anterior, el investigador puede a través de este correo:

* + Informar si la convocatoria es o no de su interés.
	+ Configurar de nuevo su perfil de áreas temáticas de interés si lo ve oportuno.

### Impacto de la automatización

En este apartado se hará una comparación entre el tiempo que tardaría el personal encargado de la consulta y envío de convocatorias, en recabar la información y notificarla, y el tiempo que tarda la automatización creada en Hércules\-RPA.

Este proceso, como hemos dicho anteriormente, está compuesto por dos subprocesos, nos centraremos en el encaje entre convocatorias e investigadores, ya que el personal actual de gestión de investigación no realiza una actividad como tal relacionada con tener en cuenta las áreas de interés de un investigador para enviarle convocatorias debido a que se ciñen únicamente a las áreas donde investigan activamente.

El personal de gestión de investigación para realizar esta tarea debe consultar:

* La sección de convocatorias de Hércules\-SGI.
* La sección que lista los investigadores de Hércules\-EDMA.

En cada una de esta secciones debe ir elemento a elemento revisando la información, por ejemplo, si tuviéramos 3 convocatorias nuevas y una lista con 300 investigadores, el personal debería revisar las áreas de interés del investigador uno por uno, por lo que tendrían que hacer 300 accesos e ir recopilando los investigadores que tienen interés en cada una de las convocatorias. La automatización de Hércules\-RPA tardaría de 5 a 10 minutos en realizar el encaje entre convocatorias e investigadores disponibles y realizar el envío de la información de la convocatoria a los investigadores que tuvieran interés por ella según sus configuraciones en el perfil de investigador o su configuración base, mientras que el personal de gestión de investigación no llevaría ni la mitad de la lectura de áreas de interés de cada investigador, por lo que la mejora es considerable.

  





