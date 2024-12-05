# Hércules : Arquitectura de Hércules RPA



La arquitectura RPA propuesta la podemos dividir en tres principales componentes:

* **Orquestador.** Es el Cerebro de la arquitectura, organiza y gestiona los robots a través del protocolo AMQP, dispondrá de una API para la ejecución y planificación de procesos, y la monitorización de lo mismo junto con los robots.
* **Robot.** Desligado de los procesos, por lo que puede ejecutar cualquier tarea, mantiene una constante comunicación con el orquestador.
* **Proceso.** Encargados de ejecutar las tareas automatizadas, su desarrollo será lo más modular posible para que sea fácil y flexible tanto la reutilización como la ampliación.

En la siguiente imagen podemos ver un esquema global de la arquitectura.

![](/attachments/598147330/598148611.png)

  
  


El despliegue del orquestador y todos los servicios con los que está comunicados, pueden ser desplegados como contenedores de kubernetes,  cuyos servicios serán accesibles por los robots. Además, será necesario que algunos servicios tengan acceso a internet. En principio, aún esta **por determinar los servicios que necesitarán acceso a internet son el backend y el frontend.** Esto no quiere decir, que no tengan que tener acceso fuera del cluster el resto de servicios, todo lo contrario, **todos los servicios deben ser accesibles al menos dentro de la red de la UMU.**

En la siguiente imagen podemos ver la arquitectura en kubernetes.

![](/attachments/598147330/598148612.png)

  


La arquitectura se compone:

* 5 statefulset, esto es necesario ya que queremos tener pods que sean persistentes. Por tanto, todo despliegue que se haga con statefulset requerirá de un volumen persistente.
* 2 deployments, en este estado preliminar no se ha visto la necesidad de que estos dos servicios requieran de persistencia.
* 7 configmaps, uno para cada servicio.
* Proxy\-svc (si fuera necesario) para cada servicio que necesite acceso a internet, como anteriormente se ha cometado, en este estado preliminar el acceso a internet será necesario solamente para el backend y frontend.




