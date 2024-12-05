# Hércules : REQ\-INT\-0060\-EDMA\-CVN\-0003 \- Detalle Autorización







### Definición y objetivos

El SGI deberá disponer de una función que permita al módulo de CVN (parte del sistema EDMA) consultar el detalle de una solicitud de participación en proyectos europeos (previamente consultadas a través de la función de [REQ\-INT\-0060\-EDMA\-CVN\-0001 \- Autorizaciones modificadas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0060-edma-cvn-integracion-con-el-sistema-de-enriquecimiento-de-datos-y-metodos-de-analisis-y-gestion-de-cvn/req-int-0060-edma-cvn-0001-autorizaciones-modificadas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0060-edma-cvn-integracion-con-el-sistema-de-enriquecimiento-de-datos-y-metodos-de-analisis-y-gestion-de-cvn/req-int-0060-edma-cvn-0001-autorizaciones-modificadas.md"))

### Descripción integración

Parámetros de entrada:

* Identificador de la solicitud de autorización. Identificador interno de la solicitud de autorización.

Parámetros de salida:

* Identificador de la solicitud de autorización. Identificador interno de la solicitud de autorización.
* Referencia de la persona.  ACT\-CSP\-001\-Investigador a quien se le ha concedido la autorización. Se remitirá la referencia de ACT\-CSP\-001\-Investigador en el Sistema de gestión de personas.
* Título proyecto. Título del proyecto especificado en la solicitud de autorización.
* Entidad con la que participa. Referencia dentro del Sistema de gestión de empresas que identifica a la entidad en la que se desarrollará el proyecto, recogida en la solicitud de autorización.
* Referencia Responsable proyecto: Referencia dentro del Sistema de gestión de personas (en función de como haya sido introducido el dato en la solicitud de autorización) de la persona que se ha indicado que actuará como IP del proyecto externo
* Responsable proyecto. Nombre y apellidos de la persona que se ha indicado que actuará como IP del proyecto externo. Se informará este campo en los casos en los que el IP no este registrado en el Sistema de gestión de personas.

### Diseño técnico

En el siguiente enlace se muestra el diseño del modelo lógico y el diseño de la API del SGI para la gestión de autorizaciones y proyectos externos [ESB \- SGI \- Autorizaciones y notificaciones Proyectos externos](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/esb-sgi/esb-sgi-autorizaciones-y-notificaciones-proyectos-externos/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/esb-sgi/esb-sgi-autorizaciones-y-notificaciones-proyectos-externos/index.md").

El servicio concreto del API que cubre este requisito es [ESB \- SGI \- Autorizaciones \- Consultar detalle](/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/esb-sgi/esb-sgi-autorizaciones-y-notificaciones-proyectos-externos/esb-sgi-autorizaciones-consultar-detalle.md "/hercules/sgi-sistema-de-gestion-de-investigacion/diseno/componentes/sgi-esb/esb-sgi/esb-sgi-autorizaciones-y-notificaciones-proyectos-externos/esb-sgi-autorizaciones-consultar-detalle.md").

  








### Interfaces de usuario relacionados







### Informes relacionados







### Casos de uso relacionados









  








