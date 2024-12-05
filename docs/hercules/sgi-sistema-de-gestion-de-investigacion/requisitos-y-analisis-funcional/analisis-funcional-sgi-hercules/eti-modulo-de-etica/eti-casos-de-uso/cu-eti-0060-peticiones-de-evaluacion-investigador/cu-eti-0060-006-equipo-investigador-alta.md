# Hércules : CU\-ETI\-0060\-006 \- Equipo investigador \- Alta



### Descripción

Formulario para añadir personas al equipo investigador de una petición de evaluación.

### Actores

#### Actor principal

ACT\-ETI\-002\-Investigador

ACT\-ETI\-003\-Solicitante

ACT\-ETI\-006\-Responsable memoria

### Precondiciones

Usuario logado en el sistema con el rol adecuado dentro del módulo ETI.

Haber accedido a la opción de menú Mis peticiones de evaluación y seleccionado una petición del listado para su edición o bien estar creando una nueva petición de evaluación.

Sólo se muestran las peticiones de evaluación dadas de alta en el sistema y que la persona creadora de la misma sea la persona que se está logando en el sistema o bien esté como responsable de una de las memorias de la petición de evaluación.

La petición de evaluación solo puede ser modificada si no tiene memorias creadas o bien tiene al menos una de ellas en uno de estos estados:

* En elaboración
* Completada
* Favorable Pendiente de Modificaciones Mínimas
* Pendiente de correcciones
* No procede evaluar

### Garantías de éxito (postcondiciones)

La persona es añadida a la lista del equipo investigador pero sólo se ven los datos en memoria. No son guardados los datos en el sistema hasta que se pulse el botón Guardar de la pantalla..

### Escenario principal (flujo básico)

1. Se presenta la pantalla Mis peticiones de evaluación con el listado de todas las peticiones de evaluación dadas de alta en el sistema y que la persona creadora de la misma sea la persona que se está logando en el sistema o bien este como responsable de una de las memorias de la petición de evaluación.
2. Se selecciona la petición de evaluación.
3. Se presenta la pantalla de edición de la petición de evaluación.
4. El usuario va a la pestaña de Equipo de trabajo.
5. El usuario selecciona Añadir nueva persona.
6. El usuario en la pantalla de Nueva persona introduce un número de documento y lo busca para ver si existe en el sistema de usuarios externo.
7. En caso de existir se recuperan sus datos y se muestran en la pantalla.
8. El usuario selecciona la acción Añadir.
9. Se realizan las validaciones en cuanto a formato, obligatoriedad habituales.
10. Se presenta la persona seleccionada en el listado de equipo investigador de la petición de evaluación.

### Extensiones (flujos alternativos) \- No existe el usuario

1. Se presenta la pantalla Mis peticiones de evaluación con el listado de todas las peticiones de evaluación dadas de alta en el sistema y que la persona creadora de la misma sea la persona que se está logando en el sistema o bien este como responsable de una de las memorias de la petición de evaluación.
2. Se selecciona la petición de evaluación.
3. Se presenta la pantalla de edición de la petición de evaluación.
4. El usuario va a la pestaña de Equipo de trabajo.
5. El usuario selecciona Añadir nueva persona.
6. El usuario en la pantalla de Nueva persona introduce un número de documento y lo busca para ver si existe en el sistema de usuarios externo.
7. No existe el usuario en el sistema.
8. Se le informa que dicho usuario no se puede añadir que tendrá que crearlo antes como usuario externo desde el módulo de usuarios.
9. La persona no se añade al listado.




