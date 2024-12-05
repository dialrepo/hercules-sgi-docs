# Hércules : CU\-CSP\-1000\-004 \- Clonar convocatoria



### Descripción

Se realiza una nueva convocatoria con los datos de otra, se hace una copia de la mayoría de los datos de la convocatoria.

### Actores

#### Actor principal

ACT\-CSP\-003\-Gestor de las unidades de gestión UGI, OTRI u OPE.

#### Personal involucrado e intereses

ACT\-CSP\-003\-Gestor para reducir el tiempo de creación de una convocatoria.

  


### Precondiciones

ACT\-CSP\-003\-Gestor, ACP\-CSP\-004\-Administrador se autentica a través del usuario de dominio corporativo. La convocatoria tiene asociada una Unidad de gestión sobre las que el usuario está vinculado con rol ACT\-CSP\-003\-Gestor, ACP\-CSP\-004\-Administrador.

  


Garantías de éxito (postcondiciones)

Se crea un nueva convocatoria a partir de la convocatoria seleccionada para su clonación.

  


### Escenario principal

1\. El usuario pulsa el botón  Clonar sobre una de las convocatorias disponibles.

2\. Se crea un nueva convocatoria en estado "Borrador" y con los siguientes datos:

* **Datos generales**. Se copian todos los campos de la tabla "Convocatoria" de la convocatoria seleccionada.
	+ Título (campo "titulo")
	+ Tipo solicitud SGI (campo "formulario solicitud")
	+ Unidad de gestión (campo "unidad gestión ref")
	+ Modelo de ejecución (campo "modelo ejecución")
	+ Tipo finalidad (campo "finalidad")
	+ Identificación (campo "código")
	+ Entidad gestora ( se crea el registro en la tabla "convocatoria entidad gestora" con el campo "convocatoria" la nueva convocatoria creada y "empresa Ref" el valor de la empresa en la convocatoria que se esta clonando)
	+ Fecha publicación (campo "fecha publicación")
	+ Fecha provisional (campo "fecha provisional")
	+ Fecha concesión (campo "fecha concesión")
	+ Duración de la actividad resultante (campo "duración")
	+ Convocatoria de excelencia (campo "excelencia")
	+ Ámbito geográfico  (campo "ámbito geográfico")
	+ Régimen concurrencia (campo "régimen concurrencia")
	+ Clasificación CVN/Producción científica (campo "clasificación CVN")
	+ Objeto o descripción general de la convocatoria (campo "objeto")
	+ Observaciones (campo "observaciones")
	+ Estado ( se pone el estado "Borrador")
	+ Activo (se pone a true)
	+ Listado de áreas temáticas (se crean tantos registros en la tabla "convocatoria área  temática" como tenga la convocatoria que se esta clonando y con los mismos datos del campo "área temática" y "observaciones", la convocatoria será el identificador de la convocatoria que se esta creando)
