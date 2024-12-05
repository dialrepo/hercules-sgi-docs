# Hércules : CU\-CSP\-1200\-005 \- Crear proyecto desde solicitud concedida



### Descripción

Creación de un proyecto a partir de una solicitud concedida

### Actores

#### Actor principal

ACT\-CSP\-003\-Gestor de las unidades de gestión UGI, OTRI u OPE.

ACP\-CSP\-004\-Administrador de las unidades de gestión UGI, OTRI u OPE.

#### Personal involucrado e intereses

ACT\-CSP\-001\-Investigador que requiere que sus proyectos estén creados para su correcto seguimiento.

### Precondiciones

El usuario ACT\-CSP\-003\-Gestor, ACP\-CSP\-004\-Administrador se autentica a través del usuario de dominio corporativo y tiene asociada una Unidad de gestión para las que está habilitado el permiso de modificación de convocatoria.

Existe una solicitud en uno de de estos estados:

* Concedida provisional
* Concedida provisional alegada
* Concedida provisional no alegada
* Concedida

### Garantías de éxito (postcondiciones)

Se crea un proyecto:

* estado "Borrador"
* activo a "true"
* se rellena el campo "solicitud" con la solicitud concedida
* se rellena el campo "referencia en entidad convocante" con el valor recuperado desde la solicitud (en caso de estar informado)
* se rellena el campo "convocatoria" con la convocatoria relacionada con la solicitud en caso de tenerla.

### Escenario principal (flujo básico)

1. El usuario accede al detalle de una solicitud en estado Concedida
2. El usuario pulsa el botón  Crear Proyecto, se muestra una confirmación de que se va a crear el proyecto asociado
3. Se crea la entidad proyecto y las siguientes entidades relacionadas con el proyecto con los siguientes datos copiados de la convocatoria y/o de la solicitud:

**Datos generales**

* + Título (se recoge del título introducido en la ventana modal de creación del proyecto desde la solicitud)
	+ Acrónimo (si la solicitud tiene el campo "formulario" de tipo "Proyecto" de la solicitud, tabla "solicitud proyecto" campo "acrónimo", si es de tipo "RRHH" se deja vacío)
	+ Fecha inicio (se recoge de la fecha de inicio introducida en la ventana modal de creación del proyecto desde la solicitud)
	+ Fecha fin (de la solicitud: se calculará de forma automática a partir de la "Fecha de inicio" indicada en el campo fecha de inicio del proyecto y la "Duración en meses" indicada en los datos de la Solicitud, campo "duración" de la tabla "solicitud proyecto" menos 1 día.)
	+ Convocatoria (se asignará la convocatoria que tenga asignada la solicitud en caso de que la tuviese, si no será null)
	+ Identificación convocatoria ("convocatoria externa"), se recuperará el campo "código" de la tabla "convocatoria" de acuerdo al campo anterior.
	+ Convocatoria de excelencia ("excelencia"), se recuperará el campo "excelencia" de la tabla "convocatoria" de acuerdo al campo convocatoria.
	+ Solicitud (el identificador de la propia solicitud)
	+ Referencia en entidad convocante (campo "código externo") se recuperará el campo "código externo" de la tabla "solicitud proyecto", a partir del campo "solicitud"
	+ Unidad de gestión (de la solicitud, tabla "solicitud" campo "unidad gestión" )
	+ Modelo de ejecución (de la convocatoria asociada a la solicitud si la tiene, tabla "convocatoria" campo "modelo ejecución")
	+ Finalidad (de la convocatoria asociada a la solicitud si la tiene, tabla "convocatoria" campo "finalidad" )
	+ Ámbito geográfico (de la convocatoria asociada a la solicitud si la tiene, tabla "convocatoria" campo "ámbito geográfico")
	+ Proyecto coordinado (si la solicitud tiene el campo "formulario" de tipo "Proyecto" de la tabla "solicitud proyecto" campo "coordinado", si es de tipo "RRHH" se deja vacío)
	+ Coordinador Externo (si la solicitud tiene el campo "formulario" de tipo "Proyecto" de la tabla "solicitud proyecto" campo "coordinador externo", si es de tipo "RRHH" se deja vacío)
	+ Proyecto colaborativo (si la solicitud tiene el campo "formulario" de tipo "Proyecto" de la tabla "solicitud proyecto" campo "colaborativo", si es de tipo "RRHH" se deja vacío)

**Datos contexto**

Si la solicitud tiene el campo "formulario" de tipo "Proyecto":

