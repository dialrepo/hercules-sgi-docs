# Hércules : REQ\-INT\-0020\-SGP\-0061 \- Consultar datos de vinculación históricos de persona







### Definición y objetivos

Obtener los datos de vinculación en un momento dado de una persona a la estructura organizativa Universitaria. El ESB recibirá del SGI la solicitud de información de una determinada persona, a partir de su identificador de referencia. El ESB a través de esta referencia derivará la solicitud al sistema universitario correspondiente.

  








### Descripción integración

Parámetros de entrada:

* Referencia de persona (código de identificación de la persona para intercambio de información entre ESB y SGI)
* Fecha obtención (fecha en la que se ha dado esa categoría profesional)
* Fecha fin (fecha en la que termina la categoría profesional)

Salida: se devolverá un registro de datos de vinculación de una persona en las fechas indicadas con la siguiente información:

* Categoría profesional
* Fecha de obtención de categoría

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión de Personas y, en concreto, de los Servicios Básicos: [SGI \- ESB \- SGP \- Servicios Básicos](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/index.md").

El servicio concreto del API que cubre este requisito es [SGI \- ESB \- SGP \- Personas \- Consultar datos de vinculacion\-categoría](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/sgi-esb-sgp-personas-consultar-datos-de-vinculacion-categoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/sgi-esb-sgp-personas-consultar-datos-de-vinculacion-categoria.md").

  








### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









