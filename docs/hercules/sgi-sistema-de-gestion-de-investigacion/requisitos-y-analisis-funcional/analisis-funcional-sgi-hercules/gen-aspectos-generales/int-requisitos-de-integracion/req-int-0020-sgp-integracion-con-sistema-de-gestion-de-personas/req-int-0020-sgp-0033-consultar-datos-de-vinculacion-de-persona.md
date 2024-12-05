# Hércules : REQ\-INT\-0020\-SGP\-0033 \- Consultar datos de vinculación de persona







### Definición y objetivos

Obtener los datos de vinculación de una persona a la estructura organizativa Universitaria. El ESB recibirá del SGI la solicitud de información de una determinada persona, a partir de su identificador de referencia. El ESB a través de esta referencia derivará la solicitud al sistema universitario correspondiente.

  








### Descripción integración

Parámetros de entrada:

* Referencia de persona (código de identificación de la persona para intercambio de información entre ESB y SGI)

Salida: se devolverá un registro de datos de vinculación de una persona con la siguiente información:

* Categoría profesional
* Fecha de obtención de categoría
* Departamento
* Centro
* Área de conocimiento
* Referencia de la empresa a la que está vinculada la persona en la universidad
* Indicador (sí/no) de personal propio (es personal laboral de la Universidad en el momento actual)
* Identificador de la entidad propia/universidad (en caso de que tenga vinculación con la universidad, esto es, si es personal propio)

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión de Personas y, en concreto, de los Servicios Básicos: [SGI \- ESB \- SGP \- Servicios Básicos](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/index.md").

El servicio concreto del API que cubre este requisito es [SGI \- ESB \- SGP \- Personas \- Consultar vinculaciones](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/sgi-esb-sgp-personas-consultar-vinculaciones.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/sgi-esb-sgp-personas-consultar-vinculaciones.md")

  








### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









