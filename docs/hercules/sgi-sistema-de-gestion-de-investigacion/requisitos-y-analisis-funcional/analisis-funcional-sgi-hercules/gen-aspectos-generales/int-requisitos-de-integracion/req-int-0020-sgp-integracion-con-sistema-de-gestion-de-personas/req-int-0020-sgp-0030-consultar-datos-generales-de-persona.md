# Hércules : REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona







### Definición y objetivos

Obtener los datos generales de una persona a partir de su identificador de referencia en el SGI. El ESB recibirá del SGI la solicitud de datos generales de una determinada persona. El ESB a través de la referencia de la persona derivará la solicitud al sistema universitario correspondiente.

  








### Descripción integración

Parámetros de entrada:

* Referencia de persona (código de identificación de la persona para intercambio de información entre ESB y SGI)

Salida: se devolverá un registro de una persona con la siguiente información:

* Identificador/Referencia
* Nombre
* Apellidos
* Sexo
* Número de documento (de identificación personal)
* Tipo de documento (de identificación personal)
* Identificador de la entidad/empresa externa a la que pertenece (en caso de que tenga vinculación con una entidad externa)
* Indicador (sí/no) de personal propio (es personal laboral de la Universidad en el momento actual)
* Identificador de la entidad propia/universidad (en caso de que tenga vinculación con la universidad, esto es, si es personal propio)
* Lista de direcciones de email (cada dirección de email contendrá una indicador para distinguir si es el email principal o no)
* Indicador (sí/no) de la vigencia de la persona (en el momento actual)

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión de Personas y, en concreto, de los Servicios Básicos: [SGI \- ESB \- SGP \- Servicios Básicos](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/index.md").

El servicio concreto del API que cubre este requisito es [SGI \- ESB \- SGP \- Personas \- Consultar detalle (Datos generales)](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/sgi-esb-sgp-personas-consultar-detalle-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-basicos/sgi-esb-sgp-personas-consultar-detalle-datos-generales.md").

  








### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









