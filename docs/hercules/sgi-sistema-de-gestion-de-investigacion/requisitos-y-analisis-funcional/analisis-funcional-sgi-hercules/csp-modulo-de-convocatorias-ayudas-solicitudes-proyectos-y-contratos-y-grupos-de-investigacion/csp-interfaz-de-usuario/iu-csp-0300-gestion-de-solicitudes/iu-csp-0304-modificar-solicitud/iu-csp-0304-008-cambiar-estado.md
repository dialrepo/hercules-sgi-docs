# Hércules : IU\-CSP\-0304\-008 \- Cambiar estado



## Formulario Cambiar estado

Formulario para seleccionar el nuevo estado e introducir el comentario asociado al cambio de estado para el perfil Investigador



|  | | |
| --- | --- | --- |
| Nombre | Tipo | Características / Notas |
| Estado actual | Modo consulta | El estado actual de la solicitudSe corresponde con el campo "estado" de la tabla "estado solicitud" para el registro más reciente (ordenados por el campo "fecha estado") |
| Nuevo estado | SelectorTexto cortoObligatorio | Desplegable con los estados de la solicitud.PARA el ACT\-CSP\-001\-Investigador o usuario externo:* Si la solicitud esta en estado "Borrador" le saldrán los siguientes valores en el combo: 	+ Solicitada 	+ Desistida * Si la solicitud esta en estado "En subsanación" le saldrán los siguientes valores en el combo: 	+ Presentada subsanación 	+ Desistida * Si la solicitud esta en estado "ExcExluida provisional" le saldrán los siguientes valores en el combo: 	+ Alegación fase admisión 	+ Desistida * Si la solicitud esta en estado "Excluida definitiva" le saldrán los siguientes valores en el combo: 	+ Recurso fase admisión 	+ Desistida * Si la solicitud esta en estado "Denegada provisional" le saldrán los siguientes valores en el combo: 	+ Alegación fase provisional 	+ Desistida * Si la solicitud esta en estado "Denegada" le saldrán los siguientes valores en el combo: 	+ Recurso fase concesión 	+ Desistida"  Para el ACT\-CSP\-003\-Gestor, o ACT\-CSP\-004\-Administrador:* Le saldrán todos los estados posibles: 	+ Borrador. Estado inicial. Es el estado en el que por defecto se creará la solicitud en el SGI 	+ Solicitada. 	+ En subsanación 	+ Presentada subsanación 	+ Excluida provisional 	+ Admitida provisional 	+ Alegación fase admisión 	+ Admitida definitiva 	+ Excluida definitiva 	+ Recurso fase admisión 	+ Concedida provisional 	+ Denegada provisional 	+ Alegación fase provisional 	+ Concedida provisional alegada 	+ Concedida provisional no alegada 	+ Denegada provisional alegada 	+ Denegada provisional no alegada 	+ Desistida. 	+ Reserva provisional 	+ En negociación 	+ Concedida 	+ Denegada 	+ Recurso fase concesión 	+ Reserva 	+ Firmada 	+ Renunciada  Se corresponde con el campo "estado" de la tabla "estado solicitud" |
| Fecha | Fecha \+ horaObligatorio | El campo solo será editable para los perfiles ACT\-CSP\-003\-Gestor, ACT\-CSP\-004\-Administrador.* Formato fecha \+ hora. La fecha y hora se mostrarán inicializadas a la fecha y horas actuales.  Para ACT\-CSP\-001\-Investigador podrá hacerse visible el campo, pero no será editable. En este caso, se mostrará la fecha y hora actuales. Se corresponde con el campo "fecha estado" de la tabla "estado solicitud" |
| Comentario | Texto largoOpcional | Texto para explicar los motivos que justifican el paso al nuevo estadoSe corresponde con el campo "comentario" de la tabla "estado solicitud" |



| Acciones | Descripción | Enlace CU. |
| --- | --- | --- |
| Aceptar | Se hace el cambio de estado | Se creará un nuevo registro en la tabla "estado solicitud" con los valores:* Estado: Nuevo estado seleccionado * Fecha: fecha y hora actuales o las introducidas manualmente en este formulario a través del campo fecha (solo disponible para ACT\-CSP\-003\-Gestor  y ACTP\-CSP\-004\-Administrador) * Comentario: valor introducido en el formulario  El campo "estado" de la tabla "solicitud" pasará a referenciar al registro creado.Se aplicarán las validaciones y funcionalidad adicional recogida en [CU\-CSP\-1100\-002 \- Modificar solicitud \- Cambio de estado](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1100-gestion-de-solicitudes/cu-csp-1100-002-modificar-solicitud-cambio-de-estado.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1100-gestion-de-solicitudes/cu-csp-1100-002-modificar-solicitud-cambio-de-estado.md")Al realizar esta acción habrá que tener en cuenta que se generará un comunicado, en algunos casos concretos y según ciertas condiciones, según se describe en el apartado [Comunicados](#IUCSP0304008Cambiarestado-comunicados "#IUCSP0304008Cambiarestado-comunicados"). |
| Cancelar | Retorna al formulario de la solicitud, sin salvar los posibles cambios. |  |

### Comunicados

#### Cambios de estado

Muchos de los cambios de estado de las solicitudes deben ser comunicados como tales, bajo ciertas condiciones, a diferentes destinatarios según el caso. La descripción detallada para la generación de este tipo de comunicados se encuentra en el apartado **Solicitudes \- Cambio de estado**dentro de [CSP \- Comunicados](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados") y el flujo general de operativa de este tipo de comunicados en [CU\-COM\-0010 \- Generar comunicado de envío inmediato](https://confluence.um.es/confluence/pages/viewpage.action?pageId=131860109 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=131860109").

#### Alta de solicitud de petición de evaluación de ética

También es necesario avisar de la creación de una solicitud/petición de evaluación de ética. La descripción detallada para la generación de este tipo de comunicados se encuentra en el apartado **Solicitudes \- Alta de solicitud de petición de evaluación de ética**dentro de [CSP \- Comunicados](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados") y el flujo general de operativa de este tipo de comunicados en [CU\-COM\-0010 \- Generar comunicado de envío inmediato](https://confluence.um.es/confluence/pages/viewpage.action?pageId=131860109 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=131860109").




