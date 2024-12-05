# Hércules : CU\-CSP\-1000\-002 \- Modificar convocatoria \- Registrar



### Descripción

La convocatoria pasa de estado "Borrador" a estado "Registrada".

### Actores

#### Actor principal

ACT\-CSP\-003\-Gestor de las unidades de gestión UGI, OTRI u OPE.

#### Personal involucrado e intereses

ACT\-CSP\-001\-Investigador que  precisan que las convocatorias estén registradas para poder presentar solicitudes sobre las mismas.

  


### Precondiciones

ACT\-CSP\-003\-Gestor, ACP\-CSP\-004\-Administrador se autentica a través del usuario de dominio corporativo. La convocatoria figura en estado "Borrador" y tiene asociada una Unidad de gestión sobre las que el usuario está vinculado con rol ACT\-CSP\-003\-Gestor, ACP\-CSP\-004\-Administrador.

  


Garantías de éxito (postcondiciones)

Se modificar el estado de la convocatoria, pasando a ser "Registrada".

Si la convocatoria se ha marcado como "permitir tramitación de solicitudes por investigadores", es visible por los ACT\-CSP\-001\-Investigador  a través de su acceso al SGI. Si la fecha actual se encuentra dentro del rango de fechas de tramitación de solicitudes, se permite el registro de solicitudes por parte de los investigadores. 

### Escenario principal

1\. El usuario pulsa el botón  Registrar situado a pie de página

2\.  Se cumplen las validaciones de obligatoriedad sobre los siguientes campos del apartado "Datos generales":

* + - Unidad de gestión (que deberá de ser una sobre las que el usuario tenga rol  Gestor o Administrador sobre el módulo CSP, aunque esto ya estaría controlado en el propio combo)
		- Título
		- Modelo de ejecución (que deberá ser uno de los modelos asociados a la unidad de gestión seleccionada en el combo Unidad de gestión, aunque esto ya debería estar filtrado en el propio combo)
		- Finalidad (que deberá ser una de las finalidades asociadas el modelo seleccionado en el combo "Modelo" aunque esto ya debería venir filtrado en el propio combo)
		- Ámbito geográfico
		- Tipo solicitud SGI

3\. Se cumplen las siguientes validaciones sobre la pestaña de "Configuración solicitud":

* + Se ha cumplimentado el campo "¿Habilitar presentación de solicitudes en SGI?"
	+ Si el campo "¿Habilitar presentación de solicitudes en SGI?" toma valor afirmativo:
		- Se ha cumplimentado el campo "Seleccione plazo de presentación de solicitudes"

4\. Se modifica la convocatoria actualizando su estado que pasa a ser Registrada. 

  


### 

  





