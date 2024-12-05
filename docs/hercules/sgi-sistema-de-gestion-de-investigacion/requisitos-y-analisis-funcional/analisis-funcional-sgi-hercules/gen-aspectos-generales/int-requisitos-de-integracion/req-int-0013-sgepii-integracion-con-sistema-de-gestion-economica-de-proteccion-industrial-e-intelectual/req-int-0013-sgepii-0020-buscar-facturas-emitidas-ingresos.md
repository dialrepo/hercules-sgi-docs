# Hércules : REQ\-INT\-0013\-SGEPII\-0020 \- Buscar facturas emitidas \- Ingresos







### Definición y objetivos

Recuperar las facturas emitidas o ingresos del SGEPII relacionadas con los contratos de licencia de las invenciones para su visualización desde la parte de Ejecución económica de las invenciones en el SGI. Es en el SGEPII donde se realiza la creación de las facturas emitidas directamente por los usuarios de la OTRI, no hay notificación de la previsión de facturación al SGEPII.  


  








### Descripción técnica integración

Parámetros de entrada:

* Identificador del proyecto SGEPII en Justo.

Parámetros de salida:

* Listado de facturas emitidas/ingresos donde para cada una se devolverá la siguiente información:
	+ Identificador de la factura emitida/ingreso
	+ Listado de columnas a mostrar de cada factura. Cada elemento del listado estarán formado por dos campos:
		- Id: Indica la columna que es (previamente se llamará a otro método de la API que devuelve el listado de columnas con los valores, id, nombre, acumulable)
		- Valor: Valor a mostrar en dicha columna

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión Económica para la Protección Industrial e Intelectual: [SGI \- ESB \- SGEPII](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGEPII "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGEPII").

Los servicios del API que cubren este requisito son:

* [SGI \- ESB \- SGEPII \- Buscar columnas de ingresos](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgepii/sgi-esb-sgepii-buscar-columnas-de-ingresos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgepii/sgi-esb-sgepii-buscar-columnas-de-ingresos.md")
	+ Se llamará en primer lugar para obtener las columnas de ingresos que se han de presentar por pantalla.
* [SGI \- ESB \- SGEPII \- Buscar ingresos](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgepii/sgi-esb-sgepii-buscar-ingresos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgepii/sgi-esb-sgepii-buscar-ingresos.md")
	+ Se llamará a continuación para obtener los valores correspondientes a cada una de las columnas devueltas por el servicio anterior.

  








### Interfaces de usuario relacionados



  






### Informes relacionados







### Casos de uso relacionados









