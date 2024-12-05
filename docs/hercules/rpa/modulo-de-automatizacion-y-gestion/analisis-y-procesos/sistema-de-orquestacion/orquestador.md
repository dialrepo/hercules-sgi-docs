# Hércules : Orquestador



La orquestación de la plataforma RPA, tal y como recoge el pliego, se encuentra dentro del Módulo de Automatización y Gestión. El orquestador es el elemento clave de la arquitectura, será el encargado de la gestión de los robots, ejecuciones y volcado de la información a las bases de datos además, proporcionará las herramientas necesarias para la interacción con el entorno a través de llamadas a la API. 

El orquestador almacenará toda la información que suceda en el sistema RPA: procesos planificados y no planificados, robots, logs etc.  

Esta información será de utilidad tanto para la monitorización en tiempo real como el control y planificación de los procesos. Por ejemplo, como el orquestador almacena toda la información de los robots, será capaz de identificar si es posible ejecutar un proceso y qué robots tienen los recursos disponibles para hacerlo.

Asimismo, el orquestador es el encargado de la monitorización y de la administración de la ejecución de los procesos, pero el usuario también tiene la posibilidad de determinar que robot ejecuta X proceso (de forma manual). Cuando un robot no se encuentra haciendo nada, está en un estado de **"IDLE"** mientras que en el momento que pasa a ejecutar un proceso pasa a estado de "**R****UNNING PROCESS**", si se le mandan procesos a ese robot cuando ya está ejecutando otro, estos procesos se almacenan en la cola del robot que en función a su prioridad ejecutará unos antes que otros. De esta forma se le da al usuario el poder de controlar los flujos de ejecución de los procesos.

  


Enlace a GitHub: [https://github.com/hercules\-rpa/orquestador](https://github.com/hercules-rpa/orquestador "https://github.com/hercules-rpa/orquestador")




