# Hércules : CU\-ETI\-0010\-007 \- Asignación de memorias \- Modificar



### Descripción

Formulario de modificación de asignación de memorias y par de evaluadores a las reuniones de convocatoria.

### Actores

#### Actor principal

ACT\-ETI\-001\-Gestor

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de  menú Convocatorias reunión y seleccionado una convocatoria del listado para su edición.

Una vez en la edición  de la convocatoria se va a la pestaña de Asignación de memorias.

Que exista un listado de memorias ya asignadas a la reunión de convocatoria.

Seleccionar una de las memorias del listado.

### Garantías de éxito (postcondiciones)

Se modifican los datos de la asignación, o bien la memoria, el evaluador 1 o el evaluador 2\.

Los cambios únicamente se realizan en memoria.

### Escenario principal (flujo básico \- modificar memoria)

1. Se presenta la pantalla Convocatorias reunión con el listado de todas las Convocatorias de reunión dadas de alta en el sistema.
2. Se selecciona la convocatoria de reunión.
3. Se presenta la pantalla de edición de convocatoria de reunión.
4. El usuario va a la pestaña de Asignación de memorias.
5. El usuario selecciona una memoria del listado de memorias.
6. El usuario en la pantalla de Modificar memoria modifica el evaluador 1\.
7. El usuario selecciona la acción Modificar.
8. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
9. Se presenta la memoria seleccionada con los datos modificados en el listado de memorias de la reunión de convocatoria.

### Extensiones (flujos alternativos) \- Conflicto de intereses

1. Se presenta la pantalla Convocatorias reunión con el listado de todas las Convocatorias de reunión dadas de alta en el sistema y que no se hayan borrado.
2. Se selecciona la convocatoria de reunión.
3. Se presenta la pantalla de edición de convocatoria de reunión.
4. El usuario va a la pestaña de Asignación de memorias.
5. El usuario selecciona una memoria del listado de memorias.
6. El usuario en la pantalla de Modificar memoria modifica el evaluador 1\.
7. El usuario selecciona la acción Modificar.
8. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales. Como el evaluador esta dentro de los investigadores con conflicto del equipo investigador de la memoria se muestra mensaje de que no se puede asignar dicho evaluador.
9. El usuario modifica al evaluador.
10. Se sigue con el paso 6 del flujo básico.




