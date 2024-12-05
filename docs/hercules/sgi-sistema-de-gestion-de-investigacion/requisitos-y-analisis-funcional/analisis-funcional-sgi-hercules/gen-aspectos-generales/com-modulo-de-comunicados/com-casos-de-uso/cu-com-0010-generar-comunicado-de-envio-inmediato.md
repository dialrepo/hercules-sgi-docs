# Hércules : CU\-COM\-0010 \- Generar comunicado de envío inmediato







### Descripción

El sistema SGI debe poder generar comunicados en el mismo momento que ocurre un evento para que los usuarios puedan recibirlos.

### Actores

Los emisores de comunicados concretos de cada módulo/gestión.  


### Precondiciones

Para el envío/recepción de un comunicado inmediato, que siempre será por email, deben cumplirse una serie de condiciones:

* el comunicado ha de disponer de una plantilla de asunto y contenido por defecto configurada en el SGI.
* el comunicado ha de disponer de una lista de destinatarios por defecto, por unidad de gestión, para ese tipo de comunicado.
* el usuario o usuarios destinatarios de los mismos debe disponer de un email operativo y, en el caso de que el destinatario sea una persona del SGP con el que el SGI se integra, que este email esté marcado como "principal".

### Garantías de éxito (postcondiciones)

Los destinatarios del comunicado reciben el comunicado por email de manera inmediatamente posterior a la ocurrencia del evento que lo origina.

### Escenario principal (flujo básico) \- Envío de comunicado

1. Dentro de la gestión que corresponda se necesita enviar un comunicado a un destinatario o lista de destinatarios concreta de manera "inmediata" tras el momento en que se produce el evento que lo dispara.
2. El módulo que origina la necesidad del  del comunicado (CSP, ETI, PII) genera el email a enviar en el módulo de comunicados, enviando además los parámetros necesarios para que se sustituyan dentro de la plantilla de este tipo de comunicado.
3. El módulo de comunicados registra los datos del comunicado y lo envía a los destinatarios indicados.

### Escenario principal (flujo alternativo 1\) \- Fallo en el proceso de envío de comunicado

1. Dentro de la gestión que corresponda se necesita enviar un comunicado a un destinatario o lista de destinatarios concreta de manera "inmediata" tras el momento en que se produce el evento que lo dispara.
2. El módulo que origina la necesidad del comunicado (CSP, ETI, PII) registra un email a enviar en el módulo de comunicados, enviando además los parámetros necesarios para que se sustituyan dentro de la plantilla de este tipo de comunicado.
3. El registro del email falla.
4. Se deja registro del error en los log y se hace rollback en el módulo invocante (CSP,ETI,PII) si es que el propio envío del email altera datos en esos módulos, esto es, no se registrará una entrada en la tabla que asocia una entidad de esos módulos con el email, ya que no se ha podido generar. En ningún caso se dejará de realizar el "guardado" o "aplicación" de los posibles cambios que disparan el envío del comunicado en las entidades del módulo invocante  (CSP,ETI,PII) porque no se pueda enviar el email. Por ejemplo, no se dejará de guardar un cambio de estado de la solicitud porque no se pueda enviar el email de aviso de que se ha producido este evento.






### Casos de uso relacionados

Manual

* [CU\-CSP\-1100 \-002\- Modificar solicitud \- Cambio de estado](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-002-+Modificar+solicitud+-+Cambio+de+estado "CU-CSP-1100 -002- Modificar solicitud - Cambio de estado") —
* [CU\-ETI\-0010\-008 \- Envío notificación convocatoria](https://confluence.um.es/confluence/pages/viewpage.action?pageId=87820468 "CU-ETI-0010-008 - Envío notificación convocatoria") —
* [CU\-ETI\-0020\-002 \- Evaluar memoria \- Guardar sin comentarios](https://confluence.um.es/confluence/display/HERCULES/CU-ETI-0020-002+-+Evaluar+memoria+-+Guardar+sin+comentarios "CU-ETI-0020-002 - Evaluar memoria - Guardar sin comentarios") —
* [CU\-ETI\-0020\-003 \- Evaluar memoria \- Guardar con comentarios](https://confluence.um.es/confluence/display/HERCULES/CU-ETI-0020-003+-+Evaluar+memoria+-+Guardar+con+comentarios "CU-ETI-0020-003 - Evaluar memoria - Guardar con comentarios") —
* [CU\-ETI\-0060\-005 \- Enviar a secretaría](https://confluence.um.es/confluence/pages/viewpage.action?pageId=87819172 "CU-ETI-0060-005 - Enviar a secretaría") —
* [CU\-ETI\-0070 \- Procesos batch](https://confluence.um.es/confluence/display/HERCULES/CU-ETI-0070+-+Procesos+batch "CU-ETI-0070 - Procesos batch") —
* [CU\-ETI\-0090\-002 \- Evaluar memoria seguimiento \- Guardar sin comentarios](https://confluence.um.es/confluence/display/HERCULES/CU-ETI-0090-002+-+Evaluar+memoria+seguimiento+-+Guardar+sin+comentarios "CU-ETI-0090-002 - Evaluar memoria seguimiento - Guardar sin comentarios") —
* [CU\-ETI\-0090\-003 \- Evaluar memoria seguimiento \- Guardar con comentarios](https://confluence.um.es/confluence/display/HERCULES/CU-ETI-0090-003+-+Evaluar+memoria+seguimiento+-+Guardar+con+comentarios "CU-ETI-0090-003 - Evaluar memoria seguimiento - Guardar con comentarios") —
* [CU\-PII\-0010\-002 \- Solicitudes de protección \- Avisos](https://confluence.um.es/confluence/pages/viewpage.action?pageId=89620721 "CU-PII-0010-002 - Solicitudes de protección - Avisos") —

Auto







### Interfaces relacionados

Manual

* [IU\-CSP\-0204\-008 \- Modificar convocatoria \- Hitos](https://confluence.um.es/confluence/display/HERCULES/IU-CSP-0204-008+-+Modificar+convocatoria+-+Hitos "IU-CSP-0204-008 - Modificar convocatoria - Hitos") —
* [IU\-CSP\-0302\-017 \- Añadir\-modificar hito](https://confluence.um.es/confluence/pages/viewpage.action?pageId=90999979 "IU-CSP-0302-017 - Añadir-modificar hito") —
* [CSP Proyectos, contratos, becas y ayudas](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-proyectos-contratos-becas-y-ayudas.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-proyectos-contratos-becas-y-ayudas.md") \-\-
* [IU\-CSP\-0304\-005 \- Modificar Solicitud \- Modificar Hitos \- Unidades de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=90999976 "IU-CSP-0304-005 - Modificar Solicitud - Modificar Hitos - Unidades de gestión") —
* [IU\-CSP\-0402\-009 \- Añadir\-modificar fase](https://confluence.um.es/confluence/pages/viewpage.action?pageId=91000320 "IU-CSP-0402-009 - Añadir-modificar fase") —
* [IU\-CSP\-0402\-010 \- Añadir\-modificar hito](https://confluence.um.es/confluence/pages/viewpage.action?pageId=91000397 "IU-CSP-0402-010 - Añadir-modificar hito") —
* [IU\-CSP\-202\-009 \- Añadir hito a convocatoria](https://confluence.um.es/confluence/pages/viewpage.action?pageId=89624403 "IU-CSP-202-009 - Añadir hito a convocatoria") —
* [IU\-ETI\-0030\-001 Búsqueda y listado de actas](https://confluence.um.es/confluence/pages/viewpage.action?pageId=85635457 "IU-ETI-0030-001 Búsqueda y listado de actas") —

Auto









