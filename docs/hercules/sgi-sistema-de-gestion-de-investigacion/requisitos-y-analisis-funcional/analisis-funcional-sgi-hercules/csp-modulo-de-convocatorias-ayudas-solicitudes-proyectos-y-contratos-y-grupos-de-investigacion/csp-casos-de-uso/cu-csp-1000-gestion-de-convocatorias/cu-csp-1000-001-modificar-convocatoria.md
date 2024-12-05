# Hércules : CU\-CSP\-1000\-001 \- Modificar convocatoria



### Descripción

Modificación de los datos de convocatoria. Solo disponible para ACT\-CSP\-003\-Gestor, ACP\-CSP\-004\-Administrador que pertenezcan a la unidad de gestión de la convocatoria. Los ACT\-CSP\-005\-Visor o  ACT\-CSP\-001\-Investigador no podrán modificar datos de la convocatoria.

  


Actores

#### Actor principal

ACT\-CSP\-003\-Gestor de las unidades de gestión UGI, OTRI u OPE.

ACP\-CSP\-004\-Administrador de las unidades de gestión UGI, OTRI u OPE.

#### Personal involucrado e intereses

ACT\-CSP\-001\-Investigador que  precisan que las convocatorias estén registradas para poder presentar solicitudes sobre las mismas.

  


### Precondiciones

El usuario ACT\-CSP\-003\-Gestor, ACP\-CSP\-004\-Administrador se autentica a través del usuario de dominio corporativo  y tiene asociada una Unidad de gestión para las que está habilitado el permiso de modificación de convocatoria.

Se podrá modificar cualquier campo de cada una de las pestañas de la Convocatoria (y añadir, modificar o eliminar en los listados) excepto los siguientes campos:

* **Pantalla Datos generales**
	+ **Tipo solicitud SGI:** No se podrá modificar si el estado es "Registrada" y existan solicitudes, proyectos o grupos vinculados a la convocatoria. Añadir icono de información a nivel de vista cuando no se pueda modificar con el siguiente texto: "No se puede modificar el campo porque existen solicitudes y/o proyectos vinculados a la convocatoria"
	+ **Unidad de gestión**: No se podrá modificar el valor en caso que existan registros en las pantallas de:
		- Enlaces
		- Fases
		- Hitos
		- Documentos
	+ **Modelo de ejecución**: No se podrá modificar el valor en caso que existan registros en las pantallas de
		- Enlaces
		- Fases
		- Hitos
		- Documentos
	+ **Duración:** No se podrá modificar si el estado es "Registrada" y existan solicitudes o proyectos vinculados a la convocatoria. Mostrar icono de información a nivel de vista cuando no se pueda modificar con el siguiente texto: "No se puede modificar el campo porque existen solicitudes y/o proyectos vinculados a la convocatoria"
	+ **Régimen concurrencia:**No se podrá modificar si el estado de la convocatoria es "Registrada" y existan solicitudes o proyectos vinculados a la convocatoria. Añadir icono de información a nivel de vista cuando no se pueda modificar con el siguiente texto: "No se puede modificar el campo porque existen proyectos vinculados a la convocatoria"
	+ **Clasificación Producción científica CVN**: No se podrá modificar el valor en caso de que existan proyectos asociados a la convocatoria. Añadir icono de información a nivel de vista cuando no se pueda modificar con el siguiente texto: "No se puede modificar el campo porque existen proyectos vinculados a la convocatoria"
	+ **Área temática**: No se podrá añadir, modificar ni eliminar área temática si el estado es "Registrada" y existan solicitudes o proyectos vinculados a la convocatoria. En vez de mostrar el icono de modificar y eliminar mostrar el icono de información indicando "No se puede modificar ni eliminar porque existen solicitudes y/o proyectos vinculados a la convocatoria"
	+ **Entidad gestora**: No se podrá modificar, eliminar ni añadir la entidad gestora si el estado es "Registrada" y existan solicitudes o proyectos vinculados a la convocatoria. Añadir icono de información a nivel de vista cuando no se pueda modificar con el siguiente texto: "No se puede modificar el campo porque existen existen solicitudes y/o proyectos vinculados a la convocatoria"
* **Entidades convocantes**
	+ No se podrán modificar, eliminar ni añadir entidades convocantes si el estado es "Registrada" y existan solicitudes o proyectos vinculados a la convocatoria.
* **Entidades financiadoras**
	+ No se podrán modificar, eliminar ni añadir entidades convocantes si el estado es "Registrada" y existan solicitudes o proyectos vinculados a la convocatoria.
* **Fases**
	+ Se podrán añadir, modificar/eliminar las fases disponibles independientemente del estado de la convocatoria a excepción de la fase vinculada al campo "fase presentación solicitudes" de la tabla "configuración solicitud". En este caso en vez de mostrar los iconos de editar y eliminar mostrar el icono de información indicando "No se puede modificar ni eliminar la fase porque es la fase de presentación de solicitudes"
* **Partidas presupuestarias**
	+ No se podrá modificar y eliminar  partidas presupuestarias si existen proyectos asociados que ya estén utilizando la partida presupuestaria (en las tablas "anualidad gasto" y "anualidad ingreso" de los proyectos asociados a la convocatoria usan la partida presupuestaria). En vez de mostrar el icono de modificar y eliminar mostrar el icono de información indicando "No se puede modificar ni eliminar la partida porque esta siendo usada en uno de los presupuestos de los proyectos vinculados a la convocatoria"

  


Garantías de éxito (postcondiciones)

Se modifican los datos de la convocatoria.

### Escenario principal

1. El usuario pulsa el botón "Modificar" desde el listado de convocatorias
2. Se aplican restricciones de edición indicadas en el apartado de Precondiciones
3. El usuario pulsa el botón Guardar aplicando los cambios de acuerdo a las modificaciones permitidas. El estado de la convocatoria no varía.

  


### 

  





