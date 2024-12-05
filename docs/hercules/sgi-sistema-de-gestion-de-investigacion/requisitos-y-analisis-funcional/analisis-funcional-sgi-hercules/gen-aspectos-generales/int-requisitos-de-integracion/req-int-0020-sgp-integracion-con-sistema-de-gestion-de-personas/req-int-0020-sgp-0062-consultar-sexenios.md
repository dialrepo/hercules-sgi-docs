# Hércules : REQ\-INT\-0020\-SGP\-0062 \- Consultar sexenios







### Definición y objetivos

Obtener los datos de sexenios del personal de investigación de la Universidad a una fecha determinada. El ESB recibirá del SGI la solicitud de información de los sexenios del personal de investigación a una determinada fecha. El ESB derivará la solicitud al sistema universitario correspondiente.







### Descripción integración

Parámetros de entrada:

* Fecha

Salida: se devolverá un listado de registros de sexenios con la siguiente información:

* Número de sexenios de la persona
* Identificador de la persona
* Identificador del país de reconocimiento de los sexenios

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión de Personas y, en concreto, de los Servicios Básicos: [SGI \- ESB \- SGP \- Servicios Básicos](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/index.md").

El servicio concreto del API que cubre este requisito es [SGI \- ESB \- SGP \- Sexenios \- Buscar](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/sgi-esb-sgp-sexenios-buscar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/sgi-esb-sgp-sexenios-buscar.md").

  








### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados

[PRC \- Baremación \- Diseño algoritmo](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-prc/prc-baremacion-diseno-algoritmo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-prc/prc-baremacion-diseno-algoritmo.md")









