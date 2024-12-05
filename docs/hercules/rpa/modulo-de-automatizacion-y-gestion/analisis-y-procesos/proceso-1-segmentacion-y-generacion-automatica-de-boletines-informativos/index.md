# Hércules : Proceso 1 : Segmentación y generación automática de boletines informativos



![](/attachments/598147204/598147882.png)

### Descripción general del proceso.

Este proceso se podrá planificar automáticamente, de forma semanal o periódica, para obtener información relacionada con los elementos incluídos en el boletín de transferencia de Universidad de Murcia, siendo posible su adaptación a otros boletines.

El robot que ejecuta este proceso, realizará una búsqueda utilizando un rango de fechas, dependiendo si el proceso se debe ejecutar de forma semanal o periódica y obtendrá la información relacionada con estas secciones introducida en el Hércules\-SGI, Hércules\-EDMA, Notas de Prensa de la UM y UCC. Si la ejecución anterior del proceso ha fallado, se ajustará el rango de fechas. Para ello, se comprobará si la fecha inicial de la última ejecución es menor que la del rango actual, si lo es, se escogerá la fecha de la última ejecución como fecha inicial y para la fecha de fin se escogerá la fecha más reciente.

Si ha obtenido información de forma correcta procederá a generar un resumen donde se especifique la información obtenida y se enviará por correo electrónico a los responsables de la creación del Boletín de Transferencia de la OTRI. Si no se ha obtenido información o el proceso ha terminado con errores se notificará al usuario.

La información recolectada por el proceso consultando EDMA es la siguiente:

* Oferta tecnológica:  

	+ Título.
	+ Descripción.
	+ Investigadores: nombre y apellidos de cada investigador.
	+ Fecha de publicación.
* Artículos científicos:   

	+ Título.
	+ Autor/es, por cada autor se obtendrá su nombre, apellidos y su  código ORCID, si está disponible en el sistema.
	+ Revista.
	+ Fecha de publicación.
	+ Área científica: podrá ser una lista de áreas.

La información recolectada por el proceso consultando SGI es la siguiente:

* Propiedad industrial:
	+ Dentro de este apartado se obtendrán los siguientes elementos:
		- Patente
		- Modelo de utilidad
		- Diseño industrial
		- Marca
		- Secreto industrial
	+ De cada uno de estos elementos se obtendrá la siguiente información:
		- Código interno y nº de solicitud / prioridad: se enviará de la primera solicitud el código interno, la fecha de inicio de prioridad y la fecha final de prioridad.
		- Título: título.
		- Inventores / autores: en una invención existirán participantes tanto a nivel personal, que el SGI denominará "autores" de la invención o "miembros del equipo inventor", como a nivel de organizaciones o entidades/empresas, que se denominarán "titulares" de la invención. Todos los miembros del equipo inventor (autores) llevan asociado su porcentaje de participación (autoría). Los miembros del equipo inventor participan vinculados a una organización. En función del porcentaje de autoría de sus miembros, cada organización o "titular" tiene, a su vez, un porcentaje de titularidad. El porcentaje de titularidad se obtendría a partir del sumatorio de los porcentajes de participación de cada uno de los miembros del equipo inventor pertenecientes a la entidad/empresa/organización colaboradora.  Se obtendrá la información relacionada con los autores del formulario "Equipo inventor".
* Propiedad intelectual: se consultarán los elementos "Software" y "Know\-how". De ellos se obtendrá la misma información que en el apartado anterior: Código interno y prioridad, título, inventores/autores.
* Convocatoria: convocatorias relacionadas con proyectos colaborativos que gestiona la OTRI como otras convocatorias gestionadas por investigación, incluso OPERUM. La información que obtendrá es la siguiente:
	+ Nombre: título.
	+ Organismo convocante: entidad convocante.
	+ Período de presentación de solicitudes.
* Proyecto: nuevos proyectos que se den de alta, tanto regionales, nacionales como europeos.
* + Título.
	+ Convocatoria en la que ha obtenido financiación: en el SGI se registran los siguientes campos relacionados con esta información: campo "convocatoria" que es el título de la convocatoria de la que procede el proyecto y el campo "convocatoria externa" que es un campo que se utiliza para introducir de manera libre una identificación de la convocatoria externa con la que se relaciona el proyecto, en caso de que la convocatoria no se haya registrado en el SGI.
	+ Organismo convocante: entidad convocante, puede ser una lista de organismos.
	+ Investigadores participantes: se obtendrá de la sección "Equipo" del SGI. Dicha sección incluye la información de los miembros que forman parte del proyecto. Por cada miembro se enviará su nombre y apellidos.
	+ Período de ejecución: 
	
	
	
	| Campo SGI | Descripción |
	| --- | --- |
	| Fecha de inicio | Fecha de inicio del proyecto. |
	| Fecha fin | Fecha de fin del proyecto. |
	| Fecha definitiva | Es un campo opcional. Podrá ser introducido manualmente para dejar registrada la fecha de fin definitiva en el caso de situaciones como rescisiones o renuncias al proyecto, o bien podrá ser informada automáticamente por el sistema al registrar una prórroga sobre el proyecto. Si está informada prevalecerá sobre la fecha de fin y será la considerada como fecha de finalización del proyecto, independientemente de que sea mayor o menor que la fecha de fin inicial. |
	+ Importe: 
	
	
	
	| Campo SGI | Descripción |
	| --- | --- |
	| Importe concedido | Suma total del importe concedido. En el caso de proyectos colaborativos reflejará exclusivamente el importe concedido con el que contará la Universidad para el desarrollo de su parte del proyecto. |
	| Total importe concedido | Suma total del importe concedido (Universidad más socios). Si se introduce un desglose de gastos este campo será calculado teniendo en cuenta todos los datos, si se introduce de forma manual se obtendrá dicha información. |
