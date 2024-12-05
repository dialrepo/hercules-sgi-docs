# Hércules : REQ\-INT\-0020\-SGP\-0032 \- Consultar datos de contacto de persona







### Definición y objetivos

Obtener los datos de contacto de una persona a partir de su identificador de referencia en el SGI. El ESB recibirá del SGI la solicitud de información de contacto de una determinada persona. El ESB a través de la referencia de la persona derivará la solicitud al sistema universitario correspondiente.

  








### Descripción integración

Parámetros de entrada:

* Referencia de persona (código de identificación de la persona para intercambio de información entre ESB y SGI)

Salida: se devolverá un registro de datos de contacto de una persona con la siguiente información:

* País de la dirección de contacto
* C. Autón./Reg. de la dirección de contacto
* Provincia de la dirección de contacto
* Ciudad de la dirección de contacto
* Dirección de contacto
* Código postal de la dirección de contacto
* Listado de teléfonos
* Listado de correos electrónicos

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión de Personas y, en concreto, de los Servicios Básicos: [SGI \- ESB \- SGP \- Servicios Básicos](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/index.md").

El servicio concreto del API que cubre este requisito es [SGI \- ESB \- SGP \- Personas \- Consultar datos contacto](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/sgi-esb-sgp-personas-consultar-datos-contacto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/sgi-esb-sgp-personas-consultar-datos-contacto.md").

  








### Interfaces de usuario relacionados







### Informes relacionados







Casos uso relacionados









