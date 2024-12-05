# Hércules : REQ\-INT\-0020\-SGP\-0050 \- Solicitar alta de persona







### Definición y objetivos

El ESB proporcionará el interface de integración para que desde el SGI se solicite a los sistemas de gestión de personas universitarios el alta de aquellas personas que se quieran vincular con la Universidad a través de una vía por la que actualmente no lo estén o que directamente no estaban previamente vinculadas con la Universidad. A través del formulario correspondiente el SGI recogerá los campos necesarios y/o de interés para la creación de la persona en el sistema de gestión de personas universitario. 

  








### Descripción integración

El SGI no dispondrá de un formulario propio para recoger los datos de creación de una persona sino uno específico por implantación/universidad tal y como se describe en [IU\-GEN\-0061\- Solicitar alta de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0061-solicitar-alta-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0061-solicitar-alta-de-persona.md").

Los parámetros de entrada y salida a la hora de integrarse con los sistemas universitarios para el alta de personas serán definidos en cada implantación/universidad en particular, puesto que dependen de las necesidades y restricciones tanto de sus usuarios finales como de sus sistemas de gestión de la información de personas.

Los parámetros de entrada de la integración vendrán determinados por el contenido del formulario de alta específico para una implantación, más las información adicional no visible por pantalla que se pudiese necesitar enviar.

Como salida se tratará de tender a tener una respuesta más estandarizada o común, como un mensaje con el resultado de la operación, por ejemplo, en caso de que se haya podido crear la persona, que se devuelva un mensaje "Persona creada correctamente" (o similar) y en caso de fallo en la creación "No se ha podido dar de alta la Persona en este momento" (o similar).  


### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión de Personas y, en concreto, de la relativa a servicios Formly: [SGI \- ESB \- SGP \- Servicios Formly](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-formly/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-formly/index.md").

Los servicios concretos del API que cubren este requisito son:

* [SGI \- ESB \- SGP \- Personas \- Consultar campos alta](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-formly/sgi-esb-sgp-personas-consultar-campos-alta.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-formly/sgi-esb-sgp-personas-consultar-campos-alta.md")
	+ Se ha de llamar en primer lugar para poder pintar por pantalla el formulario de introducción de datos de alta.
* [SGI \- ESB \- SGP \- Personas \- Dar de alta](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-formly/sgi-esb-sgp-personas-dar-de-alta.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-formly/sgi-esb-sgp-personas-dar-de-alta.md")  

	+ Se llamará una vez el usuario completa los datos del formulario de alta.

Para cada implantación en particular se implementará un API específico o a medida, pero tendiendo a que sea igual o compatible en la medida de lo posible al propio del SGI, para así poder agilizar las integraciones.

El dinamismo o adaptación de los formularios dinámicos de solicitud de alta para las personas se logrará mediante una definición del interface de comunicación entre el ESB del SGI y las APIs universitarias donde se intercambien mensajes en formato JSON, manteniendo así la firma de los servicios constante aunque el contenido del mensaje pudiese variar.

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión de Personas para la implantación específica en la Universidad de Murcia: [Sistema de gestión de Personas (RRHH) (UM \- SGI \- ESB \- SGP)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-de-gestion-de-personas-rrhh-um-sgi-esb-sgp/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-de-gestion-de-personas-rrhh-um-sgi-esb-sgp/index.md").

  








### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









