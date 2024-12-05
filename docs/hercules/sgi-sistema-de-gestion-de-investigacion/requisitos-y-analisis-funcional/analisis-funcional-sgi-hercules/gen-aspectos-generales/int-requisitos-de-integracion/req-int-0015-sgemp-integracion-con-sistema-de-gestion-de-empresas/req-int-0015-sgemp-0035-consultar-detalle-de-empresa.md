# Hércules : REQ\-INT\-0015\-SGEMP\-0035 \- Consultar detalle de empresa







### Definición y objetivos

El ESB proporcionará el interface de integración para que desde el SGI se solicite a los sistemas de gestión de empresas universitarios el consultar el detalle de los datos de las empresas vinculadas con la Universidad que son visibles para el SGI. 

A través del formulario de búsqueda de empresas común a todo el SGI [IU\-GEN\-0080 \- Búsqueda de empresas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/sha-buscadores-y-listados-comunes/iu-gen-0080-busqueda-de-empresas.md") se dará acceso mediante de un botón de acción "Ver" asociado a cada empersa que aparezca como resultado de la búsqueda, que dará acceso al formulario de detalle específico de esa empresa, que recogerá los campos necesarios y/o de interés  para su visualización de la empresa en el SGI en el sistema de gestión de empresas universitario.   


  








### Descripción integración

El SGI no dispondrá de un formulario propio para visualizar el detalle de una empresa sino uno específico por implantación/universidad tal y como se describe en [IU\-GEN\-0082 \- Ver detalle \- Solicitar modificación de empresa](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=IU-GEN-0082+-+Ver+detalle+-+Solicitar+modificaci%C3%B3n+de+empresa&linkCreation=true&fromPageId=597853093 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=IU-GEN-0082+-+Ver+detalle+-+Solicitar+modificaci%C3%B3n+de+empresa&linkCreation=true&fromPageId=597853093").

Los parámetros de entrada y salida a la hora de integrarse con los sistemas universitarios para la consulta del detalle de empresas serán definidos en cada implantación/universidad en particular, puesto que dependen de las necesidades y restricciones tanto de sus usuarios finales como de sus sistemas de gestión de la información de empresas.

Como entrada se tratará de tender a tener una petición lo más estandarizada o común, conteniendo generalmente únicamente el identificador de la empresa en el sistema externo.

Como salida se tratará también de tender a tener una respuesta más estandarizada o común, como un mensaje con el resultado de la operación, por ejemplo, en caso de que se haya podido consultar el detalle de la empresa, que se devuelvan todos los datos disponibles de la empresa en el sistema de gestión de empresas universitario y sino, un mensaje "No se han podido recuperar el detalle de la Empresa" (o similar).  


### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión de Personas y, en concreto, de la relativa a servicios Formly: [SGI \- ESB \- SGEMP \- Servicios Formly](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/sgi-esb-sgemp-servicios-formly/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/sgi-esb-sgemp-servicios-formly/index.md").

Los servicios concretos del API que cubren este requisito son:

* [SGI \- ESB \- SGEMP \- Empresas \- Consultar campos ver detalle](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/sgi-esb-sgemp-servicios-formly/sgi-esb-sgemp-empresas-consultar-campos-ver-detalle.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/sgi-esb-sgemp-servicios-formly/sgi-esb-sgemp-empresas-consultar-campos-ver-detalle.md")  

	+ Se ha de llamar en primer lugar para poder obtener los campos del detalle.
* [SGI \- ESB \- SGEMP \- Empresas \- Consultar detalle](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/sgi-esb-sgemp-servicios-formly/sgi-esb-sgemp-empresas-consultar-detalle.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/sgi-esb-sgemp-servicios-formly/sgi-esb-sgemp-empresas-consultar-detalle.md")  

	+ Se llamará una vez se tienen los campos del detalle para obtener el valor de cada uno y pintarlo por pantalla.

Para cada implantación en particular se implementará un API específico o a medida, pero tendiendo a que sea igual o compatible en la medida de lo posible al propio del SGI, para así poder agilizar las integraciones.

El dinamismo o adaptación de los formularios dinámicos de detalle para las empresas se logrará mediante una definición del interface de comunicación entre el ESB del SGI y las APIs universitarias donde se intercambien mensajes en formato JSON, manteniendo así la firma de los servicios constante aunque el contenido del mensaje pudiese variar.

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión de Empresas para la implantación específica en la Universidad de Murcia: [Sistema de Gestión de Empresas (UM \- SGI \- ESB \- SGEMP)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-de-gestion-de-empresas-um-sgi-esb-sgemp.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-de-gestion-de-empresas-um-sgi-esb-sgemp.md").

  








### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









