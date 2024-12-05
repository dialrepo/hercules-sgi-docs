# Hércules : Manual de Usuario



## **1\. Acceso a Hércules\-RPA Dashboard**

Antes de acceder al Dashboard hay que registrarse en la pantalla de “Log In”, siendo necesario introducir el nombre de usuario y contraseña facilitados por el equipo. Una vez introducido las credenciales hay que pulsar el botón LOGIN.

![](/attachments/621019186/621903984.png)

En el caso de que se haya introducido mal las credenciales se mostrará que el usuario o la contraseña son incorrectos.

![](/attachments/621019186/621903985.png)

Si las credenciales introducidas son correctas se tendrá acceso a la vista principal del Dashboard. Esta vista principal muestra una visualización general de la información más relevante del sistema.

![](/attachments/621019186/621903987.png)

## **2\. Vista principal del Dashboard**

Esta vista principal muestra las estadísticas de funcionamiento en distintos rangos de tiempo, información de los robots que actualmente se encuentran conectados, listado de errores, procesos completados y últimas ejecuciones de procesos entre otros campos. Cada componente dispone de un acceso directo a su sección concreta al que se accederá mediante un sistema de routing transparente a los usuarios de la interfaz.

En forma de lista aparece recogido los principales componentes del Dashboard, permitiendo redirigir al usuario a cualquier sección de interés.

![](/attachments/621019186/621903990.png)

Remarcado en rojo se puede acceder a información sobre los robots que se encuentran conectados en ese momento.

![](/attachments/621019186/621903991.png)

Pinchando en el recuadro marcado abajo se obtiene información sobre todos los procesos completados hasta ese momento.

![](/attachments/621019186/621903992.png)

En la tarjeta remarcada en la siguiente imagen se obtiene información de planificaciones activas.

![](/attachments/621019186/621903993.png)

Pinchando en la siguiente tarjeta recuadrada, se obtiene información acerca de los problemas que hayan surgido durante la ejecución de los procesos.

![](/attachments/621019186/621903994.png)

En la vista principal se puede observar en forma de gráficos las ejecuciones que se han llevado a cabo diariamente, mensualmente y en los últimos 30 días, tal y como aparece reflejado en la siguiente imagen.

![](/attachments/621019186/622821466.png)

Por último, también se puede visualizar desde la vista principal en forma de tabla las últimas ejecuciones.

![](/attachments/621019186/622821467.png)

  


## **3\. Nuevo proceso**

Esta vista ofrece información de todos los procesos disponibles para ser ejecutados por los robots incluyendo el listado de robots capacitados para ejecutar cada uno de los procesos. Al seleccionar alguno de los elementos del listado mediante doble clic, se redirige al usuario a la siguiente sección del proceso, donde se muestra un formulario, adaptado a las necesidades concretas de cada uno de los procesos, para poder parametrizar y facilitar la información necesaria, si procede, para llevar a cabo la ejecución del proceso.

![](/attachments/621019186/621903996.png)

## **4\. Formulario de un proceso**

Esta vista muestra un formulario para rellenar los datos de entrada que va a necesitar el proceso. En la siguiente imagen se puede ver un ejemplo de formulario asociado al proceso 3, específicamente el subproceso de extracción de convocatorias.

![](/attachments/621019186/621903997.png)

El apartado “opciones de procesos” recoge los parámetros de entrada necesarios para iniciar el proceso.

![](/attachments/621019186/621903998.png)

En “opciones generales” se permite establecer la planificación de detalles, como su periodicidad o prioridad. Además, se permite asignar al proceso un robot que será el encargado de ejecutar dicho proceso. Esta ventana es fundamental ya que, con ella, el usuario es capaz de ejecutar procesos o planificarlos para que se ejecuten más adelante.

![](/attachments/621019186/621903999.png)

El formulario detallado para cada uno de los procesos aparece especificado en [Ejecución de los procesos](/hercules/rpa/manual-de-usuario/ejecucion-de-los-procesos/index.md "/hercules/rpa/manual-de-usuario/ejecucion-de-los-procesos/index.md").

## **5\. Información de los robots**

**![](/attachments/621019186/621903991.png)**

Pinchando en el recuadro marcado en la imagen de arriba se accede a la sección de los robots disponibles en forma de tarjetas. Cada elemento muestra información general del robot, como el nombre, su identificador unívoco o su estado. En verde se muestra los robots que están conectados y listos para ejecutar nuevos procesos, y los que están ejecutando algún proceso. Mientras que en rojo se indica aquellos robots que están desconectados.

![](/attachments/621019186/622821399.png)

Pinchando en la tarjeta de cualquier robot se obtiene información acerca del mismo. En primer lugar, se muestra información sobre datos técnicos, dónde se ha ejecutado, su estado y aquellos problemas que haya podido tener en la ejecución de los procesos recientemente.