* + Objetivos del proyecto (de la solicitud, tabla "solicitud proyecto" campo "objetivos")
	+ Justificación e interés (de la solicitud, tabla "solicitud proyecto" campo "intereses")
	+ Resultados esperados (de la solicitud, tabla "solicitud proyecto" campo "resultados previstos")
	+ Área temática: si se ha informado el campo "área temática" de la tabla "solicitud proyecto", se rellenará con dicho valor el campo "área temática" de la tabla "contexto proyecto".

Si la solicitud tiene el campo "formulario" de tipo "RRHH" dejar todos los campos a null y crear únicamente el registro.

**Áreas de conocimiento**

Si la solicitud tiene el campo "formulario" de tipo "Proyecto":

* + Se copian de las áreas definidas en la solicitud, por cada registro en la tabla "solicitud proyecto área" se creará un registro en la tabla "proyecto área" con la área indicada en la solicitud.

**Clasificaciones**

Si la solicitud tiene el campo "formulario" de tipo "Proyecto":

* + Se copian de las clasificaciones definidas en la solicitud, por cada registro en la tabla "solicitud proyecto clasificación" se creará un registro en la tabla "proyecto clasificación" con el identificador indicado en la solicitud.

**Entidades**

* + La entidad gestora del proyecto se tomará de la convocatoria asociada a la solicitud, si la tiene: Si el campo "convocatoria entidad gestora" está informado se rellenará la tabla "proyecto entidad gestora" con la "entidad Ref" de la convocatoria.
	+ Las entidades convocantes se tomarán de la solicitud y de la convocatoria asociada a ésta.
		- Se creará un registro en "proyecto entidad convocante"  por cada registro de la tabla "solicitud modalidad", tomando de esta tabla los valores de los campos "entidad Ref", "programa"  y "programa convocatoria".
		- Por cada registro que exista en "convocatoria entidad convocante" que no tenga su correspondiente registro en "solicitud modalidad" (la correspondencia se dará cuando los campos "entidad ref" y "programa convocatoria" de "solicitud modalidad" coincidan con los campos "entidad ref" y "programa" de la tabla "convocatoria entidad convocante" ) se creará un registro en "proyecto entidad convocante":
			* El campo "entidad ref"  de "proyecto entidad convocante" tomará el valor del campo "entidad ref" de "convocatoria entidad convocante"
			* El campo "programa convocatoria" de "proyecto entidad convocante" tomará el valor del campo "programa" de "convocatoria entidad convocante"
			* El campo "programa" de la tabla "solicitud modalidad" se dejará sin informar.
	+ Financiadoras
		- Si la solicitud se ha asociado a una convocatoria y ésta dispone de registros en "convocatoria entidad financiadora": se rellanará la tabla "proyecto entidad financiadora" con los campos "entidad Ref", "fuente financiación", "tipo financiación", "porcentaje financiación"  e "importe financiación" de la convocatoria y el campo "ajena" con valor a "False" para indicar que son las entidades de la convocatoria.
		- Si la solicitud tiene el campo "formulario" de tipo "Proyecto":
			* A partir de la tabla "solicitud proyecto entidad financiadora ajena": se rellanará la tabla "proyecto entidad financiadora" con los campos "entidad Ref", "fuente financiación", "tipo financiación", "porcentaje financiación" e "importe financiación" de la solicitud  y el campo "ajena" con valor a "True"  para indicar que son las entidades ajenas de la convocatoria y creadas en la solicitud.

**Equipo**

Si la solicitud tiene el campo "formulario" de tipo "Proyecto":

