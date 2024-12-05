# Hércules : REQ\-INT\-0010\-SGE\-0131 \- Buscar ejecución presupuestaria \- gastos







### Definición y objetivos

Consultar el balance de situación de una, varias o todas las anualidades del proyecto económico. Para cada anualidad se mostrarán todas las aplicaciones presupuestarias de gastos, y para cada aplicación presupuestaria de gastos las columnas devueltas por el sistema de gestión económico. Será el sistema de gestión económico el que realice los cálculos necesarios y sobre las operaciones contables adecuadas para devolver las columnas que desea mostrar en el SGI. El SGI sólo será un lector, no hará ningún tipo de cálculos.

  








### Descripción técnica integración

Parámetros de entrada:

* Identificador proyecto SGE
* Listado de anualidades
* Tipo operación
* Reducida (todos los campos o la versión reducida)

Parámetros de salida: listado de partidas presupuestarias de gastos donde para cada una se muestra la siguiente información

* Identificador proyecto SGE
* Anualidad
* Partida presupuestaria
* Listado de columnas a mostrar de cada partida presupuestaria. Las columnas serán devueltas por el SGE y estarán formadas por dos campos:
	+ Id: Indica la columna que es (previamente se llamará a otro método de la API que devuelve el listado de columnas con los valores, id, nombre, acumulable)
	+ Valor: Valor a mostrar en dicha columna

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión Económica y, en concreto, de la Ejecución económica de proyectos: [SGI \- ESB \- SGE \- Ejecución económica](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-ejecucion-economica/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-ejecucion-economica/index.md").

Los servicios concretos del API que cubren este requisito son:

* [SGI \- ESB \- SGE \- Ejecución económica \- Consultar columnas](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-ejecucion-economica/sgi-esb-sge-ejecucion-economica-buscar-columnas-de-datos-economicos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-ejecucion-economica/sgi-esb-sge-ejecucion-economica-buscar-columnas-de-datos-economicos.md") pasando por parámetro:
	+ proyectoId (identificador del proyecto económico)
	+ anualidad (se enviaría un anualidad in () con las anualidades seleccionadas en la pantalla)
	+ tipoOperacion (EJG)
* [SGI \- ESB \- SGE \- Ejecución económica \- Consultar datos económicos](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-ejecucion-economica/sgi-esb-sge-ejecucion-economica-buscar-datos-economicos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-ejecucion-economica/sgi-esb-sge-ejecucion-economica-buscar-datos-economicos.md") pasando por parámetro:
	+ proyectoId (identificador del proyecto económico)
	+ anualidad (se enviaría un anualidad in () con las anualidades seleccionadas en la pantalla)
	+ tipoOperacion (EJG)






### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









