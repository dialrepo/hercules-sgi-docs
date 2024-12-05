# Hércules : COM \- Comunicados \- Navegación





Importante

El planteamiento aquí descrito tuvo como objetivo la validación del mismo por parte de UM, siendo a continuación trasladado al Análisis particular de los comunicados de cada módulo y de los módulos que intervienen en la planificación, generación y envío de comunicados la información más detallada y/o los cambios surgidos con motivo del diseño o la implementación. Es por ello que es posible que alguna de la información aquí detallada no corresponda al 100% con la solución finalmente implementada, que sí está en cambio alineada con el resto de documentación de análisis.

Puede ser de interés en todo caso para ver el flujo funcional resumido para entender a alto nivel el funcionamiento de los comunicados en el SGI.

#### Planteamiento funcional general

* Se enviarán únicamente comunicados por email, no habrá notificación de los mismos ni gestión de mensajería interna en el SGI.
* Habrá únicamente 2 Tipos de comunicados:
	1. **Comunicados generados por acción del usuario**  
	
		1. El usuario marcará si quiere enviarlos o no para el caso de Hitos y Fases y se enviarán siempre que se cumplan las condiciones definidas funcionalmente en el resto de casos.
		2. Habrá **destinatarios predefinidos por configuración de la implantación** y, opcionalmente, **si el comunicado dispone de interfaz de usuario**, por ejemplo, en el caso de Hitos y Fases, el usuario podrá añadir **destinatarios adicionales**. En otros casos, irán a los destinatarios identificados funcionalmente y no se podrán eliminar ni añadir otros destinatarios desde la aplicación.
		3. El usuario, **en algunos comunicados concretos**, como Hitos y Fases, podrá indicar el **asunto** y la **fecha y hora en la que se quiere enviar el comunicado** además de modificar **parte del contenido del email**, aquella que no sea crítica para identificar la información esencial del comunicado (fechas, la entidad concreta que requiere que se comunique algo, etc ... no se podrían modificar). En otros casos se definirá un asunto y contenido para el email fijo y la fecha para el envío del aviso será casi inmediatamente (hay que tener en cuenta un pequeño retardo hasta que pase el proceso que enviará el email), esto es, al momento de producirse el evento, y no se podrán modificar por pantalla ninguno de estos datos (Ej.: enviar notificación sobre evaluación de revisión mínima por parte del gestor de ética).
		4. Aplican a:
			1. **CSP**:  
			
				1. **Convocatorias**:
					1. **Hitos** \- [IU\-CSP\-0201\-008 \- Crear convocatoria \- Hitos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-008-crear-convocatoria-hitos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-008-crear-convocatoria-hitos.md"), [IU\-CSP\-202\-009 \- Añadir hito a convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-009-anadir-hito-a-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-009-anadir-hito-a-convocatoria.md")
					2. **Fases** \- [IU\-CSP\-0201\-005 \- Crear convocatoria \- Fases,](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-005-crear-convocatoria-fases.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-005-crear-convocatoria-fases.md") [IU\-CSP\-202\-006 \- Añadir fase](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-006-anadir-fase-a-convocatoria.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-202-006-anadir-fase-a-convocatoria.md"),  [IU\-CSP\-0204\-005 \- Modificar convocatoria \- Fases](https://confluence.um.es/confluence/display/HERCULES/IU-CSP-0204-005+-+Modificar+convocatoria+-+Fases "https://confluence.um.es/confluence/display/HERCULES/IU-CSP-0204-005+-+Modificar+convocatoria+-+Fases")
				2. **Solicitudes:**
					1. **Hitos** \- [IU\-CSP\-0304\-005 \- Modificar Solicitud \- Modificar Hitos \- Unidades de gestión](https://confluence.um.es/confluence/pages/viewpage.action?pageId=90999976 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=90999976")
				3. **Proyectos:**
					1. **Hitos** \- [IU\-CSP\-0402\-010 \- Añadir\-modificar hito](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-010-anadir-modificar-hito-a-proyecto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-010-anadir-modificar-hito-a-proyecto.md")
					2. **Fases** \- [IU\-CSP\-0402\-009 \- Añadir\-modificar fase](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-009-anadir-modificar-fase-a-proyecto.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-009-anadir-modificar-fase-a-proyecto.md")
			2. **Invenciones:**
				1. **Solicitudes de protección** \- [IU\-PII\-0021\-001 \- Añadir\-modificar procedimiento](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0020-gestion-de-solicitudes-de-proteccion-de-invencion/iu-pii-0021-gestion-de-solicitudes-de-invencion-popups-auxiliares/iu-pii-0021-001-anadir-modificar-procedimiento.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0020-gestion-de-solicitudes-de-proteccion-de-invencion/iu-pii-0021-gestion-de-solicitudes-de-invencion-popups-auxiliares/iu-pii-0021-001-anadir-modificar-procedimiento.md")
			3. Para **Ética** se está pendiente de confirmar la necesidad de este tipo de comunicados, hay uno posible identificado \- Detallado en [ETI \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md").
	2. **Automáticos**
		1. Se generarán emails de aviso automáticamente, sin intervención previa del usuario, a unos **destinatarios, algunos** **de los cuales** **podrán ser configurados en la implantación** de antemano y **otros que serán prefijados funcionalmente.** El **envío** de estos comunicados **se realizará siempre** en unas **fechas fijadas** de antemano **funcionalmente o en la implantación**, según el caso (al inicio, cuando falten X días para el inicio o el fin, el día que finaliza, ...).
		2. Aplican a:
			1. **CSP**:
				1. **Solicitudes:**
					1. **Alta de solicitud de** **ética** \- [CU\-CSP\-1100 \-002\- Modificar solicitud \- Cambio de estado](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-002-+Modificar+solicitud+-+Cambio+de+estado "CU-CSP-1100 -002- Modificar                 solicitud - Cambio de estado")
					2. **Cambio de estado de solicitud** \- [CU\-CSP\-1100 \-002\- Modificar solicitud \- Cambio de estado](https://confluence.um.es/confluence/display/HERCULES/CU-CSP-1100+-002-+Modificar+solicitud+-+Cambio+de+estado "CU-CSP-1100 -002- Modificar                 solicitud - Cambio de estado")
1. 1. 1. 1. 1. **Proyectos**:  
				
					1. **Periodos de pago socios** \- [IU\-CSP\-0402\-007 \- Añadir\-modificar periodo pago a socio](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-007-anadir-modificar-periodo-pago-a-socio.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0402-007-anadir-modificar-periodo-pago-a-socio.md")
					2. **Periodos de justificación socios** \- [IU\-CSP\-0406\-011\-004\-001 \- Modificar proyecto \- Socio \- Periodo de justificación \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-011-modificar-proyecto-socios/iu-csp-0406-011-004-modificar-proyecto-socio-periodos-de-justificacion/iu-csp-0406-011-004-001-modificar-proyecto-socio-periodo-de-justificacion-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-011-modificar-proyecto-socios/iu-csp-0406-011-004-modificar-proyecto-socio-periodos-de-justificacion/iu-csp-0406-011-004-001-modificar-proyecto-socio-periodo-de-justificacion-datos-generales.md")
					3. **Calendario de justificación** \- [IU\-CSP\-0406\-029 \- Modificar proyecto \- Configuración económica \- Calendario justificación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-020-modificar-proyecto-configuracion-economica/iu-csp-0406-029-modificar-proyecto-configuracion-economica-calendario-justificacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-020-modificar-proyecto-configuracion-economica/iu-csp-0406-029-modificar-proyecto-configuracion-economica-calendario-justificacion.md")
					4. **Seguimiento científico** \- [https://confluence.um.es/confluence/pages/viewpage.action?pageId\=91008401](https://confluence.um.es/confluence/pages/viewpage.action?pageId=91008401 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=91008401")
					5. **Calendario de facturación** \- **Notificar IP** \-  [IU\-CSP\-0406\-028 \- Modificar proyecto \- Configuración económica \- Calendario facturación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-020-modificar-proyecto-configuracion-economica/iu-csp-0406-028-modificar-proyecto-configuracion-economica-calendario-facturacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-020-modificar-proyecto-configuracion-economica/iu-csp-0406-028-modificar-proyecto-configuracion-economica-calendario-facturacion.md")
					6. **Calendario de facturación** \- **Validar IP** \-  [IU\-CSP\-0406\-028 \- Modificar proyecto \- Configuración económica \- Calendario facturación](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-020-modificar-proyecto-configuracion-economica/iu-csp-0406-028-modificar-proyecto-configuracion-economica-calendario-facturacion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0400-gestion-de-proyectos/iu-csp-0406-modificar-proyecto/iu-csp-0406-020-modificar-proyecto-configuracion-economica/iu-csp-0406-028-modificar-proyecto-configuracion-economica-calendario-facturacion.md")
					7. **Proyectos externos:**
						1. **Modificar autorización participación proyecto externo \- Perfil investigador \- Presentar** \- [IU\-CSP\-0451\-006 \- Modificar autorización participación proyecto externo \- Perfil investigador](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0450-participacion-proyectos-externos/iu-csp-0451-autorizaciones-de-participacion-proyectos-externos/iu-csp-0451-006-modificar-autorizacion-participacion-proyecto-externo-perfil-investigador.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0450-participacion-proyectos-externos/iu-csp-0451-autorizaciones-de-participacion-proyectos-externos/iu-csp-0451-006-modificar-autorizacion-participacion-proyecto-externo-perfil-investigador.md")
						2. **Cambiar estado autorización participación proyecto externo \- Unidad gestión** \- [IU\-CSP\-0451\-009 \- Cambiar estado autorización participación proyecto externo \- Unidad gestión](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0450-participacion-proyectos-externos/iu-csp-0451-autorizaciones-de-participacion-proyectos-externos/iu-csp-0451-009-cambiar-estado-autorizacion-participacion-proyecto-externo-unidad-gestion.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0450-participacion-proyectos-externos/iu-csp-0451-autorizaciones-de-participacion-proyectos-externos/iu-csp-0451-009-cambiar-estado-autorizacion-participacion-proyecto-externo-unidad-gestion.md")
						3. **Añadir\-modificar certificado autorización participación proyecto externo** \- [IU\-CSP\-0451\-016 \- Añadir\-modificar certificado autorización participación proyecto externo](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0450-participacion-proyectos-externos/iu-csp-0451-autorizaciones-de-participacion-proyectos-externos/iu-csp-0451-016-anadir-modificar-certificado-autorizacion-participacion-proyecto-externo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0450-participacion-proyectos-externos/iu-csp-0451-autorizaciones-de-participacion-proyectos-externos/iu-csp-0451-016-anadir-modificar-certificado-autorizacion-participacion-proyecto-externo.md")
						4. **Recepción de notificaciones CVN de proyecto externo** \-  [IU\-CSP\-0452\-001 \- Búsqueda y listado de notificaciones CVN de proyecto externo](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0450-participacion-proyectos-externos/iu-csp-0452-notificaciones-cvn-de-proyectos-externos/iu-csp-0452-001-busqueda-y-listado-de-notificaciones-cvn-de-proyecto-externo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0450-participacion-proyectos-externos/iu-csp-0452-notificaciones-cvn-de-proyectos-externos/iu-csp-0452-001-busqueda-y-listado-de-notificaciones-cvn-de-proyecto-externo.md")
			2. **Ética:** Todos los comunicados salvo 1 \- Detallado en [ETI \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md")
			3. **Invenciones:**
				1. **Alta y modificación de solicitudes de protección \-** [IU\-PII\-0020\-0010\-001 Crear solicitud de protección \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0020-gestion-de-solicitudes-de-proteccion-de-invencion/iu-pii-0020-0010-crear-solicitud-de-proteccion/iu-pii-0020-0010-001-crear-solicitud-de-proteccion-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0020-gestion-de-solicitudes-de-proteccion-de-invencion/iu-pii-0020-0010-crear-solicitud-de-proteccion/iu-pii-0020-0010-001-crear-solicitud-de-proteccion-datos-generales.md") y [IU\-PII\-0020\-0030\-001 Ver detalle\-modificar solicitud de protección \- Datos generales](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0020-gestion-de-solicitudes-de-proteccion-de-invencion/iu-pii-0020-0030-ver-detalle-modificar-solicitud-de-proteccion/iu-pii-0020-0030-001-ver-detalle-modificar-solicitud-de-proteccion-datos-generales.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0020-gestion-de-solicitudes-de-proteccion-de-invencion/iu-pii-0020-0030-ver-detalle-modificar-solicitud-de-proteccion/iu-pii-0020-0030-001-ver-detalle-modificar-solicitud-de-proteccion-datos-generales.md")
					1. **Prioridad y presentación de fases nacionales regionales** \- [CU\-PII\-0010\-002 \- Solicitudes de protección \- Avisos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-casos-de-uso/cu-pii-0010-gestion-de-invenciones/sin-implementar-cu-pii-0010-002-solicitudes-de-proteccion-avisos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-casos-de-uso/cu-pii-0010-gestion-de-invenciones/sin-implementar-cu-pii-0010-002-solicitudes-de-proteccion-avisos.md")
					2. **Procedimientos de solicitudes** \- [IU\-PII\-0020\-0030\-002 Ver detalle\-modificar solicitud de protección \- Procedimientos](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0020-gestion-de-solicitudes-de-proteccion-de-invencion/iu-pii-0020-0030-ver-detalle-modificar-solicitud-de-proteccion/iu-pii-0020-0030-002-ver-detalle-modificar-solicitud-de-proteccion-procedimientos.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/pii-modulo-de-propiedad-industrial-e-intelectual/pii-interfaz-de-usuario/iu-pii-0020-gestion-de-solicitudes-de-proteccion-de-invencion/iu-pii-0020-0030-ver-detalle-modificar-solicitud-de-proteccion/iu-pii-0020-0030-002-ver-detalle-modificar-solicitud-de-proteccion-procedimientos.md")



#### Configuración de comunicados

Algunos de los tipos de comunicado que se pueden enviar desde cada módulo tendrán opción de ser configurados en el momento de la implantación del SGI en la Universidad y de ser modificados a posteriori accediendo a dicha configuración en el lugar donde se encuentre almacenada. En ningún caso se desarrollarán pantallas ni opciones de configuración dentro del SGI.

Para los tipos de comunicado que tengan opción a ser configurables se podrán definir:

* Los datos necesarios para el cálculo de la fecha de envío, si es que no es inmediata.
* El asunto y contenido por defecto para cada tipo de comunicado.
* La lista de emails genéricos de destino por defecto para cada tipo de comunicado y por unidad de gestión.

Al final de este documento en el apartado [Detalle de configuración de comunicados](#COMComunicadosNavegación-detalleconfigcom "#COMComunicadosNavegación-detalleconfigcom") se describe a más bajo nivel, pero manteniendo un contexto de modelo lógico de la información, cómo se realizaría por parte de un equipo técnico esta configuración para los diferentes tipos de comunicado.



#### Generación de comunicados

Se presentan a continuación casos de ejemplo de envío de comunicados que vienen a representar las dos opciones de comunicados soportadas en el SGI: semiautomáticos y automáticos. El funcionamiento sería extensible al resto de gestiones y entidades.

##### Comunicados generados por acción del usuario \- Creación/Modificación de un Hito que genera un comunicado o aviso

Se presentará el caso de ejemplo de hitos de una Convocatoria a través de una serie de pasos a realizar para poder configurar un aviso a enviar a consecuencia de un hito concreto.

###### Paso 1: Ir a opción de menú "Hitos" de una convocatoria

![](/attachments/597852453/598835259.png)

###### Paso 2:  Pulsar botón "Añadir hito"

Se mostrará la ventana emergente que permite añadir un nuevo hito a la convocatoria.

![](/attachments/597852453/598835258.png)

Para indicar si el hito ha de generar un aviso, se deberá marcar el check "Generar aviso", que estará desactivado si la fecha es anterior a la de hoy. Si se deja desmarcado, no se generará ningún aviso para ese hito de esa convocatoria.

![](/attachments/597852453/597866876.png)

###### Paso 3: Indicar que se quiere generar un aviso para el hito

Al marcar el check "Generar aviso", se mostrarán los datos por defecto del aviso o comunicado a enviar. En el momento de crear el hito se cargarán los destinatarios por defecto, en caso de haberse configurado.

![](/attachments/597852453/597866931.png)  


###### Paso 4: Modificar los datos por defecto del aviso

Los datos por defecto mostrados serán los descritos a continuación. Para cada uno se indica si se puede modificar y qué parte de los datos es modificable:

* **Fecha y hora de envío del email de aviso**: por defecto, la fecha del hito. La hora del envío será por defecto las 00:00, pero podrá ser modificada por el usuario.
* **Asunto del email de aviso**: se mostrará un asunto por defecto "**Convocatoria XXX \-  Tipo hito YYY**" adaptado a la convocatoria y tipo de hito que corresponda, pero podrá ser modificado por el usuario.
* **Contenido del email de aviso**: se mostrará un texto por defecto adaptado a la convocatoria y tipo de hito que corresponda, que sirve para identificar el aviso sin equívoco, al que se concatenerán a continuación las Observaciones:
	+ "Se comunica que con fecha XXX se alcanzará el tipo hito YYY de la convocatoria XXX. "
	+ "En el hito se han indicado las siguientes observaciones: \<Contenido del campo observaciones\>."
* **Destinatarios del email de aviso.** El comportamiento de esta sección será el siguiente:
	+ Si se quiere enviar el aviso a los IPs de las solicitudes relacionadas con la convocatoria se debe marcar el check "Añadir IPs solicitud". Este check se podrá marcar, pero los destinatarios no aparecerán cargados en la lista de Destinatarios, ya que se resolverán por parte del SGI quiénes son en la fecha concreta de envío del aviso.
	+ Si se quiere enviar el aviso a los IPs de los proyectos relacionados con las solicitudes de la convocatoria se debe marcar el check "Añadir IPs proyecto". Este check se podrá marcar, pero los destinatarios no aparecerán cargados en la lista de Destinatarios, ya que se resolverán por parte del SGI quiénes son en la fecha concreta de envío del aviso.
	+ El conjunto de destinatarios configurados por defecto, se cargará para cada hito en el momento de darlo de alta en función de la unidad de gestión que corresponda.
	+ El usuario podrá también añadir o eliminar destinatarios de esta sección. Los destinatarios a añadir podrán ser tanto personas, disponibles a través del propio componente "Destinatarios", que dispondrá de función de autocompletar, como del buscador de personas de la Universidad, u otros emails de destino añadidos manualmente.

También se podrán eliminar destinatarios, incluso de los predefinidos, para que no les llegue el aviso. Únicamente en el caso de los IPs de las solicitudes y los IPs de los proyectos relacionados se añadirán o eliminarán todos como destinatarios, marcando o desmarcando respectivamente los checks correspondientes aunque, como se comenta anteriormente, al no ser visibles en la lista de Destinatarios, para el usuario esto será transparente.  


Se muestra a continuación el Zoom sobre la sección de Destinatarios en un posible estado inicial para el ejemplo de un hito de una convocatoria:

![](/attachments/597852453/597866865.png)

###### Paso 5: añadir destinatarios adicionales a los predefinidos

Si se quiere que el aviso llegue, además de a los destinatarios por defecto, a un nuevo destinatario, se debe añadir este nuevo destinatario al conjunto de destinatarios.

En este caso, se plantean dos opciones:

1. Que el destinatario adicional se encuentre en los sistemas de gestión de personas de la Universidad. En este caso, hay 2 formas posibles de añadir destinatarios al comunicado:  

	1. Utilizando la función de autocompletar
	2. Utilizando el texto introducido \+ el botón buscar para abrir el buscador de personas con el resultado de la búsqueda por dicho texto ya cargada

![](/attachments/597852453/597866866.png)

2\. Que el destinatario adicional NO se encuentre en los sistemas de gestión de personas de la Universidad, bien porque no exista ninguna relación registrada con él en dichos sistemas bien porque el destinatario a añadir sea una lista de distribución o un email genérico y no propio de o asociado a una persona en concreto.

En el ejemplo a continuación vemos que ya existe un destinatario por defecto predefinido y vamos a ver cómo se añadiría uno nuevo.

En primer lugar, vamos a añadir un destinatario que está ya en los sistemas de la Universidad. Esta sería la secuencia de acciones a realizar:

1. Tecleamos parte de un dato (nombre, apellidos o email) por el que filtrar la persona a añadir en el componente "Destinatarios" en la zona donde aparece el texto "Añadir destinatario ...", por ejemplo, "jim":
2. Si se encuentra la persona entre las sugerencias del autocompletar, para completar la operación de añadir el destinatario, se debe seleccionar una persona y a continuación pulsar "click" con el ratón o bien pulsar la tecla "enter", con lo que la persona se añadirá a la lista de destinatarios.

![](/attachments/597852453/597866869.png)

      3\. Si en los 10 primeros resultados propuestos por el autocompletar no aparece la persona buscada, se deberán introducir más caracteres para refinar la búsqueda o bien se podrá pulsar sobre el botón "Buscar", que abrirá el buscador de personas lanzando por defecto la búsqueda con el texto que el usuario haya introducido en el cajetín de "Destinatario".

![](/attachments/597852453/597866872.png)

La pantalla completa quedaría de la siguiente forma:

![](/attachments/597852453/597866859.png)

4\. Se deberá pulsar a continuación el botón "Seleccionar" de la fila de la persona una vez la localicemos en el la lista de resultados o bien restringir más la búsqueda introduciendo más caracteres en el filtro hasta que se encuentre. Se debe seleccionar una persona que disponga de un email principal, ya que en otro caso, el comunicado no se podría generar.

5\.  Una vez se haya seleccionado el destinatario del aviso por la vía que haya sido posible, se debe pulsar el botón "Añadir destinatario" para que aparezca en la lista de Destinatarios. Vemos a continuación cómo quedaría el resultado del proceso.

![](/attachments/597852453/597866846.png)

![](/attachments/597852453/597866855.png)

En el caso de que un destinatario de este tipo no disponga de email principal, no se podrá seleccionar ni desde el buscador ni desde el componente autocompletar, presentándose al usuario como "Nombre Apellidos ()" en este último caso, reflejando así el que no tiene un email al que poder enviar los comunicados.



A continuación, vamos a añadir un destinatario que o bien no está relacionado en forma alguna con la Universidad, y por tanto no se encuentra registrado en sus sistemas, o bien que es una lista de correo o similar. En este caso, esta sería la secuencia de acciones a realizar:

1. Tecleamos el email completo en el componente "Destinatarios" en la zona donde aparece el texto "Añadir destinatario ...", por ejemplo, "[jimancas.lopez@educastur.org](mailto:jimancas.lopez@educastur.org "mailto:jimancas.lopez@educastur.org")":

![](/attachments/597852453/597866847.png)

       2\. Para completar la operación y que quede añadido a la lista de destinatarios, se debe pulsar la tecla "enter":

![](/attachments/597852453/597866848.png)

  


Para este tipo de destinatarios, si se introduce un email cuyo formato es inválido, éste no se añadirá a la lista.

Para ambos tipos de destinatario, si se trata de añadir un email que ya existía previamente en la lista, no se volverá a añadir.

  




###### Paso 6: eliminar destinatarios

Se pueden borrar destinatarios pulsando sobre el icono en forma de aspa (X) correspondiente a cada destinatario. De esta forma, dichos destinatarios no recibirán el aviso.

###### Paso 7: guardar los cambios realizados

Una vez completada la información del hito de la convocatoria e incluida la información del aviso a generar, se deben guardar los cambios. Para ello:

1. Pulsar el botón "Añadir" de la ventana emergente "Hito". El nuevo hito aparecerá en la lista de hitos de la convocatoria.
2. Pulsar el botón "Guardar" de la pantalla de gestión de Convocatoria. Los cambios realizados en el hito y en el aviso se almacenarán y el aviso se generará con la información indicada en la fecha y hora indicada y con destino los destinatarios indicados.

###### Paso 8: modificar el aviso/comunicado a generar por el hito

Una vez guardado el hito, si se quisiera modificar la información del aviso a generar sería posible realizarlo siempre y cuando la fecha y hora indicada para enviar el aviso no se hayan sobrepasado aún. Para ello, se debe ir a la opción de menú "Hitos" de la Convocatoria y pulsar sobre el icono editar del hito que se quiera modificar, con lo que se mostrará la misma ventana emergente que en el caso del alta y se podrán modificar los datos por parte del usuario. Si la fecha actual es superior a la programada para el aviso, no se podrá cambiar la información del aviso. En otro caso, será modificable con las mismas condiciones que en el caso de la creación descrito en puntos anteriores.

![](/attachments/597852453/598835233.png)

Caso de datos de aviso modificables:

###### 

Caso de datos de aviso NO modificables:

![](/attachments/597852453/597866850.png)

Pulsando sobre el botón "Guardar" de la ventana emergente de modificación del Hito y a continuación el botón "Guardar" de la Convocatoria, los cambios se almacenarían.

###### Paso 9: recepción del email de aviso por parte de los destinatarios

Cuando se alcance la fecha y hora programada para el envío del aviso, los destinatarios del mismo recibirán un email similar al siguiente:

![](/attachments/597852453/598835231.png)



##### Comunicados generados por acción del usuario \- Creación/Modificación de una Fase que genera un comunicado o aviso

Se presentará el caso de ejemplo de fases de una Convocatoria a través de una serie de pasos a realizar para poder configurar un aviso a enviar relacionado con una fase concreta. Los pasos son muy similares a los descritos para el caso de los hitos, por lo que en este caso se describirá en detalle en las pantallas únicamente aquello que difiere entre Hitos y Fases en cuanto a la generación del comunicado.

###### Paso 1: Ir a opción de menú "Fases" de una convocatoria

![](/attachments/597852453/598835214.png)

###### Paso 2:  Pulsar botón "Añadir fase"

Se mostrará la ventana emergente que permite añadir una nueva fase a la convocatoria. La diferencia con los Hitos es que en el caso de las fases hay un rango de fechas (inicio\-fin) en lugar de una única fecha.

![](/attachments/597852453/598835208.png)

Para indicar si la fase ha de generar un aviso, se deberá marcar el check "Generar aviso", que estará desactivado si la fecha de fin de la fase es anterior a la de hoy. Si se deja desmarcado, no se generará ningún aviso para esa fase de esa convocatoria.

###### Paso 3: Indicar que se quiere generar un aviso para la fase

Al marcar el check "Generar aviso", se mostrarán los datos por defecto del aviso o comunicado a enviar. En el caso de los comunicados de fases existirá la posibilidad de generar dos avisos.

![](/attachments/597852453/597868696.png)

Para poder generar un segundo aviso, se debe marcar el check "Generar segundo aviso", con lo que aparecerá un campo de fecha, "Fecha y hora de segundo envío", para informar cuándo se quiere hacer ese segundo aviso por email. Esta fecha tendrá que ser mayor que la del primer aviso.

![](/attachments/597852453/597884924.png)

###### Paso 4: Modificar los datos por defecto del aviso

Los datos por defecto mostrados serán los siguientes. Para cada uno se indica si se puede modificar y qué parte:

* **Primer aviso.** Es el que se activa marcando el check "Generar aviso" y además hace que se muestre el check "Generar segundo aviso", que estará desmarcado por defecto.
	+ **Fecha y hora de envío del email del primer aviso**: por defecto, la fecha de inicio de la fase. La hora del envío será por defecto las 00:00, pero podrá ser modificada por el usuario.
	+ **Asunto del email de aviso**: se mostrará un asunto por defecto "**Convocatoria XXX \-  Tipo fase YYY**" adaptado a la convocatoria y tipo de fase que corresponda, pero podrá ser modificado por el usuario.
	+ **Contenido del email de aviso**: se mostrará un texto por defecto compuesto por una parte "No modificable" adaptado a la convocatoria y tipo de fase que corresponda, que sirve para identificar el aviso sin equívoco, y una parte que el usuario podrá modificar:
		- "Se comunica que con fecha XXX da comienzo la fase YYY de la convocatoria XXX. " \- Parte del contenido NO modificable, se enviará siempre.
		- "En esta fase se han incluido las siguientes observaciones: \<Contenido del campo observaciones\>." \- Parte modificable o incluso se puede borrar si el usuario lo considera.
* **Segundo aviso.** Es el que se activa marcando el check "Generar segundo aviso" y además hace que se muestre el campo "Fecha y hora de segundo envío" para que el usuario introduzca manualmente cuándo quiere que se envíe ese segundo aviso.  

	+ En el caso del email del segundo aviso, se antepondrá automáticamente el texto "Segundo Aviso \- " al asunto, siendo por ejemplo, en este caso, "Segundo Aviso \- Convocatoria XXX \- Tipo fase YYY".
* **Destinatarios del email de aviso.** Aplicarán los mismos destinatarios al primer aviso que al segundo.Habrá 3 tipos de destinatarios:
	+ Si se quiere enviar el aviso a los IPs de las solicitudes relacionadas con la convocatoria se debe marcar el check "Añadir IPs solicitud".
	+ Si se quiere enviar el aviso a los IPs de los proyectos relacionados con las solicitudes de la convocatoria se debe marcar el check "Añadir IPs proyecto".
	+ Se cargará además el conjunto de destinatarios configurados por defecto. El usuario podrá añadir o eliminar destinatarios de esta sección. Los destinatarios a añadir podrán ser personas disponibles a través del buscador de personas de la Universidad (opción marcada por defecto) u otros emails de destino añadidos manualmente.

También se podrá añadir destinatarios adicionales o eliminar algún destinatario, incluso de los predefinidos, para que no les llegue el aviso. Únicamente en el caso de los IPs de las solicitudes y los IPs de los proyectos relacionados se añadirán o se eliminarán todos como destinatarios marcando o desmarcando respectivamente los checks correspondientes.  


###### Paso 5: añadir destinatarios adicionales

Este paso se realiza exactamente igual que en el caso de los hitos, por lo que se puede revisar su operativa en el ejemplo anterior.

###### Paso 6: eliminar destinatarios

Este paso se realiza exactamente igual que en el caso de los hitos, por lo que se puede revisar su operativa en el ejemplo anterior.

###### Paso 7: guardar los cambios realizados

Este paso se realiza exactamente igual que en el caso de los hitos, por lo que se puede revisar su operativa en el ejemplo anterior.

###### Paso 8: modificar el aviso/comunicado a generar por la fase

Una vez guardada la fase, si se quisiera modificar la información del aviso a generar sería posible realizarlo siempre y cuando dicha fecha y hora indicada para el envío del aviso no se hayan sobrepasado aún. Para ello, se debe ir a la opción de menú "Fases" de la Convocatoria y pulsar sobre el icono editar del hito que se quiera modificar, con lo que se mostrará la misma ventana emergente que en el caso del alta y se podrán modificar los datos por parte del usuario. Si la fecha actual es superior a la programada para el aviso, no se podrá cambiar la información del aviso. En otro caso, será modificable con las mismas condiciones que en el caso de la creación descrito en puntos anteriores.

![](/attachments/597852453/597884923.png)

Pulsando sobre el botón "Guardar" de la ventana emergente de modificación de la fase y a continuación el botón "Guardar" de la pantalla de convocatoria, los cambios se almacenarían.

###### Paso 9: recepción del email de aviso por parte de los destinatarios

Cuando se alcance la fecha y hora programada para el envío del primer aviso, los destinatarios del mismo recibirán un email similar al siguiente:

![](/attachments/597852453/598835201.png)

Y en el caso del segundo aviso, se recibiría un email similar al siguiente:

![](/attachments/597852453/598835202.png)



##### Generación de comunicados automáticos

En el caso de los comunicados automáticos, no existe una gestión de la información de los mismos visible por pantalla, sino que se utilizarán destinatarios, fechas y textos preconfigurados para su envío, que serán los que se definan funcionalmente por la Universidad o bien los preconfigurados, según el caso.

Se presentan a continuación varios casos de ejemplo de email de aviso. Al igual que en el caso de los comunicados generados por acción del usuario, para el resto de comunicados automáticos no presentados aquí el proceso sería similares a los del ejemplo.

###### Ejemplo 1: Email de aviso de cercanía de período de pago a socio

Ejemplo de comunicado automático que se envía 1 vez, unos días antes del final del período de pago y si no se ha registrado en el SGI indicador de haberlo realizado.

![](/attachments/597852453/597884925.png)

###### Ejemplo 2: Avisos de período de presentación de justificación de socio de un proyecto

Ejemplo de comunicado automático que se envía 2 veces, una unos días antes del inicio y otra unos días antes del final del período de presentación de la justificación de un socio.

####### Email de aviso de inicio de período de presentación de la justificación de un socio de un proyecto

![](/attachments/597852453/597866831.png)

####### Email de aviso de cercanía del fin de período de presentación de la justificación de un socio de un proyecto

![](/attachments/597852453/597866830.png)

###### Ejemplo 3: Avisos de período de presentación de documentación del seguimiento científico de un proyecto

Ejemplo de comunicado automático que se envía 2 veces, una unos días antes del inicio y otra unos días antes del final del período de presentación de la documentación de seguimiento científico de un proyecto.

####### Email de aviso de cercanía de inicio de período de presentación de la documentación de seguimiento científoco de un proyecto

![](/attachments/597852453/597866833.png)

####### Email de aviso de cercanía de fin de período de presentación de la documentación de seguimiento científoco de un proyecto

![](/attachments/597852453/597866832.png)

#### Detalle de configuración de comunicados

Se dispondrá de un catálogo con los diferentes **tipos de comunicado** que el SGI podrá enviar en forma de avisos por email y que estarán **preconfigurados en el SGI** con una vista a alto nivel de los datos similar a la siguiente:



| Tipo de comunicado | Tipo destinatarios | Periodicidad | Tipo preaviso | Días preaviso |
| --- | --- | --- | --- | --- |
| Comunicado para los hitos de las convocatorias | PRECONFIGURADOS, MANUALES Y AUTOMÁTICOS | PROGRAMADA |  |  |
| Comunicado para los hitos de las solicitudes | PRECONFIGURADOS, MANUALES Y AUTOMÁTICOS | PROGRAMADA |  |  |
| Comunicado para los hitos de los proyectos | PRECONFIGURADOS, MANUALES Y AUTOMÁTICOS | PROGRAMADA |  |  |
| Comunicado para las fases de las convocatorias | PRECONFIGURADOS, MANUALES Y AUTOMÁTICOS | PROGRAMADA |  |  |
| Comunicado para las fases de los proyectos | PRECONFIGURADOS, MANUALES Y AUTOMÁTICOS | PROGRAMADA |  |  |
| Comunicado de alta de solicitud de evaluación de ética desde CSP | AUTOMÁTICOS | INMEDIATA |  |  |
| Comunicado de cambio de estado de solicitud de estado A a estado B (1 comunicado por cambio de estado con condiciones/destinatarios/asunto/contenido distinto). | AUTOMÁTICOS | INMEDIATA |  |  |
| Comunicado de fin de período de pago a socios de proyectos | PRECONFIGURADOS | PROGRAMADA | DIAS HÁBILES | 7 |
| Comunicado de inicio de período de presentación de justificación de socios de proyectos | PRECONFIGURADOS | PROGRAMADA |  |  |
| Comunicado de fin de período de presentación de justificación de socios de proyectos | PRECONFIGURADOS | PROGRAMADA | DIAS HÁBILES | 3 |
| Comunicado de inicio de períodos de presentación de justificación del calendario de justificación. | PRECONFIGURADOS | MENSUAL |  |  |
| Comunicado de inicio de períodos de presentación de justificación del seguimiento científico \- UG. | PRECONFIGURADOS | MENSUAL |  |  |
| Comunicado de inicio de período de presentación de justificación del seguimiento científico \- IPs. | PRECONFIGURADOS Y AUTOMÁTICOS | PROGRAMADA | DIAS HÁBILES | 3 |
| Comunicado de fin de período de presentación de justificación del seguimiento científico \- IPs. | PRECONFIGURADOS Y AUTOMÁTICOS | PROGRAMADA | DIAS NATURALES | 3 |
| Comunicado de notificación al IP una factura del calendario de facturación | AUTOMÁTICOS | INMEDIATA |  |  |
| Comunicado de notificación a la UG de que el IP de un proyecto a validado una factura del calendario de facturación | PRECONFIGURADOS Y AUTOMÁTICOS | INMEDIATA |  |  |
| Comunicado de presentación de una solicitud de autorización de participación en un proyecto externo | PRECONFIGURADOS | INMEDIATA |  |  |
| Comunicado de cambio de estado de una solicitud de autorización de participación en un proyecto externo | AUTOMÁTICOS | INMEDIATA |  |  |
| Comunicado de publicación de documento del certificado de autorización de participación en proyecto externo | AUTOMÁTICOS | INMEDIATA |  |  |
| Comunicado de la creación en el SGI de una notificación de CVN de  proyecto externo | PRECONFIGURADOS | INMEDIATA |  |  |

Valores posibles de "Tipo destinatarios":

* PRECONFIGURADOS: tiene únicamente los destinatarios que se preconfiguren.
* AUTOMÁTICOS: los destinatarios son los identificados funcionalmente y no se pueden configurar.
* MANUALES: tiene opción de añadir o eliminar destinatarios por pantalla.

Valores posibles de "Periodicidad":

* INMEDIATA: se envía en el momento que ocurre el evento que lo genera, normalmente, la acción del usuario. Puede no ser totalmente inmediata para contemplar un tiempo de retardo de los procesos de envío del email.
* PROGRAMADA:  se envía en la fecha programada restando los días de preaviso configurados
* MENSUAL: enviar una vez al mes recopilando todo lo que incluya el ciclo de 1 mes (contando como 1 mes meses completos: enero, febrero, ... NO calculando e días) hasta el siguiente aviso.

Valores posibles de "Tipo preaviso":

* DIAS\_HABILES: días hábiles contemplaría que los fines de semana no se contabilizan, no cubriría excluir festivos ni locales ni nacionales.
* DIAS\_NATURALES: días naturales no contemplaría ninguna excepción a la hora de contabilizar.
* MENSUAL: enviar una vez al mes recopilando todo lo que incluya el ciclo de 1 mes (contando como 1 mes meses completos: enero, febrero, ... NO calculando e días) hasta el siguiente aviso.

Se describen a continuación las características de cada tipo de comunicado de los listado anteriormente y cómo se deberían configurar en caso de que disponga de esta posibilidad.

Partiendo de ese catálogo, para cada tipo de comunicado y unidad de gestión se posible configurar unos emails de destino por defecto que se incluirán como destinatarios de los emails de aviso que se generen. A modo de ejemplo, una vista a alto nivel de los datos similar a la siguiente:



| Tipo de comunicado | Unidad gestión | Destinatarios |
| --- | --- | --- |
| Comunicado para los hitos de las convocatorias | UGI | [ugicon@um.es](mailto:ugicon@um.es "mailto:ugicon@um.es") |
| Comunicado para los hitos de las convocatorias | OTRI | [otricon@um.es](mailto:otricon@um.es "mailto:otricon@um.es"), [otriges@um.es](mailto:otriges@um.es "mailto:otriges@um.es") |
| Comunicado para los hitos de las convocatorias | OPE | [opecon@um.es](mailto:opecon@um.es "mailto:opecon@um.es") |
| ... | ... |  |

y en esa misma línea se irían configurando los demás tipos de comunicado.

#### Detalle de condiciones de generación y textos por tipo de aviso

##### Módulo CSP

Ver [CSP \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/index.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-comunicados/index.md")

##### Módulo Ética

Ver [ETI \- Comunicados](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/eti-modulo-de-etica/eti-comunicados.md")

##### Módulo Invenciones

Ver [PII \- Comunicados](https://confluence.um.es/confluence/pages/createpage.action?spaceKey=HERCULES&title=PII+-+Comunicados&linkCreation=true&fromPageId=597852453 "/confluence/pages/createpage.action?spaceKey=HERCULES&title=PII+-+Comunicados&linkCreation=true&fromPageId=597852453")




