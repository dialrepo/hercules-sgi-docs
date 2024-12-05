# Hércules : CU\-CSP\-1200\-001 \- Crear proyecto \- Unidad de gestión



### Descripción

Creación de un proyecto. Solo disponible para ACT\-CSP\-003\-Gestor, ACP\-CSP\-004\-Administrador que pertenezcan a la unidad de gestión del proyecto.

### Actores

#### Actor principal

ACT\-CSP\-003\-Gestor de las unidades de gestión UGI, OTRI u OPE.

ACP\-CSP\-004\-Administrador de las unidades de gestión UGI, OTRI u OPE.

#### Personal involucrado e intereses

ACT\-CSP\-001\-Investigador que requiere que sus proyectos estén creados para su correcto seguimiento.

### Precondiciones

El usuario ACT\-CSP\-003\-Gestor, ACP\-CSP\-004\-Administrador se autentica a través del usuario de dominio corporativo  y tiene asociada una Unidad de gestión para las que está habilitado el permiso de modificación de convocatoria.

  


### Garantías de éxito (postcondiciones)

Se crea un proyecto en estado "Borrador" y activo a "true".

El campo solicitud será null.

En caso de seleccionar una convocatoria se informará del campo "Convocatoria" con la convocatoria seleccionada.

### Escenario principal (flujo básico)

El usuario pulsa el botón "Nuevo" desde el listado de proyectos se aplican las siguientes restricciones y comprobaciones:

  


**Pestaña Datos generales → Ficha general**

Comprobar los siguientes campos obligatorios:

* Título
* Fecha de inicio
* Fecha de fin
* Unidad de gestión
* Modelo de ejecución

Aplicar las siguientes comprobaciones:

* Si viene informado el campo Convocatoria (campo "convocatoria"), el campo Identificación convocatoria (campo "convocatoria externa" de la tabla "proyecto") tomará el valor del campo "código" de la tabla "convocatoria".  En caso contrario, el campo "convocatoria externa" tomará el valor introducido sobre el campo Identificación convocatoria del formulario de creación de proyecto.
* Unidad de gestión tendrá que ser una de las que el usuario tiene permisos.
* Modelo de ejecución tendrá que ser uno de los que tiene asociados la unidad de gestión seleccionada.
* Si el campo "proyecto coordinado" toma valor "sí" se deberá comprobar condición de  obligatoriedad del campo "coordinador externo".

Si se selecciona una convocatoria se debe de informar los siguientes apartados del proyecto con los datos que hubiera en la convocatoria seleccionada:

* Entidades
	+ Gestora: si en la convocatoria se ha rellenado "convocatoria entidad gestora" se rellenará la tabla "proyecto entidad gestora" con la "entidad Ref" de la convocatoria.
	+ Convocantes: si en la convocatororia se ha rellenado "convocatoria entidad convocante" se rellenará la tabla "proyecto entidad convocante" con la "entidad Ref" y "programa" de la convocatoria. El campo "programa" de la convocatoria va al campo "programa convocatoria" de la tabla "proyecto entidad convocante", dejando el campo "programa" vacío.
	+ Financiadoras: si en la convocatoria se ha rellenado "convocatoria entidad financiadora" se rellanará la tabla "proyecto entidad financiadora" con los campos "entidad Ref", "fuente financiación", "tipo financiación", "porcentaje financiación" e "importe financiación" de la convocatoria, en el campo "ajena" de los registros creados en la tabla "proyecto entidad financiadora" se pondrá el valor "false", ya que todas las entidades provienen de la convocatoria y no son ajenas a ella.
