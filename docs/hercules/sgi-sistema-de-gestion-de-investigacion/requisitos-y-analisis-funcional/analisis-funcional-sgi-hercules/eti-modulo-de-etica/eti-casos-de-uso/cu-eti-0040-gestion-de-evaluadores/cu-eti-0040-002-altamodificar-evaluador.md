# Hércules : CU\-ETI\-0040\-002 \- Alta/Modificar Evaluador



### Descripción

Para dar de alta un nuevo evaluador se necesitan los siguiente campos:

* Evaluador: caja de texto deshabilitada donde se guardará el nombre y apellidos del evaluador seleccionado. Para ello se buscará con el botón Buscar que abrirá una pantalla para buscar a los evaluadores por diferentes filtros de búsqueda (pantalla común del módulo de usuarios). Se buscará en el sistema externo de investigadores y se recuperarán sus datos. En caso de no existir se tendrá que ir primero a la gestión de usuarios externos (módulo transversal en el SGI) para dar de alta al usuario externo.
* Comité: desplegable con los tres comités.
* Cargo que desempeña en el comité: desplegable con los valores:
	+ Presidente
	+ Vocal
	+ Secretario
* Fecha de Alta: calendario para marcar el día
* Fecha de Baja: calendario para marcar el día
* Resumen de Actividad: caja de texto
* Listado de usuarios con los que tiene conflicto de intereses.

Se comprobará que un mismo evaluador no este en el mismo comité, es decir, que sus fechas no se solapen. Podrá existir dos o mas veces siempre y cuando tenga rangos de fechas distintos.

Se comprobará que para un comité no exista mas de evaluador con cargo "Presidente" en las mismas fechas, no se podrán solapar las fechas, sólo puede existir un presidente de cada comité en el mismo instante.

Se comprobará que para un comité no exista mas de evaluador con cargo "Secretario" en las mismas fechas, no se podrán solapar las fechas, sólo puede existir un secretario de cada comité en el mismo instante.

Un evaluador puede ser una persona de la propio Universidad o bien un usuario externo a ella, pero siempre tienen que estar dado de alta en el sistema externo de usuarios de la Universidad y tener credenciales.

El editar es la misma pantalla que la de nueva creación.

### Actores

#### Actor principal

ACT\-ETI\-001\-Gestor

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de  menú Evaluadores y pulsar sobre el botón de Nuevo evaluador o bien hay un listado de evaluadores y edita uno de ellos.

### Garantías de éxito (postcondiciones)

Se da de alta un nuevo evaluador en el sistema si ha pulsado a Nuevo evaluador o si va a editar un evaluador se modifican sus datos.

### Escenario principal (flujo básico)

1. Se presenta la pantalla Evaluadores.
2. El gestor pulsa sobre el botón de Nuevo evaluador o edita un evaluador del listado.
3. Se presenta la pantalla de nuevo/modificar evaluador.
4. El usuario rellena los campos obligatorios y/o opcionales.
5. El usuario puede añadir al listado de usuarios con conflicto de intereses algún usuario, lo que provoca que no se pueda evaluar una memoria en la que dicho usuario este formando parte del equipo.
6. El usuario selecciona la acción Guardar.
7. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
8. El usuario es informado del resultado positivo de la acción.
9. Se presenta el listado de Evaluadores.

### Escenario principal (flujos alternativos) \- El evaluador ya existe para el mismo comité

1. Se presenta la pantalla Evaluadores.
2. El gestor pulsa sobre el botón de Nuevo evaluador o edita un evaluador del listado.
3. Se presenta la pantalla de nuevo/modificar evaluador.
4. El usuario rellena los campos obligatorios y/o opcionales.
5. El usuario selecciona la acción Guardar.
6. El evaluador ya existe en el sistema para el mismo comité en una fechas que se solapan con las que se intenta introducir.
7. El usuario es informado para que pueda modificar sus datos.
8. El usuario modifica las fechas del evaluador.
9. El usuario selecciona la acción Guardar.
10. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
11. El usuario es informado del resultado positivo de la acción.
12. Se presenta el listado de Evaluadores.

### Extensiones (flujos alternativos) \- Error durante el guardado

1. Si se ha producido algún error de validación.
2. El usuario modifica la información necesaria para realizar de forma correcta la creación o modificación del evaluador
3. El usuario selecciona la acción Guardar.
4. El usuario es informado del resultado positivo de la acción.
5. Se presenta el listado de Evaluadores




