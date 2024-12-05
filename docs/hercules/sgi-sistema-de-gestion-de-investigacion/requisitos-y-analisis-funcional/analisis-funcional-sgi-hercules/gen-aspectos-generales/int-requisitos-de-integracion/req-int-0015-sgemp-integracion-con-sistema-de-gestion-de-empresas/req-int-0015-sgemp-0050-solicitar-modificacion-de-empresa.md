# Hércules : REQ\-INT\-0015\-SGEMP\-0050 \- Solicitar modificación de empresa







### Definición y objetivos

El ESB proporcionará el interface de integración para que desde el SGI se solicite a los sistemas de gestión de empresas universitarios la modificación de aquellas empresas que estén vinculadas con la Universidad. A través del formulario correspondiente el SGI recogerá los campos necesarios y/o de interés para la modificación de la empresa en el sistema o los sistemas de gestión de empresas de la universidad en la que se esté haciendo la implantación.

  








### Descripción integración

El SGI no dispondrá de un formulario propio para recoger los datos de modificación de una empresa sino uno específico por implantación/universidad tal y como se describe en [IU\-GEN\-0082 \- Ver detalle \- Solicitar modificación de empresa](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=IU-GEN-0082+-+Ver+detalle+-+Solicitar+modificaci%C3%B3n+de+empresa&linkCreation=true&fromPageId=597853088 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=IU-GEN-0082+-+Ver+detalle+-+Solicitar+modificaci%C3%B3n+de+empresa&linkCreation=true&fromPageId=597853088").

Los parámetros de entrada y salida a la hora de integrarse con los sistemas universitarios para la modificación de empresas serán definidos en cada implantación/universidad en particular, puesto que dependen de las necesidades y restricciones tanto de sus usuarios finales como de sus sistemas de gestión de la información de empresas.

Los parámetros de entrada de la integración vendrán determinados por el contenido del formulario de modificación específico para una implantación, más las información adicional no visible por pantalla que se pudiese necesitar enviar.

Como salida se tratará de tender a tener una respuesta más estandarizada o común, como un mensaje con el resultado de la operación, por ejemplo, en caso de que se haya podido modificar la empresa, que se devuelva un mensaje "Empresa modificada correctamente" (o similar) y en caso de fallo en la creación "No se ha podido modificar la Empresa en este momento" (o similar).

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión de Empresas y, en concreto, de la relativa a servicios Formly: [SGI \- ESB \- SGEMP \- Servicios Formly](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/sgi-esb-sgemp-servicios-formly/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/sgi-esb-sgemp-servicios-formly/index.md").

Los servicios concretos del API que cubren este requisito son:

* [SGI \- ESB \- SGEMP \- Empresas \- Consultar campos modificación](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/sgi-esb-sgemp-servicios-formly/sgi-esb-sgemp-empresas-consultar-campos-modificacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/sgi-esb-sgemp-servicios-formly/sgi-esb-sgemp-empresas-consultar-campos-modificacion.md")  

	+ Se ha de llamar en primer lugar para poder obtener los campos del formulario de modificación para permitir después la modificación de los mismos desde el formulario.
* [SGI \- ESB \- SGEMP \- Empresas \- Consultar detalle](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/sgi-esb-sgemp-servicios-formly/sgi-esb-sgemp-empresas-consultar-detalle.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/sgi-esb-sgemp-servicios-formly/sgi-esb-sgemp-empresas-consultar-detalle.md")
	+ Se llamará una vez se tienen los campos de la modificación para obtener el valor actual de cada uno y pintarlo por pantalla.
* [SGI \- ESB \- SGEMP \- Empresas \- Modificar](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/sgi-esb-sgemp-servicios-formly/sgi-esb-sgemp-empresas-modificar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgemp/sgi-esb-sgemp-servicios-formly/sgi-esb-sgemp-empresas-modificar.md")  

	+ Se llamará una vez el usuario completa los datos del formulario de modificación.

Para cada implantación en particular se implementará un API específico o a medida, pero tendiendo a que sea igual o compatible en la medida de lo posible al propio del SGI, para así poder agilizar las integraciones.

El dinamismo o adaptación de los formularios dinámicos de solicitud de modificación para las empresas se logrará mediante una definición del interface de comunicación entre el ESB del SGI y las APIs universitarias donde se intercambien mensajes en formato JSON, manteniendo así la firma de los servicios constante aunque el contenido del mensaje pudiese variar.  


En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión de Empresas para la implantación específica en la Universidad de Murcia: [Sistema de Gestión de Empresas (UM \- SGI \- ESB \- SGEMP)](/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-de-gestion-de-empresas-um-sgi-esb-sgemp.md "/hercules/sgi-sistema-de-gestion-de-investigacion/guia-de-implantacion-checklist/um-universidad-de-murcia/sistema-de-gestion-de-investigacion-apis-integracion/sistema-de-gestion-de-empresas-um-sgi-esb-sgemp.md").  


  








### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