* Se copian todos los miembros del equipo de la solicitud al proyecto. Por cada registro en la tabla "solicitud proyecto equipo" se crea un registro en la tabla del proyecto "proyecto equipo":
	+ Los campos "persona ref" y "rol proyecto" toman el mismo valor de la tabla "solicitud proyecto equipo"
	+ Los campo "fecha inicio" y "fecha fin"  de la tabla "proyecto equipo" se calcularán a partir de la fecha de inicio del proyecto y los meses de inicio y fin del miembro del equipo en la solicitud (campos "mes inicio" y "mes fin" de la tabla "solicitud proyecto equipo"). Si los campos "mes inicio" o "mes fin" no están informados no se realizará el cálculo de obtención de los campos "fecha inicio" y "fecha fin". Los criterios para la realización de este cálculo están recogidos en [CU\-CSP\-1200\-009 \- Calcular rango de fechas asociado a periodo](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1200-gestion-de-proyectos/cu-csp-1200-009-calcular-rango-de-fechas-asociado-a-periodo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1200-gestion-de-proyectos/cu-csp-1200-009-calcular-rango-de-fechas-asociado-a-periodo.md"). Sólo se copiarán aquellos miembros para los que la fecha de inicio calculada esté comprendida en el rango marcado por la fecha de inicio y fin del proyecto. En el caso que la fecha de inicio calculada sí encaje dentro del rango fecha inicio \- fecha fin del proyecto, pero no lo haga la fecha fin calculada d (que podría ser mayor que la fecha de fin del proyecto), se tomará como fecha fin del miembro, la fecha de fin del proyecto.

**Responsable económico**

Si la solicitud tiene el campo "formulario" de tipo "Proyecto":

* Se copia el responsable económico (o los responsables si en la solicitud ya se informaron de dos rangos de participación distinto para la figura del responsable económico). Por cada registro en la tabla "solicitud proyecto responsable económico" se crea un registro en la tabla del proyecto "proyecto responsable económico" con el mismo valor para el campo "personaRef"  recogido en la solicitud. Los campos  "fecha inicio" y "fecha fin"  de la tabla "proyecto responsable económico" se calcularán a partir del campo "fecha inicio" del proyecto y los meses de inicio y fin del responsable económico en la solicitud (campos "mes inicio" y "mes fin" de la tabla "solicitud proyecto responsable económico"). Los criterios para la realización de este cálculo están recogidos en [CU\-CSP\-1200\-009 \- Calcular rango de fechas asociado a periodo](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1200-gestion-de-proyectos/cu-csp-1200-009-calcular-rango-de-fechas-asociado-a-periodo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1200-gestion-de-proyectos/cu-csp-1200-009-calcular-rango-de-fechas-asociado-a-periodo.md"). Sólo se copiarán los responsables económicos para los que la fecha de inicio calculada esté comprendida en el rango marcado por la fecha de inicio y fin del proyecto. En el caso que la fecha de inicio calculada sí encaje dentro del rango fecha inicio \- fecha fin del proyecto, pero no lo haga la fecha fin calculada para el responsable (que podría ser mayor que la fecha de fin del proyecto), se tomará como fecha fin del responsable económico, la fecha de fin del proyecto.

**Socios**

Si la solicitud tiene el campo "formulario" de tipo "Proyecto":

* Se copian todos los socios de la solicitud al proyecto. Por cada registro en la tabla "solicitud proyecto socio" se crea un registro en la tabla del proyecto "proyecto socio" con los campos "persona Ref", "rol socio", "número investigadores",  "importe solicitado" e "importe presupuesto" indicados en la solicitud. Los campos "fechas inicio" y "fecha fin" de la tabla "proyecto socio" se calcularán a partir del campo "fecha inicio" de la tabla "proyecto" y los meses de inicio y fin del socio en la solicitud (campos "mes inicio" y "mes fin" de la tabla "solicitud proyecto socio"). Los criterios para la realización de este cálculo están recogidos en [CU\-CSP\-1200\-009 \- Calcular rango de fechas asociado a periodo](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1200-gestion-de-proyectos/cu-csp-1200-009-calcular-rango-de-fechas-asociado-a-periodo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1200-gestion-de-proyectos/cu-csp-1200-009-calcular-rango-de-fechas-asociado-a-periodo.md").  Sólo se copiarán los socios para los que  fecha de inicio calculada esté comprendido entre la fecha de inicio y fin del proyecto. En el caso que la fecha de inicio calculada sí encaje dentro del rango fecha inicio \- fecha fin del proyecto, pero no lo haga la fecha fin calculada (que podría ser mayor que la fecha de fin del proyecto), se tomará como fecha fin de participación del socio, la fecha de fin del proyecto.
* Por cada socio de la solicitud, se copian todos los miembros del equipo del socio. Por cada registro en la tabla "solicitud proyecto equipo socio" se crea un registro en la tabla del proyecto "proyecto socio equipo":
	+ Los campos "persona Ref" y  "rol proyecto" toman el mismo valor que en la tabla "solicitud proyecto equipo socio".
	+ Los campos " fecha inicio" y "fecha fin" de la tabla "proyecto socio equipo" se calcularán a partir del campo "fecha inicio" de la tabla "proyecto" y los meses de inicio y fin de los miembros del socio en la solicitud (campos "mes inicio" y "mes fin" de la tabla "solicitud proyecto equipo socio"). Si los campos "mes inicio" o "mes fin" no están informados no se realizará el cálculo de obtención de los campos "fecha inicio" y "fecha fin". Los criterios para la realización de este cálculo están recogidos en [CU\-CSP\-1200\-009 \- Calcular rango de fechas asociado a periodo](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1200-gestion-de-proyectos/cu-csp-1200-009-calcular-rango-de-fechas-asociado-a-periodo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1200-gestion-de-proyectos/cu-csp-1200-009-calcular-rango-de-fechas-asociado-a-periodo.md"). Sólo se copiarán los miembros del equipo del socio para los que la fecha de inicio calculada esté comprendida entre la fecha de inicio y fin del proyecto. En el caso que la fecha de inicio calculada sí encaje dentro del rango fecha inicio \- fecha fin del proyecto, pero no lo haga la fecha fin calculada (que podría ser mayor que la fecha de fin del proyecto), se tomará como fecha fin de participación del miembro del socio, la fecha de fin del proyecto.
* Por cada socio de la solicitud, se copian todos los periodos pago del socio. Por cada registro en la tabla "solicitud proyecto periodo pago" se crea un registro en la tabla del proyecto "proyecto socio periodo pago" con los campos "número periodo" e "importe" indicados en la solicitud. El campo "fecha prevista de pago" de la tabla "proyecto socio periodo pago" se calculará a partir del campo "fecha inicio" de la tabla "proyecto" y el mes indicado en el periodo pago de la solicitud (campo "mes" de la tabla "solicitud proyecto periodo pago"). Sólo se copiarán los periodos de pago para los que la fecha prevista de pago calculada esté comprendida entre la fecha de inicio y fin del proyecto.
* Por cada socio de la solicitud, se copian todos los periodos de justificación del socio. Por cada registro en la tabla "solicitud proyecto periodo justificación" se crea un registro en la tabla del proyecto "proyecto socio periodo justificación" con el campo "número periodo", "fecha inicio presentación", "fecha fin presentación" y "observaciones" indicados en la solicitud. Los campos "fecha inicio" y "fecha fin" se calculan a partir del capo "fecha inicio" de la tabla "proyecto" y  los campos "mes inicio" y "mes fin" de "solicitud proyecto periodo justificación". Los criterios para la realización de este cálculo están recogidos en [CU\-CSP\-1200\-009 \- Calcular rango de fechas asociado a periodo](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1200-gestion-de-proyectos/cu-csp-1200-009-calcular-rango-de-fechas-asociado-a-periodo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1200-gestion-de-proyectos/cu-csp-1200-009-calcular-rango-de-fechas-asociado-a-periodo.md"). Sólo se copiarán los periodos para los que la fecha de inicio calculada esté comprendida entre la fecha de inicio y fin del proyecto. En el caso que la fecha de inicio calculada sí encaje dentro del rango fecha inicio \- fecha fin del proyecto, pero no lo haga la fecha fin calculada (que podría ser mayor que la fecha de fin del proyecto), se tomará como fecha fin del periodo de justificación del socio, la fecha de fin del proyecto.

**Seguimiento científico (de convocatoria)**

* En caso de que la solicitud tenga una convocatoria relacionada, por cada registro en la tabla "convocatoria periodo seguimiento científico" se crea un registro en la tabla del proyecto "proyecto periodo seguimiento":
	+ Los campos "número periodo", "fecha inicio presentación" ,"fecha fin presentación" , "observaciones" especificados en la tabla "convocatoria periodo seguimiento científico"
	+ El campo  "id convocatoria periodo seguimiento" tomará el valor del campo "id"  de la tabla "convocatoria periodo seguimiento científico".
	+ Los campos "fecha inicio" y "fecha fin" se calculan a partir del capo "fecha inicio" de la tabla "proyecto" y  los campos "mes inicio" y "mes fin" de "convocatoria periodo seguimiento científico". Los criterios para la realización de este cálculo están recogidos en [CU\-CSP\-1200\-009 \- Calcular rango de fechas asociado a periodo](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1200-gestion-de-proyectos/cu-csp-1200-009-calcular-rango-de-fechas-asociado-a-periodo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1200-gestion-de-proyectos/cu-csp-1200-009-calcular-rango-de-fechas-asociado-a-periodo.md"). Sólo se copiarán los periodos para los que la fecha de inicio calculada esté comprendida entre la fecha de inicio y fin del proyecto. En el caso que la fecha de inicio calculada sí encaje dentro del rango fecha inicio \- fecha fin del proyecto, pero no lo haga la fecha fin calculada (que podría ser mayor que la fecha de fin del proyecto), se tomará como fecha fin del periodo de seguimiento científico, la fecha de fin del proyecto.

**Configuración económica (de convocatoria)**

* **Elegibilidad**: si en la convocatoria se ha rellenado "convocatoria concepto gasto" se rellenará la tabla "proyecto concepto gasto":
	+ Los campos "concepto gasto", "importe máximo", "permitido", "observaciones" tomará el valor especificado en "convocatoria concepto gasto"
	+ El campo  "id convocatoria concepto gasto" tomará el valor del campo "id" de la tabla "convocatoria concepto gasto".
	+ Los campos "fecha inicio" y "fecha fin" se calculan a partir del capo "fecha inicio" de la tabla "proyecto" y  los campos "mes inicio" y "mes fin" de "convocatoria periodo seguimiento científico". Si los campos "mes inicio" o "mes fin" no están informados no se realizará el cálculo de obtención de los campos "fecha inicio" y "fecha fin". Los criterios para la realización de este cálculo están recogidos en [CU\-CSP\-1200\-009 \- Calcular rango de fechas asociado a periodo](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1200-gestion-de-proyectos/cu-csp-1200-009-calcular-rango-de-fechas-asociado-a-periodo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1200-gestion-de-proyectos/cu-csp-1200-009-calcular-rango-de-fechas-asociado-a-periodo.md"). Sólo se copiarán los periodos para los que la fecha de inicio calculada esté comprendida entre la fecha de inicio y fin del proyecto. En el caso que la fecha de inicio calculada sí encaje dentro del rango fecha inicio \- fecha fin del proyecto, pero no lo haga la fecha fin calculada (que podría ser mayor que la fecha de fin del proyecto), se tomará como fecha fin del periodo de seguimiento científico, la fecha de fin del proyecto.
	+ Por cada registro de la tabla "convocatoria concepto gasto código económico" también se creará un registro en la tabla "proyecto concepto gasto código económico" con los campos:
		- "proyecto concepto de gasto" tomará el valor del campo "identificador" del registro de la tabla "proyecto concepto gasto" creado en el punto anterior.
		- "código económico ref", "fecha inicio", "fecha fin" y "observaciones" iguales a los especificados en la tabla "convocatoria concepto gasto código económico"
		- "id convocatoria concepto gasto código económico"  tomará el valor del campo "id" de la tabla "convocatoria concepto gasto".
* **Partidas presupuestarias.** Por cada registro de la tabla "convocatoria partida" se crea un registro en la tabla "proyecto partida". El campo "convocatoria partida id" de la tabla "proyecto partida" tomará el valor del campo "id" de la tabla "convocatoria partida".
* **Calendario justificación**: por cada registro de la tabla "convocatoria periodo justificación"  se creará un registro en la tabla del proyecto "proyecto periodo justificación" con los campos:
	+ "número periodo", "fecha inicio presentación", "fecha fin presentación", "tipo justificación" y "observaciones" especificados en la tabla "convocatoria periodo justificación".
	+ "id convocatoria periodo justificación" tomará el valor del  campo "id" de la tabla "convocatoria periodo justificación" "
	+ "estado" tomará el valor asociados a "pendiente".
	+ Los campos "fecha inicio" y "fecha fin" se obtendrán a partir de los campos "mes inicio" y "mes fin" establecidos en la tabla "convocatoria periodo justificación", tomando como base la fecha de inicio del proyecto (campo "fecha inicio" de la tabla "proyecto"). Los criterios que rigen para el cálculo de las fechas del periodo a partir de los meses están recogidos en  [CU\-CSP\-1200\-009 \- Calcular rango de fechas asociado a periodo](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1200-gestion-de-proyectos/cu-csp-1200-009-calcular-rango-de-fechas-asociado-a-periodo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1200-gestion-de-proyectos/cu-csp-1200-009-calcular-rango-de-fechas-asociado-a-periodo.md"). Sólo se copiarán los periodos para los que  la fecha de inicio del periodo calculada esté entre la fecha de inicio y fin del proyecto. En el caso que la fecha de inicio calculada para un periodo sí encaje dentro del rango fecha inicio \- fecha fin del proyecto, pero no lo haga la fecha fin calculada para el periodo (que podría ser mayor que la fecha de fin del proyecto), se tomará como fecha fin del periodo la fecha de fin del proyecto (campo "fecha fin" de la tabla "proyecto").

  





