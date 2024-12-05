# Hércules : CU\-CSP\-1100\-001 Modificar solicitud \- Guardar



### Descripción

Funcionalidad que se debe de realizar cuando se guarda una solicitud

### Actores

#### Actor principal

CT\-CSP\-001\-Investigador,ACT\-CSP\-003\-Gestor, ACT\-CSP\-004\-Administrador

Usuario externo

### Precondiciones

El usuario ACT\-CSP\-003\-Gestor, ACP\-CSP\-004\-Administrador se autentica a través del usuario de dominio corporativo y tiene asociada una Unidad de gestión para las que está habilitado el permiso de modificación de la solicitud. El usuario ACT\-CSP\-001\-Investigador no se le aplica lo de la unidad de gestión.

La solicitud tiene el "activo" a "true".

El ACT\-CSP\-001\-Investigador o usuario externo podrá modificar cualquier campo de la solicitud mientras ésta se encuentre en estado "**Borrador**" y "**Rechazada**" y siempre que la solicitud haya sido creada por el propio ACT\-CSP\-001\-Investigador o usuario externo y no por ACT\-CSP\-003\-Gestor o ACT\-CSP\-004\-Administrador. Es decir, la referencia  asociada a la persona del ACT\-CSP\-001\-Investigador  o el número de documento del usuario externo debe coincidir con la referencia de la persona que figure como creador de la solicitud (campo "created by" de la tabla "solicitud").  


En los siguientes estados, ACT\-CSP\-001\-Investigador o usuario externo sólo podrá modificar la solicitud para añadir documentos (pantalla Documentos), siempre y cuando ha sido la persona que ha creado la solicitud:

* En subsanación
* Excluida provisional
* Excluida definitiva
* Denegada provisional
* Denegada

En el resto de escenarios, ACT\-CSP\-001\-Investigador o usuario externo accederá  a todos los datos de la solicitud en modo consulta. Estos escenarios son:

* Si la solicitud ha sido registrada por la Unidad de gestión (identificable a través del campo "creador" de la tabla Solicitud), siendo el ACT\- CSP\-001\-Investigador o el usuario externo el solicitante.
* Si la solicitud ha sido registrada por el propio ACT\- CSP\-001\-Investigador o usuario externo (identificable a través del campo "creador" de la tabla Solicitud) y la solicitud se encuentra en estado:
	+ Solicitada.
	+ Validada
	+ Presentada subsanación
	+ Admitida provisional
	+ Alegación fase admisión
	+ Admitida definitiva
	+ Recurso fase admisión
	+ Concedida provisional
	+ Alegación fase provisional
	+ Concedida provisional alegada
	+ Concedida provisional no alegada
	+ Denegada provisional alegada
	+ Denegada provisional no alegada
	+ Desistida.
	+ Reserva provisional
	+ En negociación
	+ Concedida
	+ Recurso fase concesión
	+ Reserva
	+ Firmada
	+ Renunciada

  


Los ACT\-CSP\-003\-Gestor y/o ACT\-CSP\-004\-Administrador podrán modificar cualquier dato de la solicitud, siempre y cuando ésta no tenga ya un proyecto asociado.

### Comprobaciones

#### Pestaña Datos generales

Comprobar los siguientes campos obligatorios:

* Solicitante
* Al menos uno de los dos campos siguientes:
	+ Convocatoria seleccionada a través del buscador del SGI (campo "convocatoria" de la tabla "solicitud")
	+ Campo "Identificación convocatoria" (campo "convocatoria externa" de la tabla "solicitud")
* Si no se ha completado el campo "convocatoria" desde el buscador del SGI se deberá de cumplimentar obligatoriamente:
	+ - Campo "Identificación convocatoria"
		- Campo "Tipo formulario solicitud": No se puede modificar su valor
		- Campo "Unidad de gestión": Sólo se puede modificar si el estado es "Borrador" y no se ha completado el campo "convocatoria"
