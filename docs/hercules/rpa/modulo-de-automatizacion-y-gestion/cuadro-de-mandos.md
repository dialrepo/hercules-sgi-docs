# Hércules : Cuadro de mandos



El desarrollo de esta interfaz se llevará a cabo mediante el Framework Vue.js y se realizará en formato de interfaz web, consumiendo los datos directamente utilizando el API Rest que se proporciona como backend. Con él liberamos la carga del servidor, ya que este solo se encargará de procesar las peticiones JSON desde y hacia el explorador. Se desarrollará utilizando Vue.jspor su versatilidad, adaptabilidad y escalabilidad.

La interfaz será de tipo *Dashboard, c*uadro de mando o panel de control, donde el usuario tendrá el control de todo el servicio a su disposición y percibirá todos los eventos que ocurran en el sistema en el momento en el que se produzcan. La interfaz dispondrá de una barra lateral con un menú donde se podrá elegir cualquier vista definida en la aplicación. Dentro de la definición, se establecen una serie de vistas agrupadas por funcionalidad.

Para facilitar la visualización del dashboard se ha adjuntado, a cada una de las secciones definidas, una figura que contiene un maquetado preliminar.

Enlace a GitHub: [https://github.com/hercules\-rpa/dashboard](https://github.com/hercules-rpa/dashboard "https://github.com/hercules-rpa/dashboard")

### **Vista** **P****rincipal** **Dashboard**

La ventana principal dispone de una visualización general de la información más relevante del sistema. Se mostrarán las estadísticas de funcionamiento en distintos rangos de tiempo, información de los robots que actualmente se encuentran conectados, listado de errores, procesos completados y últimas ejecuciones de procesos entre otros campos. Cada componente dispone de un acceso directo a su sección concreta al que se accederá mediante un sistema de routing transparente a los usuarios de la interfaz. A continuación, se muestra un ejemplo de la vista principal:

![](/attachments/598147510/598148056.png)

### **Vista de Nuevo Proceso**

Esta vista ofrece la información de todos los procesos disponibles para ser ejecutados por los robots incluyendo el listado de robots capacitados para ejecutar cada uno de los procesos. Al seleccionar alguno de los elementos de este listado, se redirige al usuario a la siguiente sección del proceso, donde se mostrará un formulario, adaptado a las necesidades concretas de cada uno de los procesos, para poder parametrizar y facilitar la información necesaria, si procede, para llevar a cabo la ejecución del proceso. A continuación, se muestra un ejemplo de esta vista:

![](/attachments/598147510/598148055.png)

### Vista Formulario de Proceso

Esta vista mostrará un formulario para rellenar los datos de entrada que va a necesitar el proceso. Además, se deberá establecer la planificación de detalles, como su periodicidad o prioridad. Esta ventana será fundamental ya que, con ella, el usuario será capaz de ejecutar procesos o planificarlos para que se ejecuten más adelante.

En la imagen que podemos observar a continuación se muestra un ejemplo del formulario asociado al [proceso 4](/hercules/rpa/modulo-de-automatizacion-y-gestion/analisis-y-procesos/proceso-4-sistemas-inteligentes-de-encaje-entre-convocatorias-e-investigadores/index.md "/hercules/rpa/modulo-de-automatizacion-y-gestion/analisis-y-procesos/proceso-4-sistemas-inteligentes-de-encaje-entre-convocatorias-e-investigadores/index.md") de Hércules\-RPA:

  


![](/attachments/598147510/598148054.png)

### Vista Información de Robots

Esta sección mostrará los robots disponibles, en forma de lista o de tarjetas. Cada elemento mostrará la información general, como el nombre, su identificador unívoco o su estado. Haciendo clic en cualquiera de los elementos podremos ir hacia la vista completa del robot, que mostrará información más detallada del mismo.  A continuación, se muestra un ejemplo de esta vista:

![](/attachments/598147510/598148068.png)

### Vista en Detalle de Robot

En esta vista se localiza toda la información asociada al robot y su estado en tiempo real. Se puede comprobar:

* Si está ejecutando un proceso.
* Si se encuentra activo
* Si ha tenido problemas de ejecución recientemente.
* Los procesos que tiene en cola de ejecución.
* Eliminar procesos asociados al robot o modificar su prioridad.

Se dispone también de información referente al sistema general, como el histórico de ejecuciones, estadísticas de CPU o memoria y disco usado por el robot.

A continuación, se muestra un ejemplo de esta vista:

  


![](/attachments/598147510/622952452.png)

![](/attachments/598147510/598148066.png)

  


### Vista Historial de Ejecuciones

Esta vista contendrá una tabla con el histórico de todos los procesos que se han ejecutado hasta la fecha en el sistema. El usuario será capaz de filtrar los datos usando la barra de búsqueda disponible en el encabezado. Adicionalmente, contiene información relevante sobre la ejecución, como, por ejemplo, el inicio, finalización, robot ejecutor o resultado final.

Haciendo doble clic sobre el proceso, el usuario será direccionado hacia la vista que contendrá la información completa de esa ejecución. Asimismo, también podrá hacer clic sobre los router\-links marcados en azul para ir directamente a la ventana pertinente del elemento seleccionado, como el robot o schedule. A continuación, se muestra un ejemplo de esta vista:

![](/attachments/598147510/598148065.png)

### Vista Log de Ejecución

Esta vista contiene la información correspondiente a la ejecución de un proceso, independientemente de si ha finalizado o se encuentra en ejecución. Contendrá una barra de progreso que se irá actualizando según avanza la ejecución. El usuario dispondrá de un cuadro de texto para poder visualizar todos los eventos que han ido transcurriendo en el tiempo desde que se ejecuta el proceso hasta que termina, este cuadro de texto se denomina log de proceso. Por último, dispone de un botón que permite descargar en un fichero el log generado por la ejecución del proceso y la posibilidad también de recuperar ficheros de salida del proceso, si existieran. A continuación, se muestra un ejemplo de esta vista:

![](/attachments/598147510/598148064.png)

### Vista Planificaciones Activas

Esta vista mostrará, en formato de tabla, las planificaciones que actualmente están activas en el sistema, es decir, aquellas que no se han borrado, cancelado o terminado. El usuario dispondrá de información relevante sobre la planificación, como qué robot la llevará a cabo, la fecha de creación, a qué proceso pertenece y cuál es la siguiente ejecución programada.

Adicionalmente, el usuario podrá borrar o editar la planificación usando los botones correspondientes desde la misma ventana y hacer doble clic para dirigirse a la ventana en la que se muestra toda la información de la planificación en cuestión. A continuación, se muestra un ejemplo de esta vista:

![](/attachments/598147510/598148063.png)

### Vista Planificación Individual

Esta vista mostrará al usuario toda la información derivada de una planificación concreta. Se dispone de una tabla donde se localizan todas las ejecuciones que se han llevado a cabo dentro de esa planificación. Para ofrecer una forma rápida e intuitiva de consultarlo, el usuario podrá hacer clic sobre las ejecuciones de la tabla y así consultar el log de ese caso concreto. Asimismo, será capaz de dirigirse a la ventana de “log de ejecución” haciendo doble clic sobre la ejecución. Finalmente, el usuario podrá filtrar, mediante la barra de entrada de texto en el encabezado, para poder consultar la ejecución. A continuación, se muestra un ejemplo de esta vista: 

![](/attachments/598147510/598148062.png)

  


### Vista Problemas y Errores

En la vista el usuario podrá visualizar toda la información relativa a los distintos avisos y errores que se hayan producido dentro del sistema durante su funcionamiento. A continuación, se muestra un ejemplo de esta vista:

![](/attachments/598147510/598148061.png)

### Vista Configuradores de procesos

Esta vista contiene una lista con todos los configuradores de los procesos que existen en el sistema. A continuación, se muestra un ejemplo de esta vista:

![](/attachments/598147510/598148060.png)

### Vista Edición de configuradores de procesos

Con esta vista podemos editar los configuradores de los procesos, mostrando las propiedades una a una. Además, también dispone una opción para editar la configuración por completo. A continuación, se muestra un ejemplo de esta vista con la configuración de los comités del proceso de acreditaciones:

![](/attachments/598147510/598148059.png)

![](/attachments/598147510/598148877.png)

![](/attachments/598147510/598148876.png)

### Vista de configuración general de la aplicación

En esta vista se puede editar y comprobar la configuración de los distintos ajustes globales que tiene la aplicación, como direcciones de bases de datos, configuración AMQP, etc. A continuación, se muestra un ejemplo de esta vista:

![](/attachments/598147510/598148058.png)

  


  


  


  





