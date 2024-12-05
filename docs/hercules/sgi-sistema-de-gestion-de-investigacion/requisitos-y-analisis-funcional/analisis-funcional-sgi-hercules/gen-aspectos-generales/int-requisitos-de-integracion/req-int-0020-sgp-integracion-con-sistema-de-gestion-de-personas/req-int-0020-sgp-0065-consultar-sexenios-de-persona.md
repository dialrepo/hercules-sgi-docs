# Hércules : REQ\-INT\-0020\-SGP\-0065 \- Consultar sexenios de persona







### Definición y objetivos

Obtener el número de sexenios de una persona. Si se le pasa el parámetro de la fecha devuelve el número de sexenios en esa fecha, sino se devuelve el número de sexenios a la fecha actual.

  








### Descripción integración

Parámetros de entrada:

* Referencia de persona (código de identificación de la persona para intercambio de información entre ESB y SGI)
* Fecha (fecha en la que se quiere ver el número de sexenio a esa fecha)

Parámetros de salida:

* Número de sexenios reconocidos
* País del reconocimiento
* Identificador de la persona que tiene el sexenio

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión de Personas y, en concreto, de los Servicios Pasarela: [SGI \- ESB \- SGP \- Servicios Pasarela](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-pasarela/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-pasarela/index.md").

El servicio concreto del API que cubre este requisito es [SGI \- ESB \- SGP \- Personas \- Consultar número de sexenios](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-pasarela/sgi-esb-sgp-personas-consultar-numero-de-sexenios.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-pasarela/sgi-esb-sgp-personas-consultar-numero-de-sexenios.md").

  








### Interfaces relacionados







Informes relacionados







### Casos de uso relacionados









