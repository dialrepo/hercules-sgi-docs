# Hércules : CU\-ETI\-0060\-004 \- Modificar Petición de evaluación \- Guardar



### Descripción

Formularios de Datos generales, Equipo investigador, Asignación de tareas y Memorias.

### Actores

#### Actor principal

ACT\-ETI\-002\-Investigador

ACT\-ETI\-003\-Solicitante

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de  menú Mis peticiones evaluación y seleccionado una petición de evaluación del listado para su edición.

Una vez en la edición  de la petición de evaluación se hacen cambios en Datos generales.

Se añade un nueva persona al equipo para ello debe de existir el usuario en el sistema externo de usuarios.

Se añade una tarea a la nueva persona creada en una de las memorias de la petición.

### Garantías de éxito (postcondiciones)

Se modifican los datos generales.

Se crea una nueva persona como equipo investigador.

Se le crea una tarea a esa persona.

Se crea una nueva memoria.

### Escenario principal (flujo básico)

1. Se presenta la pantalla Mis peticiones evaluación con el listado de todas las peticiones de evaluación creadas por el usuario logado en el sistema .
2. Se selecciona la petición de evaluación.
3. Se presenta la pantalla de edición de la petición de evaluación.
4. El usuario se mantiene en la pestaña de Datos generales.
5. Se modifican los datos generales de la petición de evaluación.
6. El usuario va a la pestaña de Equipo investigador.
7. El usuario selecciona Añadir nueva persona.
8. El usuario en la pantalla de Nueva persona inserta un NIF/NIE y le da a buscar para que se vaya a buscar los datos de dicha persona y se rellenen automáticamente el resto de datos.
9. El usuario selecciona la acción Añadir.
10. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
11. Se presenta la persona añadida al listado de personas que forman parte del equipo
12. El usuario va a la pestaña de Asignación de tareas
13. El usuario selecciona Añadir nueva tarea.
14. El usuario en la pantalla de Nueva tarea selecciona al usuario que acaba de añadir en la pestaña de Equipo investigador, selecciona la memoria de tipo CEISH, rellena la tarea y la formación.
15. El usuario selecciona la acción Añadir.
16. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
17. La tarea se añade al listado de asignación de tareas.
18. El usuario va a la pestaña de Memorias.
19. El usuario selecciona Añadir nueva memoria.
20. El usuario en la pantalla de Nueva memoria selecciona el comité de CEIAB, de tipo Nueva y le da un título.
21. El usuario selecciona la acción Añadir.
22. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
23. La memoria se añade al listado de memorias de la petición de evaluación.
24. El usuario selecciona la acción Guardar.
25. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
26. El usuario es informado del resultado positivo de la acción.
27. Se presenta el listado de Mis peticiones evaluación.

### Extensiones (flujos alternativos) \- Petición de evaluación relacionada con solicitud de convocatoria.

1. Se presenta la pantalla Mis peticiones evaluación con el listado de todas las peticiones de evaluación creadas por el usuario logado en el sistema .
2. Se selecciona la petición de evaluación.
3. Se presenta la pantalla de edición de la petición de evaluación.
4. El usuario se mantiene en la pestaña de Datos generales.
5. El usuario debe de informar de los datos que no vienen de la solicitud y que son obligatorios (fecha inicio, fecha fin, la pregunta ¿Si se rechaza su solicitud de financiación ejecutará el proyecto con fondos propios?, tipo de actividad, valor social, objetivos científicos y diseño metodológico)
6. Se sigue con el paso 6 del flujo básico

### Extensiones (flujos alternativos) \- Error durante el guardado

1. Si se ha producido algún error de validación.
2. El usuario modifica la información necesaria para realizar de forma correcta la creación de la petición de evaluación.
3. El usuario selecciona la acción Guardar.
4. El usuario es informado del resultado positivo de la acción.
5. Se presenta el listado de Mis peticiones evaluación.




