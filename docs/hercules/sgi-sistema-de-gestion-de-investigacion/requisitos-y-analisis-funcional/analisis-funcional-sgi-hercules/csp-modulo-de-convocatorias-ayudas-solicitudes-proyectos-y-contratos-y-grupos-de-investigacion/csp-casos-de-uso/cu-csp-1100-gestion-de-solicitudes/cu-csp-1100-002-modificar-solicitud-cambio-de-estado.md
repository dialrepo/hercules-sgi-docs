# Hércules : CU\-CSP\-1100\-002 \- Modificar solicitud \- Cambio de estado



### Descripción

Comprobaciones y acciones a realizar en el cambio de estado de una solicitud.

### Actores

#### Actor principal

ACT\-CSP\-001\-Investigador, ACT\-CSP\-003\-Gestor, ACT\-CSP\-004\-Administrador

Usuario externo

### Escenario principal

1. El usuario accede al detalle de una solicitud y pulsará el botón de "Cambiar estado"
2. Se le mostrará una pantalla emergente con el estado actual, un combo con los posibles estados a los que puede pasar (los explicados en el apartado de Precondiciones) y un campo comentario.
3. El comportamiento y validaciones serán dependientes del actor que realice la acción:
	1. ACT\-CSP\-001\-Investigador (incluye al ACT\- CSP\-001\-Investigador tutor/a de una solicitud de RRHH) o usuario externo
	2. ACT\-CSP\-003\-Gestor / ACT\-CSP\-004\-Administrador
4. El envío de comunicados necesarios para muchos de los cambios de estado dependerá así mismo de diferentes condiciones según se detalla en el apartado **Solicitudes \- Cambio de estado**dentro de [CSP \- Comunicados](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados") y el flujo general de operativa de este tipo de comunicados en [CU\-COM\-0010 \- Generar comunicado de envío inmediato](https://confluence.um.es/confluence/pages/viewpage.action?pageId=131860109 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=131860109").

### Actor ACT\-CSP\-001\-Investigador o usuario externo

#### Precondiciones

* No hay cambios pendientes de Guardar.
* Si la solicitud ha sido creada por el ACT\-CSP\-003\-Gestor y/o ACT\-CSP\-004\-Administrador en nombre del ACT\- CSP\-001\-Investigador o del usuario externo, el ACT\- CSP\-001\-Investigador  o usuario externo  no podrá realizar ningún cambio de estado.
* ACT\- CSP\-001\-Investigador  tendrá activa la opción "Cambiar estado" cuando:
	+ la solicitud es de tipo "Proyecto" o "Grupo" y hubiera sido creada por el propio ACT\-CSP\-001\-Investigador:
		- campo "creador" de la tabla "solicitud" y campo "solicitante" de la misma tabla coinciden y son el propio ACT\-CSP\-001\-Investigador
		- campo "formularioSolicitud" es "Proyecto" o "Grupo"
	+ la solicitud es de tipo "RRHH" y hubiera sido creada por el propio ACT\-CSP\-001\-Investigador o usuario externo  
	
		- campo "creador" de la tabla "solicitud" y campo "solicitante" de la misma tabla coinciden y son el propio ACT\-CSP\-001\-Investigador o campo "creador" y "numero documento" del "solicitantes externo" coinciden
		- campo "formularioSolicitud" es "RRHH"
	+ la solicitud es de tipo "RRHH" y se trata del tutor/a de la solicitud:
		- campo "formularioSolicitud" es "RRHH"
		- campo "tutorRef" de la tabla "SolicitudRRHH" es el propio ACT\-CSP\-001\-Investigador
* ACT\- CSP\-001\-Investigador  o usuario externo sólo podrá realizar los siguientes cambios de estado
	+ De "Borrador" o "Rechazada" a "Solicitada" o "Desistida"
	+ De "En subsanación" a "Presentada subsanación" o "Desistida"
	+ De "Exluida provisional" a "Alegación fase admisión" o "Desistida"
	+ De "Excluida definitiva" a "Recurso fase admisión" o "Desistida"
	+ De "Denegada provisional" a "Alegación fase provisional" o "Desistida"
	+ De "Denegada" a "Recurso fase concesión" o "Desistida"
* Si el ACT\- CSP\-001\-Investigador es el  tutor/a de la solicitud de RRHH únicamente podrá hacer este estado
	+ De "Solicitada" a "Validada" o "Rechazada"

#### Validaciones