* Seguimiento científico
	+ Por cada registro en la tabla "convocatoria periodo seguimiento científico" se crea un registro en la tabla del proyecto "proyecto periodo seguimiento":
		- Los campos "número periodo", "fecha inicio presentación" , "fecha fin presentación" , "observaciones"  tomará el mismo valor que en la tabla "convocatoria periodo seguimiento científico"
		- El  campo "id convocatoria periodo seguimiento" tomará el valor del campo "id" de la tabla "convocatoria periodo seguimiento científico".
		- Los campos "fecha inicio" y "fecha fin" se obtendrán a partir de los campos "mes inicio" y "mes fin" establecidos en la convocatoria tomando como base la fecha de inicio del proyecto (campo "fecha inicio" de la tabla "proyecto"). Si los campos "mes inicio" o "mes fin" no están informados no se realizará el cálculo de obtención de los campos "fecha inicio" y "fecha fin". Los criterios que rigen para el cálculo de las fechas del periodo a partir de los meses están recogidos en [CU\-CSP\-1200\-009 \- Calcular rango de fechas asociado a periodo](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1200-gestion-de-proyectos/cu-csp-1200-009-calcular-rango-de-fechas-asociado-a-periodo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1200-gestion-de-proyectos/cu-csp-1200-009-calcular-rango-de-fechas-asociado-a-periodo.md"). Sólo se copiarán los periodos para los que  la fecha de inicio del periodo calculada esté entre la fecha de inicio y fin del proyecto. En el caso que la fecha de inicio calculada para un periodo sí encaje dentro del rango fecha inicio \- fecha fin del proyecto, pero no lo haga la fecha fin calculada para el periodo (que podría ser mayor que la fecha de fin del proyecto), se tomará como fecha fin del periodo la fecha de fin del proyecto.

  


* Configuración económica:
	+ Elegibilidad: Si en la convocatoria se ha rellenado "convocatoria concepto gasto" se rellenará la tabla "proyecto concepto gasto" :
		- Los campos "concepto gasto", "importe máximo", "permitido" y "observaciones" tomarán el valor especificado en la tabla "convocatoria concepto gasto".
		- El campo  "id convocatoria concepto gasto" tomará el valor del campo "id" de la tabla "convocatoria concepto gasto".
		- Los campos "fecha inicio" y "fecha fin" se obtendrán a partir de los campos "mes inicio" y "mes fin" establecidos en la convocatoria tomando como base la fecha de inicio del proyecto (campo "fe). Los criterios que rigen para realizar esta conversión de meses a fechas de inicio y fin concretas, están recogidas en [CU\-CSP\-1200\-009 \- Calcular rango de fechas asociado a periodo](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1200-gestion-de-proyectos/cu-csp-1200-009-calcular-rango-de-fechas-asociado-a-periodo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1200-gestion-de-proyectos/cu-csp-1200-009-calcular-rango-de-fechas-asociado-a-periodo.md").  Sólo se copiarán los conceptos de gasto donde la fecha de inicio calculada este entre la fecha de inicio y fin del proyecto.
		- Además, por cada registro de la tabla "convocatoria concepto gasto código económico" también se creará un registro en la tabla "proyecto concepto gasto código económico" con los campos:
			* "proyecto concepto de gasto" tomará el valor del campo "identificador" del registro de la tabla "proyecto concepto gasto" creado en el punto anterior.
			* "código económico ref", "fecha inicio", "fecha fin" y "observaciones" iguales a los especificados en la tabla "convocatoria concepto gasto código económico"
			* "id convocatoria concepto gasto código económico"  tomará el valor del campo "id" de la tabla "convocatoria concepto gasto".
	+ Partidas presupuestarias: Por cada registro de la tabla "convocatoria partida" se creará un registro en la tabla "proyecto partida". El campo "convocatoria partida id" de la tabla "proyecto partida" tomará el valor del campo "id" de la tabla "convocatoria partida".
	+ Calendario justificación: Por cada registro de la tabla  "convocatoria periodo justificación"  se crea un registro en la tabla del proyecto "proyecto periodo justificación":
		- Los campos  "número periodo",  "fecha inicio presentación" y "fecha fin presentación", "tipo justificación" , "observaciones" tomará los mismos valores especificados en la tabla "convocatoria periodo justificación"
		- El campo "id convocatoria periodo justificación" tomará el valor del campo "id" de la tabla "convocatoria periodo justificación"
		- El campo "estado" tomará el valor asociado al estado "pendiente".
		- Los campos "fecha inicio" y "fecha fin" se obtendrán a partir de los campos "mes inicio" y "mes fin" establecidos en la tabla "convocatoria periodo justificación",  tomando como base la fecha de inicio del proyecto (campo "fecha inicio" de la tabla "proyecto"). Los criterios que rigen para el cálculo de las fechas del periodo a partir de los meses están recogidos en  [CU\-CSP\-1200\-009 \- Calcular rango de fechas asociado a periodo](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1200-gestion-de-proyectos/cu-csp-1200-009-calcular-rango-de-fechas-asociado-a-periodo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1200-gestion-de-proyectos/cu-csp-1200-009-calcular-rango-de-fechas-asociado-a-periodo.md"). Sólo se copiarán los periodos para los que  la fecha de inicio del periodo calculada esté entre la fecha de inicio y fin del proyecto. En el caso que la fecha de inicio calculada para un periodo sí encaje dentro del rango fecha inicio \- fecha fin del proyecto, pero no lo haga la fecha fin calculada para el periodo (que podría ser mayor que la fecha de fin del proyecto), se tomará como fecha fin del periodo la fecha de fin del proyecto (campo "fecha fin" de la tabla "proyecto")

  


  





