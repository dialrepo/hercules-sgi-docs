# Hércules : Robot



El robot, dentro de la arquitectura presentada, será el software encargado de la ejecución de los procesos bajo demanda del orquestador. Estará instalado en las máquinas cliente donde se quiere que se desarrollen las tareas definidas en los procesos. 

La información generada por el robot, que contendrá su propio estado de funcionamiento y del estado de ejecución de los procesos asociados, será enviada al orquestador bajo el protocolo AMQP. En secciones anteriores se ha descrito y adjuntado la forma en la que se va a llevar a cabo el envío de esta información al orquestador. 

El robot dispone de una cola de ejecuciones de procesos que irá ejecutando en función a prioridades, las cuales han sido previamente asignadas por los usuarios finales. Por ejemplo, si el robot tiene en su cola de ejecución 2 procesos y viene uno nuevo con la prioridad más alta (1\), siendo esta superior a la del resto de procesos, el proceso entrante será el primero en ser ejecutado.

  


Enlace a GitHub: [https://github.com/hercules\-rpa/robot](https://github.com/hercules-rpa/robot "https://github.com/hercules-rpa/robot")