* **Entidades convocantes**. Se copian todas las entidades convocantes con los planes/programas que tengan vinculados: Se crean tantos registros en la tabla "convocatoria entidad convocante" como tenga la convocatoria que se esta clonando y con los mismos datos en los campos "empresa ref" y "programa", la convocatoria será el identificador de la convocatoria que se esta creando)
* **Entidades financiadoras**. Se copian todas las entidades financiadoras con los mismos datos de fuente y tipo de financiación, ámbito geográfico, importe y porcentaje de financiación. Se crean tantos registros en la tabla "convocatoria entidad financiadora" como tenga la convocatoria que se esta clonando y con los mismos datos en los campos "empresa Ref", "fuente financiación", "tipo financiación", "porcentaje financiación" y "importe financiación", la convocatoria será el identificador de la convocatoria que se esta creando)
* **Periodos de justificación**. Se copian todos los periodos con los mismos datos (mes inicial, mes final, fecha inicio presentación, fecha fin presentación, tipo y observaciones). Se crean tantos registros en la tabla "convocatoria periodo justificación" como tenga la convocatoria que se esta clonando y con los mismos datos en los campos "número periodo", "mes inicial",  "mes final", "fecha inicio presentación", "fecha fin presentación", "tipo justificación"  y "observaciones", la convocatoria será el identificador de la convocatoria que se esta creando)
* **Seguimiento científico**. Se copian todos los periodos con los mismos datos (mes inicial, mes final, fecha inicio presentación, fecha fin presentación, tipo y observaciones). Se crean tantos registros en la tabla "convocatoria periodo seguimiento científico" como tenga la convocatoria que se esta clonando y con los mismos datos en los campos "número periodo", "mes inicial",  "mes final", "fecha inicio presentación", "fecha fin presentación", "tipo seguimiento"  y "observaciones", la convocatoria será el identificador de la convocatoria que se esta creando)
* **Requisitos IP**. Se copian todos los campos de la tabla "requisito IP" de la convocatoria seleccionada excepto las limitaciones de fecha para las restricciones de nivel académico y categoría profesional.
	+ Se copian:
		- Número máximo IPs (campo "número máximo IP")
		- Edad máxima (campo "edad máxima")
		- Sexo (campo "sexo ref")
		- Listado de niveles académicos exigidos (Se crean tantos registros en la tabla "requisito IP nivel académico" como tenga el "requisito IP" de la convocatoria que se esta clonando y con el mismo dato en el campo "nivel académico ref", el "requisito IP" será el registro nuevo que se esta creando para la convocatoria clonada)
		- Vinculación Universidad (sí/no) (campo "vinculación Universidad")
		- Listado de categorías profesionales exigidas (Se crean tantos registros en la tabla "requisito IP Categoría como tenga el "requisito IP" de la convocatoria que se esta clonando y con el mismo dato en el campo "categoría profesional ref", el "requisito IP" será el registro nuevo que se esta creando para la convocatoria clonada)
		- Número mínimo proyectos competitivos (campo "número mínimo competitivos")
		- Número mínimo proyectos no competitivos (campo "número mínimo No competitivos")
		- Número máximo proyectos competitivos en curso (campo "número máximo competitivos activos")
		- Número máximo proyectos no competitivos en curso (campo "número máximo No competitivos activos")
		- Observaciones sobre los requisitos a cumplir (campo "otros requisitos")
	+ No se copian
		- Limitaciones sobre la fecha de obtención del nivel académico ("anterior a" y "posterior a") (campos "fecha máxima nivel académico" y "fecha mínima nivel académico")
		- Limitaciones sobre la fecha de obtención de la categoría profesional ("anterior a" y "posterior a") (campos "fecha máxima categoría profesional" y "fecha mínima categoría profesional")
* **Requisitos equipo**. Se copian todos los campos de la tabla "requisito equipo" de la convocatoria seleccionada excepto las limitaciones de fecha para las restricciones de nivel académico y categoría profesional.
	+ Se copian:  
	
		- Edad máxima (campo "edad máxima")
		- Sexo (campo "sexo ref")
		- Ratio mínimo exigido (campo "ratio sexo")
		- Listado de niveles académicos exigidos (Se crean tantos registros en la tabla "requisito equipo nivel académico" como tenga el "requisito equipo" de la convocatoria que se esta clonando y con el mismo dato en el campo "nivel académico ref", el "requisito equipo" será el registro nuevo que se esta creando para la convocatoria clonada)
		- Vinculación Universidad (sí/no) (campo "vinculación Universidad")
		- Listado de categorías profesionales exigidas (Se crean tantos registros en la tabla "requisito equipo categoría como tenga el "requisito equipo" de la convocatoria que se esta clonando y con el mismo dato en el campo "categoría profesional ref", el "requisito equipo" será el registro nuevo que se esta creando para la convocatoria clonada)
		- Número mínimo proyectos competitivos (campo "número mínimo competitivos")
		- Número mínimo proyectos no competitivos (campo "número mínimo No competitivos")
		- Número máximo proyectos competitivos en curso (campo "número máximo competitivos activos")
		- Número máximo proyectos no competitivos en curso (campo "número máximo No competitivos activos")
		- Observaciones sobre los requisitos a cumplir (campo "otros requisitos")
	+ No se copian
		- Limitaciones sobre la fecha de obtención del nivel académico ("anterior a" y "posterior a") (campos "fecha máxima nivel académico" y "fecha mínima nivel académico")
		- Limitaciones sobre la fecha de obtención de la categoría profesional ("anterior a" y "posterior a") (campos "fecha máxima categoría profesional" y "fecha mínima categoría profesional"")
* **Elegibilidad**. Se copian todos los datos de las tablas "convocatoria concepto gasto" y "convocatoria concepto gasto código económico"
	+ Concepto de gasto (campo "concepto gasto" de la tabla "convocatoria concepto gasto")
	+ Mes inicial (campo "mes inicial" de la tabla "convocatoria concepto gasto")
	+ Mes final (campo "mes final" de la tabla "convocatoria concepto gasto")
	+ Importe máximo permitido (campo "importe máximo" de la tabla "convocatoria concepto gasto")
	+ Observaciones (campo "observaciones" de la tabla "convocatoria concepto gasto")
	+ Permitido (campo "permitido" de la tabla "convocatoria concepto gasto")
	+ Listado de códigos económicos vinculados : Se copian todos los códigos económicos vinculados al concepto de gasto con los mismos datos (código económico, fecha inicio, fecha fin y observaciones). Se crean tantos registros en la tabla "convocatoria concepto gasto código económico" como tenga la convocatoria que se esta clonando y con los mismos datos en los campos "código económico ref", "fecha inicio",  "fecha fin"  y "observaciones", el concepto de gasto será será el identificador del concepto de gasto que se esta creado, por cada concepto de gasto de la convocatoria clonada)
* **Partidas presupuestarias**. Se copian todas las partidas y todos sus datos. Se crean tantos registros en la tabla "convocatoria partida" como tenga la convocatoria que se esta clonando y con los mismos datos en los campos "código", "descripción"  y "tipo partida", la convocatoria será el identificador de la convocatoria que se esta creando)

3\. No se copian:

* Fases (por llevar fechas concretas)
* Hitos (por llevar fechas concretas)
* Enlaces
* Documentos
* Requisitos IP (no se copian las fechas que limitan la obtención del nivel académico y de la categoría profesional, el resto de datos sí se copian)
* Requisitos Equipo (no se copian las fechas que limitan la obtención del nivel académico y de la categoría profesional, el resto de datos sí se copian)
* Configuración solicitudes (porque es el apartado donde se define la fase de presentación de solicitudes con fechas concretas y los documentos requeridos para las solicitudes)

4\. Una vez creada la convocatoria, se mostrará el mensaje de "Convocatoria clonada correctamente" y se irá a la edición de la convocatoria creada.

### 

  





