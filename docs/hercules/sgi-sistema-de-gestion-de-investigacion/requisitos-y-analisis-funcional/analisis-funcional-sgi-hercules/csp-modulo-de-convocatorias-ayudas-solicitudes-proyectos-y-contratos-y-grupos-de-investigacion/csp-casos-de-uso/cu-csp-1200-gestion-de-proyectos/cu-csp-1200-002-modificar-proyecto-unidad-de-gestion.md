# Hércules : CU\-CSP\-1200\-002 \- Modificar proyecto \- Unidad de gestión



### Descripción

Modificación de los datos de proyecto. Solo disponible para ACT\-CSP\-003\-Gestor, ACP\-CSP\-004\-Administrador que pertenezcan a la unidad de gestión del proyecto.

### Actores

#### Actor principal

ACT\-CSP\-003\-Gestor de las unidades de gestión UGI, OTRI u OPE.

ACP\-CSP\-004\-Administrador de las unidades de gestión UGI, OTRI u OPE.

#### Personal involucrado e intereses

ACT\-CSP\-001\-Investigador que requiere que sus proyectos estén actualizados para su correcto seguimiento.

### Precondiciones

El usuario ACT\-CSP\-003\-Gestor, ACP\-CSP\-004\-Administrador se autentica a través del usuario de dominio corporativo  y tiene asociada una Unidad de gestión para las que está habilitado el permiso de modificación de convocatoria.

El proyecto tiene el "activo" a "true".

El proyecto se podrá modificar en cualquiera de sus estados.

### Garantías de éxito (postcondiciones)

Se modifican los datos del proyecto.

### Escenario principal (flujo básico)

1. El usuario pulsa el botón "Modificar" desde el listado de proyectos
2. Se aplican restricciones de edición:

**Pestaña Datos generales → Ficha general**

Comprobar los siguientes campos obligatorios independientemente del estado:

* Estado
* Título
* Fecha de inicio
* Fecha de fin
* Unidad de gestión
* Modelo de ejecución

Campos obligatorios para el estado "Concedido"

* Finalidad
* Ámbito geográfico
* Confidencial
* Proyecto coordinado
* Coordinador externo (solo en caso que proyecto coordinado tome valor "sí")
* Paquetes de trabajo

  


Aplicar las siguientes comprobaciones:

* Si el campo Convocatoria (campo "convocatoria") está informado, el campo "Identificación convocatoria" (campo "convocatoria externa" de la tabla "proyecto") tomará el valor del campo "código" de la tabla "convocatoria".  En caso contrario, el campo "convocatoria externa" tomará el valor introducido sobre el campo Identificación convocatoria del formulario de creación de proyecto.
* Si el campo Solicitud ("solicitud") está informado, el campo "referencia en entidad convocante" (campo "código externo" de la tabla "proyecto"), tomará el valor del campo "código externo" de la tabla "solicitud proyecto" vinculada a través del campo "solicitud".
* Unidad de gestión tendrá que ser una de las que el usuario tiene permisos.
* Modelo de ejecución tendrá que ser uno de los que tiene asociados la unidad de gestión seleccionada.

Campos que no se pueden modificar:

* Estado
* Convocatoria (la propia del SGI)
* Solicitud
* Unidad de gestión en caso de existir registros en:


	+ Fases e hitos
	+ Documentos (Documentos generales del proyecto, documentos de los periodos de justificación, documentos de las prórrogas o documento de los seguimientos científicos)
* Modelo de ejecución en caso de existir registros en:  

	+ Fases e hitos
	+ Documentos (Documentos generales del proyecto, documentos de los periodos de justificación, documentos de las prórrogas o documento de los seguimientos científicos)
* Proyecto coordinado en caso de existir registros en:  

	+ Socios (tabla "proyecto socio")
* Coordinador externo:
	+ No se podrá modificar el valor de este campo de "No" a "Sí" en caso que ya existan registros en los subapartados "periodos de pago" y "periodos de justificación", tablas "proyecto socio periodo pago" y "proyecto socio periodo justificación" respectivamente.
