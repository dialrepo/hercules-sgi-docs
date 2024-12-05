# Hércules : REQ\-INT\-0020\-SGP\-0067 \- Personas con actividad docente modificada







### Definición y objetivos

El SGI deberá disponer de una función que permita consultar las personas de la Universidad que han tenido modificaciones en la actividad docente impartida, es decir, en alguna de las siguientes actividades:

* (030\.040\.000\.000\) Dirección de tesis doctorales y/o proyectos fin de carrera
* (030\.010\.000\.000\) Formación académica impartida
* (030\.060\.000\.000\) Cursos y seminarios impartidos orientados a la formación docente universitaria
* (030\.070\.000\.000\) Publicaciones docentes o de carácter pedagógico, libros, artículos, etc.
* (030\.080\.000\.000\) Participación en proyectos de innovación docente
* (060\.030\.080\.000\) Premios de innovación docente recibidos

  








### Descripción integración

Parámetros de entrada:

* Fecha modificación: fecha a partir de la cual se quieren ver los cambios
* Tipo actividad: se le pasa el tipo de actividad docente que se quiere recuperar, usando los códigos de CVN:  

	+ 030\.040\.000\.000 para consultar las Dirección de tesis doctorales y/o proyectos fin de carrera
	+ 030\.010\.000\.000 para consultar la Formación académica impartida
	+ 030\.060\.000\.000 para consultar los Cursos y seminarios impartidos orientados a la formación docente universitaria
	+ 030\.070\.000\.000 para consultar las Publicaciones docentes o de carácter pedagógico, libros, artículos, etc.
	+ 030\.080\.000\.000 para consultar la Participación en proyectos de innovación docente
	+ 060\.030\.080\.000 para consultar los Premios de innovación docente recibidos

Parámetros de salida:

* Listado de identificadores de las personas que han tenido modificaciones en actividad docente

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión de Personas y, en concreto, de los Servicios Pasarela: [SGI \- ESB \- SGP \- Servicios Pasarela](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-pasarela/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-pasarela/index.md").

El servicio concreto del API que cubre este requisito es [SGI \- ESB \- SGP \- Personas \- Consultar personas con modificaciones en actividad docente](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-pasarela/sgi-esb-sgp-personas-consultar-personas-con-modificaciones-en-actividad-docente.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-pasarela/sgi-esb-sgp-personas-consultar-personas-con-modificaciones-en-actividad-docente.md").

  








### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









