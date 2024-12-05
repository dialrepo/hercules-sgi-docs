# Hércules : REQ\-INT\-0010\-SGE\-0100 \- Buscar gastos pendientes de contabilización







### Definición y objetivos

El SGI deberá disponer de todos los documentos de gastos asociados a un proyecto que aún no  hayan sido validados. El objetivo es que desde el SGI los responsables funcionales realicen la validación del gasto. Hecha esta validación el gasto seguirá su curso de contabilización en el SGE.

  








### Descripción técnica integración

Parámetros de entrada:

* Identificador proyecto SGE
* Identificador gasto
* Fecha
* Estado (Pendiente o Validado)
* Reducida (true o false)

Parámetros de salida: listado de documentos de gasto pendientes de validar o validados. Para cada documento se devolverán los siguientes datos:

* Identificador del gasto
* Identificador del proyecto SGE
* Partida presupuestaria a la que esta asignado el gasto
* Fecha
* Clasificación SGE
* Código económico asignado al gasto
* Anualidad
* Tipo: Gasto
* Mapa de columnas de clave \- valor

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión Económica y, en concreto, de la Ejecución económica de proyectos: [SGI \- ESB \- SGE \- Ejecución económica](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-ejecucion-economica/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-ejecucion-economica/index.md").

Los servicios concretos del API que cubren este requisito son:

* [SGI \- ESB \- SGE \- Ejecución económica \- Consultar columnas de gastos](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-ejecucion-economica/sgi-esb-sge-ejecucion-economica-buscar-columnas-de-gastos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-ejecucion-economica/sgi-esb-sge-ejecucion-economica-buscar-columnas-de-gastos.md")   

	+ Se llamará en primer lugar para obtener las columnas de gastos que se han de presentar por pantalla.
* [SGI \- ESB \- SGE \- Ejecución económica \- Buscar gastos](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-ejecucion-economica/sgi-esb-sge-ejecucion-economica-buscar-gastos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sge/sgi-esb-sge-ejecucion-economica/sgi-esb-sge-ejecucion-economica-buscar-gastos.md")  

	+ Se llamará a continuación para obtener los valores correspondientes a cada una de las columnas devueltas por el servicio anterior.

A continuación se detallan diferentes casos de cómo sería el flujo de llamadas para la búsqueda de gastos por estado:

* Buscar por estado **Pendientes**:
	+ servicio de **/gastos/columnas** pasando por parámetro:
		- proyectoId
		- fecha
		- estado \= Pendiente
		- reducida (true si se invoca a través Buscar, false si se invoca desde Exportar)
	+ servicio de **/gastos** pasando por parámetro:
		- proyectoId
		- fecha
		- estado \= Pendiente
		- reducida (true si es el botón de Buscar, false si es el botón de Exportar)
* Buscar por estado **Validados**:
	+ servicio de **/gastos/columnas** pasando por parámetro:
		- proyectoId
		- fecha
		- estado \= Validado
		- reducida (true si es el botón de Buscar, false si es el botón de Exportar)
	+ servicio de **/gastos** pasando por parámetro:
		- proyectoId
		- fecha
		- estado \= Validado
		- reducida (true si es el botón de Buscar, false si es el botón de Exportar)
* Buscar por estado **Bloqueados**:
	+ servicio de **/gastos/columnas** pasando por parámetro:
		- id (se enviaría un id in () con todos los gastosRef que tengamos en el SGI en estado Bloqueado)
		- fecha
		- estado \= Pendiente
		- reducida (true si es el botón de Buscar, false si es el botón de Exportar)
	+ servicio de **/gastos** pasando por parámetro:
		- id (se enviaría un id in () con todos los gastosRef que tengamos en el SGI en estado Bloqueado)
		- fecha
		- estado \= Pendiente
		- reducida (true si es el botón de Buscar, false si es el botón de Exportar)






### Interfaces de usuario relacionados



  






### Informes relacionados







### Casos de uso relacionados