* En el caso de pasar  a estado **Solicitada** se realizarán las siguientes comprobaciones:
	+ **Pestaña documentos:** En el caso de que la solicitud tenga asociada una convocatoria, se tiene que comprobar que se hayan adjuntado todos los documentos requeridos de la solicitud indicados en la configuración de la solicitud de la convocatoria
	+ Si la solicitud es de **tipo "proyecto"** comprobar:
		- **Pestaña Equipo:** que exista al menos el solicitante como miembro del equipo
		- **Pestaña Autoevaluación ética**: No será obligatorio cumplimentar el apartado Autoevaluación ética, pero si se cumplimenta una pregunta será obligatorio cumplimentarlas todas. Ver apartado "Creación de petición de evaluación de ética (módulo ETI)".
		- Datos generales: Con perfil ACT\-CSP\-001\-Investigador no se deben aplicar las comprobaciones de obligatoriedad sobre el campo "proyecto coordinado" (ni sobre "coordinador externo") ni sobre "tipo presupuesto".
	+ Si la solicitud es de **tipo "RRHH"** comprobar:
		- **Pestaña Tutor/a.** Campo "tutor"
		- **Pestaña Requisitos convocatoria.**
			* En caso de que exista uno o varios requisitos de nivel académico en la convocatoria asociada a la solicitud (existan registros en la tabla "RequisitoIPNivelAcademico") se tiene que comprobar que se haya adjuntado el documento acreditativo de uno de los requisitos . (existe un registro en la tabla "SolicitudRRHHRequisitoNivelAcademico")
			* En caso de que exista uno o varios requisitos de categoría profesional en la convocatoria asociada a la solicitud (existan registros en la tabla "RequisitoIPCategoria") se tiene que comprobar que se haya adjuntado el documento acreditativo de uno de los requisitos . (existe un registro en la tabla "SolicitudRRHHRequisitoCategoria")
		- **Pestaña Memoria.** Campos "título del trabajo" y "Resumen"

### Actores ACT\-CSP\-003\-Gestor y ACT\-CSP\-004\-Administrador

#### Precondiciones

* No hay cambios pendientes de Guardar.
* ACT\-CSP\-003\-Gestor y/o ACT\-CSP\-004\-Administrador podrá realizar cualquier cambio de estado.

#### Validaciones

* En el caso de pasar  a un estado **diferente a Desistida, Renunciada** se realizarán las siguientes comprobaciones:
* **Pestaña documentos:** En el caso de que la solicitud tenga asociada una convocatoria, se tiene que comprobar que se hayan adjuntado todos los documentos requeridos de la solicitud indicados en la configuración de la solicitud de la convocatoria
* Si la solicitud es de **tipo "proyecto"** comprobar:
	+ **Pestaña Datos proyecto \- Ficha general:**   
	
		- campo "Proyecto coordinado"  obligatorio
		- campo "Coordinador Externo" si "Proyecto coordinado" toma el valor "Sí"
		- campo "tipo desglose"
	+ **Pestaña Equipo:** que exista al menos el solicitante como miembro del equipo
	+ **Pestaña Autoevaluación ética**: No será obligatorio cumplimentar el apartado Autoevaluación ética, pero si se cumplimenta una pregunta será obligatorio cumplimentarlas todas. Ver apartado "Creación de petición de evaluación de ética (módulo ETI)".
	+ Petición evaluación ética vinculada: Si la solicitud tiene una solicitud de evaluación de ética vinculada (el campo "petición evaluación ref" de la tabla "solicitud proyecto" está informado):
		- Si la solicitud se cambia al estado "Denegada
			* Se debe recuperar la petición de ética  y cambiar el valor del campo "estado financiación" a "Denegado"
		- Si la solicitud se cambia a unos de estos estados 
		
		
			* Concedida provisional
			* Concedida provisional alegada
			* Concedida provisional no alegada
			* Concedidase debe recuperar la  petición de ética  y cambiar el valor del campo "estado financiación" a "Concedido"
