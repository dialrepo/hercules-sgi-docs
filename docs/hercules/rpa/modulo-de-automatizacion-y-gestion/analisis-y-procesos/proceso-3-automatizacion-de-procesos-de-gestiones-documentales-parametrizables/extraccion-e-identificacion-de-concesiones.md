# Hércules : Extracción e identificación de concesiones



![](/attachments/598147412/598148134.png)

#### Estados de las solicitudes

Los tipos de estado de una solicitud contendrán el código interno y el nombre de los estados que definen el ciclo de vida de una solicitud. Estos estados serán fijos en el SGI. 

Los estados definidos en SGI para una solicitud son los siguientes:

* Borrador. Estado inicial. Es el estado en el que por defecto se creará la solicitud en el SGI. Una solicitud en estado borrador solo podrá ser pasada a estado "presentada".
* Presentada. Una solicitud solo pasará a estado "presentada" de manera manual.
* Admitida provisional. Estado intermedio.
* Excluida provisional. Estado intermedio.
* Alegada admisión. Estado intermedio.
* Desistida. Estado final, que indicará que la solicitud queda desestimada por el propio solicitante.
* Excluida. Estado final, la solicitud no ha sido admitida.
* Admitida definitiva. Estado intermedio.
* Concedida provisional. Estado intermedio.
* Denegada provisional. Estado intermedio.
* Alegada concesión. Estado intermedio.
* Concedida. Es un estado final. A partir de este estado se podrá iniciar el registro del  Proyecto asociado.
* Denegada. Es un estado final. La solicitud no podrá quedar vinculada a ningún Proyecto.

De los estados anteriores, se consideran finales los siguientes:

* + Desistida.
	+ Excluida.
	+ Concedida.
	+ Denegada.

#### Descripción general del subproceso

En primer lugar, se obtendrá la información a través de la API del SGI para disponer de una colección de solicitudes. Solo se tendrá en cuenta solicitudes cuyo estado sea distinto a:

* Borrador.
* Desistida.
* Excluida.
* Concedida.
* Denegada.

Si se han obtenido correctamente, se consultará si la convocatoria con la que están relacionadas ha sido resuelta y si es así, se iniciará la búsqueda de la información relacionada con las solicitudes. Esta búsqueda consiste en:

1. Obtener las concesiones para la Universidad de Murcia.
2. Establecer la relación entre las solicitudes obtenidas del SGI y las concesiones, esto se realizará obteniendo el número de referencia del proyecto. Si se obtiene esta relación, se establecen los datos de la concesión con el identificador del investigador.

Una vez revisadas todas las concesiones, se enviará la información obtenida, incluyendo importe total, costes directos, costes indirectos concedidos y el desglose de presupuesto por anualidades, por correo electrónico a la unidad de gestión de la universidad.

Las únicas concesiones que se extraerán inicialmente serán aquellas en las que el órgano convocante sea la Agencia Estatal de Investigación, ya que es el única que incluye con seguridad la resolución definitiva con la información necesaria para la extracción de las solicitudes que se relacionan con esa convocatoria.

A continuación, se detalla el formato que se envía por correo electrónico. Cabe destacar que esto es un ejemplo y los datos que aparecen aquí no son reales. Se resaltan las líneas en las que se ha hecho *match* con la solicitud presentada para esa convocatoria en el SGI. Adicionalmente, se buscan también los *match* que pertenecen a la Universidad de Murcia, en concreto, quedando reflejado en el informe que se envía de la siguiente manera:

![](/attachments/598147412/598148135.png)

  


![](/attachments/598147412/598148136.png)

Estas capturas se han sacado del PDF de resoluciones obtenido para esa convocatoria en la BDNS, una vez procesado con nuestro módulo de tecnologías cognitivas y pasado de PDF a tabla Excel. Seguidamente, se procede a extraer y marcar los datos que se necesitan. Se puede ver aquí una columna extra donde aparece un nombre, esa línea corresponde a la solicitud procesada y que se ha encontrado para ese investigador. Adicionalmente se marcan, por si son de interés y como hemos comentado con anterioridad, las líneas que pertenecen a una organización en concreto, en este caso la Universidad de Murcia.




