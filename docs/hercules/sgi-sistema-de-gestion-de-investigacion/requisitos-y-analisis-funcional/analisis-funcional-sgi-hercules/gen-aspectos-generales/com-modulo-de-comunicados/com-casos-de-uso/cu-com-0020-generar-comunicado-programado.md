# Hércules : CU\-COM\-0020 \- Generar comunicado programado







### Descripción

El sistema SGI debe poder generar comunicados de manera automática o, lo que es lo mismo, sin intervención manual por parte del usuario, para que los destinatarios que a cada uno apliquen puedan recibirlos por email. Este tipo de comunicados han de estar previamente a su necesidad de envío programados como tareas en el SGI.

### Actores

El propio sistema SGI.  


### Precondiciones

Para el envío/recepción de un comunicado automático, que siempre será por email, deben cumplirse una serie de condiciones:

* El comunicado ha de disponer de una plantilla de asunto y contenido configurada en el SGI.
* El comunicado ha de disponer de una lista de destinatarios configurados, por unidad de gestión, para ese tipo de comunicado.
* La persona o personas destinataria/s de los mismos deben disponer de un email operativo y, en el caso de que el destinatario sea una persona del SGP con el que el SGI se integra, este email debe estar además marcado como "principal". Puede haber destinatarios resueltos desde la configuración o que haya que resolver justo al momento del envío del mismo y no antes, en este caso, deben igualmente cumplir esta condición.

### Garantías de éxito (postcondiciones)

Todos los destinatarios configurados o resueltos en diferido asociados al comunicado reciben el comunicado por email en la fecha, con el asunto y con el contenido adecuado.

### Escenario principal (flujo básico) \- Programación de envío de comunicado

1. Dentro de la gestión que corresponda se necesita enviar un comunicado a un destinatario o lista de destinatarios concreta en una fecha futura programada.
2. El módulo que origina la necesidad del comunicado (CSP, ETI, PII) registra una tarea programada para la fecha y hora indicada y a la vez un email a enviar en el módulo de comunicados, enviando además los parámetros necesarios para que se sustituyan dentro de la plantilla de este tipo de comunicado.
3. El módulo de tareas programadas, llegada la fecha y hora programadas para el envío del comunicado, solicita al módulo de comunicados el envío del email previamente registrado .
4. El módulo de comunicados envía el email a los destinatarios indicados.  

	1. Si se han indicado destinatarios a resolver en diferido (checks IPs proyecto, IPs convocatoria, ... los responsables económicos, ...), previamente al envío ha de resolverse la lista completa de destinatarios.

### Escenario principal (flujo alternativo 1\) \- Envío de comunicado previamente programado

1. Existe una tarea programada ya preconfigurada en el producto para enviar un comunicado en una fecha y hora indicada y, opcionalmente, que se repita además este envío cada X tiempo.
2. El módulo de tareas programadas, llegada la fecha y hora programadas para el envío del comunicado, solicita al módulo que origina la necesidad del comunicado (CSP, ETI, PII) los parámetros necesarios para que se sustituyan en la plantilla y con ellos llama al módulo de comunicados para solicitar el envío del email.
3. El módulo de comunicados envía el email a los destinatarios indicados.  

	1. Si se han indicado destinatarios a resolver en diferido (checks IPs proyecto, IPs convocatoria, ... los responsables económicos, ...), previamente al envío ha de resolverse la lista completa de destinatarios.

### Escenario principal (flujo alternativo 2\) \- Fallo en el proceso de programación y/o generación de comunicado

1. Dentro de la gestión que corresponda se necesita enviar un comunicado a un destinatario o lista de destinatarios concreta en una fecha futura programada.
2. El módulo que origina la necesidad del comunicado (CSP, ETI, PII) registra una tarea programada para la fecha y hora indicada y a la vez un email a enviar en el módulo de comunicados, enviando además los parámetros necesarios para que se sustituyan dentro de la plantilla de este tipo de comunicado.
3. El registro del email o el de la tarea programada falla.
4. Se deja registro del error en los log y se hace rollback en el módulo invocante (CSP,ETI,PII) si es que el propio registro del email o la programación de la tarea  altera datos en esos módulos, esto es, no se registrará una entrada en la tabla que asocia una entidad de esos módulos con el email y con la tarea programada, ya que no se ha podido generar uno u otor. En ningún caso se dejará de realizar el "guardado" o "aplicación" de los posibles cambios que disparan el envío del comunicado en las entidades del módulo invocante  (CSP,ETI,PII) porque no se pueda registrar el email y/o registrar la tarea programada que dispara su envío. Por ejemplo, no se dejará de guardar un período de pago a un socio colaborador en un proyecto porque no se haya podido generar la tarea que programa el envío del email.






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









