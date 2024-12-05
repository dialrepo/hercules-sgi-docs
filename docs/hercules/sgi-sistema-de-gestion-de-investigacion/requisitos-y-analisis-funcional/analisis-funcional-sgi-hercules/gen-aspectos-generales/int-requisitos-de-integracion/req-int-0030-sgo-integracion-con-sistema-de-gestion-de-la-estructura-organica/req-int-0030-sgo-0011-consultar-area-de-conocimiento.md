# Hércules : REQ\-INT\-0030\-SGO\-0011 \- Consultar área de conocimiento







### Definición y objetivos

El ESB debe proporcionar al SGI el detalle de las áreas de conocimiento vigentes en la Universidad presentando la información tanto del propio área de conocimiento como de su estructura jerárquica (rama de conocimiento, área, subárea ...).

El SGI solamente almacenará referencias a las áreas de conocimiento que se prevé estén gestionadas en alguno de los sistemas de gestión universitarios. A partir de esta referencia, el ESB debe encargarse de proporcionar al SGI la información de detalle de la misma.

Si no existe ningún sistema externo que proporcione la gestión de las áreas de conocimiento, se configurará en tiempo de implantación la información de detalle adecuada a los requisitos de la Universidad.

  








### Descripción integración

Parámetro de entrada:

* Referencia de área de conocimiento (código de identificación del área de conocimiento para intercambio de información entre ESB y SGI).

Parámetros de salida: 

* Identificador
* Nombre
* Identificador del elemento padre. Para los elementos raíz tomará valor nulo.

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión de la estructura Orgánica [SGI \- ESB \- SGO](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGO "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGO").

El servicio concreto del API que cubre este requisito es [SGI \- ESB \- SGO \- Áreas de conocimiento \- Consultar detalle](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgo/sgi-esb-sgo-areas-de-conocimiento-consultar-detalle.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgo/sgi-esb-sgo-areas-de-conocimiento-consultar-detalle.md").

  








### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









