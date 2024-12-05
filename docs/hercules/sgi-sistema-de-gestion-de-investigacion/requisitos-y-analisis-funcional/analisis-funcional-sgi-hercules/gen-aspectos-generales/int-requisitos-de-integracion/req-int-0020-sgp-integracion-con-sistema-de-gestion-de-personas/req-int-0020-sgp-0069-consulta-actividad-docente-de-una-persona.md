# Hércules : REQ\-INT\-0020\-SGP\-0069 \- Consulta actividad docente de una persona







### Definición y objetivos

El SGI deberá disponer de una función que permita consultar la actividad docente una persona de la Universidad. Se le podrá pasar como parámetro el tipo de actividad a través del código CVN.

  








### Descripción integración

Parámetros de entrada:

* Referencia de persona (código de identificación de la persona para intercambio de información entre ESB y SGI)
* Tipo actividad: se le pasa el tipo de actividad que se quiere consultar, usando los códigos de CVN:  

	+ 030\.040\.000\.000 para consultar las Dirección de tesis doctorales y/o proyectos fin de carrera
	+ 030\.010\.000\.000 para consultar la Formación académica impartida
	+ 030\.060\.000\.000 para consultar los Cursos y seminarios impartidos orientados a la formación docente universitaria
	+ 030\.070\.000\.000 para consultar las Publicaciones docentes o de carácter pedagógico, libros, artículos, etc.
	+ 030\.080\.000\.000 para consultar la Participación en proyectos de innovación docente
	+ 060\.030\.080\.000 para consultar los Premios de innovación docente recibidos

Parámetros de salida:

