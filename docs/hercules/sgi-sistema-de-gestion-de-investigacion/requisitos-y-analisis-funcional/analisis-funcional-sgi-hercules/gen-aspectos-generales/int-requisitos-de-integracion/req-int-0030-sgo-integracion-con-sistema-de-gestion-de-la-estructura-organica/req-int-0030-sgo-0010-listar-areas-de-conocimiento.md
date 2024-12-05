# Hércules : REQ\-INT\-0030\-SGO\-0010 \- Listar áreas de conocimiento













### Definición y objetivos

El ESB debe proporcionar al SGI el listado de áreas de conocimiento vigentes en la Universidad con su estructura jerárquica (rama de conocimiento, área, subárea ...). Será el ESB el encargado de redirigir esta petición al sistema universitario de gestión correspondiente.

Si no existe ningún sistema externo que proporcione este listado, se configurará en tiempo de implantación el listado adecuado a los requisitos de la Universidad.

### Descripción integración

Parámetros de entrada: 

* Identificador del nivel padre

Parámetros de salida: listado de áreas de conocimiento con el identificador de nivel padre indicado. Si se especifica que el nivel padre sea nulo o vacío, se devolverán las áreas de conocimiento de nivel raíz, esto es, que no tienen padre.

Para cada elemento se devolverá:

* Identificador
* Nombre
* Identificador del elemento padre.

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del Sistema de Gestión de la estructura Orgánica [SGI \- ESB \- SGO](https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGO "https://confluence.um.es/confluence/display/HERCULES/SGI+-+ESB+-+SGO").

El servicio concreto del API que cubre este requisito es [SGI \- ESB \- SGO \- Áreas de conocimiento \- Buscar](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgo/sgi-esb-sgo-areas-de-conocimiento-buscar.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/sgi-esb-sgo/sgi-esb-sgo-areas-de-conocimiento-buscar.md").

  








### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









