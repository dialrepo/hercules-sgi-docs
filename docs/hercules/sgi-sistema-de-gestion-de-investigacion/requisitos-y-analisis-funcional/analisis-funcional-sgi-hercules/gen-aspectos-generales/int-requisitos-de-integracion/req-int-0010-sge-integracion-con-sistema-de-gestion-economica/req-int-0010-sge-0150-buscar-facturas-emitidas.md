# Hércules : REQ\-INT\-0010\-SGE\-0150 \- Buscar facturas emitidas







### Definición y objetivos

Recuperar las facturas emitidas del SGE para su visualización desde la parte de Ejecución económica del SGI. Es en el SGE donde se realiza la creación de las facturas emitidas directamente por las usuarias de la OTRI, no hay notificación de la previsión de facturación al SGE.  


La relación entre el calendario de facturación y facturas emitidas se establecerá en el SGE. En la pantalla de creación de factura emitida del SGE se mostrará el listado de items del calendario de facturación creados en el SGI (se dispondrán de la función correspondiente de integración). La relación factura emitida (SGE) \- número factura prevista (SGI) se almacenará en el SGE. Esta relación será remitida por el SGE al SGI como un atributo más de la factura y será mostrada en la pantalla de Ejecución económica \- Facturas emitidas del SGI y también en la pantalla de Calendario facturación para aquellos item que estén validados por el IP y tenga informada la fecha de conformidad.  








### Descripción técnica integración

Parámetros de entrada:

* Identificador del proyecto SGE.
* Fecha factura
* Reducida (todos los campos o la versión reducida)

Parámetros de salida: listado de facturas emitidas donde para cada una se muestra la siguiente información

* Identificador única de la factura emitida
* Identificador del proyecto SGE
* Anualidad
* Número de factura (en el SGE)
* Listado de columnas a mostrar de cada factura. Las columnas serán devueltas por el SGE y estarán formadas por dos campos:
	+ Id: Indica la columna que es (previamente se llamará a otro método de la API que devuelve el listado de columnas con los valores, id, nombre, acumulable)
	+ Valor: Valor a mostrar en dicha columna

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión Económica y, en concreto, del Calendario de facturación: [SGI \- ESB \- SGE \- Calendario facturación](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-calendario-facturacion/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-calendario-facturacion/index.md").

Los servicios concretos del API que cubren este servicio son:

* [SGI \- ESB \- SGE \- Calendario facturación \- Consultar columnas facturas emitidas](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-calendario-facturacion/sgi-esb-sge-calendario-facturacion-facturas-emitidas-buscar-columnas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-calendario-facturacion/sgi-esb-sge-calendario-facturacion-facturas-emitidas-buscar-columnas.md")
	+ pasando por parámetro:
		- proyectoId (identificador del proyecto económico)
		- fechaFactura
		- reducida (será true para el botón Cargar y cuando sea el botón Exportar será false)
* [SGI \- ESB \- SGE \- Calendario facturación \- Consultar facturas emitidas](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-calendario-facturacion/sgi-esb-sge-calendario-facturacion-facturas-emitidas-buscar-columnas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-calendario-facturacion/sgi-esb-sge-calendario-facturacion-facturas-emitidas-buscar-columnas.md")
	+ proyectoId (identificador del proyecto económico)
	+ fechaFactura
	+ reducida (será true para el botón Cargar y cuando sea el botón Exportar será false)






### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









