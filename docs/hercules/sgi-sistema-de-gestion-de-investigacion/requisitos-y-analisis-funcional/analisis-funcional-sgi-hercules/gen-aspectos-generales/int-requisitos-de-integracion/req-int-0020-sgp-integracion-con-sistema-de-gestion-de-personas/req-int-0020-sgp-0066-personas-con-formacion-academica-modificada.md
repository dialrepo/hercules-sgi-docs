# Hércules : REQ\-INT\-0020\-SGP\-0066 \- Personas con formación académica modificada







### Definición y objetivos

El SGI deberá disponer de una función que permita consultar las personas de la Universidad que han tenido modificaciones en formación académica recibida, es decir, en alguna de las siguientes formaciones:

* (020\.010\.010\.000\) Estudios de 1º y 2º ciclo, y antiguos ciclos (Licenciados, Diplomados, Ingenieros Superiores, Ingenieros Técnicos, Arquitectos)
* (020\.010\.020\.000\) Doctorados
* (020\.010\.030\.000\) Otra formación universitaria de posgrado
* (020\.020\.000\.000\) Formación especializada, continuada, técnica, profesionalizada, de reciclaje y actualización (distinta a la formación académica reglada y a la sanitaria)
* (020\.060\.000\.000\) Conocimiento de idiomas
* (020\.050\.000\.000\) Cursos y seminarios recibidos de perfeccionamiento, innovación y mejora docente, nuevas tecnologías, etc., cuyo objetivo sea la mejora de la docencia

  








### Descripción integración

Parámetros de entrada:

* Fecha modificación: fecha a partir de la cual se quieren ver los cambios
* Tipo formación: se le pasa el tipo de formación que se quiere recuperar, usando los códigos de CVN:  

	+ 020\.010\.010\.000 para consultar los Estudios de 1º y 2º ciclo, y antiguos ciclos
	+ 020\.010\.020\.000 para consultar los Doctorados
	+ 020\.010\.030\.000 para consultar Otra formación universitaria de posgrado
	+ 020\.020\.000\.000 para consultar Formación especializada, continuada, técnica, profesionalizada, de reciclaje y actualización
	+ 020\.060\.000\.000 para consultar los Conocimiento de idiomas
	+ 020\.050\.000\.000 para consulta los Cursos y seminarios recibidos de perfeccionamiento, innovación y mejora docente, nuevas tecnologías, etc., cuyo objetivo sea la mejora de la docencia

Parámetros de salida:

* Listado de identificadores de las personas que han tenido modificaciones en formación realizada

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión de Personas y, en concreto, de los Servicios Pasarela: [SGI \- ESB \- SGP \- Servicios Pasarela](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-pasarela/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-pasarela/index.md").

El servicio concreto del API que cubre este requisito es [SGI \- ESB \- SGP \- Personas \- Consultar personas con modificaciones en formación](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-pasarela/sgi-esb-sgp-personas-consultar-personas-con-modificaciones-en-formacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-pasarela/sgi-esb-sgp-personas-consultar-personas-con-modificaciones-en-formacion.md").

  








### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









