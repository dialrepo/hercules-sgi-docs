# Hércules : REQ\-INT\-0010\-SGE\-0139 \- Buscar detalle de operaciones \- Modificaciones







### Definición y objetivos

Consultar el detalle de operaciones contables de modificaciones asociadas a las aplicaciones presupuestarias del proyecto económico. Toda la información económica del proyecto se presentará agrupada por anualidad (siempre que en el proyecto se hubiera recogido el desglose por anualidad), de forma que  se podrán seleccionar una o varias anualidades para las que recuperar el detalle de las operaciones contables de modificaciones

El detalle de campos a recoger de cada operación de modificaciones será común a todos ellos y deberá ser configurado en tiempo de implantación, pues esta información debe ser recuperada desde el SGE por medio de los mecanismos de integración disponibles.

  








### Descripción técnica integración

Parámetros de entrada:

* Identificador proyecto SGE
* Listado de anualidades
* Tipo operación
* Reducida (todos los campos o la versión reducida)

Parámetros de salida: listado de operaciones de modificaciones donde para cada una se muestra la siguiente información

* Identificador única de la operación
* Anualidad
* Partida presupuestaria
* Código económico
* Listado de columnas a mostrar de cada gasto. Las columnas serán devueltas por el SGE y estarán formadas por dos campos:
	+ Id: Indica la columna que es (previamente se llamará a otro método de la API que devuelve el listado de columnas con los valores, id, nombre, acumulable)
	+ Valor: Valor a mostrar en dicha columna

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión Económica y, en concreto, de la Ejecución económica de proyectos: [SGI \- ESB \- SGE \- Ejecución económica](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-ejecucion-economica/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-ejecucion-economica/index.md").

Los servicios concretos del API que cubren este requisito son:

* [SGI \- ESB \- SGE \- Ejecución económica \- Consultar columnas](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-ejecucion-economica/sgi-esb-sge-ejecucion-economica-buscar-columnas-de-datos-economicos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-ejecucion-economica/sgi-esb-sge-ejecucion-economica-buscar-columnas-de-datos-economicos.md") pasando por parámetro:
	+ proyectoId (identificador del proyecto económico)
	+ anualidad (se enviaría un anualidad in () con las anualidades seleccionadas en la pantalla)
	+ tipoOperacion (DOM)
* [SGI \- ESB \- SGE \- Ejecución económica \- Consultar datos económicos](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-ejecucion-economica/sgi-esb-sge-ejecucion-economica-buscar-datos-economicos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-ejecucion-economica/sgi-esb-sge-ejecucion-economica-buscar-datos-economicos.md") pasando por parámetro:
	+ proyectoId (identificador del proyecto económico)
	+ anualidad (se enviaría un anualidad in () con las anualidades seleccionadas en la pantalla)
	+ tipoOperacion (DOM)

  








### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









