# Hércules : REQ\-INT\-0010\-SGE\-0166 \- Buscar gastos justificados







### Definición y objetivos

Consultar los justificantes de facturas y gasto que estarán asociados a la fase de justificación y que procederán de la integración con el SGE. Estos gastos serán los disponibles para añadir a los requerimientos del seguimiento de la justificación.

El detalle de campos a recoger de cada justificante/factura será común a todos ellos y deberá ser configurado en tiempo de implantación, pues esta información debe ser recuperada desde el SGE por medio de los mecanismos de integración disponibles.

  








### Descripción técnica integración

Parámetros de entrada:

* Identificador del proyecto SGE
* Identificador justificación (admitiendo listado).
* Número registro proveedor.
* Importe presentado en justificación.
* Fecha de devengo.
* Fecha de pago.
* Identificador del gasto (se pasará un listado de id de gastos que se quieren buscar)

Parámetros de salida: listado de facturas y gastos donde para cada una se muestra la siguiente información

* Identificador del gasto
* Identificador del proyecto SGE
* Identificador del periodo de justificación
* Listado de columnas a mostrar de cada gasto. Las columnas serán devueltas por el SGE y estarán formadas por dos campos:
	+ Id: Indica la columna que es (previamente se llamará a otro método de la API que devuelve el listado de columnas con los valores, id, nombre, acumulable)
	+ Valor: Valor a mostrar en dicha columna

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión Económica para el seguimiento de la justificación: [SGI \- ESB \- SGE \- Seguimiento justificación](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-seguimiento-justificacion/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-seguimiento-justificacion/index.md").

Los servicios del API que cubren este requisito son:

* [SGI \- ESB \- SGE \- Seguimiento justificación \- Consultar columnas gastos justificados](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-seguimiento-justificacion/sgi-esb-sge-seguimiento-justificacion-buscar-columnas-gastos-justificados.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-seguimiento-justificacion/sgi-esb-sge-seguimiento-justificacion-buscar-columnas-gastos-justificados.md")
* [SGI \- ESB \- SGE \- Seguimiento justificación \- Consultar gastos justificados](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-seguimiento-justificacion/sgi-esb-sge-seguimiento-justificacion-buscar-gastos-justificados.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-seguimiento-justificacion/sgi-esb-sge-seguimiento-justificacion-buscar-gastos-justificados.md")

A continuación se detallan diferentes casos de cómo sería el flujo de llamadas para la búsqueda de gastos justificados:

* Pantalla "Añadir gasto al requerimiento"
	+ En el caso de que en la pantalla de obtener los gastos justificados el usuario introduzca un id de justificación la llamada será:  
	
		- servicio de **/seguimiento\-justificacion/columnas** pasando por parámetro:
			* proyectoId (identificador del proyecto SGE, siempre lo lleva implícito esta búsqueda)
			* justificacionId (con el valor introducido en la pantalla)
			* resto campos del filtrado
		- servicio de **/seguimiento\-justificacion** pasando por parámetro:
			* proyectoId (identificador del proyecto SGE, siempre lo lleva implícito esta búsqueda)
			* justificacionId (con el valor introducido en la pantalla)
			* resto campos del filtrado
	+ En el caso de que no se introduzca ningún valor en el campo de búsqueda de id justificación la llamada será:
		- servicio de **/seguimiento\-justificacion/columnas** pasando por parámetro:
			* proyectoId (identificador del proyecto SGE, siempre lo lleva implícito esta búsqueda)
			* justificacionId (con el conjunto de ids de justificación del proyecto SGI asociado al requerimiento)
			* resto campos del filtrado
		- servicio de **/seguimiento\-justificacion** pasando por parámetro:
			* proyectoId (identificador del proyecto SGE, siempre lo lleva implícito esta búsqueda)
			* justificacionId (con el conjunto de ids de justificación del proyecto SGI asociado al requerimiento)
			* resto campos del filtrado
* Pantalla "Gastos" de un requerimiento  

	+ servicio de **/seguimiento\-justificacion/columnas** pasando por parámetro:
		- proyectoId (identificador del proyecto SGE, siempre lo lleva implícito esta búsqueda)
		- id (con el conjunto de ids de gastos almacenados en la tabla GastoRequerimientoJustificacion)
		- justificacionId (si el requerimiento tiene asociado un periodo de justificación, se pasará el ID de justificación de ese periodo, sino se pasará el ID de justificación de todos los periodos de justificación del proyecto SGE)
	+ servicio de **/seguimiento\-justificacion** pasando por parámetro:
		- proyectoId (identificador del proyecto SGE, siempre lo lleva implícito esta búsqueda)
		- id (con el conjunto de ids de gastos almacenados en la tabla GastoRequerimientoJustificacion)
		- justificacionId (si el requerimiento tiene asociado un periodo de justificación, se pasará el ID de justificación de ese periodo, sino se pasará el ID de justificación de todos los periodos de justificación del proyecto SGE)






### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









