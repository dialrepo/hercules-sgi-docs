# Hércules : IU\-CSP\-0304\-007 \- Modificar solicitud \- Cambiar estado \- Investigador



## Formulario Cambiar estado

El ACT\- CSP\-001\-Investigador solo tendrá activa la opción "Cambiar estado" cuando:

* la solicitud es de tipo "Proyecto" o "Grupo" y hubiera sido creada por el propio ACT\-CSP\-001\-Investigador:
	+ campo "creador" de la tabla "solicitud" y campo "solicitante" de la misma tabla coinciden y son el propio ACT\-CSP\-001\-Investigador
	+ campo "formularioSolicitud" es "Proyecto" o "Grupo"
* la solicitud es de tipo "RRHH" y hubiera sido creada por el propio ACT\-CSP\-001\-Investigador o ACT\-CSP\-003\-InvestigadorExterno  

	+ campo "creador" de la tabla "solicitud" y campo "solicitante" de la misma tabla coinciden y son el propio ACT\-CSP\-001\-Investigador o campo "creador" es vacío si un usuario externo
	+ campo "formularioSolicitud" es "RRHH"
* la solicitud es de tipo "RRHH" y se trata del tutor/a de la solicitud:
	+ campo "formularioSolicitud" es "RRHH"
	+ campo "tutorRef" de la tabla "SolicitudRRHH" es el propio ACT\-CSP\-001\-Investigador

Las solicitudes asociadas a ACT\-CSP\-001\-Investigador pero creadas por ACT\-CSP\-003\-Gestor y/o ACT\-CSP\-004\-Administrador, no pueden ser modificadas por ACT\-CSP\-001\-Investigador que tampoco podrá cambiar el estado de las mismas.

Las solicitudes asociadas a ACT\-CSP\-002\-InvestigadorExterno pero creadas por ACT\-CSP\-003\-Gestor y/o ACT\-CSP\-004\-Administrador, no pueden ser modificadas por ACT\-CSP\-002\-InvestigadorExterno que tampoco podrá cambiar el estado de las mismas.

Los cambios de estado permitidos para ACT\-CSP\-001\-Investigador cuando la solicitud ha sido creada por él mismo son:

* De "Borrador" a "Solicitada" o "Desistida".
* De "En subsanación" a "Presentada subsanación" o "Desistida".
* De "Excluida provisional" a "Alegación fase admisión" o "Desistida".
* De "Excluida definitiva" a "Recurso fase admisión" o "Desistida".
* De "Denegada provisional" a "Alegación fase provisional" o "Desistida".
* De "Denegada" a "Recurso fase concesión" o "Desistida".

  


Los cambios de estado permitidos para ACT\-CSP\-002\-InvestigadorExterno cuando la solicitud ha sido creada por él mismo son:

* De "Borrador" a "Solicitada" o "Desistida".
* De "En subsanación" a "Presentada subsanación" o "Desistida".
* De "Excluida provisional" a "Alegación fase admisión" o "Desistida".
* De "Excluida definitiva" a "Recurso fase admisión" o "Desistida".
* De "Denegada provisional" a "Alegación fase provisional" o "Desistida".
* De "Denegada" a "Recurso fase concesión" o "Desistida"

  


Los cambios de estado permitidos para ACT\-CSP\-001\-Investigador cuando es el "tutor"  son:  


* De "Solicitada" a "Validada" o "Rechazada"



|  | | | |
| --- | --- | --- | --- |
| Acciones | Descripción | Enlace CU. | Permisos |
| Cambiar estado solicitud | Se abre una pantalla emergente para seleccionar el nuevo estado y añadir en caso necesario el comentario | El botón solo estará habilitado si:* no se han realizado cambios en los datos de la solicitud que estén pendientes de guardar. * la solicitud ha sido creada por ACT\-CSP\-001\-Investigador (o por ACT\-CSP\-002\-InvestigadorExterno cuando corresponda) y no por ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador ( para realizar esta comprobación deberá comprobarse que el campo "solicitante" de la tabla "solicitud" y el campo "creador" de la misma tabla referencian a la misma persona ) o el ACT\-CSP\-001\-Investigador es el "tutor ref" de la tabla "solicitud RRHH"  El botón dispondrá de un tooltip que se mostrará al pasar el ratón por encima. El contenido de este tooltip mostrará el estado actual de la solicitud. El formato de la información será "Estado actual: " \+ valor del estado. El estado actual se recuperará a través del campo "estado" de la tabla "solicitud".Al pulsar sobre el botón "Cambiar estado solicitud" se mostrará la pantalla [IU\-CSP\-0304\-008 \- Cambiar estado](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0304-modificar-solicitud/iu-csp-0304-008-cambiar-estado.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0300-gestion-de-solicitudes/iu-csp-0304-modificar-solicitud/iu-csp-0304-008-cambiar-estado.md")Ver condiciones y comprobaciones en [CU\-CSP\-1100\-002 \- Modificar solicitud \- Cambio de estado](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1100-gestion-de-solicitudes/cu-csp-1100-002-modificar-solicitud-cambio-de-estado.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1100-gestion-de-solicitudes/cu-csp-1100-002-modificar-solicitud-cambio-de-estado.md") | CSP\-SOL\-INV\-ERETI\-PEV\-MOD\-C |
| Cancelar | Retorna al formulario de la solicitud, sin salvar los posibles cambios. |  |  |

### Permisos de acceso a la pantalla

#### Por actor

#### Todos los permisos de acceso