* Contratos:   

	+ Título: título del contrato.
	+ Investigadores participantes: mismos datos que se obtienen para los proyectos.
	+ Periodo de ejecución: mismos datos que se obtienen para los proyectos.
	+ Importe: mismos datos que se obtienen para los proyectos.
* Tesis:   

	+ Título: título de la tesis doctoral.
	+ Fecha: fecha de la defensa.
	+ Director: se obtendrá el nombre y apellidos de los/las co\-directores/as que han intervenido.
	+ Área científica.
	+ Resumen.
* Noticias: noticias relacionadas con la investigación. Se obtendrán de las siguientes páginas webs:
* + [https://www.um.es/web/sala\-prensa/notas\-de\-prensa](https://www.um.es/web/sala-prensa/notas-de-prensa "https://www.um.es/web/sala-prensa/notas-de-prensa")
	+ [https://www.um.es/web/ucc/](https://www.um.es/web/ucc/ "https://www.um.es/web/ucc/")

Los datos que se obtendrán son los siguientes:

* + Título.
	+ Fecha de creación.
	+ Responsable de la redacción.

Toda la información recolectada irá acompañada de un enlace para su consulta en la fuente de origen.

### Formato correo electrónico

El correo electrónico que se enviará tras finalizar el proceso mostrará por cada elemento solicitado el conjunto de elementos que se ha obtenido y una lista con la información solicitada. Un ejemplo del formato de este correo sería el siguiente:



| Contenido |
| --- |
| Estimado/a Sr./Sra.:Se ha obtenido información que puede ser de su interés.**OFERTA TECNOLÓGICA: Se han obtenido 4 elementos.****OFERTA TECNOLÓGICA 1:**Título: TestDescripción: TestInvestigadores:\- Autor1 apellido1 apellido2Fecha: 22/07/2022Url: otc\-1 (enlace)**TESIS: No se ha obtenido ningún elemento.****ARTÍCULOS CIENTÍFICOS: Se han obtenido 46 artículos científicos.****ARTÍCULO CIENTÍFICO 1:**Nombre: testXghjNombre revista: ejemplo1Autores:\- Autor1 Martinez ORCID: 0000\-0002\-XXXX\-XXXXFecha: 31/07/2022Url: articulo\-1 (enlace)...**NOTICIAS: Se han obtenido 40 noticias.****NOTICIA 1:**Título: Un estudio de la UMU relaciona la alteración de la microbiota intestinal y la severidad de la enfermedad de PárkinsonAutor: DELFINAFecha: 21/07/2022Url: noticia1 (enlace)...**CONVOCATORIAS: Se han obtenido 5 convocatorias.****CONVOCATORIA 1:**Título: testingFecha publicación: 06/05/2022Fecha provisional: 06/05/2022Fecha concesión: 17/05/2022Url: elemento\-41/datos\-generales...**PROYECTOS: Se han obtenido 3 proyectos.****PROYECTO 1:**Titulo: Prueba LleidaFecha inicio: 03/03/2022Fecha fin: 31/03/2022Entidades convocantes: Prueba, S.L.Importe total presupuesto: 1000\.0€Importe total concedido: 12554\.0€Url: elemento\-140017/ficha\-general...**CONTRATOS: Se ha obtenido 1 contrato.****CONTRATO 1:**Titulo: Contrato de regalías Fecha inicio: 30/06/2022Fecha fin: 31/07/2022Url: elemento\-140021/ficha\-general**PROPIEDAD INDUSTRIAL: Se han obtenido 5 invenciones.****PROPIEDAD INDUSTRIAL 1:**Tipo: Patente.Título: Invención para pruebas OTRIDescripción: Invención para pruebas OTRIInventores: ...SOLICITUDES:SOLICITUD 1:Título: Invención para pruebas OTRINúmero solicitud: 23232Fecha prioridad: 31/01/2022Fecha fin prioridad: 31/01/2023SOLICITUD 2:Título: Invención para pruebas OTRINúmero solicitud: retertFecha prioridad: 01/06/2022Fecha publicación: 08/06/2022Url: elemento\-21/datos\-generales...**PROPIEDAD INTELECTUAL: No se han obtenido invenciones.** |

Se resaltará en negrita los titulares de cada sección y los elementos, por ejemplo, "**NOTICIAS: Se han obtenido 2 noticias.**" y "**NOTICIA 1:**".

Enlaces a GitHub:

* Proceso general encargado de llamar a los subprocesos:  [https://github.com/hercules\-rpa/orquestador/tree/main/model/process/ProcessGenerateTransferReport.py](https://github.com/hercules-rpa/orquestador/tree/main/model/process/ProcessGenerateTransferReport.py "https://github.com/hercules-rpa/orquestador/tree/main/model/process/ProcessGenerateTransferReport.py")
* Entidades dependientes del proceso:  [https://github.com/hercules\-rpa/orquestador/tree/main/model/process/Process1/Entities](https://github.com/hercules-rpa/orquestador/tree/main/model/process/Process1/Entities "https://github.com/hercules-rpa/orquestador/tree/main/model/process/Process1/Entities")
* Subprocesos que se ejecutan para obtener la información:  [https://github.com/hercules\-rpa/orquestador/tree/main/model/process/Process1/Subprocess](https://github.com/hercules-rpa/orquestador/tree/main/model/process/Process1/Subprocess "https://github.com/hercules-rpa/orquestador/tree/main/model/process/Process1/Subprocess")

  





