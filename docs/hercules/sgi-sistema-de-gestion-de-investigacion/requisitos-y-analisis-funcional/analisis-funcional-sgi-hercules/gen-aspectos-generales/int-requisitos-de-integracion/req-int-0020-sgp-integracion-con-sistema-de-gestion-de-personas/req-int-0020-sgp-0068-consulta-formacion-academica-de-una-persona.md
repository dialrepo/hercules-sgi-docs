# Hércules : REQ\-INT\-0020\-SGP\-0068 \- Consulta formación académica de una persona







### Definición y objetivos

El SGI deberá disponer de una función que permita consultar la formación académica recibida de una persona de la Universidad. Se le podrá pasar como parámetro el tipo de formación a través del código CVN.

  








### Descripción integración

Parámetros de entrada:

* Referencia de persona (código de identificación de la persona para intercambio de información entre ESB y SGI)
* Tipo formación: se le pasa el tipo de formación que se quiere consultar, usando los códigos de CVN:  

	+ 020\.010\.010\.000 para consultar los Estudios de 1º y 2º ciclo, y antiguos ciclos
	+ 020\.010\.020\.000 para consultar los Doctorados
	+ 020\.010\.030\.000 para consultar Otra formación universitaria de posgrado
	+ 020\.020\.000\.000 para consultar Formación especializada, continuada, técnica, profesionalizada, de reciclaje y actualización
	+ 020\.060\.000\.000 para consultar los Conocimiento de idiomas
	+ 020\.050\.000\.000 para consulta los Cursos y seminarios recibidos de perfeccionamiento, innovación y mejora docente, nuevas tecnologías, etc., cuyo objetivo sea la mejora de la docencia

Parámetros de salida:

* Listado de formaciones académicas de la persona pasada por parámetro y del tipo de formación que se la ha pasado por parámetro. Cada registro tendrá la siguiente información:  

	+ Si Tipo formación \= 020\.010\.010\.000
		- Identificador de la formación
		- Nombre del título
		- Fecha de obtención del título
		- Tipo titulación (Doctor, titulado medio, titulado superior, otros)
		- Entidad que concede el título
		- Ciudad en la que se obtenido el título
		- País en el que se ha obtenido el título
		- Región/comunidad autónoma en la que se ha obtenido el título
		- Nombre oficial del título expedido
		- Si esta o no homologado
		- Fecha de la homologación
		- Nota media expediente
		- Premio (Posibles valores: Premio extraordinario de licenciatura, Premio fin de carrera, Otros)
	+ Si Tipo formación \= 020\.010\.020\.000  
	
		- Identificador del doctorado
		- Nombre del programa doctorado
		- Fecha de obtención del título
		- Entidad que concede el título
		- Ciudad en la que se obtenido el título
		- País en el que se ha obtenido el título
		- Región/comunidad autónoma en la que se ha obtenido el título
		- Fecha de obtención del título Diploma de títulos avanzados
		- Entidad que concede el título Diploma de títulos avanzados
		- Título tesis
		- Calificación obtenida
		- Director/a que ha intervenido como director/a de la tesis
		- Codirectores/as que han intervenido
		- Si se ha recibido una mención europea
		- Fecha de la mención del doctorado europeo
		- Si el doctorado ha recibido una mención de calidad
		- Si se ha recibido un premio extraordinario de doctorado
		- Fecha del premio extraordinario de doctorado
		- Si se trata de un título extranjero homologado
		- Fecha de la homologación del doctorado extranjero
	+ Si Tipo formación \= 020\.010\.030\.000  
	
		- Identificador de la formación.
		- Nombre título posgrado
		- Fecha de obtención del título
		- Entidad que concede el título
		- Ciudad en la que se obtenido el título
		- País en el que se ha obtenido el título
		- Región/comunidad autónoma en la que se ha obtenido el título
		- Tipo formación homologada (Especialidad, Extensión universitaria, Máster, Posgrado)
		- Calificación obtenida
		- Si esta o no homologado
		- Fecha de la homologación
	+ Si Tipo formación \= 020\.020\.000\.000  
	
		- Identificador de la formación.
		- Nombre título
		- Fecha de obtención del título
		- Horas de formación
		- Entidad que concede el título
		- Ciudad en la que se obtenido el título
		- País en el que se ha obtenido el título
		- Región/comunidad autónoma en la que se ha obtenido el título
		- Tipo formación (especialidad, Extensión universitaria, Máster, Posgrado)
		- Objetivos
		- Nombre y apellidos de la persona responsable
	+ Si Tipo formación \= 020\.060\.000\.000  
	
		- Identificador del idioma
		- Nombre del idioma
		- Comprensión auditiva (A1, A2, B1, B2, C1, C2\)
		- Comprensión lectora (A1, A2, B1, B2, C1, C2\)
		- Interacción oral (A1, A2, B1, B2, C1, C2\)
		- Expresión oral (A1, A2, B1, B2, C1, C2\)
		- Expresión escrita (A1, A2, B1, B2, C1, C2\)
	+ Si Tipo formación \= 020\.050\.000\.000  
	
		- Identificador de la publicación
		- Título del curso
		- Objetivos
		- Entidad que ha organizado el curso
		- Fecha en la que comenzó el curso
		- Fecha en la que finalizó el curso
		- Tiempo (en horas) que duró el curso, seminario y/o actividad de mejora docente
		- País en el que se localiza la entidad que ha organizado el curso, seminario y/o actividad de mejora docente
		- Comunidad autónoma/región en la que se localiza la entidad que ha organizado el curso
		- Tiempo que permaneció en la entidad para realizar el curso, seminario y/o actividad de mejora docente expresado en años, meses y días
		- Objetivos estancia
		- Programa por el que se ha financiado
		- Perfil profesional de los alumnos/as del curso, seminario y/o actividad de mejora docente
		- Tareas contrastables

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión de Personas y, en concreto, de los Servicios Pasarela: [SGI \- ESB \- SGP \- Servicios Pasarela](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-pasarela/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-pasarela/index.md").

El servicio concreto del API que cubre este requisito es [SGI \- ESB \- SGP \- Personas \- Formación \- Consultar detalle](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-pasarela/sgi-esb-sgp-personas-formacion-consultar-detalle.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-pasarela/sgi-esb-sgp-personas-formacion-consultar-detalle.md").

  








### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









