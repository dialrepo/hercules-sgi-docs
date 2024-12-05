# Hércules : CU\-ETI\-0030\-002 \- Alta Acta \- Guardar



### Descripción

Para dar de alta una nueva acta se necesitan los siguiente campos:

* Reunión de evaluación: se muestra un desplegable indicando el código del a convocatoria de reunión ( tipo de comité \- fecha evaluación \- identificador interno) de aquellas convocatorias de reunión que no tienen un acta asociada.
* Hora de inicio: se selecciona una hora y minutos.
* Hora de fin: se selecciona una hora y minutos.
* Resumen del acta: caja de texto para rellenar con el contenido del acta

Una vez que se da al botón Guardar, se crea el acta en estado "En elaboración", y se vuelve a la pantalla de listado de Actas.

Por defecto al crear una acta se ponen todos los asistentes como que han asistido. En caso de que uno o varios no puedan asistir se tendrá que ir a la pantalla de asistentes y editarlos y ponerles el motivo de la falta de asistencia.

El número de acta se saca del código de la convocatoria (que ya lo tiene asignado)

### Actores

#### Actor principal

ACT\-ETI\-001\-Gestor

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de  menú Actas y pulsar sobre el botón de Nueva acta.

Exista una convocatoria de reunión sin acta asociada.

### Garantías de éxito (postcondiciones)

Se da de alta una nueva acta asociada a la convocatoria de reunión en estado "En elaboración".

### Escenario principal (flujo básico)

1. Se presenta la pantalla Actas con el listado de todas las actas dadas de alta en el sistema.
2. El gestor pulsa sobre el botón de Nueva acta
3. Se presenta la pantalla de nueva acta en la pestaña de Datos Descriptivos con todos los datos a cumplimentar.
4. El usuario rellena los campos obligatorios y/o opcionales.
5. El usuario selecciona la acción Guardar.
6. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
7. Se crea el acta en estado "En elaboración"
8. Todos los evaluadores activos del comité están como que han asistido a la reunión.
9. El usuario es informado del resultado positivo de la acción.
10. Se presenta el listado de Actas.

### Escenario principal (flujos alternativos) \- Se editan asistentes para indicar que no van a asistir.

1. Se presenta la pantalla Actas con el listado de todas las actas dadas de alta en el sistema.
2. El gestor pulsa sobre el botón de Nueva acta
3. Se presenta la pantalla de nueva acta en la pestaña de Datos Descriptivos con todos los datos a cumplimentar.
4. El usuario rellena los campos obligatorios y/o opcionales.
5. El usuario va a la pestaña de Asistentes.
6. El usuario edita uno de los asistentes.
7. El usuario le pone que no va a asistir y el motivo
8. El usuario selecciona la acción de Modificar .
9. Se vuelve al listado de asistentes con el asistente modificado.
10. El usuario selecciona la acción Guardar.
11. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
12. Se modifica la asistencia del evaluador en el acta.
13. El usuario es informado del resultado positivo de la acción.
14. Se presenta el listado de Actas.

### Extensiones (flujos alternativos) \- Error durante el guardado

1. Si se ha producido algún error de validación.
2. El usuario modifica la información necesaria para realizar de forma correcta la creación de la acta.
3. El usuario selecciona la acción Guardar.
4. El usuario es informado del resultado positivo de la acción.
5. Se presenta el listado de Actas.




