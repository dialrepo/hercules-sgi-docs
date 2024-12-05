# Hércules : Pruebas de carga



Las pruebas de carga están orientadas a simular casos de prueba reales o, en su defecto, a cargar cualquier parte del software, aplicación web, API o sistema. La finalidad de estas pruebas es analizar e identificar factores como la capacidad de respuesta, degradación y escalabilidad. En este informe se han realizado pruebas de carga relacionadas con los cuatro procesos que componen Hércules\-RPA.

*Grupo de pruebas proceso 1: Segmentación y generación automática de boletines informativos.*

* Listado de boletines de noticias:
	+ Ejecución 1: Debe de haber un número total de peticiones significativo (10 p.e.) \- Busca en las páginas indicadas para obtener información relacionada con los elementos incluidos en el boletín de transferencia de Universidad de Murcia. Necesita los siguientes datos:
		- Rango de fechas: fecha inicio y fecha fin, utilizaremos 1 mes desde la fecha de ejecución.
* + Ejecución 2: Debe de haber un número total de peticiones significativo (8 p.e.) \- Busca en las páginas indicadas para obtener información relacionada con los elementos incluidos en el boletín de transferencia de Universidad de Murcia. Necesita los siguientes datos:
		- Rango de fechas: fecha inicio y fecha fin, utilizaremos un rango variable para cada ejecución: 1 día, 1 semana, 15 días, 1 mes, 2 meses, 3 meses, 6 meses y 1 año desde la fecha de ejecución.

![](/attachments/598147193/620855396.png)

*Grupo de pruebas proceso 2: Sexenios y Acreditaciones.*

* Sexenios:
	+ Ejecución 1: Debe de haber un número total de peticiones significativo (10 p.e.) de una misma solicitud \- Generación de un informe de impacto necesitando los siguientes datos:
		- Identificador del investigador. Puede ser: ORCID, email o identificador "personaRef".
* + Ejecución 2: Modificando el tipo de comité, subcomité y periodo mantener un número total de peticiones significativo (14 p.e.) \- Una ejecución por comité para la generación de un informe de impacto necesitando los siguientes datos:
		- Identificador del investigador. Puede ser: ORCID, email o identificador "personaRef".
		- Comité: Tipo de comité (Str “1\-14”).
		- Subcomité: Tipo de subcomité (Str “1”).
* Acreditaciones:
	+ Ejecución 1: Debe de haber un número total de peticiones significativo (10 p.e.) de una misma solicitud \- Generación de un informe de impacto necesitando los siguientes datos:
		- Identificador del investigador. Puede ser: ORCID, email o identificador "personaRef".
* + Ejecución 2: Modificando el tipo de comisión y tipo de acreditación mantener un número total de peticiones significativo (42 p.e.) \- Una ejecución por comisión y tipo de acreditación (cátedra y titularidad) para la generación de un informe de impacto necesitando los siguientes datos:
		- Identificador del investigador. Puede ser: ORCID, email o identificador "personaRef".
		- Comisión: Tipo de comisión para la que se realiza el informe de impacto (Str “1\-21”).
		- Tipo de acreditación: puede ser cátedra (str “1”) o titularidad (str “2”).

![](/attachments/598147193/620855398.png)

*Grupo de pruebas proceso 3: Automatización de procesos de gestiones documentales parametrizables.*

* Bases reguladoras:
	+ Ejecución 1: Debe de haber un número total de peticiones significativo (10 p.e.) de una misma solicitud \- Obtener las bases reguladoras publicadas en el Boletín Oficial del Estado (BOE) necesitando los siguientes datos:
		- Rango de fechas: fecha inicio y fecha fin, utilizaremos 1 mes desde la fecha de ejecución.
		- Receptores de email: enviaremos el resultado de las bases reguladoras a los emails puestos como receptores para la OTRI y la UGI.
