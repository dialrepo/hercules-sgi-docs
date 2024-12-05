# Hércules : REQ\-INT\-0020\-SGP\-0063 \- Consultar direcciones de tesis







### Definición y objetivos

Obtener los datos de direcciones de tesis del personal de investigación de la Universidad a una fecha determinada. El ESB recibirá del SGI la solicitud de información de las direcciones de tesis del personal de investigación a una determinada fecha. El ESB derivará la solicitud al sistema universitario correspondiente.

  








### Descripción integración

Parámetros de entrada:

* Fecha

Salida: se devolverá un listado de registros de direcciones de tesis con la siguiente información:

* Identificador del doctorado
* Identificador de la persona que es el Director de la tesis
* Título del trabajo
* Fecha de obtención del título
* Nombre del alumno
* Tipo del trabajo dirigido: Otros, Proyecto de fin de carrera, Tesina, Tesis doctoral, Trabajo conducente a la obtención de DEA
* Calificación obtenida
* Identificador del co\-director/a que ha intervenido
* Si ha recibido una mención europea
* Fecha de la mención del doctorado europeo
* Si el doctorado ha recibido una mención de calidad
* Fecha de la homologación del doctorado extranjero
* Si tiene mención internacional o no
* Si tiene mención industrial o no

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión de Personas y, en concreto, de los Servicios Básicos: [SGI \- ESB \- SGP \- Servicios Básicos](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/index.md").

El servicio concreto del API que cubre este requisito es [SGI \- ESB \- SGP \- Dirección de tesis \- Buscar](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/sgi-esb-sgp-direccion-de-tesis-buscar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/sgi-esb-sgp-direccion-de-tesis-buscar.md").

  








### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados

[PRC \- Baremación \- Diseño algoritmo](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-prc/prc-baremacion-diseno-algoritmo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-prc/prc-baremacion-diseno-algoritmo.md")









