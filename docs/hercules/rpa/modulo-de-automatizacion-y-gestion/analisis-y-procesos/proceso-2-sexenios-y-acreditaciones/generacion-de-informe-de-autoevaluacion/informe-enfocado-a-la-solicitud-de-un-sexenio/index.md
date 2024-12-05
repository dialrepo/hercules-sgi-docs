# Hércules : Informe enfocado a la solicitud de un sexenio



Cada seis años, se puede presentar la solicitud de un sexenio. Los sexenios otorgan méritos acumulativos que permiten a los investigadores disponer de mayor cantidad de opciones en su carrera profesional.

Para poder filtrar la información y ofrecer el informe de impacto, se deberá de, dado un rango de fechas, obtener un listado de la producción científica asociada al investigador. Los elementos que se obtienen utilizando Hércules\-ED son los siguientes:

* Artículos.
* Libros y monografías.
* Capítulos de libros.
* Trabajos presentados en congresos nacionales e internacionales.

A la hora de llevar a cabo la solicitud de un sexenio, se deberán seleccionar cinco aportaciones distintas que, normalmente, se tratarán de artículos cuya fecha de publicación se limita a los seis años anteriores.

De cada una de las aportaciones seleccionadas se deberá extraer la siguiente información:

* Título.
* Indicios de calidad.
* Número de autores.
* Autores.
* Datos de la publicación como el ISBN.
* Impacto de la revista en la que se realiza la publicación.
* Número de citas.

### Descripción general del proceso

![](/attachments/598147207/598149317.png)

Este proceso lo iniciará un investigador o gestor para obtener el informe de sexenio, en él podrá encontrar las cinco publicaciones mejor puntuadas en base a la ordenación que realizará el robot.   


Para iniciar el proceso el usuario indicará un periodo de seis años y el investigador para el que va a realizar el informe de sexenio. Después de esto, el proceso obtendrá la información de producción científica del investigador utilizando EDMA.   


Una vez obtenida la producción científica, se procederá a evaluar los elementos obtenidos. Para ello, se ha creado un configurador con los requisitos mínimos obligatorios de cada comité, se obtendrán los requisitos y se realizará la evaluación.

* Si la evaluación es positiva: se asignará a la producción principal del informe los elementos que tengan mejor puntuación y menor número de autores, si esto se debe tener en cuenta. Y el resto de elementos pasará a ser la producción sustitutoria.
* Si la evaluación es negativa: se dividirá la producción científica en dos colecciones, como producción principal tendremos los cinco primeros elementos y como producción sustitutoria los restantes.

Una vez dividida la producción científica, se generará el informe del sexenio del investigador y se notificará a EDMA. Si se produce un error en la obtención de la producción científica o del factor de impacto se notificará el error a través del log del proceso.

En la evaluación solo se tendrán en cuenta los artículos publicados en revistas del investigador, los demás elementos obtenidos se insertarán en el informe pero no serán evaluados, solo le servirán al autor para tener la lista de elementos de cada tipo y así, realizar su informe en base al generado por Hércules\-RPA.

Diagrama demostrativo del proceso:

[/attachments/598147207/sexenios%20y%20acreditaciones.pdf?version=1&modificationDate=1646392628000&api=v2 "/confluence/download/attachments/598147207/sexenios%20y%20acreditaciones.pdf?version=1&modificationDate=1646392628000&api=v2"](/attachments/598147207/sexenios%20y%20acreditaciones.pdf?version=1&modificationDate=1646392628000&api=v2 "/confluence/download/attachments/598147207/sexenios%20y%20acreditaciones.pdf?version=1&modificationDate=1646392628000&api=v2")

### Estructura del informe

El informe tiene la siguiente estructura:

1. Datos del investigador: esta sección está compuesta por:
	1. Nombre y apellidos.
	2. Universidad.
	3. Departamento.
	4. Email.
	5. Periodo de sexenio.
	6. Comité.
	7. Relevancia autorías.
2. Baremación: en esta sección se describe la puntuación que podría obtener el investigador aportando los datos del informe generado. A continuación se adjunta un ejemplo:![](/attachments/598147207/598148881.png)
3. Producción científica: esta sección está compuesta por artículos publicados en revistas relevantes. Se divide en dos secciones:
	1. Producción principal: estará compuesta por los elementos que representan los requisitos mínimos obligatorios en el caso de que la baremación cumpla con los requisitos o los elementos mejor valorados si la baremación no cumple los requisitos.
	2. Producción sustitutoria: compuesta por el resto de elementos.
4. Libros: esta sección contiene los libros y monografías del investigador, por cada elemento, se obtendrá el título y la fecha de publicación.
5. Capítulos de libros: esta sección contiene los capítulos de libros, por cada elemento, se obtendrá el título y la fecha de publicación.
6. Trabajos presentados en congresos nacionales e internacionales: está sección está compuesta por los trabajos que ha presentado el investigador en congresos, por cada elemento, se obtendrá título, número de autores y autores.

### Glosario configurador comités

Para entender qué significa cada parámetro del configurador de comités se ha realizado un glosario explicando el significado de cada uno de los parámetros que lo componen, el enlace a GitHub es el siguiente: [https://github.com/hercules\-rpa/glosario\_parametros\_sexenios.json](https://github.com/hercules-rpa/orquestador/blob/main/model/process/glosario_parametros_sexenios.json "https://github.com/hercules-rpa/orquestador/blob/main/model/process/glosario_parametros_sexenios.json")

  