* Listado de actividades docentes de la persona pasada por parámetro y del tipo de actividad que se la ha pasado por parámetro. Cada registro tendrá la siguiente información:  

	+ Si Tipo actividad \= 030\.040\.000\.000  
	
		- Identificador del doctorado
		- Título del trabajo
		- Fecha de obtención del título
		- Alumno
		- Entidad que concede el título
		- Ciudad en la que se obtenido el título
		- País en el que se ha obtenido el título
		- Región/comunidad autónoma en la que se ha obtenido el título
		- Tipo del trabajo dirigido (Proyecto de fin de carrera, Tesina, Tesis doctoral, Trabajo conducente a la obtención de DEA u Otros)
		- Calificación obtenida
		- Codirectores/as que han intervenido
		- Si se ha recibido una mención europea
		- Fecha de la mención del doctorado europeo
		- Si el doctorado ha recibido una mención de calidad
		- Fecha de la homologación del doctorado extranjero
		- Si tiene mención internacional
		- Si tiene mención industrial
	+ Si Tipo formación \= 030\.010\.000\.000  
	
		- Identificador de la actividad docente
		- Titulación universitaria
		- Nombre de la asignatura del curso
		- Fecha de inicio
		- Fecha finalización
		- Entidad que concede el título
		- Ciudad en la que se obtenido el título
		- País en el que se ha obtenido el título
		- Región/comunidad autónoma en la que se ha obtenido el título
		- Tipo de la labor de docente (Docencia internacional, Docencia oficial, Docencia no oficial)
		- Número horas crédito
		- Frecuencia actividad
		- Tipo de programa (Arquitectura, Arquitectura técnica, Diplomatura, Doctorado, Ingeniería, Ingeniería Técnica, Licenciatura, Máster oficial, Otros)
		- Tipo de docencia (Clínico, Otros, Práctica (Aula\-Problemas), Prácticas de Laboratorio, Teórica presencial, Virtual)
		- Departamento
		- Tipo de asignatura ( Doctorado/a, Libre configuración, Obligatoria, Optativa, Otros, Troncal)
		- Curso
		- Tipo de horas o créditos (Horas, Créditos)
		- Idioma
		- Competencias
		- Categoría profesional
	+ Si Tipo formación \= 030\.060\.000\.000  
	
		- Identificador de la actividad
		- Nombre del evento
		- Tipo evento (Congreso, Jornada, Seminario u Otros)
		- Fecha de obtención del título
		- Entidad que concede el título
		- Tipo entidad que concede el título
		- Ciudad en la que se obtenido el título
		- País en el que se ha obtenido el título
		- Región/comunidad autónoma en la que se ha obtenido el título
		- Objetivos curso
		- Idioma
		- ISBN
		- ISSN
		- Autor correspondencia
		- Tipo Identificador (DOI, Handle, PMID, Otros)
		- Descripción del perfil de destinatarios
		- Tipo participación
	+ Si Tipo formación \= 030\.070\.000\.000  
	
		- Identificador de la publicación
		- Nombre del material docente elaborado
		- Fecha en que ha finalizado la elaboración del material docente
		- Título de la publicación
		- Tipo de soporte en el que se ha plasmado el material docente
		- Lista de autores de la publicación
		- Si la persona es el autor de correspondencia
		- Título de la publicación principal (libro, revista, etc.) en la que se ha publicado el trabajo
		- Volumen del trabajo publicado
		- Número del trabajo publicado
		- Número de la página inicial donde se localiza el trabajo dentro de la publicación
		- Número de la página final donde se localiza el trabajo dentro de la publicación
		- Editorial de la publicación
		- Posición que ocupa la persona referenciada entre los autores de la publicación
		- ISBN
		- ISSN
		- Tipo Identificador (DOI, Handle, PMID, Otros)
		- Número del deposito legal del trabajo publicado
		- Dirección de la publicación
		- País en el que se ha publicado el trabajo
		- Región/comunidad autónoma en la que se ha publicado el trabajo
		- Perfil profesional de los destinatarios/as del material docente elaborado
		- Justificación del carácter pedagógico del material docente elaborado
		- Fecha en el que se ha publicado el trabajo
	+ Si Tipo formación \= 030\.080\.000\.000  
	
		- Identificador del proyecto
		- Título del proyecto
		- Modalidad de participación en el proyecto
		- Nombre oficial de la entidad que ha financiado el proyecto de innovación docente
		- Fecha en la que comenzó su participación en el proyecto de innovación docente
		- Fecha en la que finalizó su participación en el proyecto de innovación docente
		- Modalidad temporal en que se desarrolló el proyecto de innovación
		- Tiempo de duración de la participación del proyecto
		- País en el que se localiza la entidad donde ha desarrollado el proyecto de innovación
		- Comunidad autónoma/región en la que se localiza la entidad donde ha desarrollado el proyecto de innovación docente
		- Procedimiento de concesión de las subvenciones y/o ayudas
		- Cobertura geográfica del proyecto de innovación docente
		- Justificación de las aportaciones realizadas
		- Tiempo dedicado al proyecto de innovación docente
		- Nombre del investigador responsable/principal (IP) de proyecto de innovación docente
		- Número de personas que han formado parte del proyecto de innovación docente
		- Importe (en euros) de la financiación recibida por el proyecto de innovación docente
		- Lista de nombres oficiales de las entidades que han participado en el proyecto de innovación docente
	+ Si Tipo formación \= 060\.030\.080\.000  
	
		- Identificador del premio
		- Nombre del premio de innovación docente que le ha sido otorgado
		- Nombre de la persona o entidad que, en su caso, haya propuesto la concesión del premio de innovación docente descrito
		- Fecha en la que se otorgó el premio de innovación docente
		- Nombre oficial de la entidad que ha concedido el premio de innovación docente
		- País en el que se localiza la entidad que ha concedido el premio de innovación
		- Comunidad autónoma/región en la que se localiza la entidad que ha concedido el premio de innovación docente

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión de Personas y, en concreto, de los Servicios Pasarela: [SGI \- ESB \- SGP \- Servicios Pasarela](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-pasarela/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-pasarela/index.md").

El servicio concreto del API que cubre este requisito es [SGI \- ESB \- SGP \- Personas \- Actividad docente \- Consultar detalle](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-pasarela/sgi-esb-sgp-personas-actividad-docente-consultar-detalle.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-pasarela/sgi-esb-sgp-personas-actividad-docente-consultar-detalle.md").

  








### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