* Paquetes de trabajo en caso de existir registros en:  

	+ Paquetes de trabajo (tabla "proyecto paquete trabajo")

#### Pestaña Entidades → Convocantes

Aplicar las siguientes comprobaciones:

* Para el mismo proyecto no pueden existir dos registros de Proyecto Entidad Convocante para la misma entidad ("entidad ref" debe de ser única para el proyecto en la tabla "proyecto entidad convocante").

#### Pestaña Entidades → Financiadoras

Aplicar las siguientes comprobaciones:

* Para el mismo proyecto no pueden existir dos registros de Proyecto Entidad Financiadora para la misma entidad y mismo tipo de ajena (la combinación "entidad ref \- ajena" debe de ser única para el proyecto en la tabla "proyecto entidad financiadora").

#### **Pestaña Equipo**

* **Comprobación de existencia del solicitante como miembro del equipo:**

Si el estado es "Concedido":

* + Si  el proyecto está relacionado con una solicitud (campo "solicitud" de la tabla "proyecto" está informado) y la solicitud tiene el campo "formulario" con valor "Proyecto" se debe de comprobar que:
		- El solicitante de la solicitud de la que deriva el proyecto (campo "solicitante" de la tabla "solicitud") pertenezca al equipo (pudiendo ser el único miembro del equipo).