* Si la solicitud es de **tipo "RRHH"** comprobar:
	+ **Solicitante.** Tenga informado el campo "solicitanteRef" de la tabla "Solicitud" o los campos "nombre", "apellidos", "tipo documento", "número documento", "teléfono" y "email" de la tabla "SolicianteExterno"
	+ **Pestaña Tutor/a.** Campo "tutor"
	+ **Pestaña Memoria.** Campos "título del trabajo" y "Resumen"
	+ Si se pasa al estado **Solicitada**:
		- **Pestaña Requisitos convocatoria.**
			* En caso de que exista uno o varios requisitos de nivel académico en la convocatoria asociada a la solicitud (existan registros en la tabla "RequisitoIPNivelAcademico") se tiene que comprobar que se haya adjuntado el documento acreditativo de uno de los requisitos . (existe un registro en la tabla "SolicitudRRHHRequisitoNivelAcademico")
			* En caso de que exista uno o varios requisitos de categoría profesional en la convocatoria asociada a la solicitud (existan registros en la tabla "RequisitoIPCategoria") se tiene que comprobar que se haya adjuntado el documento acreditativo de uno de los requisitos . (existe un registro en la tabla "SolicitudRRHHRequisitoCategoria")

### ACT\-CSP\-001\-Investigador, ACT\-CSP\-003\-Gestor y ACT\-CSP\-004\-Administrador

#### Creación de petición de evaluación de ética (módulo ETI)

Si la solicitud es de tipo proyecto (campo "formulario solicitud" de la tabla "solicitud" toma el valor "proyecto"), se deberán realizar las comprobaciones correspondientes para crear la solicitud de evaluación de ética en el módulo "ETI".

* Si se ha cumplimentado el formulario del apartado Autoevaluación de ética:
	+ Si al menos una de las preguntas del formulario se ha respondido afirmativamente:
		- Si la solicitud CSP pasa de estado "Borrador" a cualquier otro estado distinto a "Renunciada" o "Desistida"
			* Se  debe de crear la petición de evaluación de Ética (en el módulo ETI), siempre y cuando no  hubiera sido ya creado, es decir, si el campo "petición evaluación ref" de la tabla "solicitud proyecto" tome valor "null":
				+ Se creará un registro en la tabla "petición evaluación" del módulo de ética ("ETI") con los siguientes campos (no se debe aplicar  obligatoriedad para los campos fecha inicio, fecha fin y título en el momento de la creación de petición de evaluación de ética ya que estos campos no existen aún en la solicitud de CSP):  
				
					- "solicitud Convocatoria Ref": identificador de la solicitud
					- "checklist Id": identificador del formulario de autochecklist
					- "persona ref": el campo "solicitante ref" de la "solicitud"
					- "título":  es el título del proyecto (campo "titulo" de la tabla "solicitud proyecto")
					- "existe financiacion": si hay entidades financiadoras (registros en la tabla "Convocatoria Entidad Financiadora" de la convocatoria asociada a la solicitud) valor "Sí", en otro caso valor "No"
					- "fuente financiación": se concatenará el campo "nombre" de la entidad de los registros que existan en la tabla "Convocatoria Entidad Financiadora" de la convocatoria asociada a la solicitud (en caso de que la solicitud tenga asociada una convocatoria, sino se quedará vacío el campo). Los nombre de las entidades financiadoras  se separarán por ","
					- "estado financiación" : valor "Solicitado"
					- "importe financiación": la suma de los importes de los conceptos de gastos de todas las entidades financiadoras de la convocatoria (suma del campo "importe solicitado" de los registros de la tabla "solicitud proyecto presupuesto" cuyo campo "financiación ajena" \= "false")
					- "resumen": campo "resultados previstos" de la tabla "solicitud proyecto"
					- "objetivos": campo "objetivos" de la tabla "solicitud proyecto"
					- Copiar el equipo de la solicitud de CSP  (campo "personaRef" de la tabla "SolicitudProyectoEquipo") al equipo de la petición de evaluación de ética (campo "usuarioRef" de la tabla "EquipoTrabajo"). En caso de que en CSP exista mas de una vez la persona en rangos distintos únicamente se copiará una vez al equipo de ética.
				+ Crear aviso o comunicado en el módulo COM  [CU\-COM\-0010 \- Generar comunicado de envío inmediato](https://confluence.um.es/confluence/pages/viewpage.action?pageId=131860109 "https://confluence.um.es/confluence/pages/viewpage.action?pageId=131860109") para indicar al solicitante de que se le ha creado una solicitud de petición de evaluación de ética. (Ver apartado **Solicitudes \- Alta de solicitud de petición de evaluación de ética**dentro de [CSP \- Comunicados](https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados "https://confluence.um.es/confluence/display/HERCULES/CSP+-+Comunicados")).
				+ Será necesario guardar la referencia a la solicitud a Ética en  el campo "petición evaluación ref" de la tabla "solicitud proyecto" para que no se puedan modificar las respuestas una vez creada la petición de evaluación en el módulo de ética y no se vuelva a crear.

  





