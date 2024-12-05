# Hércules : REQ\-INT\-0020\-SGP\-0035 \- Consultar detalle de persona







### Definición y objetivos

El ESB proporcionará el interface de integración para que desde el SGI se solicite a los sistemas de gestión de personas universitarios el consultar el detalle de los datos de las personas vinculadas con la Universidad que son visibles para el SGI. 

A través del formulario de búsqueda de personas común a todo el SGI [IU\-GEN\-0060 \- Búsqueda de personas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0060-busqueda-de-personas.md") se dará acceso mediante de un botón de acción "Ver" asociado a cada persona que aparezca como resultado de la búsqueda, que dará acceso al formulario de detalle específico de esa persona, que recogerá los campos necesarios y/o de interés  para su visualización de la persona en el SGI en el sistema de gestión de personas universitario.   








### Descripción integración

El SGI no dispondrá de un formulario propio para visualizar el detalle de una persona sino uno específico por implantación/universidad tal y como se describe en [IU\-GEN\-0062 \- Ver detalle \- Solicitar modificación de persona](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=IU-GEN-0062+-+Ver+detalle+-+Solicitar+modificaci%C3%B3n+de+persona&linkCreation=true&fromPageId=597853091 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=IU-GEN-0062+-+Ver+detalle+-+Solicitar+modificaci%C3%B3n+de+persona&linkCreation=true&fromPageId=597853091").

Los parámetros de entrada y salida a la hora de integrarse con los sistemas universitarios para la consulta del detalle de personas serán definidos en cada implantación/universidad en particular, puesto que dependen de las necesidades y restricciones tanto de sus usuarios finales como de sus sistemas de gestión de la información de personas.

Como entrada se tratará de tender a tener una petición lo más estandarizada o común, conteniendo generalmente únicamente el identificador de la persona en el sistema externo.

Como salida se tratará también de tender a tener una respuesta más estandarizada o común, como un mensaje con el resultado de la operación, por ejemplo, en caso de que se haya podido consultar el detalle de la persona, que se devuelvan todos los datos disponibles de la persona en el sistema de gestión de personas universitario y sino, un mensaje "No se han podido recuperar el detalle de la Persona" (o similar).  


### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión de Personas y, en concreto, de la relativa a servicios Formly: [SGI \- ESB \- SGP \- Servicios Formly](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-formly/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-formly/index.md").

Los servicios concretos del API que cubren este requisito son:

* [SGI \- ESB \- SGP \- Personas \- Consultar campos ver detalle](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-formly/sgi-esb-sgp-personas-consultar-campos-ver-detalle.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-formly/sgi-esb-sgp-personas-consultar-campos-ver-detalle.md")  

	+ Se ha de llamar en primer lugar para poder obtener los campos del detalle.
* [SGI \- ESB \- SGP \- Personas \- Consultar detalle](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-formly/sgi-esb-sgp-personas-consultar-detalle.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgp/sgi-esb-sgp-servicios-formly/sgi-esb-sgp-personas-consultar-detalle.md")  

	+ Se llamará una vez se tienen los campos del detalle para obtener el valor de cada uno y pintarlo por pantalla.

Para cada implantación en particular se implementará un API específico o a medida, pero tendiendo a que sea igual o compatible en la medida de lo posible al propio del SGI, para así poder agilizar las integraciones.

El dinamismo o adaptación de los formularios dinámicos de detalle para las personas se logrará mediante una definición del interface de comunicación entre el ESB del SGI y las APIs universitarias donde se intercambien mensajes en formato JSON, manteniendo así la firma de los servicios constante aunque el contenido del mensaje pudiese variar.

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión de Personas para la implantación específica en la Universidad de Murcia: [Sistema de gestión de Personas (RRHH) (UM \- SGI \- ESB \- SGP)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-de-gestion-de-personas-rrhh-um-sgi-esb-sgp/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-de-gestion-de-personas-rrhh-um-sgi-esb-sgp/index.md").

  








### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