* Si se ha completado el campo "convocatoria" desde el buscador del SGI:
	+ Si la convocatoria seleccionada tiene valor en el campo "código" ("identificación convocatoria" en el interface de usuario), se recuperará este valor de la convocatoria y se mostrará en el campo "identificación convocatoria" de la solicitud.
	+ Si la solicitud ya se ha guardado no se podrá modificar la convocatoria del SGI con la que se vincula.
* Si el campo "tipo formulario solicitud" toma el valor "grupo":
	+ El campo "tipo solicitud grupo" será obligatorio.
* Si el campo "tipo solicitud grupo" toma el valor "modificación datos grupo"
	+ El campo "grupo" será obligatorio (campo "grupo" tabla "solicitud grupo")

  


#### Pestaña Documentos

Para todos los estados distintos a "Borrador", "Desistida" o "Renunciada" comprobar:

* En el caso de que la solicitud tenga asociada una convocatoria, se tiene que comprobar que se hayan adjuntado todos los documentos requeridos de la solicitud indicados en la configuración de la solicitud de la convocatoria

#### Si la solicitud es tipo "proyecto":

* **Pestaña Datos proyecto \- Ficha general**

Para ACT\-CSP\-003\-Gestor y ACT\-CSP\-004\-Administrador se deben comprobar la obligatoriedad sobre los campos:

* + - campo "Proyecto coordinado"  obligatorio
		- campo "Coordinador Externo" si "Proyecto coordinado" toma el valor "Sí"
		- campo "Desglose de presupuesto por entidades"

El campo "Desglose de presupuesto por entidades" no se podrá modificar si EXISTEN REGISTROS EN LA PANTALLA DE DESGLOSE PRESUPUESTO (registros en la tabla "Solicitud proyecto presupuesto")

El campo "Proyecto coordinado" no se podrá modificar si existen datos de socios, es decir, existen registro en la tabla "solicitud proyecto socio").

El campo "Coordinador externo" no se podrá modificar de valor "No" a valor "Sí" en el caso de que ya existan registros en los subapartados "periodos de pago" y "periodos de justificación", tablas "solicitud proyecto periodo pago" y "solicitud proyecto periodo justificación" respectivamente. 

**Para****ACT\-CSP\-001\-Investigador no se realizarán comprobaciones de obligatoriedad sobre ningún campo de este pestaña**.

