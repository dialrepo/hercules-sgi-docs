# Hércules : CU\-ETI\-0060\-007 \- Asignación de tareas \- Alta/modificación



### Descripción

Formulario para ir asignando tareas dentro de una memoria a las personas del equipo. Se usa el mismo formulario para el alta y para la modificación.

### Actores

#### Actor principal

ACT\-ETI\-002\-Investigador

ACT\-ETI\-003\-Solicitante

ACT\-ETI\-006\-Responsable memoria

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de  menú Mis peticiones de evaluación y seleccionado una petición del listado para su edición o bien estar creando una nueva petición de evaluación.

Sólo se muestran las peticiones de evaluación dadas de alta en el sistema y que la persona creadora de la misma sea la persona que se está logando en el sistema o bien este como responsable de una de las memorias de la petición de evaluación.

La petición de evaluación solo puede ser modificada si no tiene memorias creadas o bien tiene al menos una de ellas en uno  de estos estados:

* En elaboración
* Completada
* Favorable Pendiente de Modificaciones Mínimas
* Pendiente de correcciones
* No procede evaluar

### Garantías de éxito (postcondiciones)

La asignación de la tarea es añadida al listado de tareas del equipo investigador.

No son guardados los datos en el sistema hasta que se pulse el botón Guardar de la pantalla..

### Escenario principal (flujo básico)

1. Se presenta la pantalla Mis peticiones de evaluación con el listado de todas las peticiones de evaluación dadas de alta en el sistema y que la persona creadora de la misma sea la persona que se está logando en el sistema o bien este como responsable de una de las memorias de la petición de evaluación.
2. Se selecciona la petición de evaluación.
3. Se presenta la pantalla de edición de la petición de evaluación.
4. El usuario va a la pestaña de Asignación de tareas.
5. El usuario selecciona Añadir nueva tarea.
6. El usuario en la pantalla de Nueva tarea selecciona una persona del equipo investigador, una memoria con comité CEEA o CEIAB, describe la tarea, selecciona una formación y completa el organismo y el año.
7. El usuario selecciona la acción Añadir.
8. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
9. Se presenta la tarea en el listado de tareas asignadas a memorias.
10. Se selecciona la tarea creada

### Escenario principal (flujos alternativos) \- Memoria de comité CEISH

1. Se presenta la pantalla Mis peticiones de evaluación con el listado de todas las peticiones de evaluación dadas de alta en el sistema y que la persona creadora de la misma sea la persona que se está logando en el sistema o bien este como responsable de una de las memorias de la petición de evaluación.
2. Se selecciona la petición de evaluación.
3. Se presenta la pantalla de edición de la petición de evaluación.
4. El usuario va a la pestaña de Asignación de tareas.
5. El usuario selecciona Añadir nueva tarea.
6. El usuario en la pantalla de Nueva tarea selecciona una persona del equipo investigador, una memoria con comité CEISH, describe la tarea y la formación.
7. El usuario selecciona la acción Añadir.
8. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
9. Se presenta la tarea en el listado de tareas asignadas a memorias.




