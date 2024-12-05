# Hércules : Sistema de Orquestación



El pilar de los requisitos del sistema se trata de la definición de flujos de funcionamiento y orquestación de robots así como, el establecimiento de los mecanismos de interacción para definirlos. La arquitectura deberá de disponer de un método para poder establecer la prioridad de ejecución (se podrá fijar de forma manual o automática), secuencias y alternativas en función de los resultados obtenidos o el flujo de ejecución. Asimismo, se deberá de disponer de monitorización de estado del sistema completo.

La solución RPA propuesta, la podemos ver como una arquitectura que podemos dividir en tres componentes principales: 

* Orquestador: es el cerebro de la arquitectura. Organiza y gestiona los robots mediante el uso de comunicaciones vía protocolo AMQP, siendo capaz de decidir qué robot ejecuta un proceso. En él se encontrará el repositorio de almacenamiento de los procesos, dispondrá de una API para la ejecución y planificación de procesos y facilitará la monitorización y estado de la ejecución de robots y procesos.
* Robot: este software se encuentra desligado de los procesos, por lo que puede ejecutar cualquier tarea siempre y cuando el huésped en el que se despliegue disponga de los recursos necesarios para hacerlo. Se mantendrá en constante comunicación con el orquestador para notificar su estado y el de los procesos que haya ejecutado.
* Proceso: se trata del software encargado de ejecutar las tareas automatizadas. Su desarrollo se plantea de la forma más modular posible con el objetivo de poder flexibilizar y facilitar las tareas de ampliación y reutilización presentes y futuras.

Por otro lado, para que el sistema funcione adecuadamente se requieren de ciertas herramientas. Estas herramientas se indican a continuación: 

* Base de datos relacional.
* CDN.
* API\-REST.
* Data Lake.

Estas herramientas se van a desplegar siguiendo la filosofía de microservicio. Para ello, se hará uso de un clúster de Kubernetes desde el que, por cada microservicio, se desplegará un contenedor haciendo uso de un repositorio de imágenes Docker.

En la siguiente figura, observamos un esquema del Sistema de Orquestación que se llevará a cabo en el proyecto RPA\-Hércules.

![](/attachments/598147222/598147795.png)

Enlace a GitHub: [https://github.com/hercules\-rpa/orquestador](https://github.com/hercules-rpa/orquestador "https://github.com/hercules-rpa/orquestador")

  