![](/attachments/621019186/621904023.png)

Asimismo, esta vista muestra si se encuentra ejecutando algún proceso y si tiene algún proceso en cola para ser ejecutado posteriormente.

![](/attachments/621019186/622821400.png)

Además, permite visualizar el historial de ejecuciones ofreciendo información acerca de la planificación individual del proceso y del log, fecha de inicio y fin del proceso, estado en el que se encuentra el proceso y su resultado.

![](/attachments/621019186/621904111.png)

Y dispone de información sobre estadísticas de CPU, memoria y disco usado por el robot.

![](/attachments/621019186/621904112.png)

  


## **6\. Historial de ejecuciones**

A través de la vista principal del Dashboard pinchando en la tarjeta recuadrada que aparece en la siguiente imagen, se puede acceder a información sobre el historial de ejecuciones.

![](/attachments/621019186/621903992.png)

Esta vista muestra una tabla con el histórico de todos los procesos que se han ejecutado hasta la fecha en el sistema. El usuario puede filtrar los datos usando la barra de búsqueda disponible en el encabezado. Adicionalmente, contiene información relevante sobre la ejecución, como, por ejemplo, el inicio, finalización, robot ejecutor y el resultado final.

![](/attachments/621019186/621904026.png)

Haciendo doble clic sobre cualquier proceso, el usuario es redireccionado hacia la vista que contiene la información completa de esa ejecución. Asimismo, también podrá hacer clic sobre los router\-links marcados en azul para ir directamente a la ventana pertinente del elemento seleccionado, permitiendo obtener información sobre el robot que ha ejecutado el proceso o información sobre la planificación.

![](/attachments/621019186/621904030.png)

Esta vista contiene la información correspondiente a la ejecución de un proceso, independientemente de si ha finalizado o se encuentra en ejecución. Tiene una barra de progreso que se va actualizando según avanza la ejecución. El usuario dispone de un cuadro de texto para poder visualizar todos los eventos que han ido transcurriendo en el tiempo desde que se ejecuta el proceso hasta que termina, este cuadro de texto se denomina log de proceso.

Por último, dispone de un botón que permite descargar en un fichero el log generado por la ejecución del proceso y la posibilidad también de recuperar ficheros de salida del proceso, si existieran.

![](/attachments/621019186/621904032.png)

  


## **7\. Planificaciones activas**

Esta vista muestra, en formato de tabla, las planificaciones que actualmente están activas en el sistema, es decir, aquellas que no se han borrado, cancelado o terminado. El usuario dispone de información relevante sobre la planificación, como qué robot la lleva a cabo, la fecha de creación, a qué proceso pertenece y cuál es la siguiente ejecución programada.

![](/attachments/621019186/621904033.png)

Adicionalmente, el usuario puede borrar o editar la planificación usando los botones correspondientes desde la misma ventana y hacer doble clic para dirigirse a la ventana en la que se muestra toda la información de la planificación en cuestión. 

## **8\. Planificación individual**

Para poder acceder a la información de la planificación de un determinado proceso, hay que acceder al historial de ejecuciones y pinchar sobre el router\-link del campo "Planificación" del proceso que se quiere consultar dicha información. 

![](/attachments/621019186/622821417.png)

Esta vista ofrece información sobre la planificación de un proceso, como cada cuanto tiempo ha sido lanzado y si dicho lanzamiento se ha repetido. Asimismo, el usuario puede filtrar, mediante la barra de entrada de texto en el encabezado, para poder consultar la ejecución. 

![](/attachments/621019186/622821412.png)

  


## **9\. Problemas y errores**

Desde el menú principal se puede acceder al listado de problemas de ejecución. Esta vista permite al usuario visualizar toda la información relativa a los distintos avisos y errores que se hayan producido dentro del sistema durante su funcionamiento. Haciendo doble clic sobre el proceso se abre la vista con la información del log del proceso, proporcionando al usuario la información necesaria sobre el error en cuestión.

![](/attachments/621019186/622821421.png)

## **10\. Configurador de procesos**

Esta vista contiene una lista con todos los configuradores de los procesos que existen en el sistema.

![](/attachments/621019186/622821423.png)

Haciendo doble clic sobre el proceso de interés se puede editar los configuradores del mismo, mostrando las propiedades una a una. Además, también se dispone de una opción para editar la configuración por completo. 

![](/attachments/621019186/622821433.png)

![](/attachments/621019186/622821428.png)

![](/attachments/621019186/622821429.png)

  


## **11\. Configuración general de la aplicación**

En esta vista se puede editar y comprobar la configuración de los distintos ajustes globales que tiene la aplicación, como direcciones de bases de datos, configuración AMQP, etc.

![](/attachments/621019186/622821465.png)




