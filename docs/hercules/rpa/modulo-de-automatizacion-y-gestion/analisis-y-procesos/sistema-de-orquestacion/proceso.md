# Hércules : Proceso



Un proceso es la unidad de ejecución utilizada por los robots. La forma de construir estos procesos no difiere mucho de la definición de programa en informática, será código que el robot ejecutará para llevar a cabo la tarea que describe el proceso. 

Estos procesos son scripts de Python a los que se les añadirá características generales que van a tener todos los procesos: 

* Posibilidad de ir reportando cada evento remarcable que se produce en el proceso para su posterior depuración.
* Posibilidad de ser planificado para su ejecución en un instante determinado o repitiéndose X veces a lo largo del tiempo.
* Capacidad de contener procesos y formar parte de otros procesos más grandes para así poder llevar a cabo una mejor reutilización de código.
* Tener un estado de ejecución que va a seguir un flujo concreto (INICIADO, EJECUTANDO, PAUSADO, FINALIZADO, ERROR).
* Cuantificación de los eventos realizados para poder indicar un progreso de proceso al usuario final.
* Posibilidad de hacer el proceso dinámico añadiendo parámetros de entrada en cada ejecución.

En la arquitectura propuesta se debe diferenciar entre ejecución y proceso. Una ejecución consta de un proceso, y un proceso puede estar en muchas ejecuciones. 

Las ejecuciones pueden ser programadas, es decir, llevarse a cabo en un día u hora determinada. Además, una ejecución puede ser realizada por un único robot que previamente se ha seleccionado o por diferentes robots en cada invocación de la ejecución (en caso de que sea una tarea repetitiva en el tiempo). En este último caso, será el orquestador el encargado de decidir que robot lleva a cabo la ejecución del proceso. Para la selección se tiene en cuenta la capacidad del robot para ejecutar el proceso y la carga de trabajo del robot.

Enlace a GitHub de la clase padre de todos los procesos:  [https://github.com/hercules\-rpa/robot/blob/main/model/process/ProcessCommand.py](https://github.com/hercules-rpa/robot/blob/main/model/process/ProcessCommand.py "https://github.com/hercules-rpa/robot/blob/main/model/process/ProcessCommand.py")