* **Comprobaciones de cumplimiento de los requisitos IP establecidos por la convocatoria:**
	+ Si se ha vinculado el proyecto a una convocatoria del SGI (campo "convocatoria" de la tabla "proyecto" está informado) se realizarán las condiciones establecidas por la convocatoria en lo que a requisitos IP se refiere ( [IU\-CSP\-0201\-010 \- Crear convocatoria \- Requisitos IP](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-010-crear-convocatoria-requisitos-ip.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-010-crear-convocatoria-requisitos-ip.md") y [IU\-CSP\-0204\-010 \- Modificar convocatoria \- Requisitos IP](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0204-modificar-convocatoria/iu-csp-0204-010-modificar-convocatoria-requisitos-ip.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0204-modificar-convocatoria/iu-csp-0204-010-modificar-convocatoria-requisitos-ip.md")).
		- Para cualquier persona que se añada al equipo con un rol de participación que tenga marcada la condición de "principal" (campo "principal" de la tabla "rol proyecto"):
			* Se  aplicarán las comprobaciones establecidas en [CU\-CSP\-1200\-010 \- Comprobación requisitos IP](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1200-gestion-de-proyectos/cu-csp-1200-010-comprobacion-requisitos-ip.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1200-gestion-de-proyectos/cu-csp-1200-010-comprobacion-requisitos-ip.md") aplicadas sobe su "persona ref":
				+ Si cualquiera de las comprobaciones anteriores no se cumple para alguno de los miembros con rol principal, se mostrará un mensaje de advertencia "No se cumplen los requisitos establecidos por la convocatoria para el rol IP, ¿desea continuar incluyendo esta distribución de roles en el equipo?".
	+ - Si la convocatoria tiene establecido un límite para el número máximo de IPs (campo "num. máximo IP" de la tabla "requisito IP" de la convocatoria):
			* Se comprobará el número de miembros con rol principal que hayan sido añadidos, comprobando que el total sea menor o igual que el marcado por la convocatoria.
			* Si esta condición no se cumple se mostrará  una advertencia "Se superan el número de IPs establecidos por la convocatoria, ¿desea continuar incluyendo esta distribución de roles en el equipo?".
* **Comprobaciones de cumplimiento de los requisitos equipo establecidos por la convocatoria:**
	+ Si se ha vinculado el proyecto a una convocatoria del SGI (campo "convocatoria" de la tabla "proyecto" está informado) se realizarán las condiciones establecidas por la convocatoria en lo que a requisitos equipo se refiere ([IU\-CSP\-0201\-011 \- Crear convocatoria \- Requisitos Equipo](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-011-crear-convocatoria-requisitos-equipo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-interfaz-de-usuario/iu-csp-0200-gestion-de-convocatorias/iu-csp-0201-crear-convocatoria/iu-csp-0201-011-crear-convocatoria-requisitos-equipo.md")).
		- Para cualquier persona que se añada al equipo con un rol de participación que no tenga marcada la condición de "principal" (campo "principal" de la tabla "rol proyecto"):
			* Se  aplicarán las comprobaciones establecidas en [CU\-CSP\-1100\-004 \- Comprobación Requisitos equipo](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1100-gestion-de-solicitudes/cu-csp-1100-004-comprobacion-requisitos-equipo.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/csp-modulo-de-convocatorias-ayudas-solicitudes-proyectos-y-contratos-y-grupos-de-investigacion/csp-casos-de-uso/cu-csp-1100-gestion-de-solicitudes/cu-csp-1100-004-comprobacion-requisitos-equipo.md") aplicadas sobe su "persona ref":
				+ Si cualquiera de las comprobaciones anteriores no se cumple para alguno de los miembros se mostrará un mensaje de advertencia "No se cumplen los requisitos establecidos por la convocatoria para el equipo, ¿desea continuar incluyendo este equipo de proyecto?" .
		- Si la convocatoria tiene establecido requisitos para el ratio por sexo (campo "ratio sexo" de la tabla "requisito equipo"):
			* Se deberá obtener el sexo, a través de [REQ\-INT\-0020\-SGP\-0030 \- Consultar datos generales de persona](/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md "/hercules/sgi-sistema-de-gestion-de-investigacion/requisitos-y-analisis-funcional/analisis-funcional-sgi-hercules/gen-aspectos-generales/int-requisitos-de-integracion/req-int-0020-sgp-integracion-con-sistema-de-gestion-de-personas/req-int-0020-sgp-0030-consultar-datos-generales-de-persona.md") de todos los miembros del equipo de proyecto, calculando el ratio mujeres/hombre y comprobando que éste sea mayor o igual que el establecido por la convocatoria).
			* Si esta condición no se cumple se mostrará un mensaje "No se cumple el ratio por sexo establecido por la convocatoria, ¿desea continuar incluyendo este equipo de proyecto?."
		- Si la convocatoria marca restricciones sobre el número mínimo de proyectos competitivos para el equipo (campo "número mínimo competitivos" de la tabla "requisito equipo" está informado)
			* Se deberán obtener todos los proyectos competitivos (tabla "proyecto", campo "clasificación CVN" con valor "proyectos competitivos") en los que haya participado cualquier persona del equipo de proyecto que no tenga un rol principal, sin considerar el proyecto en curso (el que se está creando/modificando):
				+ Para todos los miembros del equipo (tabla "proyecto equipo") que no tengan un rol principal (campo "rol proyecto" de la tabla "proyecto equipo" referencia a un registro de la tabla "rol proyecto" que tiene el flag "principal" a "false"):
					- Se deben obtener los proyectos competitivos en los que haya participado: Todos los proyectos de la tabla "proyecto" para los que el campo "clasificación CVN" tome valor "proyectos competitivos" y para los que la persona figure en "proyecto equipo" independientemente de las fechas de participación ni del rol de participación, sin considerar el proyecto en curso (el que se está creando/modificando).
				+ Se deben sumar todos los proyectos así obtenidos para cada miembro del equipo de proyecto, sin contabilizar dos veces el mismo proyecto, es decir, si dos miembros del equipo participan en un mismo proyecto, éste contabilizará solo una vez.
				+ Si la suma de proyectos obtenida es menor que el valor indicado por el campo "número mínimo competitivos" de la tabla "requisito equipo" se mostrará un mensaje de advertencia "No se alcanza el número mínimo de proyectos competitivos establecidos  por la convocatoria para el equipo, ¿desea continuar incluyendo este equipo de proyecto?."
		- Si la convocatoria marca restricciones sobre el número mínimo de proyectos no competitivos para el equipo (campo "número mínimo no competitivos" de la tabla "requisito equipo" está informado)
			* Se deberán obtener todos los proyectos no competitivos (tabla "proyecto", campo "clasificación CVN" con valor "contratos, convenios, proyectos no competitivos") en los que haya participado cualquier persona del equipo de proyecto que no tenga un rol principal, sin considerar el proyecto en curso (el que se está creando/modificando):
				+ Para todos los miembros del equipo (tabla "proyecto equipo") que no tengan un rol principal (campo "rol proyecto" de la tabla "proyecto equipo" referencia a un registro de la tabla "rol proyecto" que tiene el flag "principal" a "false"):
					- Se deben obtener los proyectos no competitivos en los que haya participado. Todos los proyectos de la tabla "proyecto" para los que el campo "clasificación CVN" tome valor "contratos, convenios, proyectos no competitivos" y para los que la persona figure en "proyecto equipo" independientemente de las fechas de participación ni del rol de participación.
				+ Se deben sumar todos los proyectos así obtenidos para cada miembro del equipo de proyecto, sin contabilizar dos veces el mismo proyecto, es decir, si dos miembros del equipo participan en un mismo proyecto, éste contabilizará solo una vez.
				+ Si la suma de proyectos obtenida es menor que el valor indicado por el campo "número mínimo no competitivos" de la tabla "requisito equipo" se mostrará un mensaje de advertencia "No se alcanza el número mínimo de proyectos no competitivos establecidos  por la convocatoria para el equipo, ¿desea continuar incluyendo este equipo de proyecto?."
		- Si la convocatoria marca restricciones sobre el número máximo de proyectos competitivos en curso para el equipo (campo "número máximo competitivos activos" de la tabla "requisito equipo" está informado)
			* Se deberán obtener todos los proyectos competitivos (tabla "proyecto", campo "clasificación CVN" con valor "proyectos competitivos") en los que esté participando cualquier persona del equipo de proyecto que no tenga un rol principal, sin considerar el proyecto en curso (el que se está creando/modificando):
				+ Para todos los miembros del equipo (tabla "proyecto equipo") que no tengan un rol principal (campo "rol proyecto" de la tabla "proyecto equipo" referencia a un registro de la tabla "rol proyecto" que tiene el flag "principal" a "false"):
					- Se deben obtener los proyectos competitivos en los que participe actualmente. Todos los proyectos de la tabla "proyecto" para los que el campo "clasificación CVN" tome valor "proyectos competitivos" y para los que la persona figure en "proyecto equipo" en el momento actual: "persona ref" figura en la tabla "proyecto equipo" debiendo estar la fecha actual comprendida en el rango de fechas marcado por los campos "fecha inicio" y "fecha fin". La ausencia de valor en "fecha fin" o en el par "fecha inicio" \- "fecha fin" se tomará como registro vigente en la fecha actual.
				+ Se deben sumar todos los proyectos así obtenidos para cada miembro del equipo de proyecto, sin contabilizar dos veces el mismo proyecto, es decir, si dos miembros del equipo participan en un mismo proyecto, éste contabilizará solo una vez.
				+ Si la suma de proyectos obtenida es mayor que el valor indicado por el campo "número máximo competitivos" de la tabla "requisito equipo" se mostrará un mensaje de advertencia "Se supera el número máximo de proyectos competitivos en curso establecidos  por la convocatoria para el equipo, ¿desea continuar incluyendo este equipo de proyecto?."
		- Si la convocatoria marca restricciones sobre el número máximo de proyectos no competitivos en curso para el equipo (campo "número máximo no competitivos activos" de la tabla "requisito equipo" está informado)
			* Se deberán obtener todos los proyectos no competitivos (tabla "proyecto", campo "clasificación CVN" con valor "contratos, convenios, proyectos competitivos") en los que esté participando cualquier persona del equipo de proyecto que no tenga un rol principal, sin considerar el proyecto en curso (el que se está creando/modificando):
				+ Para todos los miembros del equipo (tabla "proyecto equipo") que no tengan un rol principal (campo "rol proyecto" de la tabla "proyecto equipo" referencia a un registro de la tabla "rol proyecto" que tiene el flag "principal" a "false"):
					- Se deben obtener los proyectos no competitivos en los que participe actualmente. Todos los proyectos de la tabla "proyecto" para los que el campo "clasificación CVN" tome valor "contratos, convenios, proyectos no competitivos" y para los que la persona figure en "proyecto equipo" en el momento actual: "persona ref" figura en la tabla "proyecto equipo" debiendo estar la fecha actual comprendida en el rango de fechas marcado por los campos "fecha inicio" y "fecha fin". La ausencia de valor en "fecha fin" o en el par "fecha inicio" \- "fecha fin" se tomará como registro vigente en la fecha actual
				+ Se deben sumar todos los proyectos así obtenidos para cada miembro del equipo de proyecto, sin contabilizar dos veces el mismo proyecto, es decir, si dos miembros del equipo participan en un mismo proyecto, éste contabilizará solo una vez.
				+ Si la suma de proyectos obtenida es mayor que el valor indicado por el campo "número máximo competitivos" de la tabla "requisito equipo" se mostrará un mensaje de advertencia "Se supera el número máximo de proyectos competitivos en curso establecidos  por la convocatoria para el equipo, ¿desea continuar incluyendo este equipo de proyecto?."

#### **Pestaña Socios** **→ Periodos justificación → Documentos**

Aplicar las siguientes comprobaciones:

* El tipo de documento debe pertenecer al modelo de ejecución indicado en la Ficha general del proyecto

#### **Pestaña Fases e Hitos → Fases**

Aplicar las siguientes comprobaciones:

* El tipo de fase debe pertenecer al modelo de ejecución indicado en la Ficha general del proyecto

#### **Pestaña Fases e Hitos → Hitos**

Aplicar las siguientes comprobaciones:

* El tipo de hito debe pertenecer al modelo de ejecución indicado en la Ficha general del proyecto
* Dos hitos del mismo proyecto (tabla "proyecto hito") no pueden tener la misma Fecha para un mismo "tipo de hito".

#### **Pestaña Paquetes de trabajo**

* Únicamente se pueden crear, modificar o eliminar paquetes de trabajo (tabla "proyecto paquete trabajo") si el campo "paquetes de trabajo" de la pantalla de "Ficha general" del proyecto tiene valor "Sí". (campo "paquetes trabajo" de la tabla "proyecto")

#### **Pestaña Configuración económica \- Partidas presupuestarias**

* Se podrán añadir nuevas partidas presupuestarias independientemente del estado en que se encuentre el proyecto.
* Se podrán modificar o eliminar partidas siempre que no estén siendo referenciadas en las tablas "anualidad gasto" o "anualidad proyecto".
* Se podrán modificar o eliminar partidas que procedan del volcado de partidas desde la convocatoria (campo "convocatoria partida id" informado). En el caso de que una partida procedente del volcado desde convocatoria (campo "convocatoria partida id" informado) se modifique en el proyecto, se eliminará la referencia a la partida de la convocatoria (limpiando el campo "convocatoria partida id" de la tabla "proyecto partida").

#### **Pestaña Configuración económica \- Presupuesto \- Anualidad**

Aplicar las siguientes comprobaciones:

* No se pueden repetir anualidades dentro de un mismo proyecto.
* Si la anualidad se ha enviado al SGE no se podrá modificar ni eliminar (campo "enviado SGE" tiene valor "true" en la tabla "proyecto anualidad")
* En caso de borrado de una anualidad, se realizará un borrado físico del registro en la tabla "proyecto anualidad". Se eliminarán en cascada los gastos e ingresos, vinculados a la anualidad (tablas "anualidad gasto" y "anualidad ingreso")

#### **Pestaña Configuración económica \- Presupuesto \- Anualidad** **\- Gastos**

* Si la anualidad se ha enviado al SGE no se podrá añadir, ni eliminar ni modificar partidas de gastos (campo "enviado SGE" tiene valor true en la tabla "proyecto anualidad")

#### **Pestaña Configuración económica \- Presupuesto \- Anualidad** **\- Ingresos**

* Si la anualidad se ha enviado al SGE no se podrá añadir, ni eliminar ni modificar partidas de ingresos (campo "enviado SGE" tiene valor true en la tabla "proyecto anualidad")

  


  


  
  
  





