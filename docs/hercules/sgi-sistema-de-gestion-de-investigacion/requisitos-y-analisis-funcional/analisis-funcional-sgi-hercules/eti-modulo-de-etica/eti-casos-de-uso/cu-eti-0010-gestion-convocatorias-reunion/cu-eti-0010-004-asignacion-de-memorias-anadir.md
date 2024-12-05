# Hércules : CU\-ETI\-0010\-004 \- Asignación de memorias \- Añadir



### Descripción

Formulario de asignación de memorias y par de evaluadores a las reuniones de convocatoria.

### Actores

#### Actor principal

ACT\-ETI\-001\-Gestor

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de menú Convocatorias reunión y seleccionado una convocatoria del listado para su edición.

Una vez en la edición  de la convocatoria se va a la pestaña de Asignación de memorias y se selecciona el botón de Añadir nueva memoria.

La memoria tiene que estar en estado "En secretaria" si la convocatoria es de tipo "Ordinaria o Extraordinaria" y en estado "En secretaría seguimiento anual" o "En secretaría seguimiento final"  si la convocatoria es de tipo "Seguimiento" y su fecha de envío es igual o menor a la fecha límite de la convocatoria de reunión.

También puede darse el caso para convocatoria es de tipo "Ordinaria o Extraordinaria" que la memoria tenga un estado distinto a "En secretaria", pero que tenga el estado de retrospectiva en "En secretaria", en estos casos estas memorias también se muestran.

### Garantías de éxito (postcondiciones)

Se añade la memoria al listado de memorias a evaluar en la convocatoria.

Los evaluadores no pueden tener conflictos de intereses con los investigadores del equipo de trabajo de la memoria.

Los cambios únicamente se realizan en memoria.

### Escenario principal (flujo básico \- añadir nueva memoria)

1. Se presenta la pantalla Convocatorias reunión con el listado de todas las Convocatorias de reunión dadas de alta en el sistema y que no se hayan borrado.
2. Se selecciona la convocatoria de reunión.
3. Se presenta la pantalla de edición de convocatoria de reunión.
4. El usuario va a la pestaña de Asignación de memorias.
5. El usuario selecciona Añadir nueva memoria.
6. El usuario en la pantalla de Nueva memoria selecciona una memoria, un evaluador 1 y un evaluador 2\.
7. El usuario selecciona la acción Añadir.
8. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
9. Se presenta la memoria seleccionada en el  listado de memorias de la reunión de convocatoria.

### Extensiones (flujos alternativos) \- Conflicto de intereses

1. Se presenta la pantalla Convocatorias reunión con el listado de todas las Convocatorias de reunión dadas de alta en el sistema y que no se hayan borrado.
2. Se selecciona la convocatoria de reunión.
3. Se presenta la pantalla de edición de convocatoria de reunión.
4. El usuario va a la pestaña de Asignación de memorias.
5. El usuario selecciona Añadir nueva memoria.
6. El usuario en la pantalla de Nueva memoria selecciona una memoria, un evaluador 1 y un evaluador 2\.
7. El usuario selecciona la acción Añadir.
8. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales. Como uno de los evaluadores esta dentro de los investigadores con conflicto del equipo investigador de la memoria se muestra mensaje de que no se puede asignar dicho evaluador.
9. El usuario modifica al evaluador.
10. Se sigue con el paso 6 del flujo básico.