* **Pestaña Datos proyecto \- Equipo**
	+ Comprobar que se haya incluido al solicitante como miembro del equipo, con el rol  (tabla "rol proyecto" ) que tenga el campo "principal" a "true" y el campo "orden" a "1".
	+ Comprobaciones de cumplimiento de los **requisitos IP** establecidos por la convocatoria:
		- Si se ha vinculado la solicitud a una convocatoria del SGI (campo "convocatoria" de la tabla "solicitud" está informado) se realizarán las condiciones establecidas por la convocatoria en lo que a requisitos IP se refiere ([IU\-CSP\-0201\-010 \- Crear convocatoria \- Requisitos IP](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-010-crear-convocatoria-requisitos-ip.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-010-crear-convocatoria-requisitos-ip.md"), [IU\-CSP\-0204\-010 \- Modificar convocatoria \- Requisitos IP](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0204-modificar-convocatoria/iu-csp-0204-010-modificar-convocatoria-requisitos-ip.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0204-modificar-convocatoria/iu-csp-0204-010-modificar-convocatoria-requisitos-ip.md")).
			* Para cualquier persona que se añada al equipo con un rol de participación que tenga marcada la condición de "principal" (campo "principal" de la tabla "rol proyecto"):
				+ Se realizarán las comprobaciones especificadas en [CU\-CSP\-1100\-003 \- Comprobación requisitos IP de convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1100-gestion-de-solicitudes/cu-csp-1100-003-comprobacion-requisitos-ip.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1100-gestion-de-solicitudes/cu-csp-1100-003-comprobacion-requisitos-ip.md") para su "persona ref"
					- Si cualquiera de las comprobaciones anteriores no se cumple se mostrará  un mensaje de advertencia "No se cumplen los requisitos establecidos por la convocatoria para el rol investigador/a principal, ¿desea continuar registrando la solicitud?"
* + - * Si la convocatoria tiene establecido un límite para el número máximo de IPs (campo "num. máximo IP" de la tabla "requisito IP" de la convocatoria):
				+ Se comprobará que el número de miembros con rol principal que hayan sido añadidos sea menor o igual que el marcado por la convocatoria.
					- Si esta condición no se cumple se mostrará  una advertencia "Se superan el número de IPs establecidos por la convocatoria, ¿desea continuar incluyendo esta distribución de roles en el equipo?".
	+ Comprobaciones de cumplimiento de los requisitos **equipo** establecidos por la convocatoria:
		- Si se ha vinculado la solicitud a una convocatoria del SGI (campo "convocatoria" de la tabla "solicitud" está informado) se realizarán las condiciones establecidas por la convocatoria en lo que a requisitos equipo se refiere ([IU\-CSP\-0201\-011 \- Crear convocatoria \- Requisitos Equipo](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-011-crear-convocatoria-requisitos-equipo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-011-crear-convocatoria-requisitos-equipo.md"), [IU\-CSP\-0204\-011 \- Modificar convocatoria \- Requisitos Equipo](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0204-modificar-convocatoria/iu-csp-0204-011-modificar-convocatoria-requisitos-equipo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0204-modificar-convocatoria/iu-csp-0204-011-modificar-convocatoria-requisitos-equipo.md")).
			* Para cualquier persona que se añada al equipo con un rol de participación que no tenga marcada la condición de "principal" (campo "principal" de la tabla "rol proyecto"):
				+ Se realizarán las comprobaciones especificadas en [CU\-CSP\-1100\-004 \- Comprobación Requisitos equipo](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1100-gestion-de-solicitudes/cu-csp-1100-004-comprobacion-requisitos-equipo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1100-gestion-de-solicitudes/cu-csp-1100-004-comprobacion-requisitos-equipo.md") para su persona ref
					- Si cualquiera de las comprobaciones anteriores no se cumple para alguno de los miembros se mostrará un mensaje de advertencia "No se cumplen los requisitos establecidos por la convocatoria para el equipo, ¿desea continuar incluyendo este equipo de proyecto?" " .
			* Si la convocatoria tiene establecido requisitos para el ratio por sexo (campo "ratio sexo" de la tabla "requisito equipo"):
				+ Se deberá obtener el sexo, a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") de todos los miembros del equipo de proyecto, calculando el ratio mujeres/hombre y comprobando que éste sea mayor o igual que el establecido por la convocatoria).
				+ Si esta condición no se cumple se mostrará un mensaje "No se cumple el ratio por sexo establecido por la convocatoria, ¿desea continuar incluyendo este equipo de proyecto?."
			* Si existen restricciones sobre el número mínimo de proyectos competitivos para el equipo (campo "número mínimo competitivos" de la tabla "requisito equipo" está informado)
				+ Se deberán obtener todos los proyectos competitivos (tabla "proyecto", campo "clasificación CVN" con valor "proyectos competitivos") en los que haya participado cualquier persona del equipo de proyecto que no tenga un rol principal:
					- Para todos los miembros del equipo de la solicitud (tabla "solicitud proyecto equipo") que no tengan un rol principal (campo "rol proyecto" de la tabla "solicitud proyecto equipo" referencia a un registro de la tabla "rol proyecto" que tiene el flag "principal" a "false"):
						* Se deben obtener los proyectos competitivos en los que haya participado. Todos los proyectos de la tabla "proyecto" para los que el campo "clasificación CVN" tome valor "proyectos competitivos" y para los que la persona figure en "proyecto equipo" independientemente de las fechas de participación y del rol de participación.
					- Se deben sumar todos los proyectos así obtenidos para cada miembro del equipo de la solicitud,  sin contabilizar dos veces el mismo proyecto, es decir, si dos miembros del equipo participan en un mismo proyecto, éste contabilizará solo una vez.
					- Si la suma de proyectos obtenida es menor que el valor indicado por el campo "número mínimo competitivos" de la tabla "requisito equipo" se mostrará un mensaje de advertencia "No se alcanza el número mínimo de proyectos competitivos establecidos  por la convocatoria para el equipo, ¿desea continuar incluyendo este equipo de proyecto?."
			* Si existen restricciones sobre el número mínimo de proyectos no competitivos para el equipo (campo "número mínimo no competitivos" de la tabla "requisito equipo" está informado)
				+ Se deberán obtener todos los proyectos no competitivos (tabla "proyecto", campo "clasificación CVN" con valor "contratos, convenios, proyectos no competitivos") en los que haya participado cualquier persona del equipo de proyecto que no tenga un rol principal:
					- Para todos los miembros del equipo de la solicitud (tabla "solicitud proyecto equipo") que no tengan un rol principal (campo "rol proyecto" de la tabla "solicitud proyecto equipo" referencia a un registro de la tabla "rol proyecto" que tiene el flag "principal" a "false"):
						* Se deben obtener los proyectos no competitivos en los que haya participado. Todos los proyectos de la tabla "proyecto" para los que el campo "clasificación CVN" tome valor "contratos, convenios, proyectos no competitivos" y para los que la persona figure en "proyecto equipo" independientemente de las fechas de participación y del rol de participación.
					- Se deben sumar todos los proyectos así obtenidos para cada miembro del equipo de la solicitud, sin contabilizar dos veces el mismo proyecto, es decir, si dos miembros del equipo participan en un mismo proyecto, éste contabilizará solo una vez.
					- Si la suma de proyectos obtenida es menor que el valor indicado por el campo "número mínimo no competitivos" de la tabla "requisito equipo" se mostrará un mensaje de advertencia "No se alcanza el número mínimo de proyectos no competitivos establecidos  por la convocatoria para el equipo, ¿desea continuar incluyendo este equipo de proyecto?."
			* Si existen restricciones sobre el número máximo de proyectos competitivos en curso para el equipo (campo "número máximo competitivos activos" de la tabla "requisito equipo" está informado)
				+ Se deberán obtener todos los proyectos competitivos (tabla "proyecto", campo "clasificación CVN" con valor "proyectos competitivos") en los que esté participando cualquier persona del equipo de proyecto que no tenga un rol principal:
					- Para todos los miembros del equipo de la solicitud (tabla "solicitud proyecto equipo") que no tengan un rol principal (campo "rol proyecto" de la tabla "solicitud proyecto equipo" referencia a un registro de la tabla "rol proyecto" que tiene el flag "principal" a "false"):
						* Se deben obtener los proyectos competitivos en los que participe actualmente. Todos los proyectos de la tabla "proyecto" para los que el campo "clasificación CVN" tome valor "proyectos competitivos" y para los que la persona figure en "proyecto equipo" en el momento actual: "persona ref" figura en la tabla "proyecto equipo" debiendo estar la fecha actual comprendida en el rango de fechas marcado por los campos "fecha inicio" y "fecha fin". La ausencia de valor en "fecha fin" o en el par "fecha inicio" \- "fecha fin" se tomará como registro vigente en la fecha actual
					- Se deben sumar todos los proyectos así obtenidos para cada miembro del equipo de la solicitud,  sin contabilizar dos veces el mismo proyecto, es decir, si dos miembros del equipo participan en un mismo proyecto, éste contabilizará solo una vez.
					- Si la suma de proyectos obtenida es mayor que el valor indicado por el campo "número máximo competitivos" de la tabla "requisito equipo" se mostrará un mensaje de advertencia "Se supera el número máximo de proyectos competitivos en curso establecidos  por la convocatoria para el equipo, ¿desea continuar incluyendo este equipo de proyecto?."
			* Si existen restricciones sobre el número máximo de proyectos no competitivos en curso para el equipo (campo "número máximo no competitivos activos" de la tabla "requisito equipo" está informado)
				+ Se deberán obtener todos los proyectos no competitivos (tabla "proyecto", campo "clasificación CVN" con valor "contratos, convenios, proyectos competitivos") en los que esté participando cualquier persona del equipo de proyecto que no tenga un rol principal:
					- Para todos los miembros del equipo de la solicitud (tabla "solicitud proyecto equipo") que no tengan un rol principal (campo "rol proyecto" de la tabla "solicitud proyecto equipo" referencia a un registro de la tabla "rol proyecto" que tiene el flag "principal" a "false"):
						* Se deben obtener los proyectos no competitivos en los que participe actualmente. Todos los proyectos de la tabla "proyecto" para los que el campo "clasificación CVN" tome valor "contratos, convenios, proyectos no competitivos" y para los que la persona figure en "proyecto equipo" en el momento actual: "persona ref" figura en la tabla "proyecto equipo" debiendo estar la fecha actual comprendida en el rango de fechas marcado por los campos "fecha inicio" y "fecha fin". La ausencia de valor en "fecha fin" o en el par "fecha inicio" \- "fecha fin" se tomará como registro vigente en la fecha actual
					- Se deben sumar todos los proyectos así obtenidos para cada miembro del equipo de la solicitud,  sin contabilizar dos veces el mismo proyecto, es decir, si dos miembros del equipo participan en un mismo proyecto, éste contabilizará solo una vez.
					- Si la suma de proyectos obtenida es mayor que el valor indicado por el campo "número máximo competitivos" de la tabla "requisito equipo" se mostrará un mensaje de advertencia "Se supera el número máximo de proyectos competitivos en curso establecidos  por la convocatoria para el equipo, ¿desea continuar incluyendo este equipo de proyecto?."
* **Pestaña Datos proyecto \- Autoevaluación ética**
	+ No será obligatorio cumplimentar el apartado Autoevaluación ética, pero si se cumplimenta una pregunta será obligatorio cumplimentarlas todas si el estado no es "Borrador" ni "Desistida" ni "Renunciada".

#### Si la solicitud es tipo "RRHH":

* **Pestaña Solicitante:**
	+ Debe de estar informado el campo "solicitanteRef" de la tabla "Solicitud" o bien los campos "nombre", "apellidos", "tipo documento", "número documento", "teléfono" y "email" de la tabla "SolicianteExterno".
	+ Comprobaciones de cumplimiento de los **requisitos IP** establecidos por la convocatoria (solo si está informado el campo "solicitanteRef", es decir, si es no una solicitud de persona externa):
		- Si se ha vinculado la solicitud a una convocatoria del SGI (campo "convocatoria" de la tabla "solicitud" está informado) se realizarán las condiciones establecidas por la convocatoria en lo que a requisitos IP se refiere ([IU\-CSP\-0201\-010 \- Crear convocatoria \- Requisitos IP](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-010-crear-convocatoria-requisitos-ip.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-010-crear-convocatoria-requisitos-ip.md"), [IU\-CSP\-0204\-010 \- Modificar convocatoria \- Requisitos IP](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0204-modificar-convocatoria/iu-csp-0204-010-modificar-convocatoria-requisitos-ip.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0204-modificar-convocatoria/iu-csp-0204-010-modificar-convocatoria-requisitos-ip.md")).
			* Para el solicitante si no es un usuario externo:  
			
				+ Se realizarán las comprobaciones especificadas en [CU\-CSP\-1100\-003 \- Comprobación requisitos IP de convocatoria](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1100-gestion-de-solicitudes/cu-csp-1100-003-comprobacion-requisitos-ip.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1100-gestion-de-solicitudes/cu-csp-1100-003-comprobacion-requisitos-ip.md") para su "persona ref"
					- Si cualquiera de las comprobaciones anteriores no se cumple se mostrará  un mensaje de advertencia "No se cumplen los requisitos establecidos por la convocatoria para el rol investigador/a principal, ¿desea continuar registrando la solicitud?"
			* Si la convocatoria tiene establecido un límite para el número máximo de IPs (campo "num. máximo IP" de la tabla "requisito IP" de la convocatoria):
				+ No se podrá comprobar este cumplimiento porque no hay IP en las solicitudes de RRHH.
* **Pestaña Tutor/a.** Campo "tutor" obligatorio
* **Pestaña Memoria.** Campos "título del trabajo" y "Resumen" obligatorios




