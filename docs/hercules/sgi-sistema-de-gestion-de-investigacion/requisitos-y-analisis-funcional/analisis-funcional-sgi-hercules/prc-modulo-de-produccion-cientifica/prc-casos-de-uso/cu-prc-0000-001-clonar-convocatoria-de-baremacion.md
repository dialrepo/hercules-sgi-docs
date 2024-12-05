# Hércules : CU\-PRC\-0000\-001 \- Clonar convocatoria de baremación



### Descripción

Se realiza una nueva convocatoria de baremación con los datos de otra, se hace una copia de la todos los datos de la convocatoria relacionados con la configuración de la misma.

### Actores

#### Actor principal

ACT\-PRC\-003\-Gestor

#### Personal involucrado e intereses

ACT\-PRC\-003\-Gestor para reducir el tiempo de creación de una convocatoria.

  


### Precondiciones

ACT\-PRC\-003\-Gestor se autentica a través del usuario de dominio corporativo y tiene el permiso de PRC\-CON\-C

La convocatoria de origen tiene el campo "activo" a true

  


Garantías de éxito (postcondiciones)

Se crea un nueva convocatoria de baremación a partir de la convocatoria seleccionada para su clonación.

  


### Escenario principal

1\. El usuario pulsa el botón  Clonar sobre una de las convocatorias disponibles.

2\. Se crea un nueva convocatoria de baremación  y con los siguientes datos:

* **Datos generales**. Se copian los siguientes campos de la tabla "ConvocatoriaBaremaccion" de la convocatoria seleccionada.
	+ Nombre: Se concatena por delante del campo "nombre" el texto "Clonada \- ", de tal manera que si la convocatoria seleccionada tiene en el campo "nombre" del valor "Convocatoria ACI 2021" quedaría "Clonada \- Convocatoria ACI 2021"
	+ Año: Se busca la convocatoria del último año y se le suma uno. Es decir, se pone una año más de la convocatoria con último año.
	+ Años que son baremables: se pone lo del campo "anioBaremables" de la convocatoria seleccionada.
	+ Último año a considerar: se pone lo del campo "ultimoAnio" de la convocatoria seleccionada.
	+ Importe total: se pone lo del campo "importeTotal" de la convocatoria seleccionada.
	+ Partida presupuestaria: se pone lo del campo "partidaPresupuestaria" de la convocatoria seleccionada.
	+ Restos de campos a null: campos "puntoProduccion", "puntoSexenio", "puntoCosteIndirectos" y "fechaEjecución"
* **Baremos y puntuaciones:** Se copian todos los baremos seleccionados en la convocatoria seleccionada: Se crean tantos registros en la tabla "Baremo" como tenga la convocatoria que se esta clonando y con los mismos datos en los campos "configuracionBaremo" , "peso", "puntos", "cuantia" y "tipoCuantia, la "convocatoriaBaremacion" será el identificador de la convocatoria que se esta creando)
* **Modulador:** Se copian los datos de los moduladores de la convocatoria seleccionada: Se crean tantos registros en la tabla "Modulador" como tenga la convocatoria que se esta clonando y con los mismos datos en los campos "tipo" , "areaRef", "valor1", "valor2", "valor3", "valor4" y "valor5, la "convocatoriaBaremacion" será el identificador de la convocatoria que se esta creando.
* **Rango:** Se copian los datos de los rangos de la convocatoria seleccionada: Se crean tantos registros en la tabla "Rango" como tenga la convocatoria que se esta clonando y con los mismos datos en los campos "tipoRango" , "tipoTemporalidad", "puntos", "desde" y "hasta, la "convocatoriaBaremacion" será el identificador de la convocatoria que se esta creando.

3\. Una vez creada la convocatoria, se mostrará el mensaje de "Convocatoria clonada correctamente" y se irá a la edición de la convocatoria creada.

### 

  