* + Ejecución 2: Debe de haber un número total de peticiones significativo (8 p.e.) de distintas peticiones \- Obtener las bases reguladoras publicadas en el Boletín Oficial del Estado (BOE) necesitando los siguientes datos:
		- Rango de fechas: fecha inicio y fecha fin, utilizaremos un rango variable para cada ejecución: 1 día, 1 semana, 15 días, 1 mes, 2 meses, 3 meses, 6 meses y 1 año desde la fecha de ejecución.
		- Receptores de email: enviaremos el resultado de las bases reguladoras a los emails puestos como receptores para la OTRI y la UGI.

![](/attachments/598147193/620855399.png)

* Convocatorias:
	+ Ejecución 1: Debe de haber un número total de peticiones significativo (10 p.e.) de una misma solicitud \- Realizar la extracción de convocatorias con el objetivo de incorporarlas al SGI. Estas convocatorias se obtienen de la BNDS y de la comisión Europea, necesitando los siguientes datos:
		- Rango de fechas: fecha inicio y fecha fin, utilizaremos 15 días desde la fecha de ejecución.
* Receptor email: enviaremos el resultado de las convocatorias a los emails definidos.
* + Ejecución 2: Debe de haber un número total de peticiones significativo (10 p.e.) de una misma solicitud \- Realizar la extracción de convocatorias con el objetivo de incorporarlas al SGI. Estas convocatorias se obtienen de la BNDS y de la comisión Europea, necesitando los siguientes datos:
		- Palabras clave: listado de palabras claves las cuales se utilizan para filtrar por el título de la convocatoria ( Str “investigacion i\+d proyecto”).
		- Rango de fechas: fecha inicio y fecha fin, utilizaremos 15 días desde la fecha de ejecución.
		- Receptor email: enviaremos el resultado de las convocatorias a los emails definidos.
* + Ejecución 3: Debe de haber un número total de peticiones significativo (10 p.e.) de una misma solicitud \- Realizar la extracción de convocatoria BDNS con el objetivo de mostrar la información relacionada con una convocatoria. Estas convocatorias se obtienen exclusivamente de la BNDS , necesitando los siguientes datos:
		- Código de la BDNS: número de 6 dígitos que representa una convocatoria en concreto de la BDNS (Str “525644”).
* Concesiones:
	+ Ejecución 1: Debe de haber un número total de peticiones significativo (10 p.e.) de una misma solicitud – Realizar la extracción e identificación de las concesiones que han sido dadas a un investigador, necesitando los siguientes datos:
		- CIF: número asociado a la entidad para la que se están buscando esas concesiones (Str “Q3018001B”).

![](/attachments/598147193/620855400.png)

*Grupo de pruebas proceso 4: Sistemas inteligentes de encaje entre convocatorias e investigadores.*

* Calificación de áreas temáticas:
	+ Ejecución: Debe de haber un número total de peticiones significativo (10 p.e.) de una misma solicitud – Realizar, por parte de un investigador en concreto, la puntuación de un área temática, necesitando los siguientes datos:
		- Idinvestigador: Identificador del investigador que va a puntuar.
		- Idarea: Identificador de la área temática que se va a puntuar.
		- Puntuación: Puntuación que se da a la área temática.

![](/attachments/598147193/620855395.png)

*Ejecución pruebas de carga.*

Para la ejecución de las pruebas de carga nos tendremos que dirigir al directorio donde tenemos las pruebas, una vez ahí se podrá ejecutar por línea de comandos con el siguiente formato:

* `locust -f locustfile.py —headless -u 1 -r 1`

El programa locust ejecutará el fichero que le indiques y los parámetros tienen el siguiente significado:

* `-f` : indica el fichero que vamos a ejecutar.
* `--headless` (opcional) : indica el modo de ejecución, de esta forma no se lanzará la página web y mostrará la información a través de consola.
* `-u` : es el número de usuarios que se van a levantar para la ejecución.
* `-r` : es el ratio de usuarios por segundo que se van a levantar durante la ejecución.




